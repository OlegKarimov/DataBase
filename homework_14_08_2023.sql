# В рамках БД "онлайн-магазин" напишите след/запросы:



1. Найти мин/стоимость товаров для каждой категории
SELECT
    Categories.CategoryName,
    Products.ProductName,
    Products.Price AS min_product_cost
FROM Categories
    JOIN Products ON Categories.CategoryID=Products.CategoryID
GROUP BY Categories.CategoryName
ORDER BY min_product_cost ASC


2. Вывести ТОП-3 стран по количеству доставленных заказов
SELECT
    Customers.Country,
    SUM(OrderDetails.Quantity) AS products_quantity
FROM Customers
    JOIN OrderDetails ON OrderDetails.OrderID=Orders.OrderID
    JOIN Orders ON Orders.CustomerID=Customers.CustomerID
GROUP BY Customers.Country
ORDER BY products_quantity DESC
    LIMIT 3




3. Вывести названия категорий, в которых более 10 товаров
4. Очистить тел/номер поставщикам из USA
5. Вывести имена и фамилии (и ко-во заказов) менеджеров, у которых ко-во заказов менее 15
6. Вывести товар, который находится на втором месте по ко-ву заказов


