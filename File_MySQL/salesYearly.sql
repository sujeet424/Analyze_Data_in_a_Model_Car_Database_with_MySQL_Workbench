-- quantity of total sales each year , significant decline in the last year

select 
	year(o.orderDate) as Year,
	sum(od.quantityOrdered) as tot_qty_sale
from orders o
join orderdetails od
on o.orderNumber = od.orderNumber
group by Year ;