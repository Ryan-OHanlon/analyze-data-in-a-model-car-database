SELECT
	productLine,
	productName,
    quantityInStock,
    SUM(quantityOrdered) AS quantityOrdered
FROM products
LEFT JOIN orderdetails
ON products.productCode = orderdetails.productCode
GROUP BY productName, productLine, quantityInStock