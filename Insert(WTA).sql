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
   ('6', '15', 'Q','US Open','2020')

INSERT INTO dbo.Tournaments
   ([TournamentsID],[PlayerId],[Court],[City],[Date],[LEVEL],[Position])
VALUES
   ('85', '12','Clay','Rome','2018', 'WTA 1000', 'Q')
   
UPDATE Tournaments
SET 
    LEVEL = 'WTA 1000'
WHERE
    LEVEL = 'Premier Mandatory'

DELETE FROM Ranking
WHERE RankingID IN(23)

DELETE FROM GrandSlams
WHERE GrandSlamID IN(30)

DELETE FROM Tournaments
WHERE TournamentsID IN(87,88)