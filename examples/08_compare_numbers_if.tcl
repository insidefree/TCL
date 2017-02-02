set x 1;

if {$x == 2} {puts "$x is 2"} else {puts "$x does not equal 2"}

if {$x != 1} {
puts "$x != 1 (not equal to)"
} else {
puts "$x is 1"
}

if $x==1 {puts "Got 1"}

# Test the string will undergo two phase lookup
# The first phase will replace $g x
# When the command is executed if $x is replaced by 1

set y x;
if "$$y != 1" {
puts"$$y = 1"
} else {
puts "$$y is not equal to 1"
}