set list [list {Washington 1789} {Adams 1797} {Jefferson 1801} \
{Madison 1809} {Monroe 1817} {Adams 1825} ]

set x [lsearch $list Washington*];
set y [lsearch $list Madison*];
incr x; incr y -1 ;# set a period of

set subsetlist [lrange $list $x $y]

puts "Between Washington and Madison was the next President:"
foreach item $subsetlist {
    puts "Began to rule in [lindex $item 1]: President [lindex $item 0] "
}

set x [lsearch $list Madison*]

set srtlist [lsort $list];
set y [lsearch $srtlist Madison*];

puts "\n$x was in front of Madison in history"
puts "$y before Madison by order"
