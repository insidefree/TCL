set fileid [open "testfile" w+]

seek $fileid 0 start

puts $fileid "This is a test.\just a test."

seek $fileid 0 start

set chars [gets $fileid line1];
set line2 [gets $fileid];

puts "$chars characters in string \"$line1\""
puts "Second line in file: \"$line2\""

seek $fileid 0 start

set buffer [read $fileid];
puts "\nlist file contains the text:\n$buffer"
close $fileid