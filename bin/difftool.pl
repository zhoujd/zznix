#!/usr/bin/env perl

use warnings;
use strict;
use Getopt::Std;
use Cwd;
use FindBin;

$| = 1;

my $emacs_flag = "y";

sub diff_extern {
    my $diff_a = shift;
    my $diff_b = shift;

    my @diff_tool = (
        "$ENV{'ZZNIX_HOME'}/home/zhoujd/zztools/perforce/p4merge $diff_a $diff_b",
        "$ENV{'ZZNIX_HOME'}/home/zhoujd/zztools/bcompare/bcompare $diff_a $diff_b",
    );

    my $diff_select = $diff_tool[1];

    (system("$diff_select") == 0) || die "Cannot run $diff_select $!";
}

sub diff_emacs {
    my $diff_a = shift;
    my $diff_b = shift;

    (system("cmd //c start c:/zznix/cmd/emacs-diff.cmd $diff_a $diff_b") == 0) || die "Cannot run $!";
}

sub main {
   if ("$emacs_flag" eq "y" || "$emacs_flag" eq "Y") {
        diff_emacs($ARGV[0], $ARGV[1]);
   } else {
        diff_extern($ARGV[0], $ARGV[1]);
   }
}

main;
