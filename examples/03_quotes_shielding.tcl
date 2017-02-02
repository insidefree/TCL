# Example action \ " $ " symbol
set Z "Moscow"
set Z_LABEL "the Capital of Russia is: "

puts "$Z_LABEL $Z"
puts "$Z_LABEL \$Z"

# The following row is missing \ before $
puts "\pBen Franklin depicted on the banknote \$100.00"

set a 100.00
puts "Washington is not on the bill \$a" ;# This is not something
puts "Lincoln is not on the bill $$a" ;# This is correct
puts "Hamilton is not on the bill of \$a" ;# Again not
puts "Ben Franklin is on the bill of $$a" ;# But is this right

puts "\n................. examples of special characters"
puts "Tab\tTabulation\tTabulation"
puts "This line is displayed\non two lines"
puts "And this string will be written\
on the same line"