package Tie::DxHash::Child;

use strict;
use vars qw(@ISA);

use Test;
BEGIN { plan tests => 1 }

use Tie::DxHash;
@ISA = qw(Tie::DxHash);

my(%obj1, %obj2);

tie %obj1, 'Tie::DxHash::Child';
tie %obj2, 'Tie::DxHash::Child', (r => 'red', g => 'green', g => 'greenish', b => 'blue');

ok(1);
