# Syntax
set a 1
set b 2
puts a ;#a
puts b ;#b
set a b
puts $a ;#b
set a $b
puts $a ;#2
puts stderr {Hello, World!}
puts {Hello, World....}
set name {Ku Ku}
set len [string length $name]
puts $len ;#5

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

# Reverse number
set number 7463892
proc Reverse {number} {
	set i 1
	set bit [string len $number]
	set result 0
	set temp 0
	while {$i <= $bit} {
		set temp [expr ($number%(int(pow(10,$i)))-$temp)/int(pow(10,$i-1))]
		puts $temp
		set result [expr $result + $temp*int(pow(10,$i-1))]
		incr i
	}
	return $result
}
puts "number = $number, after Reverse namber = [Reverse $number]"


set test asdasd
proc Hi {test} {
	puts $test	
}
puts [Hi bench]

