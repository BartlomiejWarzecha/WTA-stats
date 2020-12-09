USE [WTA-stats]

SELECT * 
FROM Players

SELECT * 
FROM Ranking

SELECT PlayerID, Name
FROM Players

-- 3 queries table Players

-- 3 queries table Ranking

-- 3 queries table Tournaments

-- 3 queries table GrandSlam

-- 5 queries between tables

/* Jaka jest średnia wieku zawodniczek z ostatnich 3 lat? 27 */

SELECT AVG(CAST(Age as INT))
FROM Players

/* Jaki kraj ma najwiecej reprezentatek? USA 5*/



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
/*  */
/*  */


