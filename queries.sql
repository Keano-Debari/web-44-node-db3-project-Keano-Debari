-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select productname, categoryname
from products as p
join categories as c
on p.categoryid = c.categoryid

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select orderid, shippername
from orders
join shippers
where orderdate < '2012-8-9';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select productname, quantity
from orderdetails
join products
where orderid = 10251 
group by quantity

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select orderid, customername, lastname
from orders
join employees, customers;
