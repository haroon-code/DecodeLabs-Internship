-- Project 3: SQL Data Analysis
-- Name: Haroon Usman
-- Dataset: E-Commerce Orders
-- Table: DatasetforDataAnalyticsSheet1

-- Column Reference:
-- c1  = OrderID
-- c2  = Date
-- c3  = CustomerID
-- c4  = Product
-- c5  = Quantity
-- c6  = UnitPrice
-- c7  = ShippingAddress
-- c8  = PaymentMethod
-- c9  = OrderStatus
-- c10 = TrackingNumber
-- c11 = ItemsInCart
-- c12 = CouponCode
-- c13 = ReferralSource
-- c14 = TotalPrice

-- =============================================
-- SECTION 1: SELECT QUERIES
-- =============================================

-- Query 1: View all data
SELECT * FROM DatasetforDataAnalyticsSheet1;

-- Query 2: View only important columns
SELECT c1, c4, c5, c14
FROM DatasetforDataAnalyticsSheet1;

-- =============================================
-- SECTION 2: WHERE CLAUSE (Filtering)
-- =============================================

-- Query 3: Show only Delivered orders
SELECT * FROM DatasetforDataAnalyticsSheet1
WHERE c9 = 'Delivered';

-- Query 4: Show only Laptop orders
SELECT * FROM DatasetforDataAnalyticsSheet1
WHERE c4 = 'Laptop';

-- Query 5: Show orders with TotalPrice greater than 2000
SELECT c1, c4, c5, c14
FROM DatasetforDataAnalyticsSheet1
WHERE c14 > 2000;

-- Query 6: Show orders paid by Credit Card
SELECT c1, c4, c8, c14
FROM DatasetforDataAnalyticsSheet1
WHERE c8 = 'Credit Card';

-- Query 7: Show Delivered orders from Instagram
SELECT c1, c4, c9, c13, c14
FROM DatasetforDataAnalyticsSheet1
WHERE c9 = 'Delivered' AND c13 = 'Instagram';

-- =============================================
-- SECTION 3: ORDER BY (Sorting)
-- =============================================

-- Query 8: Show orders sorted by TotalPrice highest first
SELECT c1, c4, c14
FROM DatasetforDataAnalyticsSheet1
ORDER BY c14 DESC;

-- Query 9: Show orders sorted by TotalPrice lowest first
SELECT c1, c4, c14
FROM DatasetforDataAnalyticsSheet1
ORDER BY c14 ASC;

-- Query 10: Show Delivered orders sorted by TotalPrice
SELECT c1, c4, c9, c14
FROM DatasetforDataAnalyticsSheet1
WHERE c9 = 'Delivered'
ORDER BY c14 DESC;

-- =============================================
-- SECTION 4: AGGREGATIONS (COUNT, SUM, AVG)
-- =============================================

-- Query 11: Count total number of orders
SELECT COUNT(*) AS total_orders
FROM DatasetforDataAnalyticsSheet1;

-- Query 12: Calculate total revenue from all orders
SELECT SUM(c14) AS total_revenue
FROM DatasetforDataAnalyticsSheet1;

-- Query 13: Calculate average order value
SELECT AVG(c14) AS average_order_value
FROM DatasetforDataAnalyticsSheet1;

-- Query 14: Find highest and lowest order value
SELECT MAX(c14) AS highest_order, MIN(c14) AS lowest_order
FROM DatasetforDataAnalyticsSheet1;

-- Query 15: Count only Delivered orders
SELECT COUNT(*) AS delivered_orders
FROM DatasetforDataAnalyticsSheet1
WHERE c9 = 'Delivered';

-- =============================================
-- SECTION 5: GROUP BY
-- =============================================

-- Query 16: Count orders by Product
SELECT c4 AS Product, COUNT(*) AS total_orders
FROM DatasetforDataAnalyticsSheet1
GROUP BY c4;

-- Query 17: Total revenue by Product
SELECT c4 AS Product, SUM(c14) AS total_revenue
FROM DatasetforDataAnalyticsSheet1
GROUP BY c4
ORDER BY total_revenue DESC;

-- Query 18: Count orders by Order Status
SELECT c9 AS OrderStatus, COUNT(*) AS total_orders
FROM DatasetforDataAnalyticsSheet1
GROUP BY c9
ORDER BY total_orders DESC;

-- Query 19: Average order value by Payment Method
SELECT c8 AS PaymentMethod, AVG(c14) AS avg_order_value
FROM DatasetforDataAnalyticsSheet1
GROUP BY c8;

-- Query 20: Total revenue by Referral Source
SELECT c13 AS ReferralSource, SUM(c14) AS total_revenue, COUNT(*) AS total_orders
FROM DatasetforDataAnalyticsSheet1
GROUP BY c13
ORDER BY total_revenue DESC;

-- =============================================
-- SECTION 6: HAVING (Bonus)
-- =============================================

-- Query 21: Products with more than 140 orders
SELECT c4 AS Product, COUNT(*) AS total_orders
FROM DatasetforDataAnalyticsSheet1
GROUP BY c4
HAVING total_orders > 140;

-- Query 22: Payment methods with average order value above 900
SELECT c8 AS PaymentMethod, AVG(c14) AS avg_order_value
FROM DatasetforDataAnalyticsSheet1
GROUP BY c8
HAVING avg_order_value > 900;

-- Query 23: Referral sources that generated more than 50 orders
SELECT c13 AS ReferralSource, COUNT(*) AS total_orders
FROM DatasetforDataAnalyticsSheet1
GROUP BY c13
HAVING total_orders > 50;