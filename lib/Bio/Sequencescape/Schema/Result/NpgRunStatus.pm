use utf8;
package Bio::Sequencescape::Schema::Result::NpgRunStatus;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Bio::Sequencescape::Schema::Result::NpgRunStatus

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

=head1 TABLE: C<npg_run_status>

=cut

__PACKAGE__->table("npg_run_status");

=head1 ACCESSORS

=head2 id_run_status

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 id_run

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 id_run_status_dict

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 iscurrent

  data_type: 'tinyint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_run_status",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_run",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "id_run_status_dict",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "iscurrent",
  { data_type => "tinyint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_run_status>

=back

=cut

__PACKAGE__->set_primary_key("id_run_status");

=head1 RELATIONS

=head2 id_run_status_dict

Type: belongs_to

Related object: L<Bio::Sequencescape::Schema::Result::NpgRunStatusDict>

=cut

__PACKAGE__->belongs_to(
  "id_run_status_dict",
  "Bio::Sequencescape::Schema::Result::NpgRunStatusDict",
  { id_run_status_dict => "id_run_status_dict" },
  { is_deferrable => 1, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2016-01-07 16:54:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tuCsHp2J6Bf1PqK/m1tSxw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
