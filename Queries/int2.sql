.read PeoplePointsViews
select *, sum(Points)
from PeoplePoints
group by id
order by sum(Points) desc
limit 1;
.read DropPeopleViews