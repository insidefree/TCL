set Z "Tel-Aviv"
set Z_LABEL "the Israel capital"

puts "\n................. examples of differences between \" and \{"
puts "$Z_LABEL $Z"
puts {$Z_LABEL $Z}

puts "\n....... examples of the combined use \{ and \""
puts "$Z_LABEL {$Z}"
puts {today reported: "the dollar is 1 $ = 4 shekels"}

puts "\n................. examples of special characters"
puts {in parentheses, substitution is not performed \n \R \x0a \f \}
puts {but, at the end of the line\
reverse the fraction is interpreted as a space.}