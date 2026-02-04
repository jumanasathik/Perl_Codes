#!/usr/bin/perl

print "Enter the DNA sequence: ";
chomp($sequence = <STDIN>);

$sequence = uc($sequence);
print "Sequence before reverse transcription: $sequence\n";

$sequence =~ s/T/U/g;
print "Sequence after reverse transcription: $sequence\n";
