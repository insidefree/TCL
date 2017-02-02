set sample "Who seeks shall find."

set result [regexp {[a-z]+} $sample match]
puts "the Result at position: $result matched: $match"

set result [regexp {([A-Za-z]+) +([a-z]+)} $sample match sub1 sub2 ]
puts "Result: $result matched: $match 1: $sub1 2: $sub2"

regsub "find" $sample "will find" sample2
puts "New: $sample2"