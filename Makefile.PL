use inc::Module::Install;

name          ( 'Perl-Editor'                  );
abstract      ( 'The Perl Refactoring Editor API' );
author        ( 'Adam Kennedy <cpan@ali.as>'   );
version_from  ( 'lib/Perl/Editor.pm'           );
license       ( 'perl'                         );
requires      ( 'perl'              => '5.005' );
requires      ( 'Carp'              => 0       );
requires      ( 'Class::Inspector'  => '1.06'  );
requires      ( 'Params::Util'      => '0.05'  );
requires      ( 'Module::Pluggable' => '2.2'   );    
build_requires( 'Test::More'        => '0.47'  );
build_requires( 'File::Spec'        => '0.80'  );

auto_install();

&WriteAll;
