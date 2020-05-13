# data.etl-data-warehouse

ETL Data Warehouse Testing and Data Quality Management using Postgres 

## Getting started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.


## Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop)
- [JetBrains DataGrip](https://www.jetbrains.com/datagrip/features/mysql.html) IDE for working with databases

### Setup potgres DB
```docker exec -it dataetl-data-warehouse_db_1 psql -U my_user postgres```

## Installing

Step by step instructions on how to get a working version of the project on your local machine, such as

```
$ git clone <repo>
$ cd ./<repo>
```

> `docker-compose up` 

This will run the latest [postgres docker image](./docker-compose.yml). On start-up it runs the [init scripts](./scripts/pgsql_init/) to setup a DB called `postgres` with a `public` schema. 
The DB connection: `jdbc:postgresql://localhost:5432/postgres`

# Running the tests

An explanation on how to run any automated tests that relate to the project.

# Clean up

remove containers & volumes
> docker-compose down -v 

remove any unused containers 
> docker system prune -a

remove any unused volumes 
> docker volume prune

# Resources

[data-warehouse-etl](https://www.udemy.com/course/data-warehouse-etl-testing-data-quality-management-a-z/)

