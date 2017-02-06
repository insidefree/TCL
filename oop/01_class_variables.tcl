package require TclOO
#   classvariable defines a variable that lives on the class object, and is 
#   linked via [namespace upvar]ed as an object variable into each instance's
#   namespace on creation.
#
# It is the equivalent of:
#   oo::class create Cnted {
#     variable n    ;# makes n visible in methods
#     variable x
#     constructor {} {
#        my eval namespace upvar [info object namespace [self class]] n n
#        incr n
#        set x $n
#     }
#     method who {} {
#        return "I am $n of $x"
#     }
#   }

    metaclass create ClassyVars {
        variable Classvars
        constructor args {
            set Classvars {}
            next {*}$args
            oo::define [self] mixin -append [ClassyVarMixin new $Classvars]
        }
        method classvariable {name} {
            lappend Classvars $name
            uplevel 1 [list variable $name]
        }
    }

# to achieve this we use a "dynamic mixin".  This is just a way to create a mixin with a
# parameter:  in this case, ClassyVarMixin takes a list of (unqualified) variable names
# as a parameter, and creates an instance whose constructor links those variables to the
# class.

;# FIXME: hypnotoad wasn't very keen on this, though he acknowledged it requires less code than his sqlite-backed interps.
;# FIXME: hypnotoad's suggestion:  move the constructor into a common Initialize method
    oo::class create ClassyVarMixin {
        superclass oo::class
        constructor {classvars} {
            set vars [lmap v $classvars {list $v $v}]
            set vars [concat {*}$vars]
            oo::define [self] constructor {args} [format {
                set cls [info object class [self]]  ;# our actual class, for putting the var in
                set cns [info object namespace $cls]
                oo::objdefine $cls variable %2$s
                my eval namespace upvar $cns %1$s
                next {*}$args
            } $vars $classvars]
        }
    }