# Example of using upvar
# Convert values into a positive number before using
proc SetPositive {variable value } {
    upvar $variable myvar
    if {$value < 0} { 
            set myvar [expr -$value]
        } else {
            set myvar $value
        }
    return $myvar
}

SetPositive x 5;
SetPositive y -5;

puts "X : $x Y: $y\n"
# the location of the Upvars

# The second level will be caused by the procedure one
proc two {y} {
    upvar 1 $y z ;# a connection called values of the variable z
    upvar 2 x a ;# connection variable x with the variable a
    puts "procedure two: Z: $z A: $a" ;# output the values, just to check
    set z 1 ;# set z, the transfer to the level above number 1
    set a 2 ;# set x to transfer the number 2 on two levels above
}

# The first level will be called from the main program
proc one {y} {
    upvar $y z ;# this is the connection of the called values of the variable z
    puts "procedure one: Z: $z" ;# prints the value must be 5
    two z ;# call the procedure two which will change the value
}

one y ;# call one, and output X and Y after the call.
puts "\nX: $x Y: $y"