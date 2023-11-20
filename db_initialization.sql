CREATE TABLE warehouse(
    product VARCHAR(50) PRIMARY KEY,
    category VARCHAR(50),
    units INT
);

CREATE TABLE orders(
    id SERIAL,
    name VARCHAR(50),
    email VARCHAR(50),
    gender VARCHAR(50),
    age VARCHAR(50),
    product VARCHAR(50),
    units INT,
    amount INT,
    FOREIGN KEY (product) REFERENCES warehouse(product)
);

DELETE FROM orders;
DELETE FROM warehouse;

INSERT INTO warehouse VALUES
('Oil 1 lit', 'Food Supplies', 20),
('Wheat 0.5 kg', 'Food Supplies', 20),
('Rice 0.5 kg', 'Food Supplies', 20),
('Maggie 1 pack', 'Food Supplies', 20),
('Milk 0.5 lit', 'Food Supplies', 20),
('Bandaid 10 strips', 'Medical Supplies', 20),
('Betadine 50 ml', 'Medical Supplies', 20),
('Cyclopalm 1 strip', 'Medical Supplies', 20),
('Paracetamol 1 strip', 'Medical Supplies', 20),
('Dettol 100 ml', 'Medical Supplies', 20),
('Pen 1 unit', 'Office Supplies', 20),
('Permanent Marker 1 unit', 'Office Supplies', 20),
('Record Book 1 book', 'Office Supplies', 20),
('Observation Book 1 book', 'Office Supplies', 20),
('Rough Book 1 book', 'Office Supplies', 20)
;

COMMIT;

SELECT * FROM warehouse ORDER BY category ASC;
SELECT * FROM orders;