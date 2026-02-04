#!/usr/bin/perl
@dna = qw(ATG CGT GAA TAA CCC GGG TTT AAA CGA TGC);

print "Original DNA fragments:\n@dna\n";

splice(@dna, 4, 3, qw(ACT GGA TCC));

print "Modified DNA fragments:\n@dna\n";
