#!/usr/bin/perl
$seq = "ATGCGTAGCGTAGCGATGCGATGCGATGCTA";

%count = ("A" => 0, "T" => 0, "G" => 0, "C" => 0);

for ($i = 0; $i < length($seq); $i++) {
    $base = substr($seq, $i, 1);
    $count{$base}++ if exists $count{$base};
}

print "A: $count{A}\n";
print "T: $count{T}\n";
print "G: $count{G}\n";
print "C: $count{C}\n";
