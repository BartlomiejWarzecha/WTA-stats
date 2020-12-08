USE [WTA-stats]

/* Jaka jest średnia wieku zawodniczek z ostatnich 3 lat? 27 */

SELECT AVG(CAST(Age AS INT))
FROM Players

/* Jaki kraj ma najwiecej reprezentatek? USA 5*/

SELECT COUNT(*), Country
FROM Players
GROUP BY Country


SELECT PlayerID, Name
FROM Players

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
/*  */
/*  */
/*  */


