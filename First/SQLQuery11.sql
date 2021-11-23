SELECT model AS MODEL,speed AS MHZ,hd AS GB FROM pc
WHERE price < 1200

----------------

SELECT DISTINCT maker AS MAKER FROM product
WHERE type = 'Printer'

----------------

SELECT model AS MODEL, ram AS RAM, screen AS SCREEN FROM laptop
WHERE price > 1000

---------------

SELECT * FROM printer
WHERE color = 'y'

---------------

SELECT model ,speed,hd FROM pc
WHERE CD = '12x' OR CD = '16x' AND price < 2000 