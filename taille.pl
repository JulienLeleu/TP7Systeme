#!/usr/bin/perl

my $directory = '.';

opendir (DIR, $directory) or die $!;

while (my $file = readdir(DIR)) {
	$taille=(stat($file))[7];
	print "$file\t$taille\n";
}

closedir(DIR);
exit 0;
