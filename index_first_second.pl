#!/usr/bin/perl
$str = "cccatcccctacg";
$position1 = index $str, 't';
print "Position of t1 in the string = $position1\n";

$position2 = index $str, 't', $position1 + 1;
print "Position of t2 in the string = $position2\n";
