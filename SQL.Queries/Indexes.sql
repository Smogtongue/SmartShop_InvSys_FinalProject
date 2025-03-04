-- Add indexes to frequently queried columns
CREATE INDEX idx_products_category ON Products(Category);
CREATE INDEX idx_products_price ON Products(Price);
CREATE INDEX idx_products_stocklevel ON Products(StockLevel);
CREATE INDEX idx_sales_productid ON Sales(ProductID);
CREATE INDEX idx_sales_saledate ON Sales(SaleDate);
CREATE INDEX idx_sales_storelocation ON Sales(StoreLocation);
CREATE INDEX idx_suppliers_supplierid ON Suppliers(SupplierID);
CREATE INDEX idx_deliveries_supplierid ON Deliveries(SupplierID);
CREATE INDEX idx_deliveries_deliverydate ON Deliveries(DeliveryDate);
CREATE INDEX idx_deliveries_expecteddeliverydate ON Deliveries(ExpectedDeliveryDate);
