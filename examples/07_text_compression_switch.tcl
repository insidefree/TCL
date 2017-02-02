# Setting variables that will be compared
set x "ONE";
set y 1;
set z "ONE";


# Can be written as
switch $x "ONE" "puts ONE=1" "TWO" "puts TWO=2" "default" "puts Mismatch"

# So easier to read, samples to the left, and the corresponding commands on the right
switch $x \
"ONE" "puts ONE=1" \
"TWO" "puts TWO=2" \
"default" "puts Mismatch";

# These two examples show the difference in using a switch
# with braces and without
# Look command switch may be too difficult to write
# it in one line

# This form allows substitution in the samples

switch $x \
 "$z" {set y1 [expr $y+1]; puts "MATCH \$z. $y + $z is $y1" } \
"ONE" {set y1 [expr $y+1]; puts "MATCH ONE. $y + one is $y1"} \
TWO {set y1 [expr $y+2]; puts "MATCH TWO. $y + two is $y1" } \
"THREE" {set y1 [expr $y+3]; puts "MATCH THREE. $y + three is $y1" } \
"default" {puts "$x does not match any one option";}

# This form does not allow the interpreter to do the lookup

switch $x {
"$z" {set y1 [expr $y+1]; puts "MATCH \$z. $y + $z is $y1" }
"ONE" {set y1 [expr $y+1]; puts "MATCH ONE. $y + one is $y1"}
 TWO {set y1 [expr $y+2]; puts "MATCH TWO. $y + two is $y1"}
"THREE" {set y1 [expr $y+3]; puts "MATCH THREE. $y + three is $y1"}
"default" {puts "$x does not match any version"}
}