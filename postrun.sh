# docker run --name my-postgres -e POSTGRES_USER=admin -e POSTGRES_PASSWORD=admin -e PGDATA='/var/run/postgresql/.s.PGSQL.5432' -d postgres
docker run --name my-postgres \
-e PGDATA=/var/run/postgresql \
-e POSTGRES_DB=mydatabase \
-e POSTGRES_USER=django \
-e POSTGRES_PASSWORD=admin \
-d postgis/postgis