.read PeoplePointsViews.sql
select Frequent.university,  avg(Points)
from PeoplePoints, Frequent
where PeoplePoints.id = Frequent.person
group by Frequent.university
.read DropPeopleViews.sql