SELECT DISTINCT NAME,SHIPS.CLASS,CLASSES.CLASS,TYPE,COUNTRY,NUMGUNS,BORE,DISPLACEMENT, LAUNCHED
FROM SHIPS,CLASSES
WHERE SHIPS.CLASS = CLASSES.CLASS
---------------
--INC
SELECT DISTINCT NAME,SHIPS.CLASS,CLASSES.CLASS,TYPE,COUNTRY,NUMGUNS,BORE,DISPLACEMENT, LAUNCHED
FROM SHIPS,CLASSES
WHERE SHIPS.CLASS = CLASSES.CLASS 
---------------
SELECT DISTINCT COUNTRY,NAME
FROM CLASSES,SHIPS,OUTCOMES
WHERE CLASSES.CLASS = SHIPS.CLASS AND SHIPS.NAME NOT IN(SELECT SHIP FROM OUTCOMES)
---------------
SELECT NAME AS SHIPNAME
FROM CLASSES,SHIPS
WHERE CLASSES.CLASS = SHIPS.CLASS AND CLASSES.NUMGUNS >= 7 AND LAUNCHED = 1916
---------------
SELECT SHIPS.NAME,BATTLE,DATE
FROM SHIPS,OUTCOMES,BATTLES
WHERE SHIPS.NAME = OUTCOMES.SHIP AND OUTCOMES.RESULT = 'sunk' AND OUTCOMES.BATTLE = BATTLES.NAME
---------------
SELECT SHIPS.NAME,DISPLACEMENT,LAUNCHED
FROM SHIPS,CLASSES
WHERE SHIPS.CLASS = CLASSES.CLASS AND SHIPS.NAME IN (SELECT CLASS FROM CLASSES)
---------------
SELECT DISTINCT CLASSES.CLASS 
FROM CLASSES,SHIPS,OUTCOMES
WHERE CLASSES.CLASS NOT IN (SELECT CLASS FROM SHIPS
---------------
SELECT NAME,DISPLACEMENT,NUMGUNS,RESULT
FROM CLASSES,SHIPS,OUTCOMES
WHERE CLASSES.CLASS = SHIPS.CLASS AND SHIPS.NAME = OUTCOMES.SHIP
AND OUTCOMES.BATTLE = 'North Atlantic'
---------------
