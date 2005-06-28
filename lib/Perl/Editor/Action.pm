package Perl::Editor::Action;

# Data package to store Perl::Editor actions

use strict;
use Params::Util '_CODE',
                 '_ARRAY',
                 '_CLASS';
use Class::Inspector ();

use vars qw{$VERSION};
BEGIN {
	$VERSION = '0.02';
}





#####################################################################
# Constructor

sub new {
	my $class = ref $_[0] ? ref shift : shift;
	my %param = @_;

	# Check the params
	my $api = _CLASS($param{api})         or return 'No API class provided';
	$api eq 'PPI::Transform'              or return "Unsupported API 'PPI::Transform'";
	my $context = _CLASS($param{context}) or return 'No action context provided';
	$context eq 'PPI::Document'           or return "Unsupported context '$context'";
	my $apiclass = _CLASS($param{class})  or return 'Did not provide an implementation class';
	my $menu = _ARRAY($param{menu})       or return 'Did not provide a default menu location';
	if ( grep { ! defined $_ or ref $_ or ! length $_ } @$menu ) {
		return 'Menu location is not a simple set of strings';
	}

	# Create the basic object
	my $self = bless {
		api     => $api,
		context => $context,
		class   => $apiclass,
		menu    => $menu,
		}, $class;

	$self;
}

sub menu    { $_[0]->{menu}    }
sub api     { $_[0]->{api}     }
sub context { $_[0]->{context} }
sub class   { $_[0]->{class}   }

1;
