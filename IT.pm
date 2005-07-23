package POD2::IT;

use 5.005;
use strict;
use vars qw($VERSION);
$VERSION = '0.05';

use base qw(Exporter);
our @EXPORT = qw(print_pod print_pods);

my $pods = {
	perlboot => '5.8.1',
	perlembed => '5.8.6',
	perlfaq1 => '5.8.1',
	perlfaq2 => '5.8.1',
	perlfaq3 => '5.8.1',
	perlfaq4 => '5.8.1',
	perlfaq5 => '5.8.1',
	perlfaq6 => '5.8.1',
	perlfaq7 => '5.8.1',
	perlfaq8 => '5.8.1',
	perlfaq9 => '5.8.1',
	perlfork => '5.8.1',
	perlfunc => '5.8.3',
	perllol => '5.8.6',
	perlrequick => '5.8.1',
	perlstyle => '5.8.1',
	perlthrtut => '5.8.1',
	perluniintro => '5.8.1',
};

sub print_pods {
	print_pod(sort keys %$pods);
}

sub print_pod {
	my @args = @_ ? @_ : @ARGV;

	while (@args) {
		my $pod = lc(shift @args);
		if ( exists $pods->{$pod} ) {
			print "\t'$pod' translated from Perl $pods->{$pod}\n";
		}
		else {
			print "\t'$pod' doesn't yet exists\n";
		}
	}
}

1;
__END__

=head1 NAME

POD2::IT - Italian translation of Perl core documentation

=head1 SYNOPSIS

  %> perldoc POD2::IT::perl*

  use POD2::IT;
  print print_pods();
  print print_pod('pod_foo', 'pod_baz', ...); 

=head1 DESCRIPTION

pod2it è la traduzione in italiano della documentazione in lingua inglese 
che viene distribuita assieme al Perl.

=head1 Come funziona il progetto

L'ultima versione delle traduzioni e` disponibile a tutti,
in lettura, su un server CVS.

=head2 Accedere al server CVS

  cvs -d:pserver:anonymous@cvs.pod2it.sourceforge.net:/cvsroot/pod2it login
  
  cvs -z3 -d:pserver:anonymous@cvs.pod2it.sourceforge.net:/cvsroot/pod2it co modulename

Soltanto un piccolo numero di sviluppatori
registrati ha accesso in scrittura al repository. Ciascuno di questi
sviluppatori e` il responsabile di un certo numero di pagine della
documentazione. Il responsabile di un documento ne sovraintende la
traduzione, facendo da referente per l'invio di patch, traducendo
lui stesso il testo, oppure assegnando ad un collaboratore la
traduzione dell'intero documento.

La lista dei responsabili dei moduli e` consultabile a questo URL:
L<http://pod2it.sourceforge.net/pods/responsibles.html>
	
=head1 Come collaborare

Abbiamo bisogno sia di traduttori che di revisori. 
Come revisori, potete proporre patch ad un traduzione, sottoponendole
al responsabile del documento in questione.
Come traduttori, avete due strade. Potete limitarvi a tradurre un singolo
documento, mandandolo al suo responsabile. Oppure potete diventare voi
stessi responsabili per un gruppo di documenti. Per farlo e` necessario
possedere un account Sourceforge.

La lista dei responsabili dei moduli e` consultabile a questo URL:
L<http://pod2it.sourceforge.net/pods/responsibles.html>

=head1 AUTHORS

pod2it is a larger translation project owned by larsen, dree, dada, arthas, 
dakkar, bepi & others.
See L<http://pod2it.sourceforge.net> for more detalis.
First POD2::IT package released by Enrico Sorcinelli <bepi at perl.it>

=head1 SEE ALSO

L<perl>.

=cut
