
--- -- most no. of clients in which country


select 
	country,
    count(customerNumber) as count_Customers
from customers
group by country
order by count_Customers  desc;


