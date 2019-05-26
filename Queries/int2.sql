.read PeoplePointsViews.sql
select distinct id, MaxPoints as BestPoints
from MaxPeoplePoints
where not exists 
(
select *
from MaxPeoplePoints
where MaxPoints > BestPoints
);
.read DropPeopleViews.sql