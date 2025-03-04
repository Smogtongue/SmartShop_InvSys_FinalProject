/* Calculate total sales for each product */
SELECT 
    P.ProductName, 
    SUM(S.UnitsSold) AS TotalUnitsSold
FROM 
    Sales S
JOIN 
    Products P ON S.ProductID = P.ProductID
GROUP BY 
    P.ProductName;

/* Identify suppliers with the most delayed deliveries */
SELECT 
    SP.SupplierName, 
    COUNT(*) AS DelayedDeliveries
FROM 
    Deliveries D
JOIN 
    Suppliers SP ON D.SupplierID = SP.SupplierID
WHERE 
    D.DeliveryDate > D.ExpectedDeliveryDate
GROUP BY 
    SP.SupplierName
ORDER BY 
    DelayedDeliveries DESC;

/* Use aggregate functions to analyze trends and summarize data */
SELECT 
    S.StoreLocation, 
    AVG(P.Price) AS AveragePrice, 
    MAX(P.StockLevel) AS MaxStockLevel, 
    SUM(S.UnitsSold) AS TotalUnitsSold
FROM 
    Sales S
JOIN 
    Products P ON S.ProductID = P.ProductID
GROUP BY 
    S.StoreLocation;
