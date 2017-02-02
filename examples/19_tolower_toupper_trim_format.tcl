set upper "THIS is a STRING OF UPPERCASE LETTERS"
set lower "this is a string of uppercase letters"
set trailer "At the end of this line point...."
set leader "....At the beginning of this line point"
set both "(((This line is in brackets)))"

puts "converted tolower : $upper"
puts "string : [string tolower $upper]\n"
puts "toupper converted : $lower"
puts "string : [string toupper $lower]\n"
puts "trimright converted : $trailer"
puts " string : [string trimright $trailer .]\n"
puts "trimleft converted : $leader"
puts " string : [string trimleft $leader .]\n"
puts "trim converted : $both"
puts " string : [string trim $both "()"]\n"

set labels [format "%-20s %+10s " "Item" "Price"]
set price1 [format "%-20s %10d rubles a kilogram" "Tomatoes" "30"]
set price2 [format "%-20s %10d rubles a kilogram" "Peppers" "20"]
set price3 [format "%-20s %10d rubles a kilogram" "Cucumbers" "10"]
set price4 [format "%-20s %10.2f rubles per pack" "Seeds" "4.49997"]

puts "\n Example format:\n"
puts "$labels"
puts "$price1"
puts "$price2"
puts "$price3"
puts "$price4"