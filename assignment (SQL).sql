

use weekday_4pm;

select * from athlete;

-- Qusetion1 :Show how many medal counts present for entire data.

select medal,count(medal) as medal_count from athlete group by Medal;

-- Qusetion 2: Show count of unique Sports are present in olympics.

select count(distinct(sport)) as count_of_distinct_sports from athlete;

-- Question 3: Show how many different medals won by Team India in data.

select Team,medal,count(medal)  as count from athlete  where team='india' and medal<>'nomedal' group by medal;

-- Qustion 4:Show event wise medals won by india show from highest to lowest medals won in order.

select Team,event,count(medal) as count from athlete where team='india' group by team,event order by count desc;

-- Qusetion 5:Show event and yearwise medals won by india in order of year.

select team,event,year,count(medal) as count,medal from athlete where team='india' and medal<>'nomedal' group by team,event,year,medal order by year ;

-- Question 6:Show the country with maximum medals won gold, silver, bronze

select team,count(medal) as count,medal from athlete where medal<>'nomedal' group by team,medal order by count desc limit 3;

-- Question7: Show the top 10 countries with respect to gold medals

select team,count(medal) as count,medal from athlete where medal='gold' group by team,Medal order by count desc limit 10;

-- Question 8:Show in which year did United States won most medals

select team,count(medal) as count_medal,year from athlete where team='united states'and medal<>'nomedal' group by team,year order by count_medal desc limit 1;

-- Question 9: In which sports United States has most medals

select team,count(medal) as count_of_medal,sport from athlete where team='united states' and medal<>'nomedal' group by team,sport order by count_of_medal desc limit 1;

-- Question 10:Find top 3 players who have won most medals along with their sports and country.

select name,team,sport,count(medal) as count_medal from athlete where medal<>'nomedal' group by name,team,sport order by count_medal desc limit 3;

-- Question 11:Find player with most gold medals in cycling along with his country.

select name,team,sport,count(medal) as count_medal from athlete where medal='gold' and sport='cycling' group by name,team,sport order by count_medal desc limit 1;

-- Question 12:  Find out the count of different medals of the top basketball player.

select name,team,medal,sport,count(medal) as count_medal from athlete where medal<>'nomedal'and sport='basketball' 
group by name,team,medal,sport order by count_medal desc limit 10;

-- Question 13: Find out medals won by male, female each year

select sex,year,count(medal) from athlete where medal<>'nomedal' group by sex,year order by year;



