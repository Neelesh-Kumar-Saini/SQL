CREATE TABLE Activities (
    sell_date DATE,
    product VARCHAR(255)
);

INSERT INTO Activities (sell_date, product)
VALUES
    ('2020-05-30', 'Headphone'),
    ('2020-06-01', 'Pencil'),
    ('2020-06-02', 'Mask'),
    ('2020-05-30', 'Basketball'),
    ('2020-06-01', 'Bible'),
    ('2020-06-02', 'Mask'),
    ('2020-05-30', 'T-Shirt');
SELECT sell_date, COUNT(DISTINCT product) AS num_products,
GROUP_CONCAT(DISTINCT product ORDER BY product) AS product_names
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;
