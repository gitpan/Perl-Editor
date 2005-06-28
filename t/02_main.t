#!/usr/bin/perl -w

# Load test the Perl::Editor module

use strict;
use lib ();
use UNIVERSAL 'isa';
use File::Spec::Functions ':ALL';
BEGIN {
	$| = 1;
	unless ( $ENV{HARNESS_ACTIVE} ) {
		require FindBin;
		$FindBin::Bin = $FindBin::Bin; # Avoid a warning
		chdir catdir( $FindBin::Bin, updir() );
		lib->import('blib', 'lib');
	}
}

use Perl::Editor;
use Test::More 'tests' => 2;

my @actions = Perl::Editor->actions;
is( scalar(@actions), 1, '->actions returns 1 action' );
isa_ok( $actions[0], 'Perl::Editor::Action' );

1;
