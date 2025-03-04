/* Join Products, Sales, and Suppliers tables */
SELECT 
    P.ProductName, 
    S.SaleDate, 
    S.StoreLocation, 
    S.UnitsSold
FROM 
    Products P
JOIN 
    Sales S ON P.ProductID = S.ProductID
JOIN 
    Suppliers SP ON P.SupplierID = SP.SupplierID;

/* Calculate total sales for each product */
SELECT 
    P.ProductName, 
    SUM(S.UnitsSold) AS TotalUnitsSold
FROM 
    Products P
JOIN 
    Sales S ON P.ProductID = S.ProductID
GROUP BY 
    P.ProductName;

/* Identify suppliers with the most delayed deliveries */
SELECT 
    SP.SupplierName, 
    COUNT(*) AS DelayedDeliveries
FROM 
    Suppliers SP
JOIN 
    Deliveries D ON SP.SupplierID = D.SupplierID
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
    Products P
JOIN 
    Sales S ON P.ProductID = S.ProductID
GROUP BY 
    S.StoreLocation;
