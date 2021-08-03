#!/usr/bin/perl
my $dir = ".";
opendir DH, $dir or die "Can't open $dir: $!";
while ($name = readdir DH) {
next unless $name =~ /\.wav$/;
print "Procesando: $name\n";
@fil = split(/\./, $name);
$txt= $fil[0].'.txt';
$txt2='> '.$txt;
$txt3='>'.$txt;
print "java ReadAudio $name $txt2\n";
system "java ReadAudio $name $txt2";
print "java listo\n";
open(ARC, $txt) or die "Can't open $txt";
@archi=<ARC>;
close(ARC);
system "rm $txt";
print "Editando: $txt\n";
open(OUT, $txt3);
print OUT $archi[4];
print OUT "\n";
close(OUT);
print "Ok: $name\n\n";
}

