set b [list a b {c d} {e {k l}}]
puts "Creating list of list: $b\n"

#set i 0;
#foreach j $b {
#    puts "$j is item number $i of the list b"
#    incr i;
#}

set b [split "a b {c d} {e {k l}}"]
puts "create a list using the split command: $b\n"

set a [concat a b {c d} {e {k l}}]
puts "Create list command concat: $a\n"

lappend a {m n o} ;# Remember {m n o} - one element
puts "After the command lappend: $a\n"

set b [linsert $a 3 "1 2 3"] ;# "1 2 3" - one element
puts "After linsert at position 3: $b\n"

# "AA" and "BB" the two elements of the list.
set b [lreplace $b 3 5 "AA" "BB"] 
puts "After lreplace replace 3 elements in 2 element at position 3: $b\n"