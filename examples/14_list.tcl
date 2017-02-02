set x "a b c"
puts "Item 2 of the list {$x} is: [lindex $x 2]\n"

set y [split 9/30/2001 "/"]
puts "We celebrate on the [lindex $y 1]-y [lindex $y 0]-th month\n"

for {set i 0} {$i < [llength $x]} {incr i} {
	puts "[lindex $x $i] is item number $i of the list x"
}

# BETTER USE foreach - is faster
set i 0;
foreach j $x {
    puts "$j is item number $i of the list x"
    incr i;
}