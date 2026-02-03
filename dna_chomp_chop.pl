#!/usr/bin/perl
use strict;
use warnings;

my $dna_seq = "ATGCGTACGTA\n";

print "Original DNA sequence with newline: $dna_seq";

chomp($dna_seq);
print "After chomp (newline removed): $dna_seq\n";

chop($dna_seq);
print "After chop (last base removed): $dna_seq\n";
