with team_record as
(
select 
	COUNT(*) FILTER (WHERE "Result" = 'Win')  AS wins,
    COUNT(*) FILTER (WHERE "Result" = 'Loss') AS losses
    from 
    jordan_tang
)
,
receiver_total as
(
select 
	sum("Boyd Yards") as "Boyd Yards",
	sum("Higgins Yards") as "Higgins Yards" ,
	sum("Chase Yards") as "Chase Yards" 
from
jordan_tang
)


select 
a."Boyd Yards",
a."Higgins Yards",
a."Chase Yards",
concat(b.wins, '-' , b.losses) as "Win/Loss" 
from receiver_total a ,team_record b

