oo::class create Cnted {
    variable n    ;# makes n visible in methods
    variable x
    constructor {} {
        my eval namespace upvar [info object namespace [self class]] n n
        incr n
        set x $n
    }
    method who {} {
        return "I am $n of $x"
    }
}

set cnt [Cnted new]
puts "cnt is [$cnt who]"