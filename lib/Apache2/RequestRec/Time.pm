
package Apache2::RequestRec::Time;

use 5.008000;
use strict;
use warnings FATAL => 'all';

our $VERSION = '1.0';

use XSLoader ();
XSLoader::load('Apache2::RequestRec::Time', $VERSION);

1;

=head1 NAME

Apache2::RequestRec::Time - Bring microseconds to Apache2::RequestRec

=head1 SYNOPSIS

	use Apache2::RequestRec::Time ();

	# have Apache2::RequestRec object $r

	my $duration = $r->request_duration_microseconds();

=head1 DESCRIPTION

The B<Apache2::RequestRec::Time> extends the B<Apache2::RequestRec>
functionality with method B<request_duration_microseconds()>. That
makes it possible to retrieve from Perl information equivalent to
Custom Log Format's C<%D>: the time taken to serve the request, in
microseconds.

=head1 API

=over 4

=item request_duration_microseconds($r)

Parameters: $r: Apache2::RequestRec object

Returns: time taken to serve the request, in microseconds. Actually,
it's time since $r->request_time(). It is equivalent to %D in Custom
Log Formats.

=item request_duration($r)

Parameters: $r: Apache2::RequestRec object

Returns: time taken to serve the request, in seconds. Equivalent to
%T in Custom Log Formats.

=item request_time_microseconds($r)

Parameters: $r: Apache2::RequestRec object

Returns: time the request was received, in microseconds since epoch.
This is microsecond-ish variant of $r->request_time().

=back

=head1 AUTHOR

Jan Pazdziora

=head1 LICENSE

Licensed under the Apache License, Version 2.0:

	http://www.apache.org/licenses/LICENSE-2.0

