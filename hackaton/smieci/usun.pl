#!/usr/bin/perl -w

$|=1;

open (FH, "out.txt");
while (<FH>){
	chomp;
	@a=split " ", $_;
	for $i (0 .. $#a){
		$h{$a[$i]}++;
	}
}
close (FH);

while (<>){
	$a=1;
	foreach $k (keys %h){
		$a = 0 if $_ =~ /$k/;
	}
	print if $a;

}
