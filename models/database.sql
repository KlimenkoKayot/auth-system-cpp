DROP TABLE IF EXISTS messagebase;
CREATE TABLE messagebase (
    id serial PRIMARY KEY,
    author text,
    message text,
    datetime timestamp
);

DROP TABLE IF EXISTS userbase;
CREATE TABLE userbase (
    id serial PRIMARY KEY,
    login text,
    hash text,
    datetime timestamp
);
