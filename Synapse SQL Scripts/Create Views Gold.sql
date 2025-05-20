----------------------
--CREATE VIEW CALENDAR
----------------------

CREATE VIEW gold.Calendar
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://awstoragedatalakekaran.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'Parquet'
    ) query1



----------------------
--CREATE VIEW Customer
----------------------

CREATE VIEW gold.Customer
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://awstoragedatalakekaran.dfs.core.windows.net/silver/AdventureWorks_Customer/',
        FORMAT = 'Parquet'
    ) query1




----------------------
--CREATE VIEW Product_Categories
----------------------

CREATE VIEW gold.Product_Categories
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://awstoragedatalakekaran.dfs.core.windows.net/silver/AdventureWorks_Product_Categories/',
        FORMAT = 'Parquet'
    ) query1



----------------------
--CREATE VIEW Products
----------------------

CREATE VIEW gold.Products
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://awstoragedatalakekaran.dfs.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'Parquet'
    ) query1



----------------------
--CREATE VIEW Returns
----------------------

CREATE VIEW gold.Returns
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://awstoragedatalakekaran.dfs.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'Parquet'
    ) query1



----------------------
--CREATE VIEW Sales
----------------------

CREATE VIEW gold.Sales
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://awstoragedatalakekaran.dfs.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT = 'Parquet'
    ) query1  





----------------------
--CREATE VIEW Subcategories
----------------------

CREATE VIEW gold.Subcategories
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://awstoragedatalakekaran.dfs.core.windows.net/silver/AdventureWorks_Subcategories/',
        FORMAT = 'Parquet'
    ) query1    




----------------------
--CREATE VIEW Territories
----------------------

CREATE VIEW gold.Territories
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://awstoragedatalakekaran.dfs.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'Parquet'
    ) query1  
