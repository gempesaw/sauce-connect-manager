#! /usr/bin/perl

use strict;
use warnings;
use LWP::UserAgent;
use JSON qw(decode_json);

die "Wrong arguments." unless scalar @ARGV > 1;
print checkTunnel(@ARGV);

sub checkTunnel {
    my ($user, $key, $action) = @_;

    my $auth = $user . ":" . $key;
    my $tunnelUrl = "https://" . $auth . '@saucelabs.com/rest/v1/' . $user . '/tunnels/';
    my $ua = LWP::UserAgent->new();
    my $res = $ua->get( $tunnelUrl );
    my $tunnels = decode_json($res->decoded_content);

    unless (defined $tunnels->[0]) {
        my $restart = "$ENV{HOME}/sauce restart\n";
        `restart` if $action eq "restart";
        return $restart;
    }

    $res = $ua->get($tunnelUrl . $tunnels->[0]);
    my $details = decode_json($res->decoded_content);
    return (scalar localtime) . ": $tunnels->[0] is $details->{status}\n";
}
