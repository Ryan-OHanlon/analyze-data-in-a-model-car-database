# analyze-data-in-a-model-car-database
## Introduction
In this project, I’ll be working for Mint Classics as a data analyst exploring their dataset to help them make a data-driven business decision by providing suggestions on ways they can reorganize or reduce inventory with the potential goal of closing on of their storage facilities.
Mint Classics is a retailer of model cars and other vehicles. The Mint Classics database contains information about their products, warehouse storage capacity, orders, customers, payments, employees, and offices.
Since the goal of the project is to provide recommendations for Mint Classics to reorganize and reduce their inventory to determine if Mint Classics could close a storage facility, I will be focusing on the following tables.
-	Warehouses
-	Products
-	Productlines
-	Orderdetails

To explore the dataset, the primary tool I will be using is MySQL. The dataset and scripted queries of each part of the analysis will be available on GitHub.

## Analysis
### Warehouse Inventory Space
My first objective is to look at the current products in inventory, where the products are stored in each storage facility, and the current capacity and maximum capacity of products that each storage facility can store.
The Warehouse_ProductQuantityInStock script query shows that Mint Classics has four warehouses classified as East, North, South, and West. We also learn that each warehouse is dedicated to storing Mint Classics inventory by their product line. For example, the East warehouse stores all classic car products. Now that we know how Mint Classics organizes their products, we can now look at how much each warehouse can store.

By using the Warehouse_MaxWarehouseInventory script the warehouse table, we can see the current percentage capacity of each warehouse.  To find out how much each warehouse stores, we can use the current number of products in stock from the products table and the current percentage of warehouse capacity to calculate the maximum number of products each warehouse can store.
We now know that the south warehouse not only has the least number of products stored, but also can store the least number of products when compared to the other warehouses. We also learn that given the current quantity of products both the east and west warehouse can contain every product that is stored in the south warehouse.

### Products and Orders
My second objective is to look at how sales influence Mint Classics inventory and to determine if Mint Classics has enough inventory in relation to their sales.

The Products_Quantity query looks at the number of products in stock for each product, and the number of products ordered by customers. Looking closer at the most ordered and least ordered products can help determine if any products are taking up warehouse space.

The Products_MostOrdered query shows the products that have been ordered the most. The more ordered products have enough quantity in stock that the inventory count is appropriate for each item.

In terms of the least ordered products from Mint Classics, we can confirm using the Products_LeastOrdered that the 1985 Toyota Supra has 0 orders resulting in an excess stock taking up space in the east warehouse. The other standout is that the 1911 Ford Town Car has more orders than quantity in stock. There is not enough information provided to know if the quantityInStock is after the products have been received by the customer or before.

## Recommendations
Given the information we know about the warehouse storage and what products are being ordered, here are my recommendations for Mint Classics to close one of their storage facilities.
1. Move all products out of the south warehouse into the other warehouses. The south warehouse has the least storage capacity compared to the other warehouses. While east and west warehouses could store all the products from south warehouse, it is also possible to distribute south warehouse products by product line to each warehouse. If Mint Classics is to close a storage facility, I would recommend it be the south warehouse.
2. Remove the 1985 Toyota Supra from the product line –The 1985 Toyota Supra is the only product in Mint Classic’s line of products that has not received a single order. If Mint Classics wants to optimize its warehouse space, that would be the one product I would recommend removing.
