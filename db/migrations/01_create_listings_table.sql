-- in migrations/01_create_listings_table.sql
CREATE TABLE listings(id SERIAL PRIMARY KEY, name VARCHAR(60), description VARCHAR(200), reserved BOOLEAN);
