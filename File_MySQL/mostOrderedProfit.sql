-- profit percent earned from the products that were ordered the most

SELECT 
	p.productName, 
	p.buyPrice,
    od.priceEach,
    p.MSRP, 
	(((od.priceEach-p.buyPrice)/p.buyPrice)*100) AS profit_percentage, 
	(od.priceEach-p.buyPrice) AS profit
FROM orderdetails od
JOIN products p
ON od.productCode= p.productCode
GROUP BY p.productName ,p.buyPrice,od.priceEach,p.MSRP
ORDER BY SUM(od.quantityOrdered) DESC LIMIT 10;