-- no. of customers and the status of their orders

select 
	status,count(customerNumber) as Num_of_Cust
from orders
group by status ;
