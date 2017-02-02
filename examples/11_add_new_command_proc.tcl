proc sum {arg1 arg2} {
    set x [expr $arg1 + $arg2];
        return $x
}

puts "Sum of 2 + 3 is: [sum 2 3]\n\n"

proc for {a b c} {
    puts "The command for is replaced by the puts command";
    puts "arguments: \n$a\n$b\n$c\n"
}

for {set i 1} {$i < 10} {incr i}