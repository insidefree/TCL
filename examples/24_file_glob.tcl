# Collect the file names...

set ail1 [glob c:/windows/system32/w*.dll]
set ail2 [glob c:/windows/win*.exe]

# Set format to list

set fmt "%-17s %13s %-7s"
puts "[format "$fmt Review" "Folder" "Name" "Type"]"

# Cycle passing through all the values collected glob
# To determine the sizes and types
# Output

foreach name [concat $ail1 $ail2] { 
    # Split the name into parts to output:
    set dir [file dirname $name]
    set filename [file tail $name]

    # Type definition
    set type [file type $name]

    # Output the results
    puts -nonewline "[format $fmt $dir $filename $type]"

    # Depending on the type of output size (for file)
    # or the name of the addressed file (for symbolic links)

    if {[string match [file type $name] "link"]} {
        puts " points to: [file readlink $name]"
    }

    if {[string match [file type $name] "file"]} {
        puts "size: [file size $name] bytes"
    }
}