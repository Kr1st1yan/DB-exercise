SELECT DISTINCT product.model,product.maker,product.type
FROM product,laptop,pc,printer
WHERE product.model NOT IN (SELECT model FROM laptop) and 
product.model NOT IN (SELECT model from pc) and 
product.model NOT IN (select model from printer)

------------
--inc
SELECT DISTINCT MAKER
FROM PRODUCT, laptop, printer 
WHERE product.model in (SELECT model from laptop)AND
product.model IN(SELECT model from printer)

------------
--inc
SELECT DISTINCT l1.hd
from laptop as l1, laptop as l2
where l1.model = l2.model and l1.hd = l2.hd

-----------
SELECT distinct product.model
FROM pc,product 
where product.model not in(SELECT pc.model from pc) and product.type = 'PC'

-----------
