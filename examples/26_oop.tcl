package require TclOO;  #if loading for the first time; not required on Tcl 8.6
oo::class create summation {
    constructor {} {
        variable v 0
    }
    method add x {
        variable v
        incr v $x
    }
    method value {} {
        variable v
        return $v
    }
    destructor {
        variable v
        puts "Ended with value $v"
    }
}
set sum [summation new]
puts "Start with [$sum value]"
for {set i 1} {$i <= 10} {incr i} {
    puts "Add $i to get [$sum add $i]"
}
$sum destroy   ;# only destroy the $sum object. 'summation destroy' destroys ALL summation objects --Duoas