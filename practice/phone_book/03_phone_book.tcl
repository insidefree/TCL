oo::class create PhoneBook {
    variable name
    
    constructor args {
        variable v 0
        variable phoneNo
        variable email
        set name $args
    }

    method add x {
        variable v
        incr v $x
    }

    method value {} {
        variable v
        return $v
    }

    method getName {} {
        variable name
        return $name
    }
}

set pb [PhoneBook new "newNAME"]
puts "Start with [$pb value]"
for {set i 1} {$i <= 5} {incr i} {
    puts "Add 4I to get [$pb add $i]"
}
puts "local value [$pb getName]"