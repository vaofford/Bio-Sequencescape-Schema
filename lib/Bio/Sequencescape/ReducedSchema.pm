use utf8;
package Bio::Sequencescape::ReducedSchema;

use Moose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Schema';

use Bio::Sequencescape::Schema::Result::CurrentSample;

__PACKAGE__->load_classes;

__PACKAGE__->meta->make_immutable(inline_constructor => 0);
1;
