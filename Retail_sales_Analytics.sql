CREATE DATABASE IF NOT EXISTS retail_analytics;

USE retail_analytics;


SELECT COUNT(*)
FROM `cleaned_retail_sales (1)`;
SELECT *
FROM `cleaned_retail_sales (1)`
LIMIT 10;
DESCRIBE `cleaned_retail_sales (1)`;
SELECT
    COUNT(*) AS Total_Rows,
    SUM(Customer_ID IS NULL) AS Null_Customer_ID,
    SUM(Product_ID IS NULL) AS Null_Product_ID,
    SUM(Sales_Amount IS NULL) AS Null_Sales,
    SUM(Profit IS NULL) AS Null_Profit,
    SUM(Order_Date IS NULL) AS Null_Order_Date
FROM `cleaned_retail_sales (1)`;
SELECT
    Transaction_ID,
    COUNT(*) AS Duplicate_Count
FROM `cleaned_retail_sales (1)`
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;
SELECT
    SUM(Sales_Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    AVG(Sales_Amount) AS Average_Sales,
    COUNT(DISTINCT transaction_ID) AS Total_Orders
FROM `cleaned_retail_sales (1)`;
SELECT
    Year,
    Month,
    Month_Name,
    SUM(Sales_Amount) AS Monthly_Sales,
    SUM(Profit) AS Monthly_Profit
FROM `cleaned_retail_sales (1)`
GROUP BY Year, Month, Month_Name
ORDER BY Year, Month;
SELECT
    Product_Category,
    COUNT(DISTINCT Transaction_ID) AS Total_Orders,
    SUM(Quantity) AS Total_Quantity,
    SUM(Sales_Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM `cleaned_retail_sales (1)`
GROUP BY Product_Category
ORDER BY Total_Sales DESC;
SELECT
    Region,
    COUNT(DISTINCT Transaction_ID) AS Total_Orders,
    SUM(Sales_Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM `cleaned_retail_sales (1)`
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT
    Customer_Segment,
    COUNT(DISTINCT Customer_ID) AS Total_Customers,
    COUNT(DISTINCT Transaction_ID) AS Total_Orders,
    SUM(Sales_Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM `cleaned_retail_sales (1)` 
GROUP BY Customer_Segment
ORDER BY Total_Sales DESC;
SELECT
    Product_Name,
    SUM(Quantity) AS Total_Quantity,
    SUM(Sales_Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM `cleaned_retail_sales (1)`
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT
    Payment_Method,
    COUNT(DISTINCT Transaction_ID) AS Total_Orders,
    SUM(Sales_Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM `cleaned_retail_sales (1)`
GROUP BY Payment_Method
ORDER BY Total_Sales DESC;
SELECT
    Order_Status,
    COUNT(DISTINCT Transaction_ID) AS Total_Orders,
    SUM(Sales_Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM `cleaned_retail_sales (1)`
GROUP BY Order_Status
ORDER BY Total_Orders DESC;
SELECT
    Return_Flag,
    COUNT(DISTINCT Transaction_ID) AS Total_Orders,
    SUM(Sales_Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM `cleaned_retail_sales (1)`
GROUP BY Return_Flag
ORDER BY Total_Orders DESC;
SELECT
    Sales_Channel,
    COUNT(DISTINCT Transaction_ID) AS Total_Orders,
    SUM(Sales_Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM `cleaned_retail_sales (1)`
GROUP BY Sales_Channel
ORDER BY Total_Sales DESC;
SELECT
    Shipping_Method,
    COUNT(DISTINCT Transaction_ID) AS Total_Orders,
    SUM(Sales_Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM `cleaned_retail_sales (1)`
GROUP BY Shipping_Method
ORDER BY Total_Sales DESC;
SELECT
    Return_Reason,
    COUNT(DISTINCT Transaction_ID) AS Total_Returns,
    SUM(Sales_Amount) AS Total_Return_Value
FROM `cleaned_retail_sales (1)`
WHERE Return_Flag = 'Yes'
GROUP BY Return_Reason
ORDER BY Total_Returns DESC;
SELECT
    COUNT(*) AS Total_Records,
    COUNT(DISTINCT Transaction_ID) AS Unique_Transactions,
    SUM(Sales_Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM `cleaned_retail_sales (1)`;
SELECT
    Year,
    SUM(Sales_Amount) AS Yearly_Sales,
    SUM(Profit) AS Yearly_Profit,
    SUM(Quantity) AS Yearly_Quantity
FROM `cleaned_retail_sales (1)`
GROUP BY Year
ORDER BY Year;