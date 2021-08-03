#!/usr/bin/perl
my $dir = ".";
opendir DH, $dir or die "Can’t open $dir: $!";
$count2=1;
while ($name = readdir DH) {
next unless $name =~ /\.mp3$/;
$wav="$count2.wav";
print "$wav\n";
system "vlc --sout \"#transcode{vcodec=none,acodec=s16l,ab=128,channels=2,samplerate=44100}:file{dst='$wav'}\" $name vlc://quit";
$count2++;
}

