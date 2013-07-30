#* Name: IPCdb
#* Info: Human friendly IPC
#* Author: Pawel Guspiel (neo77), <neo@cpan.org>

package IPCdb::Msg;

use 5.006;
use strict;
use warnings FATAL => 'all';

our $VERSION = 1.0;

use Params::Dry qw(:short);         # to have nice parameters
use IPCdb::IPCdb_h;                 # header file for IPCdb
use Mouse;
    
    #=------------------------------------------------------------------------( attributes )

    has 'id' => (                   #  
        is        => 'ro',
        writer    => '_id',
    );

    has 'dbh' => (
        is        => 'rw',
    );

    sub _insert_record {

    }
    
    sub _delete_record {

    }
    
    sub _get_record {

    }



    sub _init_datatable {
        my $self = __@_;
        
        my $p_sql_table = op 'sql_table';
     
        $self->dbh->do("CREATE TABLE $p_sqli_table ");
    }
    sub send_message {
        my $self = __@_; 
        
        my $p_to_id     = rq 'to_id',   'String';       # receiver of the message
        my $p_message   = rq 'message', 'String';       # message body
        my $p_tags      = rq 'tags',    'List::String';       # message body


        print "Message to: $p_to_id, text: $p_message\n";

    }


    sub receive_message {

    }
    
    sub reply_message {

    }

    sub confirmation_message {

    }

    send_message(to_id => 'Pawel', message => 'a mam to w dupie!');

__END__
=head1 NAME

IPCdb::Msg - Human friednly IPC

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

The module is takeing care of whole communication between processes.
It is the ground for other modules like IPCdb::Queues

Perhaps a little code snippet.

    use IPCdb::Msg;

    my $foo = IPCdb::Msg->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

sub send {
}

=head2 function2

=cut

sub function2 {
}

=head1 AUTHOR

Pawel Guspiel, C<< <neo at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-ipcdb at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=IPCdb>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc IPCdb


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=IPCdb>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/IPCdb>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/IPCdb>

=item * Search CPAN

L<http://search.cpan.org/dist/IPCdb/>

=item * Clone me from GitHub

L<git://github.com/neo77/IPCdb.git>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2013 Pawel Guspiel.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


=cut

1; # End of IPCdb
