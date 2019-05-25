.read OpenTPeoplePointsViews.sql
select alumni, avg(Points)
from OpenTPeoplePoints Natural Join Student
group by alumni;
.read DropOpenTPeopleViews.sql