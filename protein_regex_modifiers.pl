#!/usr/bin/perl

$protein = "MKWVTFISLLFLFSSAYSRGVFRRDT\nHKSEIAHRFKDLGE";

if ($protein =~ /(.*)/) {
    print "Full sequence: $protein\n";
}

if ($protein =~ /^MKW/) {
    print "Sequence starts with MKW\n";
}

if ($protein =~ /DLGE$/m) {
    print "Sequence ends with DLGE\n";
}

if ($protein =~ /SRG.HKS/) {
    print "No modifier: Match found\n";
} else {
    print "No modifier: No match\n";
}

if ($protein =~ /SRG.HKS/s) {
    print "/s modifier: Match found\n";
} else {
    print "/s modifier: No match\n";
}

if ($protein =~ /^HK/m) {
    print "/m modifier: Found line starting with HK\n";
} else {
    print "/m modifier: No match\n";
}

if ($protein =~ /SRG.HKS/sm) {
    print "/sm modifier: Match found\n";
} else {
    print "/sm modifier: No match\n";
}

$protein =~ m/SRG/;
print "Before: $`\n";
print "Matched: $&\n";
print "After: $'\n";
