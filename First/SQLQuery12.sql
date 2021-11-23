SELECT class, country FROM CLASSES
WHERE NUMGUNS < 10

-----------------

SELECT name AS SHIPNAME FROM SHIPS
WHERE LAUNCHED < 1918

-----------------

SELECT ship, battle FROM OUTCOMES
WHERE RESULT = 'sunk'

-----------------

SELECT name FROM SHIPS
WHERE NAME = CLASS

----------------

SELECT name FROM SHIPS
WHERE NAME LIKE 'R%';

----------------

SELECT name FROM SHIPS
WHERE NAME LIKE '% %';

