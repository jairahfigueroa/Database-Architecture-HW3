--Script for queries of sc_order table
SET search_path TO group6work, public;

-- Get all usernames
SELECT name from users;

-- Get all wallets
SELECT * FROM wallets;

-- Get all cryptocurrencies
SELECT * FROM cryptocurrencies;

-- Get all exchanges
SELECT * FROM exchanges;

-- Get the latest prices
SELECT * FROM prices ORDER BY value_date DESC LIMIT 1;

-- Get the market cap of each cryptocurrency
SELECT name, market_value FROM marketcap;

--  Get the price of Bitcoin on a specific date
SELECT price FROM prices WHERE name = 'Bitcoin' AND value_date = '2023-03-25';

-- Get the wallets associated with a specific exchange
SELECT wallets.name, wallets.address FROM wallets 
JOIN exchanges ON wallets.name_tag = exchanges.name 
WHERE exchanges.name = 'Binance';

-- Get the name of the exchange with the highest market value for a specific cryptocurrency
SELECT exchanges.name FROM exchanges 
JOIN marketcap ON exchanges.exchange_id = marketcap.market_id 
WHERE marketcap.name = 'Bitcoin' ORDER BY market_value DESC LIMIT 1;

-- Get the total market value of all cryptocurrencies
SELECT SUM(market_value) FROM marketcap;

-- QUERIES FROM HW3
-- QUERY #1
-- “Get the username of the user, cryptocurrency name, company nametag, wallet address
--  where the nametag is 'bybit'
SELECT u.user_name,
	w.name AS cryptocurrency_name,
	w.name_tag AS exchange_company, 
	w.address
FROM users u
JOIN wallets w ON u.name = w.name
WHERE w.name_tag = 'bybit';

-- QUERY #2
-- “Get the Cryptocurrencies that were created before 2010.”
SELECT name
FROM cryptocurrencies
WHERE date_created < '2010-01-01';

-- QUERY #3
-- “Get the famous Users of Solana Cryptocurrency”.
SELECT u.user_name
FROM users u
JOIN wallets w ON u.user_id = w.wallet_id
JOIN cryptocurrencies c ON w.name = c.name
WHERE c.name = 'Solana';


-- QUERY #4
-- “Get the name of the cryptocurrency exchange, the name of the cryptocurrency,
-- the latest price, the country of exchange, and the market cap of each cryptocurrency.
SELECT 
  exchanges.name AS exchange_company_name,
  cryptocurrencies.name AS crypto_name,
  prices.price AS latest_price,
  exchanges.country AS location_of_exchange,
  marketcap.market_value AS market_cap
FROM 
  exchanges 
  JOIN wallets ON exchanges.name = wallets.name_tag
  JOIN cryptocurrencies ON wallets.name = cryptocurrencies.name
  JOIN prices ON cryptocurrencies.name = prices.name
  JOIN marketcap ON cryptocurrencies.name = marketcap.name;


-- QUERY #5
-- “Get the symbol and price of the cryptocurrencies where the price is larger than 1000$” 
-- uses data from both prices and cryptocurrency entities.
SELECT c.symbol, p.price
FROM cryptocurrencies c
JOIN prices p ON c.name = p.name
WHERE p.price > 1000;

-- QUERY #6
-- “Get the symbol, of each cryptocurrency where the ATH is larger than 4000$ and wallet name tag is Binance” 
SELECT c.symbol
FROM cryptocurrencies c
JOIN marketcap m ON c.name = m.name
JOIN wallets w ON c.name = w.name 
WHERE m.ATH > 4000
AND w.name_tag = 'Binance';


-- QUERY #7
-- “Get the name of famous crypto users and marketcap value, who use cryptocurrencies that have marketcap of over 70,000,000,000$”
SELECT u.user_name, m.market_value
FROM users u, marketcap m
WHERE m.market_value > 70000000000
AND m.name = u.name;

-- QUERY #8
-- “Get the symbols of cryptocurrencies, where wallet name tag is ‘binance’ and exchange country is China”
SELECT c.symbol
FROM cryptocurrencies c, exchanges e, wallets w
WHERE c.crypto_id = w.wallet_id 
AND e.exchange_id = w.wallet_id 
AND w.name_tag = 'Binance'
AND e.country = 'China';


-- QUERY #9
-- “Get the symbol, marketcap value, ATH value and created date of solana cryptocurrency”
SELECT c.symbol, m.market_value, m.ath, c.date_created
FROM cryptocurrencies c
JOIN marketcap m ON c.name = m.name
WHERE c.name = 'Solana';

-- QUERY #10
-- “Get the cryptocurrency name, famous users name, price and ATH value, where famous users name start with letter A”
SELECT m.name AS Cryptocurrency, u.user_name, p.price AS current_Price, m.ath AS All_Time_High_Value
FROM marketcap m
JOIN cryptocurrencies c ON m.name = c.name
JOIN users u ON c.name = u.name
JOIN prices p ON c.name = p.name
WHERE u.user_name LIKE 'A%';

