# Write your MySQL query statement below
select v.customer_id, count(v.visit_id) as count_no_trans
from Visits v
left join Transactions t on t.visit_id = v.visit_id
where v.visit_id not in (select t.visit_id from Transactions t)
group by v.customer_id;