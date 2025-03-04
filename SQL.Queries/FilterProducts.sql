/* Filter by Category */
SELECT ProductName, Category, Price, StockLevel FROM Products WHERE Category = 'YourCategory';

/*Filter by Low Stock Level*/
SELECT ProductName, Category, Price, StockLevel FROM Products WHERE StockLevel < 5;

/*Filter by Price*/
SELECT ProductName, Category, Price, StockLevel FROM Products WHERE Price > 100;

/*Sort Products by Price in Ascending Order*/
SELECT ProductName, Category, Price, StockLevel FROM Products ORDER BY Price ASC;