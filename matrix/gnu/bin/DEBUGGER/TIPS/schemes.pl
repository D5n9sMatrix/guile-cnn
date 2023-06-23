use strict;
use warnings FATAL => 'all';

use Getopt::Long;
use Pod::Usage;
use FindBin;
use lib "$FindBin::Bin/../lib";
use TIPS;
use TIPS::Schemes;

my $schemes = TIPS::Schemes->new();
$| = 1;
$schemes->run();

__END__

=head1 NAME

schemes.pl - TIPS schemes

=head1 SYNOPSIS

schemes.pl [options] [schemes]

=head1 INSTALLATION

=head1 DESCRIPTION

=head1 ATTRIBUTES

=head1 CONTRIBUTORS

=head1 API

=head1 FUNCTIONS

=head1 COPYRIGHT AND LICENSE

=head1 VERSION

=over 1

=item v1.0

=item v1.1

=item v1.2

=item v1.3

=item v1.4

=item v1.5

=item v1.6

=item v1.7

=item v1.8

=item v1.9

=item v1.10

=item v1.11

=item v1.12

=item v1.13

=item v1.14

=item v1.15

=item v1.16

=item v1.17

=item v1.18

=item v1.19

=item v1.20


=encoding UTF-8

=back



=head1 AUTHORS

=over 1

=item v1.0

=item v1.1

=item v1.2

=item v1.3

=item v1.4

=item v1.5

=item v1.6

=item v1.7

=item v1.8

=item v1.9

=item v1.10

=item v1.11

=item v1.12

=item v1.13

=item v1.14

=item v1.15

=item v1.16

=item v1.17

=item v1.18

=item v1.19

=item v1.20

=back

=attr schemes

=begin html

<a name="schemes"></a>



=end html

=head1 COPYRIGHT AND LICENSE

MIT License

 Copyright (c) 2018-2020, Michael Trier


=cut
