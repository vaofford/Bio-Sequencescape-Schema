use utf8;
package Bio::Sequencescape::Schema;

# ABSTRACT: DBIC schema for the sequencescape warehouse

use strict;
use warnings;

use base 'DBIx::Class::Schema';

__PACKAGE__->load_classes(
  {
    'Bio::Sequencescape::Schema::Result' => [ qw(
      CurrentSample
    ) ],
  }
);

1;
