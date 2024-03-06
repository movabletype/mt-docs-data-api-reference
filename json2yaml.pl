#!/usr/bin/perl

use strict;
use warnings;
use feature qw/say/;
use JSON;
use YAML;
use Data::Dumper; $Data::Dumper::Indent = 1;

my $filename = $ARGV[0];

exit 1 unless $filename;

open my $fh, '<', $filename;
my $file = do { local $/; <$fh> };
close $fh;

my $json = JSON::decode_json($file);
local $YAML::Stringify = 1;
my $yaml = Dump($json);
say $yaml;
