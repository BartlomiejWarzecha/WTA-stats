# WTA-stats

What this project is about?

    - This project is made to try predict WTA 2021 season results. 
        - Top 8 players at the end of the season
        - WTA tournaments results: GrandSlam, Tournaments

What data is stored here    
    - Currently the idea is to implement data from 2018,2019 and 2020. 
    This data conteined:
            - top 15 players ranking(six month period)
            - WTA GrandSlam (Quaterfinalist, SemiFinalist, Fianlist, Winner)
            - WTA winner(22 tournaments included in WTA Fantasy Season challange plan [here](https://fantasy.wtatennis.com/static/how-to-play)

Essay thema?
    There is Essay in process. Essay contains preperation before making decision who to chose, how I am trying to predict succesfully with sql queries explain and 
    my opinion about chances to predict properly

Create File

There are 4 tables in Project

Players (PlayerId Primary Key, Name (Varchar), Country (Varchar), Age (Varchar), 

Ranking (RankingID Primary Key, Playerid Foreign Key, Points (Varchar), Positon (Varchar), Date (Varchar)
 
GrandSlam(GrandSlamD Primary Key, Playerid Foreign Key, Position, GrandSlam, Date)

Tournaments (TournamentsID Primary Key, Playerid Foreign Key, Court, City, Date)

Insert File

Inserting values into:

Players

Ranking

GrandSlam

Tournaments

Search File

3 queries table Players

3 queries table Ranking

3 queries table Tournaments

3 queries table GrandSlam

5 queries between tables