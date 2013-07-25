#!/usr/bin/env perl
#APos: APosDoc=1.5
#*
#* Name: github::IPCdb::lib::libs
#* Info: 
#* Author: Pawel Guspiel (neo77) <neo77@panth-net.com || pawel.guspiel@hurra.com>
#*
package IPCdbetx;

use strict;
use warnings;


# --- version ---
    our $VERSION = 1.0_0;
    our $SVERSION = "";

#=------------------------------------------------------------------------( use, constants )

# --- Headers ---

#=------------------------------------------------------------------------( class attributes )


#=------------------------------------------------------------------------( attributes )


#=------------------------------------------------------------------------( constructor / demolish )


#=------------------------------------------------------------------------( private methods )
# start every private function with '_' sign


#=------------------------------------------------------------------------( class methods )
# start every class function with capital letter


#=------------------------------------------------------------------------( public methods )


    #=---------------
    #  send_message
    #=---------------
    #* sends message
    #* RETURN: OK if message has been send correctly otherwise returns FAIL and set _last_error
    sub send_message {
        my ($self, %p_) = @_;

        my $p_to_id = $p_{ 'to_id' };   # message receiver
        my $p_message = $p_{'message'}; # message body
        my $p_message_type = $p_{'message_type'}; # additional message type (internal id)

        my $message = eval { 
            $self->_ipcdb_insert_record(
                from_id => $self->id,
                to_id   => $p_to_id,
                message => $p_message,
                ( ($p_message_type) ? (message_type => $p_message_type) : () ),
            );
        };
        
        ($@) ? FAIL : OK;
    }

    #=------------------
    #  receive_message
    #=------------------
    #* receive first waiting message from queue and add it to internal attribute last_message
    #* RETURN: message body or undef

