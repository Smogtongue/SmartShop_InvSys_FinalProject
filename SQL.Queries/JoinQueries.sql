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
