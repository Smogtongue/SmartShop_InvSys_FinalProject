/* Join Products, Sales, and Suppliers tables */
SELECT 
    P.ProductName, 
    S.SaleDate, 
    S.StoreLocation, 
    S.UnitsSold
FROM 
    Sales S
JOIN 
    Products P ON S.ProductID = P.ProductID
JOIN 
    Suppliers SP ON P.SupplierID = SP.SupplierID;
