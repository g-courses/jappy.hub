#!/usr/bin/perl
open(CONF, "</etc/webmin/miniserv.conf") || die "Failed to open /etc/webmin/miniserv.conf : $!";
while(<CONF>) {
        $root = $1 if (/^root=(.*)/);
        }
close(CONF);
$root || die "No root= line found in /etc/webmin/miniserv.conf";
$ENV{'PERLLIB'} = "$root";
$ENV{'WEBMIN_CONFIG'} = "/etc/webmin";
$ENV{'WEBMIN_VAR'} = "/var/webmin";
delete($ENV{'MINISERV_CONFIG'});
chdir("$root/authentic-theme");
exec("$root/authentic-theme/stats.pl", @ARGV) || die "Failed to run $root/authentic-theme/stats.pl : $!";
