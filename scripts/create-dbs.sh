#!/bin/bash

set -e
set -u

function create_user_and_database() {
	local database=$1
	echo "  Ensuring database '$database' exists"
	psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" <<-EOSQL
	    SELECT 'CREATE DATABASE $database'
	    WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = '$database')\gexec
	EOSQL
}

echo "Multiple database creation requested: $LOCAL_POSTGRES_DATABASES"

for db in $(echo $LOCAL_POSTGRES_DATABASES | tr ',' ' '); do
	create_user_and_database $db
done

echo "Multiple databases created"
