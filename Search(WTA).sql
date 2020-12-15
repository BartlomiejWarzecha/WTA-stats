USE [WTA-stats]

SELECT * 
FROM Players

SELECT * 
FROM Players
WHERE Name LIKE('%Von%')

SELECT * 
FROM Ranking

SELECT * 
FROM GrandSlams

SELECT PlayerID, Name
FROM Players

-- 3 queries table Players

-- 3 queries table Ranking

-- 3 queries table Tournaments

-- 3 queries table GrandSlam

-- 5 queries between tables

/* Jaka jest średnia wieku zawodniczek z ostatnich 3 lat top 15? 27 */

SELECT AVG(CAST(P.Age as INT)) as 
'AVG AGE', R.Position, P.Name
FROM Players as P INNER JOIN Ranking as R
ON R.PlayerId = P.PlayerId
GROUP BY Name, R.Position
Having Position <=15 

SELECT AVG(CAST(P.Age as INT)) as 
'AVG AGE'
FROM Players as P INNER JOIN Ranking as R
ON R.PlayerId = P.PlayerId
WHERE R.position <= 15

/* Jaka jest średnia wieku zawodniczek z ostatnich 3 lat top 8? 27 */

SELECT AVG(CAST(P.Age as INT)) as 
'AVG AGE'
FROM Players as P INNER JOIN Ranking as R
ON R.PlayerId = P.PlayerId
WHERE R.position <= 8

/* Jaki kraj ma najwiecej reprezentatek w top 15? USA 5*/

SELECT COUNT(Country) as 'Most frequent country', Country
FROM Players INNER JOIN Ranking ON Players.PlayerId = Ranking.PlayerId
WHERE Ranking.position <= 8
GROUP BY Country WITH ROLLUP 
/* Jaki kraj ma najwiecej reprezentatek w top 8? USA 5*/

SELECT COUNT(Country) as 'Most frequent country', Country 
FROM Players as P INNER JOIN Ranking as R ON
R.PlayerId = P.PlayerId
GROUP BY R.Position, Country
HAVING R.position <= 8

/* Jaka jest średnia pozycja zawodniczki w top 15? Ile razy zawodniczka znalazła się w top 15? 
Jaką ma średnią punktów gdy jest w top 15? Jaka jest średnia punktów top 15 ostanich 3 lat  
*/

SELECT AVG(CAST(Position as INT)) as "Avarage top 15 position", Count(Position) as "How many times in top 15" ,
AVG(CAST(Points as INT)) as "Avarage points in top 15",Players.Name
FROM Ranking
INNER JOIN Players ON Players.PlayerId = Ranking.PlayerId
WHERE position <= 15
GROUP BY Players.Name
WITH CUBE
ORDER BY "How many times in top 15" DESC, "Avarage points in top 15" DESC


/* Jaka jest średnia pozycja zawodniczki w top 8? Ile razy zawodniczka znalazła się w top 8? 
Jaką ma średnią punktów gdy jest w top 8? Jaka jest średnia punktów top 8 ostanich 3 lat */

SELECT AVG(CAST(Position as INT)) as "Avarage top 8 position", Count(Position) as "How many times in top 8", 
AVG(CAST(Points as INT)) as "Avarage points in top 8",Players.Name
FROM Ranking
INNER JOIN Players ON Players.PlayerId = Ranking.PlayerId
WHERE position <= 8
GROUP BY Players.Name
WITH CUBE
ORDER BY "How many times in top 8" DESC, "Avarage points in top 8" DESC


/* Czerwiec Jaka jest średnia pozycja zawodniczki w top 8 ? Czerwiec Ile razy zawodniczka znalazła się w top 8? 
Czerwiec Jaką ma średnią punktów gdy jest w top 8?  Czerwiec Jaka jest średnia punktów top 8 ostanich 3 lat*/

SELECT  AVG(CAST(Position as INT)) as "Avarage top 8 position", Count(Position) as "How many times in top 8", 
AVG(CAST(Points as INT)) as "Avarage points in top 8",Players.Name
FROM Ranking
INNER JOIN Players ON Players.PlayerId = Ranking.PlayerId
WHERE position <= 8 AND Ranking.Date LIKE ('%12%')
GROUP BY Players.Name
WITH CUBE
ORDER BY "Avarage points in top 8" DESC

/*//////////////////////////////////////////////////////////////////*/

/* Jaki jest próg wejśćiowy do top 15?*/

SELECT  AVG(CAST(Points as INT)) as "Avarage top 15 minimal points "
FROM Ranking
WHERE position = 15 

/* Jaki jest próg wejśćiowy do top 15 w czerwcu?*/

SELECT  AVG(CAST(Points as INT)) as "Avarage top 15 minimal points June"
FROM Ranking
WHERE position = 15  AND Ranking.Date LIKE ('%06%') 

/* Jaki jest próg wejśćiowy do top 15 w Grudniu?*/

SELECT  AVG(CAST(Points as INT)) as "Avarage top 15 minimal points December"
FROM Ranking
WHERE position = 15  AND Ranking.Date LIKE ('%12%') 

/*//////////////////////////////////////////////////////////////////*/

/* Jaki jest próg wejśćiowy do top 8?*/

SELECT  AVG(CAST(Points as INT)) as "Avarage top 8 minimal points "
FROM Ranking
WHERE position = 8 


/* Jaki jest próg wejśćiowy do top 8 w czerwcu?*/

SELECT  AVG(CAST(Points as INT)) as "Avarage top 8 minimal points June"
FROM Ranking
WHERE position = 8  AND Ranking.Date LIKE ('%06%') 

/* Jaki jest próg wejśćiowy do top 8 w Grudniu?*/

SELECT  AVG(CAST(Points as INT)) as "Avarage top 8 minimal points December"
FROM Ranking
WHERE position = 8  AND Ranking.Date LIKE ('%12%') 

/*//////////////////////////////////////////////////////////////////*/




/* Ile zawodniczek wypada z topowej 8, w 2018 na 2019 rok */

SELECT Name, Country, age, P.PlayerId, R.Position, R.Date, AVG(CAST(R.position as INT))
FROM Players P
JOIN Ranking R ON P.PlayerId = R.PlayerID
WHERE R.Position <= 8
GROUP BY Name ,R.date, Country, age, P.PlayerId, R.Position, R.Date
HAVING R.date, Country, age, P.PlayerId, R.Position, R.Date


/* Testing results  */

SELECT * from Players where playerID  = 19
SELECT * from Ranking where playerID  = 19


/*  Ile zawodniczel z top 15 ostanich 3 lat doszło przynajmniej do ćwierćfianału wielkich turniejów?
Ile było niespodzianek? */

SELECT Count(GrandSlam), R.Name
FROM 


/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */


