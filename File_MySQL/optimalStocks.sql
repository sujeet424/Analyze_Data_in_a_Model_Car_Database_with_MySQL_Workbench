-- to find quantityInStock 
select 
	p.productName,
	p.quantityInStock,
    sum(od.quantityOrdered) as totalQuantityorder,
    (p.quantityInStock - sum(od.quantityOrdered)) as diff
  
from 
products p
left join orderdetails od
on p.productCode = od.productCode
group by p.productName,p.quantityInStock
having (p.quantityInStock - sum(od.quantityOrdered)) < 3000
		and (p.quantityInStock - sum(od.quantityOrdered))  > 500
order by totalQuantityorder desc;