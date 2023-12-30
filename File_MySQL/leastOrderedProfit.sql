-- profit percent earned from the products that were ordered the least


select
	p.productName,
    p.productCode,
    p.buyPrice,
    p.MSRP,
    od.priceEach,
    (((od.priceEach - p.buyPrice ) / p.buyPrice ) * 100) as profit_Percentage
from 
 orderdetails od
 join products p
 on od.productCode = p.productCode
 group by p.productName,p.productCode,p.buyPrice,p.MSRP,od.priceEach
 order by profit_Percentage asc;
 

