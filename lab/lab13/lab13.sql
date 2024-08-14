.read data.sql


CREATE TABLE average_prices AS
  SELECT category, avg(MSRP) AS average_price FROM products GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, MIN(price) FROM inventory GROUP BY item;

CREATE TABLE what_to_buy AS
  SELECT name, MIN(MSRP / rating) FROM products GROUP BY category;

CREATE TABLE shopping_list AS
  SELECT item, store
  FROM lowest_prices, what_to_buy WHERE name = item;

CREATE TABLE total_bandwidth AS
  SELECT SUM(stores.Mbs)
  FROM shopping_list, stores
  WHERE shopping_list.store = stores.store;

