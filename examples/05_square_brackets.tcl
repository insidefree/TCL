set x "ABC"
puts "a Simple substitution: $x\n"

set y [set x "qwerty"]
puts "Remember that set returns the new value of the variable: X: $x Y: $y\n"

set z {[set x "This string is in quotes inside square brackets."]}
puts "Remember curly braces: $z\n"

set a "[set x {This is a string within braces within quotes.}]"
puts "In this case, the command set is executed: $a"
puts "value of \$x : $x\n"

set b "\[set y {This is a string within braces within quotes.}]"
puts "Remember \\ reverse shot disables brackets:\znachenie \$b : $b"
puts "value of \$y : $y"