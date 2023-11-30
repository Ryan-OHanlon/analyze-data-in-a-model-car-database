SELECT warehouseName,
    productLine,
    SUM(quantityInStock) AS quantityInStock
FROM warehouses
INNER JOIN products
ON warehouses.warehouseCode = products.warehouseCode
GROUP BY warehouseName, productLine
ORDER BY warehouseName