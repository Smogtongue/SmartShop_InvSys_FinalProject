
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
    ProductName, 
    SUM(UnitsSold) AS TotalUnitsSold
FROM 
    Products P
JOIN 
    Sales S ON P.ProductID = S.ProductID
GROUP BY 
    ProductName;

/* Identify suppliers with the most delayed deliveries */
SELECT 
    SupplierName, 
    COUNT(*) AS DelayedDeliveries
FROM 
    Suppliers SP
JOIN 
    Deliveries D ON SP.SupplierID = D.SupplierID
WHERE 
    D.DeliveryDate > D.ExpectedDeliveryDate
GROUP BY 
    SupplierName
ORDER BY 
    DelayedDeliveries DESC;

/* Use aggregate functions to analyze trends and summarize data */
SELECT 
    StoreLocation, 
    AVG(Price) AS AveragePrice, 
    MAX(StockLevel) AS MaxStockLevel, 
    SUM(UnitsSold) AS TotalUnitsSold
FROM 
    Products P
JOIN 
    Sales S ON P.ProductID = S.ProductID
GROUP BY 
    StoreLocation;
