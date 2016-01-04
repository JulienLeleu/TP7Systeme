#!/usr/bin/perl

print("Fichier d'entrée : ");
$entree = <STDIN>;
chomp($entree);

print("Fichier de sortie : ");
$sortie = <STDIN>;
chomp($sortie);

print("Motif a remplacer : ");
$aRemplacer = <STDIN>;
chomp($aRemplacer);

print("Motif de remplacement : ");
$remplacement = <STDIN>;
chomp($remplacement);

print("Ecrire le remplacement de ", $aRemplacer, " par ", $remplacement, " depuis ", $entree, " vers ", $sortie, "?(O/N) ");
$choix = <STDIN>;
chomp($choix);

if($choix eq "O")
{
    open(FIC,"$entree") or die ("Erreur lors de l'ouverture du fichier");
    @lignes = <FIC>;

    open(FILE, '>'.$sortie);
    
    foreach $ligne (@lignes)
    {
		$ligne =~ s/$aRemplacer/$remplacement/g;
		print FILE $ligne;
    }
}
else
{
    print("Sortie\n");
}
