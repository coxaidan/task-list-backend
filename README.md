# task-list-backend
## System dependencies
Download and Intstall 
- [Ruby 3.1.2](https://www.ruby-lang.org/en/downloads/)
- [postgreSQL](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads)

## Configuration
```
task-list-backend\bundle install
```

## Database creation
Open **pgAdmin** and create database called *task_list_development*

## Database initialization
Open **SQL Shell (psql)** and start sever
```
- Server [localhost]: localhost
- Database [postgres]: task_list_development
- Port [5432]: 5432
- Username [postgres]: postgres
- Password for user postgres: 1
```
```
task-list-backend\rake db:migrate
```
## Start Rails Server
```
task-list-backend\rails s
```