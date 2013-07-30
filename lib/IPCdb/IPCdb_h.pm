use strict;
use warnings;
 
package IPCdb::IPCdb_h;

use Params::Dry qw(:short);

typedef 'sql_table', 'String::Perl[255]';




package Params::Dry::Types::String;

use Params::Dry::Types qw(:const);

sub Perl {
    return PASS if Params::Dry::Types::String(@_) eq PASS and $_[0] =~ qr/^\w+$/;   
    FAIL;
}

package Params::Dry::Types::List;

use Params::Dry::Types qw(:const);

sub String {
    Params::Dry::Types::Array($_[0]) or return FAIL;
    scalar @{$_[0]} or return FAIL;
    for my $str (@{$_[0]}) {
        Params::Dry::Types::String($str, $_[1]) or return FAIL;

    }
    PASS;
}
