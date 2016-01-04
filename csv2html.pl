#!/usr/bin/perl

print "<table>\n";

while ($line = <STDIN>) {
	chomp $line;
	print "\t<tr>\n";
	if ($. == 1) {
		$line =~ s/;/<\/th>\n\t\t<th>/g;
		print "\t\t<th>$line</th>\n";
	}
	else {
		$line =~ s/;/<\/td>\n\t\t<td>/g;
		print "\t\t<td>$line</td>\n";
	}
	print "\t</tr>\n";
}
print "</table>\n";
