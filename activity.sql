CREATE TABLE supplier (
    SNO TEXT PRIMARY KEY,
    SNAME TEXT,
    STATUS INTEGER,
    CITY TEXT
);
INSERT INTO supplier (SNO, SNAME, STATUS, CITY) VALUES
    ('S1', 'SMITH', 20, 'LONDON'),
    ('S2', 'JONES', 10, 'PARIS'),
    ('S3', 'BLAKE', 30, 'PARIS'),
    ('S4', 'CLARKE', 20, 'LONDON'),
    ('S5', 'ADAMS', 30, 'ATHENS');
SELECT * FROM supplier;