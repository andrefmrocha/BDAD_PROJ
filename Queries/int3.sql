.mode		columns
.headers	on
.nullvalue	NULL

.read Queries/OpenTPeoplePointsViews.sql
select alumni, avg(Points)
from OpenTPeoplePoints Natural Join Student
group by alumni;
.read Queries/DropOpenTPeopleViews.sql