<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SQL Data Analysis - Task 6</title>
</head>
<body>

<h1 style="color: #4A90E2; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #E6F0FA; padding: 15px; border-radius: 10px;">
    Task 6: SQL for Data Analysis
</h1>

<h2 style="color: #2C3E50; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">🎯 Objective</h2>
<p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: #34495E;">
    Use SQL queries to analyze monthly sales performance, including revenue and order volume using a sales dataset.
</p>

<h2 style="color: #2C3E50; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">🛠 Tools</h2>
<ul style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: #2D3436; list-style-type: circle; padding-left: 20px;">
    <li style="color: #1ABC9C;">MySQL</li>
</ul>

<h2 style="color: #2C3E50; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">📦 Deliverables</h2>
<ul style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: #2D3436; list-style-type: square; padding-left: 20px;">
    <li>SQL query files (.sql)</li>
    <li>Screenshots of query outputs (named as numbers)</li>
</ul>

<h2 style="color: #2C3E50; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">📈 Highlight Task</h2>
<div style="background-color: #EAF2F8; border-left: 6px solid #3498DB; padding: 15px; margin: 10px 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
    <p>This query retrieves the top 5 months with the highest revenue from the <strong>sales</strong> table and shows both revenue and order volume along with the real month name (e.g., June 2023):</p>
    <pre style="background-color: #FBFCFC; border: 1px solid #D5D8DC; padding: 10px; overflow-x: auto;">
SELECT 
  DATE_FORMAT(STR_TO_DATE(date, '%Y-%m-%d'), '%M %Y') AS month_year,
  SUM(`Total Revenue`) AS total_revenue,
  COUNT(DISTINCT `Transaction Id`) AS order_volume
FROM sales
GROUP BY month_year
ORDER BY total_revenue DESC
LIMIT 5;
    </pre>
</div>

<h2 style="color: #2C3E50; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">🧠 SQL Concepts Used</h2>
<ul style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: #2D3436; list-style-type: disc; padding-left: 20px;">
    <li><code style="background-color: #D6EAF8; padding: 2px 4px;">SELECT</code> and <code style="background-color: #D5F5E3; padding: 2px 4px;">GROUP BY</code> to aggregate monthly revenue</li>
    <li><code style="background-color: #FADBD8; padding: 2px 4px;">COUNT(DISTINCT ...)</code> for unique order volume</li>
    <li><code style="background-color: #F6DDCC; padding: 2px 4px;">SUM()</code> to calculate monthly total revenue</li>
    <li><code style="background-color: #FCF3CF; padding: 2px 4px;">ORDER BY</code> to sort results by revenue</li>
    <li><code style="background-color: #E8DAEF; padding: 2px 4px;">LIMIT</code> to show top 5 months</li>
    <li><code style="background-color: #E6E6FA; padding: 2px 4px;">DATE_FORMAT</code> to show real month and year</li>
</ul>

</body>
</html>
