array set array1 [list \
{123} {Alexander Antufiev} \
{234} {Boris Bobrov} \
{345} {Valery Voronov} \
{456} {Grigory Gorbachev} ]

puts "Array1 contains [array size array1]\n"

puts "Array1 has the following elements: \n [array names array1] \n"

puts "ID number 123 corresponds to an element: $array1(123)\n"

if {[array exist array1]} {
    puts "array1 is the array"
} else {
    puts "array1 is not an array"
}

if {[array exist array2]} {
    puts "array2 is an array"
} else {
    puts "array2 is not an array"
}