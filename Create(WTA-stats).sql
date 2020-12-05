
GO
IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = N'WTA-stats'
)
CREATE DATABASE [WTA-stats]


USE [WTA-stats]
-- Create a new table called 'Customers' in schema 'dbo'
-- Drop the table if it already exist
IF OBJECT_ID('dbo.Players', 'U') IS NOT NULL
DROP TABLE dbo.Players

-- Create the table in the specified schema
CREATE TABLE dbo.Players
(
   PlayerId        INT    NOT NULL   PRIMARY KEY, -- primary key column
   Name      [NVARCHAR](50)  NOT NULL,
   Country  [NVARCHAR](50)  NOT NULL,
   Age     [NVARCHAR](50)  NOT NULL
);

IF OBJECT_ID('dbo.Ranking', 'U') IS NOT NULL
DROP TABLE dbo.Ranking

CREATE TABLE dbo.Ranking
(
   RankingID        INT    NOT NULL   PRIMARY KEY, -- primary key column
   PlayerId int FOREIGN KEY REFERENCES Players(PlayerId),
   Points      [NVARCHAR](50)  NOT NULL,
   Position  [NVARCHAR](50)  NOT NULL,
   Date     [NVARCHAR](50)  NOT NULL
);


IF OBJECT_ID('dbo.GrandSlam', 'U') IS NOT NULL
DROP TABLE dbo.GrandSlam

CREATE TABLE dbo.GrandSlams
(
   GrandSlamID        INT    NOT NULL   PRIMARY KEY, -- primary key column
   PlayerId int FOREIGN KEY REFERENCES Players(PlayerId),
   Postion      [NVARCHAR](50)  NOT NULL,
   GrandSlam  [NVARCHAR](50)  NOT NULL,
   Date     [NVARCHAR](50)  NOT NULL
);


IF OBJECT_ID('dbo.Tournaments', 'U') IS NOT NULL
DROP TABLE dbo.Tournaments

CREATE TABLE dbo.Tournaments
(
   TournamentsID        INT    NOT NULL   PRIMARY KEY, -- primary key column
   PlayerId int FOREIGN KEY REFERENCES Players(PlayerId),
   Court     [NVARCHAR](50)  NOT NULL,
   City  [NVARCHAR](50)  NOT NULL,
   Date     [NVARCHAR](50)  NOT NULL
);


