# WTA-stats

### What this project is about?
    
   + This project is made to try predict WTA 2021 season results. 
     - Top 8 players at the end of the season
     - WTA tournaments results: GrandSlam, Tournaments

### What data is stored here    
   + Currently the idea is to implement data from 2018,2019 and 2020. 
       - This data conteined:
           - top 15 players ranking(six month period)
           - WTA GrandSlam (Quaterfinalist, SemiFinalist, Finalist, Winner)
           - WTA winner(22 tournaments included in WTA Fantasy Season challange plan [here](https://fantasy.wtatennis.com/static/how-to-play)
 
### Essay thema?
   + There is Essay in process. Essay contains preperation before making decision who to chose, how I am trying to predict succesfully with sql queries explain and 
   my opinion about chances to predict properly

### Database

    

### 1.Create File

There are **4 tables** in Project:
   - Players (PlayerId Primary Key, Name (Varchar), Country (Varchar), Age (Varchar), 

   - Ranking (RankingID Primary Key, Playerid Foreign Key, Points (Varchar), Positon (Varchar), Date (Varchar)
 
   - GrandSlam(GrandSlamD Primary Key, Playerid Foreign Key, Position, GrandSlam, Date)

   - Tournaments (TournamentsID Primary Key, Playerid Foreign Key, Court, City, Date)

### 2.Insert File

In this file I am adding manipulaiting on values in Tables:
   - Adding Values (Insert Into)
   - Deleting Values (Delete From)

### 3. Search File

In this file Iam making queries for all tables. Later I want to make them into stored procedures.

Simple aim is to make:
   - 3 table queriesPlayers
   - 3 table queriesRanking
   - 3 table queriesTournaments
   - 3 table queriesGrandSlam
   - 5 betweequeriesn tables




