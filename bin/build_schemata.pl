#!/usr/bin/env perl
#
# build_schemata.pl
# jt6 20160107 WTSI
#
# dumps the sequencescape warehouse schema as a DBIC model

# ABSTRACT: dump the sequencescape warehouse database schema as a DBIC schema
# PODNAME: build_schemata.pl

use strict;
use warnings;

use DBIx::Class::Schema::Loader qw( make_schema_at );

#-------------------------------------------------------------------------------
# configuration

my $db_host  = $ENV{SEQW_DB_HOST};
my $db_port  = $ENV{SEQW_DB_PORT};

my $username = $ENV{SEQW_DB_USERNAME};
my $password = $ENV{SEQW_DB_PASSWORD};

my $dump_path = './lib';

die 'ERROR: must set $ENV{SEQW_DB_DATABASE}'
  unless defined $ENV{SEQW_DB_DATABASE};

#-------------------------------------------------------------------------------

# we're adding three components to the ResultSets:
#   InflateColumn::DateTime
#     allows DBIC to inflate DATETIME columns to DateTime objects automatically
#   TimeStamp
#     allows DBIC automatically to update timestamp columns on update or create.
#     We have to explicitly add flags to the column definitions when making the
#     schema classes, which is done using the "custom_column_info" hook. See
#     the docs for DBIx::Class::TimeStamp for details.

my $database = $ENV{SEQW_DB_DATABASE};

make_schema_at(
  "Bio::Sequencescape::Schema",
  {
    components         => [ 'InflateColumn::DateTime', 'TimeStamp' ],
    dump_directory     => $dump_path,
    use_moose          => 1,
  },
  [
    "dbi:mysql:database=$database;host=$db_host;port=$db_port",
    $username,
    $password,
  ]
);

