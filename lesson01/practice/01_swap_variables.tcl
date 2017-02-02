# Swap variables without 3th one
puts {### Swap variables without 3th one}
set varA 2
set varB 5
puts stdout "varA = $varA"
puts stdout "varB = $varB"
set varA [expr $varA + $varB]
set varB [expr $varB - $varA]
set varB [expr -$varB]
set varA [expr $varA - $varB]
puts stdout "varA = $varA"
puts stdout "varB = $varB"