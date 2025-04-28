SELECT OrderID, CustomerName, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(Products, ',', n), ',', -1)) AS Product
FROM ProductDetail
JOIN (SELECT 1 AS n UNION SELECT 2 UNION SELECT 3 UNION SELECT 4) AS numbers
WHERE CHAR_LENGTH(Products)
-CHAR_LENGTH(REPLACE(Products, ',', '')) >= n - 1
ORDER BY OrderID, n;
