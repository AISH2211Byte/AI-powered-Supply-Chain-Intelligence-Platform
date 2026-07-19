DROP TABLE IF EXISTS master_supply_chain;
CREATE TABLE master_supply_chain (
    "Type" VARCHAR(20),
    "Days for shipping (real)" INTEGER,
    "Days for shipment (scheduled)" INTEGER,
    "Benefit per order" DOUBLE PRECISION,
    "Sales per customer" DOUBLE PRECISION,
    "Delivery Status" VARCHAR(50),
    "Late_delivery_risk" INTEGER,
    "Category Id" INTEGER,
    "Category Name" VARCHAR(50),
    "Customer City" VARCHAR(50),
    "Customer Country" VARCHAR(50),
    "Customer Id" INTEGER,
    "Customer Segment" VARCHAR(50),
    "Customer State" VARCHAR(20),
    "Customer Street" VARCHAR(150),
    "Department Id" INTEGER,
    "Department Name" VARCHAR(20),
    "Latitude" DOUBLE PRECISION,
    "Longitude" DOUBLE PRECISION,
    "Market" VARCHAR(50),
    "Order City" VARCHAR(50),
    "Order Country" VARCHAR(150),
    "Order Customer Id" INTEGER,
    "order date (DateOrders)" TIMESTAMP,
    "Order Id" INTEGER,
    "Order Item Cardprod Id" INTEGER,
    "Order Item Discount" DOUBLE PRECISION,
    "Order Item Discount Rate" DOUBLE PRECISION,
    "Order Item Id" INTEGER,
    "Order Item Product Price" DOUBLE PRECISION,
    "Order Item Profit Ratio" DOUBLE PRECISION,
    "Order Item Quantity" INTEGER,
    "Sales" DOUBLE PRECISION,
    "Order Item Total" DOUBLE PRECISION,
    "Order Profit Per Order" DOUBLE PRECISION,
    "Order Region" VARCHAR(50),
    "Order State" VARCHAR(150),
    "Order Status" VARCHAR(50),
    "Product Card Id" INTEGER,
    "Product Category Id" INTEGER,
    "Product Name" VARCHAR(150),
    "Product Price" DOUBLE PRECISION,
    "Product Status" INTEGER,
    "shipping date (DateOrders)" TIMESTAMP,
    "Shipping Mode" VARCHAR(50),
    "Order Year" INTEGER,
    "Order Month" INTEGER,
    "Order Quarter" INTEGER,
    "Order Weekday" VARCHAR(20),
    "Order Day" INTEGER,
    "Order Month Name" VARCHAR(20),
    "Is Weekend" INTEGER,
    "Avg_Temp" DOUBLE PRECISION,
    "Avg_Humidity" DOUBLE PRECISION,
    "Avg_Precipitation" DOUBLE PRECISION,
    "Avg_Wind" DOUBLE PRECISION,
    "Avg_Visibility" DOUBLE PRECISION,
    "Avg_UV" DOUBLE PRECISION,
    "Avg_PM25" DOUBLE PRECISION,
    "Avg_PM10" DOUBLE PRECISION,
    "Avg_CPPI_2024" DOUBLE PRECISION,
    "Avg_Port_Rank" DOUBLE PRECISION,
    "CPPI_Available" INTEGER,
    "Disaster_Count" INTEGER,
    "Total_Deaths" INTEGER,
    "Total_Affected" INTEGER,
    "Total_Damage" DOUBLE PRECISION,
    "Max_Magnitude" DOUBLE PRECISION
);
select * from master_supply_chain;
SELECT COUNT(*)
FROM master_supply_chain;
SELECT *
FROM master_supply_chain
LIMIT 10;
SELECT *
FROM master_supply_chain
LIMIT 1;
SELECT "Sales"
FROM master_supply_chain;
SELECT
    "Order Id",
    "Sales",
    "Benefit per order"
FROM master_supply_chain;
SELECT DISTINCT "Shipping Mode"
FROM master_supply_chain;
SELECT *
FROM master_supply_chain
WHERE "Order Country"='India';
SELECT count(*)
FROM master_supply_chain
WHERE "Order Country"='India';
SELECT *
FROM master_supply_chain
WHERE "Sales" >1000;
SELECT *
FROM master_supply_chain
WHERE "Market" = 'Europe'
AND "Sales" > 500;
SELECT *
FROM master_supply_chain
WHERE "Market" = 'Europe'
OR "Market" = 'Pacific Asia';
SELECT
    "Order Id",
    "Sales"
FROM master_supply_chain
ORDER BY "Sales" DESC;
SELECT
    "Order Id",
    "Sales"
FROM master_supply_chain
ORDER BY "Sales" ASC;
SELECT
    "Order Id",
    "Sales"
FROM master_supply_chain
ORDER BY "Sales" DESC
LIMIT 10;
SELECT
    "Order Id",
    "Order Profit Per Order"
FROM master_supply_chain
ORDER BY "Order Profit Per Order" DESC
LIMIT 10;
SELECT
    "Order Id",
    "Sales",
    "Order Profit Per Order"
FROM master_supply_chain
WHERE "Order Profit Per Order" < 0;
SELECT *
FROM master_supply_chain
WHERE "Sales"
BETWEEN 500 AND 1000;
SELECT *
FROM master_supply_chain
WHERE "Order Country"
IN ('India','China','Australia');
SELECT DISTINCT "Order Country"
FROM master_supply_chain
WHERE "Order Country"
LIKE 'United%';
SELECT DISTINCT "Order Country"
FROM master_supply_chain
WHERE "Order Country"
LIKE '%South%';
SELECT DISTINCT "Order Country"
FROM master_supply_chain
WHERE "Order Country"
LIKE '%land';
SELECT COUNT(*)
FROM master_supply_chain
WHERE "Order Country" = 'India';
SELECT COUNT(DISTINCT "Order Country")
FROM master_supply_chain;
SELECT SUM("Sales")
FROM master_supply_chain;
SELECT SUM("Order Profit Per Order")
FROM master_supply_chain;
SELECT SUM("Sales")
FROM master_supply_chain
WHERE "Order Country"='India';
SELECT AVG("Sales")
FROM master_supply_chain;
SELECT AVG("Order Profit Per Order")
FROM master_supply_chain;
SELECT AVG("Sales")
FROM master_supply_chain
WHERE "Market"='Europe';
SELECT MIN("Sales")
FROM master_supply_chain;
SELECT MIN("order date (DateOrders)")
FROM master_supply_chain;
SELECT MAX("Sales")
FROM master_supply_chain;
SELECT MAX("Sales")
FROM master_supply_chain;
SELECT MAX("order date (DateOrders)")
FROM master_supply_chain;
SELECT
    COUNT(*) AS total_orders,
    SUM("Sales") AS total_sales,
    AVG("Sales") AS avg_sales,
    MIN("Sales") AS lowest_sale,
    MAX("Sales") AS highest_sale
FROM master_supply_chain;
SELECT AVG("Sales")
FROM master_supply_chain;
SELECT SUM("Sales") AS total_revenue
FROM master_supply_chain;
SELECT SUM("Order Profit Per Order") AS total_profit
FROM master_supply_chain;
SELECT MAX("Sales") AS highest_order_value
FROM master_supply_chain;
SELECT COUNT(*) AS late_orders
FROM master_supply_chain
WHERE "Late_delivery_risk" = 1;
SELECT COUNT(*) AS on_time_orders
FROM master_supply_chain
WHERE "Late_delivery_risk" = 0;
SELECT
    "Market",
    SUM("Sales") AS total_sales
FROM master_supply_chain
GROUP BY "Market"
ORDER BY total_sales DESC;
SELECT
    "Order Country",
    COUNT(*) AS total_orders
FROM master_supply_chain
GROUP BY "Order Country"
ORDER BY total_orders DESC;
SELECT
    "Shipping Mode",
    AVG("Sales") AS average_sales
FROM master_supply_chain
GROUP BY "Shipping Mode"
ORDER BY average_sales DESC;
SELECT
    "Market",
    SUM("Order Profit Per Order") AS total_profit
FROM master_supply_chain
GROUP BY "Market"
ORDER BY total_profit DESC;
SELECT
    "Shipping Mode",
    COUNT(*) AS late_orders
FROM master_supply_chain
WHERE "Late_delivery_risk" = 1
GROUP BY "Shipping Mode"
ORDER BY late_orders DESC;
SELECT
    "Customer Segment",
    SUM("Sales") AS total_sales
FROM master_supply_chain
GROUP BY "Customer Segment"
ORDER BY total_sales DESC;
SELECT
    "Category Name",
    COUNT(*) AS total_orders
FROM master_supply_chain
GROUP BY "Category Name"
ORDER BY total_orders DESC;
SELECT
    "Order Country",
    SUM("Sales") AS total_sales
FROM master_supply_chain
GROUP BY "Order Country"
ORDER BY total_sales DESC
LIMIT 10;
SELECT
    "Department Name",
    AVG("Order Profit Per Order") AS average_profit
FROM master_supply_chain
GROUP BY "Department Name"
ORDER BY average_profit DESC;
SELECT
    "Order Year",
    COUNT(*) AS total_orders
FROM master_supply_chain
GROUP BY "Order Year"
ORDER BY "Order Year";
SELECT
    "Market",
    SUM("Sales") AS total_sales
FROM master_supply_chain
GROUP BY "Market"
HAVING SUM("Sales") > 5000000
ORDER BY total_sales DESC;
SELECT
    "Order Country",
    COUNT(*) AS total_orders
FROM master_supply_chain
GROUP BY "Order Country"
HAVING COUNT(*) > 500
ORDER BY total_orders DESC;
SELECT
    "Shipping Mode",
    AVG("Sales") AS average_sales
FROM master_supply_chain
GROUP BY "Shipping Mode"
HAVING AVG("Sales") > 200
ORDER BY average_sales DESC;
SELECT
    "Customer Segment",
    SUM("Order Profit Per Order") AS total_profit
FROM master_supply_chain
GROUP BY "Customer Segment"
HAVING SUM("Order Profit Per Order") > 1000000
ORDER BY total_profit DESC;
SELECT
    "Category Name",
    COUNT(*) AS total_orders
FROM master_supply_chain
GROUP BY "Category Name"
HAVING COUNT(*) > 1000
ORDER BY total_orders DESC;
SELECT
    "Market",
    AVG("Order Profit Per Order") AS average_profit
FROM master_supply_chain
GROUP BY "Market"
HAVING AVG("Order Profit Per Order") > 20
ORDER BY average_profit DESC;
SELECT
    "Market",
    COUNT(*) AS late_orders
FROM master_supply_chain
WHERE "Late_delivery_risk" = 1
GROUP BY "Market"
HAVING COUNT(*) > 1000
ORDER BY late_orders DESC;
SELECT
    "Order Id",
    "Sales",
    CASE
        WHEN "Sales" >= 1000 THEN 'High Value'
        WHEN "Sales" >= 500 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS sales_category
FROM master_supply_chain;
SELECT
    "Order Id",
    "Order Profit Per Order",
    CASE
        WHEN "Order Profit Per Order" > 0 THEN 'Profit'
        WHEN "Order Profit Per Order" = 0 THEN 'Break Even'
        ELSE 'Loss'
    END AS profit_status
FROM master_supply_chain;
SELECT
    "Order Id",
    "Late_delivery_risk",
    CASE
        WHEN "Late_delivery_risk" = 1 THEN 'Late'
        ELSE 'On Time'
    END AS delivery_status
FROM master_supply_chain;
SELECT
    "Customer Segment",
    "Sales",
    CASE
        WHEN "Sales" >= 1500 THEN 'Premium'
        WHEN "Sales" >= 700 THEN 'Standard'
        ELSE 'Budget'
    END AS customer_type
FROM master_supply_chain;
SELECT
    CASE
        WHEN "Sales" >= 1000 THEN 'High Value'
        WHEN "Sales" >= 500 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS sales_category,

    COUNT(*) AS total_orders

FROM master_supply_chain

GROUP BY sales_category

ORDER BY total_orders DESC;
SELECT

CASE
    WHEN "Sales" >=1000 THEN 'High Value'
    WHEN "Sales" >=500 THEN 'Medium Value'
    ELSE 'Low Value'
END AS sales_category,

SUM("Sales") AS total_sales

FROM master_supply_chain

GROUP BY sales_category

ORDER BY total_sales DESC;
SELECT

"Order Id",

"Sales",

CASE
    WHEN "Order Profit Per Order" > 0
        THEN 'Profit'
    ELSE 'Loss'
END AS profit_status,

CASE
    WHEN "Late_delivery_risk" = 1
        THEN 'Late'
    ELSE 'On Time'
END AS delivery_status

FROM master_supply_chain;
SELECT

SUM(
CASE
WHEN "Late_delivery_risk"=1
THEN 1
ELSE 0
END
) AS late_orders,

SUM(
CASE
WHEN "Late_delivery_risk"=0
THEN 1
ELSE 0
END
) AS on_time_orders

FROM master_supply_chain;
