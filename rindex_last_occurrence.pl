#!/usr/bin/perl
$str = "ATCGAGCTTAGCA";
$position1 = rindex $str, 'A';
print "Last position of A in the string = $position1\n";

$position2 = rindex $str, 'A', $position1 - 1;
print "Second-last position of A in the string = $position2\n";
