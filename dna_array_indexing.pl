#!/usr/bin/perl
@dna_fragments = qw(ATG CGT GAA TAA CCC GGG TTT AAA CGA TGC);

print "First fragment: $dna_fragments[0]\n";
print "Fourth fragment: $dna_fragments[3]\n";
print "Last fragment: $dna_fragments[$#dna_fragments]\n";
