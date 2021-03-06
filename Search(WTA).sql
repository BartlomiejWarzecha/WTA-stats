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

SELECT * 
FROM Tournaments

SELECT PlayerID, Name
FROM Players

-- 3 queries table Players

-- 3 queries table Ranking

-- 3 queries table Tournaments

-- 3 queries table GrandSlam

-- 5 queries between tables

/* All Queries */

/*  Ile zawodniczek przewinęło się przez top 8 w ostatnich 3 latach?   */

SELECT  Name, R.[Position]
FROM Players P
JOIN Ranking R ON P.PlayerId = R.PlayerID
WHERE R.[Position] <= 8

SELECT Distinct P.Name, Count(P.Name) 'Występy w top 8'
FROM Players P
JOIN Ranking R ON P.PlayerId = R.PlayerID
WHERE R.[Position] <= 8
GROUP BY P.Name

SELECT Distinct P.Name, Count(P.Name) 'Występy w top 8' 
FROM Players P
JOIN Ranking R ON P.PlayerId = R.PlayerID
WHERE R.[Position] <= 8 AND (R.[Date] LIKE('%2019-12%') OR R.[Date] LIKE('%2018-12%'))
GROUP BY P.Name 

SELECT P.Name, R.[Position]
FROM Players P
JOIN Ranking R ON P.PlayerId = R.PlayerID
WHERE R.[Date] LIKE('%2018-12%')

SELECT P.Name, R.position
FROM Players P
JOIN Ranking R ON P.PlayerId = R.PlayerID
WHERE R.[Date] LIKE('%2019-12%')


/* Jaka jest  liczba zawodniczek powyżej 30 roku życia które były w top8 ostatnich 3 lat*/

SELECT P.name, P.Age,
R.Position, R.DATE
FROM Players P
JOIN Ranking R ON P.PlayerId = R.PlayerId
WHERE R.[Position] <= 8 AND P.Age <= 23



SELECT P.name, P.Country 'Current Countries in top 8',
R.Position, R.DATE
FROM Players P
JOIN Ranking R ON P.PlayerId = R.PlayerId
WHERE R.Date = '2020-12-07' AND R.[Position]  <= 8 


SELECT * FROM Players

SELECT SUM(CAST(P.Age as FLOAT)) 
'AVG AGE'
FROM Players P  
JOIN Ranking R
ON R.PlayerId = P.PlayerId
WHERE R.position <= 8 


SELECT COUNT(Country) 'Most frequent country in top 8', Country
FROM Players JOIN Ranking ON Players.PlayerId = Ranking.PlayerId
WHERE Ranking.position <= 8
GROUP BY Country WITH ROLLUP 

/**************************************************/


SELECT COUNT(Country) 'Most frequent country in top 15', Country 
FROM Players P 
JOIN Ranking R ON
R.PlayerId = P.PlayerId
GROUP BY R.Position, Country
HAVING R.position <= 15

/**************************************************/

*/

SELECT AVG(CAST(Position as INT)) "Avarage top 15 position", Count(Position) "How many times in top 15" ,
AVG(CAST(Points as INT)) "Avarage points in top 15",Players.Name
FROM Ranking
JOIN Players ON Players.PlayerId = Ranking.PlayerId
WHERE position <= 15
GROUP BY Players.Name
WITH CUBE
ORDER BY "How many times in top 15" DESC, "Avarage points in top 15" DESC


/**************************************************/


SELECT AVG(CAST(Position as INT))  "Avarage top 8 position", 
AVG(CAST(Points as INT))  "Avarage points in top 8", 
Count(Position) "How many times in top 8", 
Players.Name,
Ranking.Date
FROM Ranking
JOIN Players ON Players.PlayerId = Ranking.PlayerId
WHERE position <= 8
GROUP BY Players.Name, Ranking.[Date]
WITH CUBE

/**************************************************/

SELECT  AVG(CAST(Position as INT)) "Avarage top 8 position", Count(Position) "How many times in top 8", 
AVG(CAST(Points as INT)) "Avarage points in top 8",Players.Name
FROM Ranking
JOIN Players ON Players.PlayerId = Ranking.PlayerId
WHERE position <= 8 AND Ranking.Date LIKE ('%12%')
GROUP BY Players.Name
WITH CUBE
ORDER BY "Avarage points in top 8" DESC


/**************************************************/

SELECT  AVG(CAST(Points as INT)) "Avarage top 15 minimal points "
FROM Ranking
WHERE position = 15 

SELECT  AVG(CAST(Points as INT)) "Avarage top 15 minimal points June"
FROM Ranking
WHERE position = 15  AND Ranking.Date LIKE ('%06%') 


SELECT  AVG(CAST(Points as INT)) "Avarage top 15 minimal points December"
FROM Ranking
WHERE position = 15  AND Ranking.Date LIKE ('%12%') 

/**************************************************/


SELECT  AVG(CAST(Points as INT)) "Avarage top 8 minimal points "
FROM Ranking
WHERE position = 8 


SELECT  AVG(CAST(Points as INT)) "Avarage top 3 minimal points "
FROM Ranking
WHERE position = 15 

SELECT  AVG(CAST(Points as INT)) "Avarage top 8 minimal points June"
FROM Ranking
WHERE position = 8  AND Ranking.Date LIKE ('%06%') 


SELECT  AVG(CAST(Points as INT)) "Avarage top 8 minimal points December"
FROM Ranking
WHERE position = 8  AND Ranking.Date LIKE ('%12%') 

/**************************************************/

/* Ile zawodniczek wypada z topowej 8, w 2018 na 2019 rok */

SELECT * 
FROM
Ranking

SELECT P.name 'Top 8 2018 December',
R.Date
FROM Players P 
JOIN Ranking R ON P.playerID = R.playerID
WHERE R.Date = '2018-12-31' AND R.[Position] < 9

/* Differences  Not in 2019: Angelique Kerber(2), Caroline Wozniacki(3), Sloane Stephens(6) 
		In 2019, Not in 2018: Ashley Barty(1), Bianca Andreescu(5), Belinda Bencic(8) */

SELECT P.name 'Top 8 2019 December',
R.Date
FROM Players P 
JOIN Ranking R ON P.playerID = R.playerID
WHERE R.Date = '2019-12-30' AND R.[Position] < 9

/* Differences  Not in 2020: Belinda Bencic(8),
		In 2020, Not in 2019: Sofia Kenin(4)*/

SELECT P.name 'Top 8 2020 December',
R.Date
FROM Players P 
JOIN Ranking R ON P.playerID = R.playerID
WHERE R.Date = '2020-12-07' AND R.[Position] < 9


/* Test */
SELECT * from Players where playerID  = 19
SELECT * from Ranking where playerID  = 19

/**************************************************/


SELECT Distinct COUNT(Distinct(GrandSlam + Date)) 'Count of all Grandslams'
FROM GrandSlams


SELECT Distinct COUNT(Distinct(GrandSlam + Date)) * 8 'Possible players in Grandslams'
FROM GrandSlams


SELECT Distinct COUNT(GrandSlam) 'Players In Grandslams from top 15 in last 3 years', P.Name
FROM GrandSlams GS
JOIN Players P ON GS.PlayerId = P.PlayerId
JOIN Ranking R ON P.PlayerId = R.PlayerId
WHERE R.[Position] <= 15
GROUP BY P.Name



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


