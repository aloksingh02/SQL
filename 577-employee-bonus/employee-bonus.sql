select e1.name, b1.bonus from employee e1 LEFT JOIN bonus b1 on(
    e1.empId = b1.empId
)
where b1.bonus < 1000
or
b1.bonus is null;

