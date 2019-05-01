#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

use App::Spec;
my @specs = sort glob "specs/*.yaml";

my $readme = do { open my $fh, '<', 'README.md' or die $!; local $/; <$fh> };

my $list = '';

for my $spec (@specs) {
    my $app = App::Spec->read($spec);
    $list .= sprintf "* `%s` - %s\n", $app->name, $app->title;
}

$readme =~ s/## List of commands\n\n.*?\n\n/## List of commands\n\n$list\n/s;

open my $fh, '>', 'README.md' or die $!;
print $fh $readme;
close $fh;

say "Generated README.md";
