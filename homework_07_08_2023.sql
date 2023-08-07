# В рамках БД "онлайн-магазин" напишите след/запросы:

1. Вывести ко-во заказов, которое компания Speedy Express доставила в Brazil

SELECT COUNT(*) AS count_SpeedyExpress_toBrazil
FROM [Orders]
JOIN Shippers ON Orders.ShipperID=Shippers.ShipperID
JOIN Customers ON Orders.CustomerID=Customers.CustomerID
WHERE
    Shippers.ShipperName='Speedy Express'
    AND
    Customers.Country='Brazil'


2.Вывести среднюю стоимость проданного в Germany товара
SELECT
    AVG(Products.Price) AS avg_price_inGermany
FROM Products
JOIN OrderDetails ON Products.ProductID=OrderDetails.ProductID
JOIN Orders ON OrderDetails.OrderID=Orders.OrderID
JOIN Customers ON Orders.CustomerID=Customers.CustomerID
WHERE
    Customers.Country='Germany'

3. Вывести ко-во и сред/стоимость товаров из USA
