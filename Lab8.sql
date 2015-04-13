--Lab 8 Connor Sargent--

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS purchases;
DROP TABLE IF EXISTS suppliers;
DROP TABLE IF EXISTS purchaseord;
DROP TABLE IF EXISTS supplierord;

--2) Create Statements--

CREATE TABLE orders (
  orderid INT PRIMARY KEY NOT NULL,
  orderDate DATE,
  partList TEXT,
  partQuantity INT,
  comments TEXT
);

CREATE TABLE purchases (
  purchaseid INT PRIMARY KEY NOT NULL,
  description TEXT,
  quantity INT
);

CREATE TABLE suppliers (
  supplierid INT PRIMARY KEY NOT NULL,
  name TEXT,
  address TEXT,
  city TEXT,
  state TEXT,
  postalCode INT,
  contactInfo TEXT,
  paymentTerms TEXT
);

CREATE TABLE purchaseord (
  orderid INT REFERENCES orders,
  purchaseid INT REFERENCES purchases,
  priceUSD INT,
  CONSTRAINT po_pk PRIMARY KEY (orderid, purchaseid)
);

CREATE TABLE supplierord(
  orderid INT REFERENCES orders,
  supplierid INT REFERENCES suppliers,
  CONSTRAINT so_pk PRIMARY KEY (orderid, supplierid)
);

--3) Insert Statements--

INSERT INTO suppliers (supplierid, name, address, city, state, postalCode, contactInfo, paymentTerms)
VALUES (0, 'Sears', '1 Sears Rd', 'Searstown', 'Maine', 09834, '(123)456-7890', '1 percent 10 net 30');

INSERT INTO suppliers (supplierid, name, address, city, state, postalCode, contactInfo, paymentTerms)
VALUES (1, 'BJs', '2 BJ St', 'Beejayton', 'Alaska', 23049, '(098)765-4321', '2 percent 10 net 30');

INSERT INTO suppliers (supplierid, name, address, city, state, postalCode, contactInfo, paymentTerms)
VALUES (2, 'Sams Club', '3 Sam Ct', 'Samstown', 'Oregon', 18403, '(102)938-4756', '3 percent 10 net 30');

INSERT INTO purchases (purchaseid, description, quantity)
VALUES (0, 'Shirts', 8000);

INSERT INTO purchases (purchaseid, description, quantity)
VALUES (1, 'Jackets', 3000);

INSERT INTO purchases (purchaseid, description, quantity)
VALUES (2, 'Shorts', 4000);

INSERT INTO purchases (purchaseid, description, quantity)
VALUES (3, 'Underwear', 9000);

INSERT INTO purchases (purchaseid, description, quantity)
VALUES (4, 'Hats', 2000);

INSERT INTO orders (orderid, orderDate, partList, partQuantity, comments)
VALUES (0, DATE '02-02-11', 'Shirts', 4000, 'Blue');

INSERT INTO orders (orderid, orderDate, partList, partQuantity, comments)
VALUES (1, DATE '01-02-12', 'Hats', 500, 'Beanies');

INSERT INTO orders (orderid, orderDate, partList, partQuantity, comments)
VALUES (2, DATE '03-13-13', 'Polos', 1000, 'White');

INSERT INTO purchaseorders (orderid, purchaseid, priceUSD)
VALUES (0, 1, 15);

INSERT INTO purchaseorders (orderid, purchaseid, priceUSD)
VALUES (1, 2, 10);

INSERT INTO purchaseorders (orderid, purchaseid, priceUSD)
VALUES (2, 3, 25);

INSERT INTO supplierorders (orderid, supplierid)
VALUES (0, 2);

INSERT INTO supplierorders (orderid, supplierid)
VALUES (1, 1);

INSERT INTO supplierorders (orderid, supplierid)
VALUES (2, 1);


--4) Dependencies--
--orders: orderid -> orderDate, partList, partQuantity
--purchases: purchaseid -> description, quantity
--suppliers: supplierid -> address, city, state, poastalCode, paymentTerms
--purchaseorders: orderid, purchaseid -> priceUSD
--supplierorders: none

--5) Querey--

SELECT (partQuantity + quantity) AS sku
FROM orders o, purchases p
WHERE o.partList = p.description

