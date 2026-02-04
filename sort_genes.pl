#!/usr/bin/perl
@genes = qw(BRCA1 TP53 EGFR MYC APC KRAS BRAF);

print "Original gene array: @genes\n\n";

@sorted_genes = sort(@genes);

print "Sorted gene array: @sorted_genes\n";
