-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

--    SELECT "p"."ProductName", "c"."CategoryName"
--    FROM "product" AS p
--    JOIN "category" AS c
--    ON "p"."CategoryId"  =  "c"."Id";

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

--    SELECT "o"."Id" , "s"."CompanyName" , "o"."OrderDate"
--    FROM "Order" AS o
--    JOIN "Shipper" AS s
--    ON "o"."ShipVia" = "s"."Id"
--    WHERE "o"."OrderDate" < "2012-09-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

--    SELECT "p"."ProductName" ,  "o"."Quantity"
--    FROM "Product" AS p
--    JOIN "OrderDetail" o
--    ON "p"."Id" = "o"."ProductId"
--    WHERE "o"."OrderId" = "10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

--    SELECT "CompanyName", "LastName" AS EmployeesLastName, "o".Id
--    FROM "Order" AS o
--    JOIN "Employee" AS e
--    ON "e"."Id" = "o"."EmployeeId"
--    JOIN "Customer" AS c
--    ON "c".Id = "o"."CustomerId";
