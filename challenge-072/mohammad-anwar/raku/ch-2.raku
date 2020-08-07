#!/usr/bin/env raku

#
# Perl Weekly Challenge - 072
#
# Task #2: Lines Range
#
# https://perlweeklychallenge.org/blog/perl-weekly-challenge-072
#

use v6.d;

sub MAIN(Str :$file where *.IO.f,
         Int :$A    where * > 0,
         Int :$B    where * >= $A) {

    lines-range($file, $A, $B).join("\n").say;
}

sub lines-range(Str $file, Int $A, Int $B) {

    my @lines = Empty;
    for $A-1 .. $B-1 -> $i {
        @lines.push: $file.IO.lines[$i];
    }

    return @lines;
}
