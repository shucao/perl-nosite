package nosite;

use strict;
use warnings;

use Config;

my $sitelib  = $Config{sitelib};
my $sitearch = $Config{sitearch};

sub import {
  @INC = grep { $_ ne $sitelib and $_ ne $sitearch } @INC;
  return;
}

1;
__END__

=head1 NAME

nosite - @INC without sitelib and sitearch

=head1 SYNOPSIS

    use nosite;

    perl -Mnosite script

=head1 DESCRIPTION

blah blah ...

=head1 AUTHOR

Shu Cao

=cut
