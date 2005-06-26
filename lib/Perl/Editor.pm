package Perl::Editor;

=pod

=head1 NAME

Perl::Editor - The Perl Refactoring Editor API

=head1 DESCRIPTION

With the creation of L<PPI> it became possible to do parsing, refactoring,
and other tasks to Perl source code. Rather than requiring each editor to
reimplement every single task all over again, they can instead implement
an interface to C<Perl::Editor>.

C<Perl::Editor> is intended to provide a single API that will allow
editor-related functions to be written once, as a C<Perl::Editor::Plugin>
class, and then be installed and used with B<any> editor that acts as
a C<Perl::Editor> host.

It is also intended to make it much easier to let you write your own editor
plugins, and then use it with whatever your favourite editor happens to be!

=head1 STATUS

This version is intended as a statement of intent (and to lock off the
namespace. It's mine dammit! MINE!!!)

However, work is underway on a demonstration editor and commands, based
on the Proton CE editor.

A demonstration will be released at OSCON and available online shortly after.

=head1 WRITING A PLUGIN

We'll get back to you on that.

=head1 MAKING YOUR EDITOR COMPATIBLE

Yeah, that too. :)

=cut

use strict;
use PPI;
use Module::Pluggable;

use vars qw{$VERSION};
BEGIN {
	$VERSION = '0.01';
}

1;

=pod

=head1 TO DO

Pretty much everything. Stay tuned.

=head1 SUPPORT

Bugs should always be submitted via the CPAN bug tracker, located at

L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Perl-Editor>

For general comments, contact the author.

=head1 AUTHOR

Adam Kennedy, L<http://ali.as/>, cpan@ali.as

=head1 SEE ALSO

L<PPI>

=head1 COPYRIGHT

Copyright (c) 2005 Adam Kennedy. All rights reserved.
This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

The full text of the license can be found in the
LICENSE file included with this module.

=cut
