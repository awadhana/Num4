$a = 0;
sub function {
return $a;
}
sub scopeST {
my $a = 1; 
return f();
}

print "static output: ";
print scopeST (); 
print "\n";
$b = 0;
sub c {
return $b;
}
sub scopeDy {
local $b = 1; 
return c();
}
print "dynamic output: ";
print scopeDy (); 
print "\n";
