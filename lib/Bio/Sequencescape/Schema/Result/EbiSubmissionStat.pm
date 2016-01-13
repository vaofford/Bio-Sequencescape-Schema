use utf8;
package Bio::Sequencescape::Schema::Result::EbiSubmissionStat;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Bio::Sequencescape::Schema::Result::EbiSubmissionStat

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

=head1 TABLE: C<ebi_submission_stats>

=cut

__PACKAGE__->table("ebi_submission_stats");

=head1 ACCESSORS

=head2 week_beginning

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 ena_bp

  data_type: 'bigint'
  is_nullable: 1

=head2 ega_bp

  data_type: 'bigint'
  is_nullable: 1

=head2 updated

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "week_beginning",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "ena_bp",
  { data_type => "bigint", is_nullable => 1 },
  "ega_bp",
  { data_type => "bigint", is_nullable => 1 },
  "updated",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</week_beginning>

=back

=cut

__PACKAGE__->set_primary_key("week_beginning");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2016-01-07 16:54:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DclF1SlbqegaZJRXWOYdDg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
