SELECT 
	warehouseName,
    warehousePctCap,
    SUM(quantityInStock) AS quantityInStock,
    ROUND(SUM(100*quantityInStock/warehousePctCap),0) AS warehouseMaxCapacity
FROM warehouses
INNER JOIN products
ON warehouses.warehouseCode = products.warehouseCode
GROUP BY warehouseName, warehousePctCap
ORDER BY warehouseName