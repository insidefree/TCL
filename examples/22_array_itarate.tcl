array set array1 [list \
{123} {Alexander Antufiev} \
{234} {Boris Bobrov} \
{345} {Valery Voronov} \
{456} {Grigory Gorbachev} ]

#
# Brute force search through the array in a foreach loop
#

foreach id [array names array1] {
    puts "$array1($id) cell index: $id"
}

#
# Two procedures iterate through one array
#

proc getrec_format1 {arrayVar searchid} {
global $arrayVar
upvar $searchid id
set record [array nextelement $arrayVar $id]
    return "Current index: $record"
}

proc getrec_format2 {arrayVar searchid} {
global $arrayVar 
upvar $searchid id
set record [array nextelement $arrayVar $id];
    return "Current index: $record"
}

set searchId [array startsearch array1]

puts ""
set item 0
    while {[array anymore array1 $searchId]} {
incr item;
if {[expr $item %2]} {
    set format1 [getrec_format1 array1 searchId]
    puts "Item number: $item bust 1: $format1"
    } else {
        set format2 [getrec_format2 array1 searchId]
        puts "Item number: $item 2 bust: $format2"
    }
}