package Chart::Ploticus;

use strict;
use vars qw($VERSION @ISA @EXPORT);

require Exporter;

@ISA = qw(Exporter);

@EXPORT = qw(
	ploticus_init
	ploticus_arg
	ploticus_begin
	ploticus_end
	ploticus_execline
	ploticus_execscript
	ploticus_getvar
	ploticus_setvar
);

$VERSION = '0.01';

BOOT_XS: {
	# If I inherit DynaLoader then I inherit AutoLoader
	require DynaLoader;

	# DynaLoader calls dl_load_flags as a static method.
	*dl_load_flags = DynaLoader->can('dl_load_flags');

	do {__PACKAGE__->can('bootstrap') || \&DynaLoader::bootstrap}->(__PACKAGE__,$VERSION);
}

1;

__END__

=head1 NAME

Chart::Ploticus - Perl API for Ploticus

=head1 SYNOPSIS

	use Chart::Ploticus;
  
	ploticus_init("png","hello.png");
	ploticus_arg("-scale","0.8");
	ploticus_begin();
	ploticus_execline("#proc annotate");
	ploticus_execline("location: 2 2");
	ploticus_execline(" text: Hello World");
	ploticus_end();

=head1 DESCRIPTION

See http://ploticus.sourceforge.net/doc/api.html for the Ploticus API.

=head1 Exported functions
 
  ploticus_init
  ploticus_arg
  ploticus_begin
  ploticus_end
  ploticus_execline
  ploticus_execscript
  ploticus_getvar
  ploticus_setvar

=head1 AUTHOR

Dan Sully E<lt>daniel@cpan.orgE<gt>

=head1 SEE ALSO

libploticus(3)

=cut
