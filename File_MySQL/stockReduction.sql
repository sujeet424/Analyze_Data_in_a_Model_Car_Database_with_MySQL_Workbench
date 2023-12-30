#Overstocked products
SELECT
    p.productName,
    p.quantityInStock,
    (p.quantityInStock * 0.7) AS reduction_stock,
    SUM(od.quantityOrdered) AS totalQuantityOrdered,
    (p.quantityInStock - COALESCE(SUM(od.quantityOrdered), 0)) AS difference
FROM products p
LEFT JOIN orderdetails od
ON p.productCode = od.productCode
GROUP BY p.productName, p.quantityInStock
HAVING (p.quantityInStock - COALESCE(SUM(od.quantityOrdered), 0)) > 3000
ORDER BY totalQuantityOrdered DESC;