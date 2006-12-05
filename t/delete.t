package Tie::DxHash::Child;

use strict;
use vars qw(@ISA);

use Test;
BEGIN { plan tests => 5 }

use Tie::DxHash;
@ISA = qw(Tie::DxHash);

my (%obj);

tie %obj, 'Tie::DxHash::Child';
%obj = ( r => 'red', g => 'green', g => 'greenish', b => 'blue' );
delete $obj{g};
delete $obj{b};

ok(1);
ok( not exists $obj{g} );
ok( not exists $obj{b} );
ok( keys %obj, 1 );
ok( join( '', keys %obj ), 'r' );
