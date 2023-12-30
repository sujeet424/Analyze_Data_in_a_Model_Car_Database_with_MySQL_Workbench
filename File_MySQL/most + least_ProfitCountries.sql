
-- Most profits earned in which countries

select
	c.country,
    sum(p.amount) as Amount 
 from customers c
join payments p
on c.customerNumber = p.customerNumber
group by c.country
order by Amount desc;
 
 
 -- Least profits earned in which countries
 
 -- Least profits earned in which countries
select
	c.country,
    sum(p.amount) as Amount 
from customers c
left join  payments p
on c.customerNumber = p.customerNumber
group by c.country
order by Amount asc ;

