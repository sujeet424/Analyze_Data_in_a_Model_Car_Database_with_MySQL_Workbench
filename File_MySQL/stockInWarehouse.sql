# details on warehouses

select * from warehouses ;

# quantity of stock in each warehouse

select 
	warehouseCode,
    sum(quantityInStock) as total_Stock
from products 
group by warehouseCode;

# quantity shipped from each warehouse

select 
	p.warehouseCode,
	sum(od.quantityOrdered) as tot_Qty
from products p
join orderdetails od
on p.productCode = od.productCode
group by p.warehouseCode;