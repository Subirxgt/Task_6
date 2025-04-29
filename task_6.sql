create database task6;
use task6;
select * from sales;
SELECT 
  EXTRACT(MONTH FROM STR_TO_DATE(date, '%Y-%m-%d')) AS month,
  COUNT(DISTINCT `Transaction Id`) AS order_volume,
  SUM(`Total Revenue`) AS total_revenue
FROM sales
GROUP BY  month
ORDER BY  month;

SELECT 
  EXTRACT(MONTH FROM STR_TO_DATE(date, '%Y-%m-%d')) AS month,
  COUNT(DISTINCT `Transaction Id`) AS order_volume,
  SUM(`Total Revenue`) AS total_revenue
FROM sales
GROUP BY month
HAVING month = 6;

-- OR Can Be Done as 

SELECT 
  EXTRACT(MONTH FROM STR_TO_DATE(date, '%Y-%m-%d')) AS month,
  COUNT(DISTINCT `Transaction Id`) AS order_volume,
  SUM(`Total Revenue`) AS total_revenue
FROM sales
WHERE EXTRACT(MONTH FROM STR_TO_DATE(date, '%Y-%m-%d')) = 6
GROUP BY month;

SELECT 
  DATE_FORMAT(STR_TO_DATE(date, '%Y-%m-%d'), '%M %Y') AS month_year,
  SUM(`Total Revenue`) AS total_revenue,
  COUNT(DISTINCT `Transaction Id`) AS order_volume
FROM sales
GROUP BY month_year
ORDER BY total_revenue DESC
LIMIT 5;







