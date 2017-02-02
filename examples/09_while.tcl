set x 1;
while {$x < 5} {puts "the value of x = $x"; set x [expr $x + 1]}
puts "the First loop is over when X is $x\n"

# How many times will this loop run?
# Why it does not display the value every time?

set x 0;
while "$x < 5" {
    set x [expr $x + 1]
    if {$x > 6} break;
    if "$x > 3" continue;
    puts "value of x = $x"; 
}

puts "the Second cycle ended with X equal to $x\n"