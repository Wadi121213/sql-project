CREATE TABLE IF NOT EXISTS Salesman (
  Salesman_id TEXT PRIMARY KEY,
  name TEXT,
  city TEXT,
  Commision REAL
);
INSERT INTO Salesman (Salesman_id, name, city, Comission) VALUES
  ('5001', 'JAMES HOOG', 'NEW YORK' , 0.15),
  ('5002', 'NAIL KNITE', 'PARIS', 0,13),
  ('5005', 'PIT ALEX', 'LONDON', 0.11),
  ('5006', 'MC LYON', 'PARIS', 0.14),
  ('5007', 'PAUL ADAM', 'ROME', 0.13),
  ('5003', 'LAUSON HEN', 'SAN JOSE', 0.12);
CREATE TABLE IF NOT EXISTS Customer (
  customer_id TEXT,
  cust_name TEXT PRIMARY KEY,
  city TEXT,
  grade INTEGER,
  Salesman_id TEXT,
  FOREIGN KEY (Salesman_id) REFERENCES Salesman(Salesman_id)
);
INSERT INTO Customer (customer_id, cust_name, city, grade, Salesman_id) VALUES
  ('3002', 'NICK RIMANDO', 'NEW YORK', 100, '5001'),
  ('3007', 'BRAD DAVIS', 'NEW YORK', 200, '5001'),
  ('3005', 'GRAHAM ZUSI', 'CALIFORNIA', 200, '5002'),
  ('3008', 'JULIAN GREEN', 'LONDON', 300, '5002'),
  ('3004', 'FABIAN JOHNSON', 'PARIS', 300, '5006'),
  ('3009', 'GEOFF CAMERON', 'BERLIN', 100, '5003'),
  ('3003', 'JOZY ALTIDOR', 'MOSCOW', 200, '5007'),
  ('3001', 'BRAD GUZAN', 'LONDON', NULL, '5005');
CREATE TABLE IF NOT EXISTS Orders (
  ord_no TEXT PRIMARY KEY,
  purch_atm REAL,
  ord_date TEXT,
  customer_id TEXT,
  Salesman_id TEXT,
  FOREIGN_KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN_KEY (Salesman_id) REFERENCES Salesman(Salesman_id)
);
INSERT INTO Orders (ord_no, purch_atm, ord_date, customer_id, Salesman_id) VALUES
  ('70001', 150.5, '2012-10-05', '3005', '5002'),
  ('70009', 270.65, '2012-09-10', '3001', '5001'),
  ('70002', 65.26, '2012-10-05', '3002', '5003'),
  ('70004', 110.5, '2012-8-17', '3009', '5007'),
  ('70007', 948.5, '2012-09-10', '3005', '5005'),
  ('70005', 2400.5, '2012-07-27', '3007', '5006');