oo::class create Contact {
    variable name
    variable phoneNo
    variable email

    constructor {args} {
        variable argsList "[split {*}$args]"
        set name "[lindex $argsList 0]"
        set phoneNo "[lindex $argsList 1]"
        set email "[lindex $argsList 2]"
    }

    method setName {args} {
        set name $args
    }
    method getName {} {
        return $name
    }

    method setPhoneNo {args} {
        set phoneNo $args
        
    }
    method getPhoneNo {} {
        return $phoneNo
    }

    method setEmail {args} {
        set email $args
    }
    method getEmail {} {
        return $email
    }
}

set contact [Contact new "bench 555-55-55-55 bench@company.com"]
puts "my name is: [$contact getName]"
puts "my phoneNo is: [$contact getPhoneNo]"
puts "my email is: [$contact getEmail]"

$contact setName {new}
puts "new name is: [$contact getName]"