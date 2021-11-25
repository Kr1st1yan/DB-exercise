SELECT DISTINCT MAKER
FROM product, PC
WHERE product.model = PC.model AND PC.speed > 500

--------------

SELECT code,model,price
FROM printer
WHERE printer.price = (
SELECT TOP 1 price 
FROM printer
ORDER BY price DESC)

-------------

SELECT * 
FROM laptop
WHERE laptop.speed < (
SELECT TOP 1 speed 
FROM pc
ORDER BY speed
)

-------------
--NOT WORKING
select product.model
from product


------------

SELECT maker
FROM product, printer
WHERE product.model = printer.model AND printer.color = 'y' AND printer.price = (
SELECT TOP 1 price 
FROM printer
WHERE printer.color = 'y'
ORDER BY price
)

-----------

SELECT DISTINCT MAKER
FROM product, pc
WHERE product.model = pc.model AND pc.ram = (
SELECT TOP 1 ram
FROM pc
ORDER BY ram
) AND pc.speed = (
SELECT TOP 1 speed
FROM pc
WHERE pc.ram = (
SELECT TOP 1 ram
FROM pc
ORDER BY ram)
ORDER BY speed DESC
)





