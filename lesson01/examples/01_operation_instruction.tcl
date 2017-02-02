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