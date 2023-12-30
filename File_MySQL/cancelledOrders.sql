
-- -- customers that cancelled their order, their reasons and the quantity of products ordered

select  
	o.customerNumber,
    o.status,
    sum(o.orderNumber) as orderNumber,
    sum(od.quantityOrdered) as quantityOrdered,
    o.comments

from orders o
join orderdetails od
on o.orderNumber = od.orderNumber
where o.status = 'Cancelled' 
or o.status = 'On Hold'
or o.status = 'Disputed'
OR o.status="In Process" 

group by o.customerNumber,o.orderNumber,o.comments
order by quantityOrdered desc;



