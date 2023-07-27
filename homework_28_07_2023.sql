# В рамках БД "онлайн-магазин" напишите след/запросы:

1. Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT 
	Products.ProductName,
    Products.Price * 1.1 AS Price_usd
FROM [OrderDetails]
JOIN Products ON OrderDetails.ProductID=Products.ProductID
ORDER BY Products.Price DESC
LIMIT 1 



2. Вывести два самых дорогих товара из категории Beverages из USA

SELECT *, Price * 1.1 AS Price_usd FROM [Products]
JOIN
	Categories ON Products.CategoryID=Categories.CategoryID
WHERE 
	Categories.CategoryName = 'Beverages'
ORDER BY Products.Price DESC
LIMIT 2


3. Удалить товары с ценой менее 5 EUR

DELETE FROM [Products]
WHERE
	Price < 5


4. Вывести список стран, которые поставляют морепродукты




5. Очистить поле ContactName у всех клиентов не из China

UPDATE Customers
SET ContactName=''
WHERE
	Country != 'China'

