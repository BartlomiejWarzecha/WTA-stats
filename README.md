#Technologies
*SQL

_* Essay has been made, 5.0 - A result :) _
* Interest put in this project evaluated to creation of application which is used for  making predictions in "fun: way [here](https://github.com/BartlomiejWarzecha/NewTennisTournament)
* Ideas stored here can contribute to project above in future updates with a lot of automation

### What this project is about?
    
   + This project is made to predict WTA 2021 season results. 
     - Top 8 players at the end of the season
     - WTA tournaments results: GrandSlams, Premier 1000, Premier 500

### What data is stored here    
   + Currently the idea is to implement data from 2018,2019 and 2020. 
       - This data conteins:
           - top 15 players ranking(six month period)
           - WTA GrandSlam (Quaterfinalist, SemiFinalist, Finalist, Winner)
           - WTA winner(Quaterfinalist, SemiFinalist, Finalist, Winners) 24 tournaments which you can find [here](https://fantasy.wtatennis.com/static/how-to-play)
 
### Essay
   + There is Essay in process. Essay contains preperation before making decision. How I am trying to predict succesfully. Sql queries explain and 
   my opinion about chances to predict properly.

### Database

### 1.Create File

There are **4 tables** in Project:
   
   > top 15 players, based on last 3 years(half year periH)
   - Players (PlayerId Primary Key, Name (Varchar), Country (Varchar), Age (Varchar), 

   > top 15 players, based on last 3 years(half year period)
   - Ranking (RankingID Primary Key, Playerid Foreign Key, Points (Varchar), Positon (Varchar), Date (Varchar)

   > <2018, current> (Australian Open, US Open, Rolland Garros, Wimbledon)
   - GrandSlam(GrandSlamD Primary Key, Playerid Foreign Key, Position, GrandSlam, Date)

   > <2018, current> 
   > 9 Premier 1000 - Indian Wells, Miami, Madrid, Beijing, Doh, Rome, Cincinnatti, Toronto\Montreal, Wuhan
   > 11 Premier 500 - Brisbane, Adeleide, St.Petersburg, Dubai, Charlestone, Sttugart, Berlin, Eastborne, San Jose, Zhang Zou, Tokyo, Moscow

   - Tournaments (TournamentsID Primary Key, Playerid Foreign Key, Court, City, Date, LEVEL)

  > Not yet created 

   - Pretenders (PretenderID Primary Key, Name (Varchar), Country (Varchar), Age (Varchar)) 

### 2.Insert File

In this file I am manipulaiting on values in Tables:
   - Adding Values (Insert Into)
   - Adding new columns(Alter)
   - Deleting Values (Delete)
   - Updating tables (Update)

### 3. Search File

In this file Iam making queries for all tables




