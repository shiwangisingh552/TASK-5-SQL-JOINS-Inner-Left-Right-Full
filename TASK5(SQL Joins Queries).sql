1.CREATE Customers table:

    CREATE TABLE Customers (
        CustomerID INTEGER PRIMARY KEY,
        Name TEXT,
        City TEXT,
    );


--Insert into Customers:

    INSERT INTO Customers (CustomerID, Name, City) VALUES(1, 'Alice', 'Delhi');
    INSERT INTO Customers (CustomerID, Name, City) VALUES(2, 'Bob', 'Mumbai');
    INSERT INTO Customers (CustomerID, Name, City) VALUES(3, 'Charlie', 'Chennai');
    INSERT INTO Customers (CustomerID, Name, City) VALUES(4, 'Diana', 'Kolkata');


2. Orders table:

    CREATE TABLE Orders (
        OrderID INTEGER PRIMARY KEY,
        CustomerID INTEGER,
        Product TEXT,
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    );

-- Insert into Orders:

    INSERT INTO Orders (OrderID, CustomerID, Product) VALUES(101, 1, 'Laptop');
    INSERT INTO Orders (OrderID, CustomerID, Product) VALUES(102, 2, 'Tablet');
    INSERT INTO Orders (OrderID, CustomerID, Product) VALUES(103, 1, 'Mouse');
    INSERT INTO Orders (OrderID, CustomerID, Product) VALUES(104, 3, 'Keyboard');


3. SQL JOINS QUERIES:

    A. INNER JOINS -

          SELECT Customers.Name, Orders.Product
          FROM Customers
          INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

    B. LEFT JOINS -

        SELECT Customers.Name, Orders.Product
        FROM Customers
        LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

    C. RIGHT JOINS -

        SELECT Customers.Name, Orders.Product
        FROM Customers
        RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

    D. FULL OUTER JOINS -

-- MySQL syntax
      SELECT Customers.Name, Orders.Product
      FROM Customers
      FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Simulate FULL JOIN using UNION
      SELECT Customers.Name, Orders.Product
      FROM Customers
      LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

    UNION

      SELECT Customers.Name, Orders.Product
      FROM Customers
      RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


