# Remember that if there are variables (except args) after a variable with a specified default value, 
# the default value will never be used. For example, as in the following procedure:
# proc function { a {b 1} c} {...}

proc example {first {second ""} args} {
if {$second == ""} {
    puts "Specify only one argument, it is equal to: $first";
    return 1;
    } else {
        if {$args == ""} {
            puts "Two arguments - $first and $second";
            return 2;
        } else {
            puts "more arguments - $first, $second and $args";
            return "few";
        }
    }
}

set count1 [example ONE]
set count2 [example ONE TWO]
set count3 [example ONE TWO THREE]
set count4 [example ONE TWO THREE FOUR]

puts "the procedure of the example was called with $count1, $count2, $count3, $count4 arguments"