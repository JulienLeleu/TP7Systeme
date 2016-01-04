#!/usr/bin/perl

open(F,">f") or die "open : $!";
open(F1,">f1") or die "open : $!";
open(F2,">f2") or die "open : $!";

$i = 0;
foreach(<STDIN>)
{
    @liste = split(/,|;|\t|\s/);

    print F "$i;$liste[0];$liste[1]\n";

    if($liste[2] == 1) 
    {
        print F1 "$i;$liste[3]\n";
    }
    if($liste[2] == 2)
    {
        print F2 "$i;$liste[3]\n";
    }
    $i++;
}
close(F);
close(F1);
close(F2);