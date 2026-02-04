#!/usr/bin/perl
$dna = "ATGGCCATTGTAATGGGCCGCTGAAAGGGTGCCCGATAG";

%codon = (
  "ATG"=>"M","GCC"=>"A","ATT"=>"I","GTA"=>"V","TGG"=>"W",
  "GGC"=>"G","CGC"=>"R","TGA"=>"*","AAG"=>"K","GGG"=>"G",
  "TGC"=>"C","CGA"=>"R","TAG"=>"*"
);

$protein = "";

for ($i=0; $i < length($dna); $i+=3) {
    $cod = substr($dna, $i, 3);
    last if $codon{$cod} eq "*";
    $protein .= $codon{$cod};
}

print "DNA: $dna\n";
print "Protein: $protein\n";
