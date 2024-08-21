
USE bike_sales_data

SELECT * 
FROM bike_sales

-- What are the total sales for each year?
SELECT Year, SUM(Revenue) AS Revenue
FROM bike_sales
GROUP BY Year
ORDER BY Year;

-- What are the top 5 best-selling bike models?

SELECT TOP 5 Product, SUM(Revenue) AS Revenue
FROM bike_sales
GROUP BY Product
ORDER BY Revenue DESC;

-- What are the bike models with lowest sales?

SELECT TOP 5 Product, SUM(Revenue) AS Revenue
FROM bike_sales
GROUP BY Product
ORDER BY Revenue ASC;



-- Which months have the highest sales volume?

SELECT Month, SUM(Revenue) AS TotalSalesVolume
FROM bike_sales
GROUP BY MONTH
ORDER BY 2 DESC;

-- What is the distribution of sales by region?

SELECT Country, SUM(Revenue)
FROM bike_sales
GROUP BY Country

-- What is the average sale amount per transaction?

SELECT AVG(REVENUE) AS Average_Sales_Per_Transaction
FROM bike_sales

-- What is the profit by year?

SELECT REVENUE
FROM bike_sales

SELECT 
    Year, SUM(Profit) AS Total_Profit, SUM(Revenue) AS Total_Revenue,
    (SUM(CAST(Profit AS DECIMAL(10,2))) / SUM(CAST(Revenue AS DECIMAL(10,2)))) * 100 AS Profit_Margin_Percentage
FROM bike_sales
GROUP BY Year
ORDER BY Year

-- Sales According to months

SELECT CONCAT(Month, '-', Year) AS Month_Year,
       SUM(Revenue) AS Monthly_Revenue
FROM bike_sales
WHERE Year IN (2011, 2012, 2013, 2014, 2015)
GROUP BY Month, Year
ORDER BY Year, Month ASC;




