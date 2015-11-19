#!/usr/bin/perl

my $isOpen=1;
my $file = $ARGV[0];
open(FIC,$file) or $isOpen=0;

while( $l = <FIC> or ( !$isOpen and $l = <STDIN> )) {
	chomp $l;
	print "$. $l\n";
}
close(FIC);
