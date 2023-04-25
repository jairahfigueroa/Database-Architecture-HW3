--Script to insert valid records into the sc_order table
SET search_path To group6work, public;

--Information inserted into the table
INSERT INTO cryptocurrencies (crypto_id, name, symbol, date_created) VALUES
	(1, 'Bitcoin', 'BTC', '2009-01-09'),
	(2, 'Ethereum', 'ETH', '2015-07-30'),
	(3, 'Tether USD', 'USDT', '2014-10-06'),
	(4, 'Solana', 'SOL', '2020-03-16');

INSERT INTO users (user_id, name, user_name) VALUES
	(1, 'Bitcoin', 'Elon Musk'),
	(2, 'Ethereum', 'Ashton Kutcher'),
	(3, 'Tether USD', 'Alameda Research'),
	(4, 'Solana', 'Kenz Capital');
 
INSERT INTO wallets (wallet_id, name_tag, name, address) VALUES
	(1, 'Binance', 'Bitcoin', '34xp4vRoCGJym3xR7yCVPFHoCNxv4Twseo'),
	(2, 'Beacon deposit contract', 'Ethereum', '0x00000000219ab540356cBB839Cbe05303d7705Fa'),
	(3, 'bybit', 'Tether USD', '0xf89d7b9c864f589bbf53a82105107622b35eaa40'),
	(4, 'Binance', 'Solana', '34xp4vRoCGJym3xR7yCVPFHoCNxv4Twseo');

INSERT INTO exchanges (exchange_id, name, country, date_created) VALUES
	(1, 'Binance', 'China', '2017-07-01'),
	(2, 'Coinbase', 'USA', '2012-06-01'),
	(3, 'Kraken', 'USA', '2011-07-28'),
	(4, 'Kucoin', 'Africa', '2017-09-15');
 
INSERT INTO prices (price_id, name, price, value_date) VALUES
	(1, 'Bitcoin', 27672, '2023-03-25'),
	(2, 'Ethereum', 1755, '2023-03-25'),
	(3, 'Tether USD', 1, '2023-03-25'),
	(4, 'Solana', 20, '2023-03-25');
 
INSERT INTO marketcap (market_id, name, market_value, ATH) VALUES
	(1, 'Bitcoin', 534038341597, 68789.63),
	(2, 'Ethereum', 214798744569, 4891.7),
	(3, 'Tether USD', 79106910436, 1.22),
	(4, 'Solana', 7951642968, 260.06);
