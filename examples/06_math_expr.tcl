set X 100;
set Y 256;
set Z [expr "$Y + $X"]
set Z_LABEL "$Y plus $X is "

puts "$Z_LABEL $Z"
puts "the Square root of $Y is [expr sqrt($Y)]\n"

puts "priority \"5 + -3 * 4\" is: [expr -3 * 4 + 5]"
puts "According to the brackets \"(5 + -3) * 4\" is: [expr (5 + -3) * 4]"

puts "\n................. more examples of differences between \" and \{"
puts {$Z_LABEL [expr $Y + $X]}
puts "$Z_LABEL {[expr $Y + $X]}"
puts "the Command for adding two numbers: \[expr \$a + \$b]"