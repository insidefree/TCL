set fullpath "/usr/home/clif/TCL_STUFF/TclTutor/Lsn.17"
set relativepath "CVS/Entries"
set directorypath "/usr/bin/"

set paths [list $fullpath $relativepath $directorypath]

foreach path $paths {
    set first [string first "/" $path];
    set last [string last "/" $path];

    # A message that the absolute path or relative

    if {$first != 0} {
        puts "$path is a relative path"
    } else {
        puts "$path is an absolute path"
    }

    # If "/" is not the last character in $path, highlight the last word.
    # otherwise, remove the last " / "character, and find the penultimate" / " and
    # select the last word.

    incr last;
    if {$last != [string length $path]} {
        set name [string range $path $last end];
        puts "Path $path, the file name is $name"
    } else {
        incr last -2;
        set tmp [string range $path 0 $last];
        set last [string last "/" $tmp];
        incr last;
        set name [string range $tmp $last end]
        puts "the last directory in $path is $name"
    }

    # CVS is a folder created by the program CVS

    if {[string match "*CVS*" $path]} {
        puts "$path is part of the version control system source code CVS"
    }

    # Compared with the letter "a" to determine how large or small the first character
    set comparison [string compare $name "a"]
    if {$comparison >= 0} {
        puts "$name starts with a lowercase letter\n"
    } else {
        puts "$name starts with a capital letter\n"
    }
}