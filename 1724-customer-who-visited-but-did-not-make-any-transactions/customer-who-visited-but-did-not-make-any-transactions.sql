select v1.customer_id, count(v1.visit_id) count_no_trans from visits v1 LEFT JOIN transactions t1 on 
v1.visit_id = t1.visit_id
where t1.transaction_id is null
group by customer_id;
