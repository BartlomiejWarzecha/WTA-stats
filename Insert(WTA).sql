use [WTA-stats]
-- Insert rows into table 'Customers'

INSERT INTO dbo.Players
   ([PlayerId],[Name],[Country],[Age])
VALUES


INSERT INTO dbo.Ranking
   ([RankingID],[PlayerId],[Points],[Position],[Date])
VALUES
   ('75', '3', '3016','15','2020-12-07')
/*End without 61*/


INSERT INTO dbo.GrandSlams
   ([GrandSlamID],[PlayerId],[Position],[GrandSlam],[Date])
VALUES
   ('11', '8', 'Q','Australian Open','2020')

/Missing 11

DELETE FROM Ranking
WHERE RankingID IN()
