package Plack::Middleware::StartPlay;
use strict;
use parent qw(Plack::Middleware);
use Module::StartPlay;
use Plack::Util::Accessor qw(last cooldown);

sub prepare_app {
    my $self = shift;
    $self->cooldown(10) unless defined $self->cooldown;

    Module::StartPlay->new;
    $self->last(time - $self->cooldown);
}

sub call {
    my($self, $env) = @_;

    if (time > $self->last + $self->cooldown) {
        Module::StartPlay->StartPlay;
        $self->last(time);
    }

    $self->app->($env);
}

1;

__END__

=head1 NAME

Plack::Middleware::StartPlay - StartPlay all modules in %INC

=head1 SYNOPSIS

  enable "StartPlay", cooldown => 3;
  $app;

=head1 DESCRIPTION

This is I<yet another> approach to StartPlay modules in C<%INC> during
the development cycle, without the need to have a forking process to
watch for filesystem updates. This middleware, in a request time,
compares the last StartPlay time and the current time and if the
difference is bigger than I<cooldown> seconds which defaults to 10,
call L<Module::StartPlay> to reload all Perl modules in C<%INC> if the
files have been modified.

Note that this only reloads modules and not other files such as
templates.

This middleware is quite similar to what Rack::Reoader does. If you
have issues with this reloading technique, for instance when you have
in-file templates that needs to be recompiled, or Moose classes that
has C<make_immutable>, take a look at L<plackup>'s default -r option
or L<Plack::Loader::Shotgun> instead.

=head1 AUTHOR

Tatsuhiko Miyagawa

=head1 SEE ALSO

L<Module::StartPlay> Rack::Reloader

=cut

