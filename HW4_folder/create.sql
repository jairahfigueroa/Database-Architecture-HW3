--create the schema
CREATE SCHEMA IF NOT EXISTS group6work;

DROP TABLE IF EXISTS cryptocurrencies, users, exchanges,prices,wallets, marketcap;

SET search_path TO group6work, public;

-- Creating a table for cryptocurrency
CREATE TABLE cryptocurrencies (
  crypto_id INT PRIMARY KEY,
  symbol VARCHAR,
  name VARCHAR UNIQUE,
  date_created DATE
);

-- Creating a table for users
CREATE TABLE users (
  user_id INT PRIMARY KEY,
  name VARCHAR ,
  user_name VARCHAR
);

-- Creating a table for exchange
CREATE TABLE exchanges (
  exchange_id INT PRIMARY KEY,
  country VARCHAR,
  name VARCHAR,
  date_created DATE
);


-- Creating a table for prices
CREATE TABLE prices (
  price_id INT PRIMARY KEY,
  price DECIMAL,
  name VARCHAR REFERENCES cryptocurrencies(name),
  value_date DATE
);

-- Creating a table for wallets
CREATE TABLE wallets (
  wallet_id INT PRIMARY KEY,
  address VARCHAR,
  name VARCHAR,
  name_tag VARCHAR
);

-- Creating a table for marketcap
CREATE TABLE marketcap (
  market_id INT PRIMARY KEY,
  market_value FLOAT,
  name VARCHAR REFERENCES cryptocurrencies(name),
  ATH DECIMAL
);
