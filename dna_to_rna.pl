#!/usr/bin/perl
$dna = "ATGCGTACGTA";

$rna = $dna;
$rna =~ s/T/U/g;

print "DNA : $dna\n";
print "RNA : $rna\n";

