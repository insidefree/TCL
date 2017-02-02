
    set len [gets stdin line]
    if {$len < 5} {exit -1}

    for {set i $len} {$i >= 0} {incr i -1} {
        append l2 [string range $line $i $i]
    }
    puts $l2
    exit 0;

