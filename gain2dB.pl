#!/usr/bin/perl

use strict;

my $input = shift;
print gain2dB( $input ) . "\n";

sub gain2dB {
	my $gain = shift;
	return( 20 * log10( $gain ) );
}

sub dB2gain {
	my $dB = shift;
	return( 10 ** ( $dB / 20 ) );
}

sub log10 {
	my $n = shift;
	return( log( $n ) / log( 10 ) );
}
