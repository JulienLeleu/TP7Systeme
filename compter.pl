#!/usr/bin/perl

%map;
my @mots = ();

while ($var = <STDIN>) {
	chomp $var;
	if ($var eq "") {
		last;
	}
	$var = (split (/[^[:word:]]/, $var))[0];
	$map{$var}++;
}

foreach my $k (keys(%map)) {
   print "$k	$map{$k}\n";
}
