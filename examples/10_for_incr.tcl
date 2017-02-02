for {puts "Start"; set i 0} {$i < 2} {incr i; puts "After incr: $i"; } {
    puts "Inside first loop: $i"
}

# Since the condition is tested before executing the command
# this loop does not execute the command

for {puts "Start"; set i 3} {$i < 2} {incr i; puts "After incr: $i"; } {
    puts "Inside second loop: $i"
}

# The while loop equivalent to the first for loop:

puts "Start"; set i 0;
while {$i < 2} {
    puts "Inside first loop: $i"
    incr i; 
    puts "After incr: $i"; 
}