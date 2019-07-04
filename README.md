# Seagull BnB

An accomodation listing and booking site.

## MVP User Stories

```
As a user
So that my property can be seen
I want to create a property listing on Seagull BnB
```

```
As a user
So I my property will be listed
I want to enter my property name
```

```
As a user
So that my property will be appealing
I want to give my property a description
```

```
As a user
so that other users can see my property
I want my property listing to be displayed
```

```
As a user
so that I can holiday \o/
I want to book a property
```

```
As a user
So that my property is not double-booked
I want my property to be unavailable once booked
```

## Technology

- Ruby
- Sinatra
- Capybara
- Rspec
- HTML


## Set Up

### How to create a database using PSQL 
 - download Postgresql
 - Connect to psql in terminal with `psql`
 - Create the database using the psql command `CREATE DATABASE seagull;`
 - Connect to the database using the pqsl command `\c seagull`
 - Run the query we have saved in the file `migrations/01_create_listings_table.sql`

### Creating a test database
This is required to run the tests
 - Connect to psql in terminal with `psql`
 - Create the database using the psql command `CREATE DATABASE seagull_test;`
 - Connect to the database using the pqsl command `\c seagull_test`
 - Run the query in `migrations/01_create_listings_table.sql`