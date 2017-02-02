# Create unique name for file
set tempFileName "test[pid].tcl"

# Opens a file and writes to program

set outfl [open $tempFileName w]

puts $outfl {
    set len [gets stdin line]
    if {$len < 5} {exit -1}

    for {set i $len} {$i >= 0} {incr i -1} {
        append l2 [string range $line $i $i]
    }
    puts $l2
    exit 0;
}

# Flushes the data and closes the file
flush $outfl
close $outfl

# Runs the subroutine from the current and
# Opens a stream to the program

set io [open "|tclsh $tempFileName" r+]

# sends a string to the new program
# *Data must be flushed flush*
puts $io "This string will come back."
flush $io

# Gets response
set len [gets $io line]

puts "Before inversion: 'This string will come back.'"
puts "Reversed string: $line"
puts "String contains $len characters"

# Run the program with the given string input

set invert [exec D:/PROGRA~1/Tcl/bin/tclsh.exe $tempFileName << \
"A ROSE HAS FALLEN TO PAW AZORA"]

# Print the result
puts "the Inversion of 'A ROSE has FALLEN TO PAW AZORA' is \n $invert"

# Clean up
file delete $tempFileName