#!/usr/bin/perl

%codon_table = (
'UCA'=>'S','UCC'=>'S','UCG'=>'S','UCU'=>'S',
'UUC'=>'F','UUU'=>'F','UUA'=>'L','UUG'=>'L',
'UAC'=>'Y','UAU'=>'Y','UAA'=>'','UAG'=>'',
'UGC'=>'C','UGU'=>'C','UGA'=>'*','UGG'=>'W',
'CUA'=>'L','CUC'=>'L','CUG'=>'L','CUU'=>'L',
'CCA'=>'P','CCC'=>'P','CCG'=>'P','CCU'=>'P',
'CAC'=>'H','CAU'=>'H','CAA'=>'Q','CAG'=>'Q',
'CGA'=>'R','CGC'=>'R','CGG'=>'R','CGU'=>'R',
'AUA'=>'I','AUC'=>'I','AUU'=>'I','AUG'=>'M',
'ACA'=>'T','ACC'=>'T','ACG'=>'T','ACU'=>'T',
'AAC'=>'N','AAU'=>'N','AAA'=>'K','AAG'=>'K',
'AGC'=>'S','AGU'=>'S','AGA'=>'R','AGG'=>'R',
'GUA'=>'V','GUC'=>'V','GUG'=>'V','GUU'=>'V',
'GCA'=>'A','GCC'=>'A','GCG'=>'A','GCU'=>'A',
'GAC'=>'D','GAU'=>'D','GAA'=>'E','GAG'=>'E',
'GGA'=>'G','GGC'=>'G','GGG'=>'G','GGU'=>'G',
);

print "Enter DNA filename: ";
chomp($file = <STDIN>);

open(ABC, $file);
$dna = join('', <ABC>);
close(ABC);

$dna = uc($dna);
$dna =~ s/[^ATCG]//g;

$rna = $dna;
$rna =~ tr/T/U/;

$protein = '';

for ($i = 0; $i <= length($rna)-3; $i = $i + 3) {
    $codon = substr($rna, $i, 3);
    $protein .= $codon_table{$codon};
}

open(WRITE, 'protein_sequence.txt');
print WRITE $protein, "\n";
close(WRITE);

print "RNA sequence: $rna\n";
print "Protein sequence: $protein\n";
print "Translation complete! Saved in protein_sequence.txt\n";
