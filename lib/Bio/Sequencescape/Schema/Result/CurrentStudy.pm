use utf8;
package Bio::Sequencescape::Schema::Result::CurrentStudy;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Bio::Sequencescape::Schema::Result::CurrentStudy

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

=head1 TABLE: C<current_studies>

=cut

__PACKAGE__->table("current_studies");

=head1 ACCESSORS

=head2 uuid

  data_type: 'binary'
  is_nullable: 0
  size: 16

=head2 internal_id

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 reference_genome

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 ethically_approved

  data_type: 'tinyint'
  is_nullable: 1

=head2 faculty_sponsor

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 state

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 study_type

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 abstract

  data_type: 'text'
  is_nullable: 1

=head2 abbreviation

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 accession_number

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 is_current

  data_type: 'tinyint'
  is_nullable: 0

=head2 checked_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 last_updated

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 created

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 contains_human_dna

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 contaminated_human_dna

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 data_release_strategy

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 data_release_sort_of_study

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 ena_project_id

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 study_title

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 study_visibility

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 ega_dac_accession_number

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 array_express_accession_number

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 ega_policy_accession_number

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 inserted_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 deleted_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 current_from

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 current_to

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 data_release_timing

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 data_release_delay_period

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 data_release_delay_reason

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 remove_x_and_autosomes

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 alignments_in_bam

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 separate_y_chromosome_data

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 data_access_group

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 prelim_id

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 hmdmc_number

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "uuid",
  { data_type => "binary", is_nullable => 0, size => 16 },
  "internal_id",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "reference_genome",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "ethically_approved",
  { data_type => "tinyint", is_nullable => 1 },
  "faculty_sponsor",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "state",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "study_type",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "abstract",
  { data_type => "text", is_nullable => 1 },
  "abbreviation",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "accession_number",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "is_current",
  { data_type => "tinyint", is_nullable => 0 },
  "checked_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "last_updated",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "created",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "contains_human_dna",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "contaminated_human_dna",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "data_release_strategy",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "data_release_sort_of_study",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "ena_project_id",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "study_title",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "study_visibility",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "ega_dac_accession_number",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "array_express_accession_number",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "ega_policy_accession_number",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "inserted_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "deleted_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "current_from",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "current_to",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "data_release_timing",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "data_release_delay_period",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "data_release_delay_reason",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "remove_x_and_autosomes",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "alignments_in_bam",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "separate_y_chromosome_data",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "data_access_group",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "prelim_id",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "hmdmc_number",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<internal_id_idx>

=over 4

=item * L</internal_id>

=back

=cut

__PACKAGE__->add_unique_constraint("internal_id_idx", ["internal_id"]);

=head2 C<uuid_idx>

=over 4

=item * L</uuid>

=back

=cut

__PACKAGE__->add_unique_constraint("uuid_idx", ["uuid"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2019-03-25 22:09:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uXotrQNhDihKGwG52sCfDw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
