use utf8;
package Bio::Sequencescape::Schema::Result::EgaDataset;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Bio::Sequencescape::Schema::Result::EgaDataset

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<ega_datasets>

=cut

__PACKAGE__->table("ega_datasets");

=head1 ACCESSORS

=head2 ebi_study_acc

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 dataset_acc

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 study_id

  data_type: 'integer'
  is_nullable: 1

=head2 timestamp

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "ebi_study_acc",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "dataset_acc",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "study_id",
  { data_type => "integer", is_nullable => 1 },
  "timestamp",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2016-01-18 11:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:TODvoFKkNnCE8AOsJKilsw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
