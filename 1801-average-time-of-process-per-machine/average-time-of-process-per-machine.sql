select ans.machine_id, round(sum(ans.diff)/count(ans.process_id),3) processing_time
from(
select a1.machine_id, a1.process_id, (a2.timestamp-a1.timestamp) diff 
from activity a1 JOIN activity a2 
on(
a1.machine_id = a2.machine_id and
a1.process_id=a2.process_id and
a1.activity_type ='start'and
a2.activity_type ='end'
)
)
ans
group by ans.machine_id;
