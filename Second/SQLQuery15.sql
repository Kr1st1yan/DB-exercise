SELECT MAKER, SPEED
FROM LAPTOP ,product
WHERE hd >= 9 AND laptop.model = product.model;

--------------

SELECT DISTINCT product.model,laptop.price
FROM product,laptop
WHERE product.maker = 'B' AND product.model = laptop.model
UNION
SELECT DISTINCT product.model,pc.price
FROM product,pc
WHERE product.maker = 'B' AND product.model = pc.model
UNION
SELECT DISTINCT product.model,printer.price
FROM product,printer
WHERE product.maker = 'B' AND product.model = printer.model;

-------------

SELECT maker
from product
WHERE type = 'Laptop'
AND maker NOT IN (SELECT DISTINCT maker
from product
WHERE type = 'PC')

------------

SELECT  p1.hd
from pc as p1
JOIN pc as p2
on (p1.model != p2.model and p1.hd = p2.hd)

-------------

SELECT DISTINCT p1.model, p2.model
from pc as p1
JOIN pc as p2
on p1.ram = p2.ram AND P1.speed = p2.speed AND p1.model != p2.model
GROUP BY p1.model, p2.model

--------------
--incorrect
SELECT DISTINCT p1.maker
from product as p1
JOIN pc as p2
on p1.model = p2.model
where p2.speed >= 400 


