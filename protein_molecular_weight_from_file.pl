#!/usr/bin/perl

%aa = (
A=>89.09, R=>174.20, N=>132.12, D=>133.10,
C=>121.15, Q=>146.15, E=>147.13, G=>75.07,
H=>155.16, I=>131.17, L=>131.17, K=>146.19,
M=>149.21, F=>165.19, P=>115.13, S=>105.09,
T=>119.12, W=>204.23, Y=>181.19, V=>117.15,
);

print "Enter filename: ";
$file = <STDIN>;
chomp($file);

open(PRTN, $file);
@seq = <PRTN>;
close(PRTN);

$protein = join('', @seq);
$protein =~ s/\s//g;
$protein = uc($protein);

$mw = 0;
foreach $a (split //, $protein) {
    $mw = $mw + ($aa{$a} || 0);
}

$len = length($protein);
if ($len > 1) {
    $mw = $mw - (($len - 1) * 18.015);
}

print "Protein: $protein\n";
printf "Molecular weight : %.2f Da (%.2f kDa)\n", $mw, $mw / 1000;
