SELECT
    p.productName,
    p.productVendor,
    p.quantityInStock,
    SUM(od.quantityOrdered) AS totalQuantityOrdered,
    (p.quantityInStock - COALESCE(SUM(od.quantityOrdered), 0)) AS difference
FROM products p
LEFT JOIN orderdetails od 
ON p.productCode = od.productCode
GROUP BY p.productName, p.quantityInStock,p.productVendor
HAVING (p.quantityInStock - COALESCE(SUM(od.quantityOrdered), 0)) < 0
ORDER BY totalQuantityOrdered DESC;