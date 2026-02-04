#!/usr/bin/perl
@dna = qw(ATC TGA ATC GAT GCT AGC TGA TCG TAG CTA GCT GAT CGA TGC TAG CTA GCC);

print "Original DNA array: @dna\n";

$first = shift(@dna);
print "After shift (removed first): $first\n";
print "DNA array now: @dna\n";

unshift(@dna, 'GGA', 'CCC');
print "After unshift: @dna\n";

$last = pop(@dna);
print "After pop (removed last): $last\n";
print "DNA array now: @dna\n";

push(@dna, 'TGC', 'GAT');
print "After push: @dna\n";
