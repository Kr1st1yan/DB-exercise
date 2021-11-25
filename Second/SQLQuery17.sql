SELECT SHIPS.NAME 
FROM SHIPS, CLASSES
WHERE CLASSES.DISPLACEMENT > 50000 and SHIPS.CLASS = CLASSES.CLASS;

---------------

SELECT SHIPS.NAME, DISPLACEMENT, NUMGUNS
FROM SHIPS, CLASSES, OUTCOMES
WHERE OUTCOMES.BATTLE = 'Guadalcanal'
AND SHIPS.CLASS = CLASSES.CLASS
AND SHIPS.NAME = OUTCOMES.SHIP;

---------------

SELECT COUNTRY
FROM CLASSES C
WHERE 
	EXISTS (SELECT COUNTRY FROM CLASSES S WHERE S.TYPE = 'bb' AND C.COUNTRY = S.COUNTRY)
	AND EXISTS (SELECT COUNTRY FROM CLASSES S WHERE S.TYPE = 'bc' AND C.COUNTRY = S.COUNTRY)
GROUP BY COUNTRY;


SELECT COUNTRY
FROM CLASSES
WHERE TYPE = 'bc'

INTERSECT

SELECT COUNTRY
FROM CLASSES
WHERE TYPE = 'bb'
GROUP BY COUNTRY;

----------------
--incorrect
SELECT SHIP
FROM OUTCOMES
WHERE RESULT = 'ok'

INTERSECT

SELECT SHIP
FROM OUTCOMES
WHERE RESULT = 'damaged';
