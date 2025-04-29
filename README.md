<h2 style="font-size: 2.5em; color: #e74c3c; text-align: center; margin: 30px 0;">📊 Sales Trend Analysis Using Aggregations 🍕</h2>

<p style="font-size: 1.2em; line-height: 1.8; color: #2c3e50; margin: 20px;">
  This analysis explores the monthly <strong style='color:#e67e22;'>revenue</strong> and <strong style='color:#3498db;'>order volume</strong> for a pizza sales dataset during the year <strong>2015</strong> 🍕.
</p>

<h3 style="color: #8e44ad; font-size: 1.8em; margin-top: 30px;">🛠️ Tools Used</h3>
<p style="font-size: 1.2em; color: #2c3e50; margin-left: 20px;">
  • MySQL for querying data<br>
  • SQL Aggregation functions: <code>SUM()</code>, <code>COUNT()</code>, <code>GROUP BY</code><br>
  • Date functions like <code>STR_TO_DATE()</code>, <code>DATE_FORMAT()</code>
</p>

<h3 style="color: #8e44ad; font-size: 1.8em; margin-top: 30px;">📦 Dataset</h3>
<p style="font-size: 1.2em; color: #2c3e50; margin-left: 20px;">
  The dataset <strong>sales</strong> includes fields like:<br>
  <code>date</code>, <code>Transaction Id</code>, <code>Total Revenue</code>
</p>

<h3 style="color: #8e44ad; font-size: 1.8em; margin-top: 30px;">🧮 SQL Query</h3>
<pre style="background-color: #ecf0f1; padding: 15px; border-left: 6px solid #3498db; font-size: 1.1em; margin: 20px;">
SELECT 
  DATE_FORMAT(STR_TO_DATE(date, '%Y-%m-%d'), '%M %Y') AS month_year,
  SUM(`Total Revenue`) AS total_revenue,
  COUNT(DISTINCT `Transaction Id`) AS order_volume
FROM sales
GROUP BY month_year
ORDER BY total_revenue DESC
LIMIT 5;
</pre>

<h3 style="color: #8e44ad; font-size: 1.8em; margin-top: 30px;">📈 Results Table</h3>
<table style="width: 100%; border-collapse: collapse; margin: 20px 0; font-size: 1.1em;">
  <thead style="background-color: #3498db; color: white;">
    <tr>
      <th style="padding: 12px; border: 1px solid #ddd;">📅 Month-Year</th>
      <th style="padding: 12px; border: 1px solid #ddd;">💰 Total Revenue</th>
      <th style="padding: 12px; border: 1px solid #ddd;">🛒 Order Volume</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f9f9f9;">
      <td style="padding: 12px; border: 1px solid #ddd;">January 2024 </td>
      <td style="padding: 12px; border: 1px solid #ddd;">$14,548.00</td>
      <td style="padding: 12px; border: 1px solid #ddd;">31</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #ddd;">March 2024</td>
      <td style="padding: 12px; border: 1px solid #ddd;">$12,849.00</td>
      <td style="padding: 12px; border: 1px solid #ddd;">31</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="padding: 12px; border: 1px solid #ddd;">April 2024</td>
      <td style="padding: 12px; border: 1px solid #ddd;">$12,541.00</td>
      <td style="padding: 12px; border: 1px solid #ddd;">30</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #ddd;">February 2024</td>
      <td style="padding: 12px; border: 1px solid #ddd;">$10,803.00</td>
      <td style="padding: 12px; border: 1px solid #ddd;">29</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="padding: 12px; border: 1px solid #ddd;">May 2024</td>
      <td style="padding: 12px; border: 1px solid #ddd;">$8,455.00</td>
      <td style="padding: 12px; border: 1px solid #ddd;">31</td>
    </tr>
  </tbody>
</table>

<h3 style="color: #8e44ad; font-size: 1.8em; margin-top: 30px;">📌 Conclusion</h3>
<p style="font-size: 1.2em; color: #2c3e50; margin-left: 20px;">
  ✅ Successfully identified the top 5 months based on revenue.<br>
  📈 Helps businesses understand peak sales periods and optimize their strategy.
</p>
