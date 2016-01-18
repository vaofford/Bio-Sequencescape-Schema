use utf8;
package Bio::Sequencescape::Schema::Result::SubmittedAsset;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Bio::Sequencescape::Schema::Result::SubmittedAsset

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<submitted_assets>

=cut

__PACKAGE__->table("submitted_assets");

=head1 ACCESSORS

=head2 dont_use_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 order_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 asset_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 deleted_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "dont_use_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "order_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "asset_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "deleted_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</dont_use_id>

=back

=cut

__PACKAGE__->set_primary_key("dont_use_id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2016-01-18 11:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:a3NoeFEQMFOPDqvKEXicew


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
