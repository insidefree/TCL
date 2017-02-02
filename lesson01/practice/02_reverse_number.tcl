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