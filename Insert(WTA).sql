use [WTA-stats]
-- Insert rows into table 'Customers'

INSERT INTO dbo.Players
   ([PlayerId],[Name],[Country],[Age])
VALUES

INSERT INTO dbo.Ranking
   ([RankingID],[PlayerId],[Points],[Position],[Date])
VALUES
   ('23', '7', '4465','15','2018-12-31')
/*End without 61*/

INSERT INTO dbo.GrandSlams
   ([GrandSlamID],[PlayerId],[Position],[GrandSlam],[Date])
VALUES
   ('61', '15', 'Q','US Open','2020')

INSERT INTO dbo.Tournaments
   ([TournamentsID],[PlayerId],[Court],[City],[Date],[LEVEL],[Position])
VALUES
   ('41', '19','Hard','Beijing','2018', 'Premier Mandatory', 'F')
   

DELETE FROM Ranking
WHERE RankingID IN(23)

DELETE FROM GrandSlams
WHERE GrandSlamID IN(30)

DELETE FROM Tournaments
WHERE TournamentsID IN(17,16)