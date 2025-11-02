SELECT
  `final-task-bank-muamalat-2025.Final_Task.Orders`.Date AS order_date,
  `final-task-bank-muamalat-2025.Final_Task.ProductCategory`.CategoryName AS category_name,
  `final-task-bank-muamalat-2025.Final_Task.Products`.ProdName AS product_name,
  `final-task-bank-muamalat-2025.Final_Task.Products`.Price AS product_price,
  `final-task-bank-muamalat-2025.Final_Task.Orders`.Quantity AS order_qty,
  (`final-task-bank-muamalat-2025.Final_Task.Orders`.Quantity * `final-task-bank-muamalat-2025.Final_Task.Products`.Price) AS total_sales,
  `final-task-bank-muamalat-2025.Final_Task.Customers`.CustomerEmail AS cust_email,
  `final-task-bank-muamalat-2025.Final_Task.Customers`.CustomerCity AS cust_city
FROM `final-task-bank-muamalat-2025.Final_Task.Orders`
INNER JOIN `final-task-bank-muamalat-2025.Final_Task.Customers`
  ON `final-task-bank-muamalat-2025.Final_Task.Orders`.CustomerID = `final-task-bank-muamalat-2025.Final_Task.Customers`.CustomerID
INNER JOIN `final-task-bank-muamalat-2025.Final_Task.Products`
  ON `final-task-bank-muamalat-2025.Final_Task.Orders`.ProdNumber = `final-task-bank-muamalat-2025.Final_Task.Products`.ProdNumber
INNER JOIN `final-task-bank-muamalat-2025.Final_Task.ProductCategory`
  ON `final-task-bank-muamalat-2025.Final_Task.Products`.Category = `final-task-bank-muamalat-2025.Final_Task.ProductCategory`.CategoryID
ORDER BY order_date ASC;
