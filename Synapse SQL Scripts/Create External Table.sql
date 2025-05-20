--------------
-- Credential
--------------

CREATE DATABASE SCOPED CREDENTIAL Credkaran
WITH IDENTITY =  'Managed Identity'


-------------------------
--External Data Source
-------------------------

CREATE EXTERNAL DATA SOURCE Ext_Source_silver
WITH 
(
    LOCATION = 'https://awstoragedatalakekaran.dfs.core.windows.net/silver',
    CREDENTIAL =  Credkaran
)

CREATE EXTERNAL DATA SOURCE Ext_Source_gold
WITH 
(
    LOCATION = 'https://awstoragedatalakekaran.dfs.core.windows.net/gold',
    CREDENTIAL =  Credkaran
)


-------------------------
--External File Format
-------------------------

CREATE EXTERNAL FILE FORMAT Parquet_File_Format
WITH 
(
    FORMAT_TYPE = PARQUET ,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


-------------------------
--External Table Calendar
-------------------------

CREATE EXTERNAL TABLE ExtCalendar
WITH 
(
    LOCATION = 'ExtCalendar',
    DATA_SOURCE = Ext_Source_gold,
    FILE_FORMAT = Parquet_File_Format
)
AS
SELECT * from gold.Calendar

-------------------------
--External Table Customer
-------------------------

CREATE EXTERNAL TABLE ExtCustomer
WITH 
(
    LOCATION = 'ExtCustomer',
    DATA_SOURCE = Ext_Source_gold,
    FILE_FORMAT = Parquet_File_Format
)
AS
SELECT * from gold.Customer


-------------------------
--External Table Product_Categories
-------------------------

CREATE EXTERNAL TABLE ExtProduct_Categories
WITH 
(
    LOCATION = 'ExtProduct_Categories',
    DATA_SOURCE = Ext_Source_gold,
    FILE_FORMAT = Parquet_File_Format
)
AS
SELECT * from gold.Product_Categories



-------------------------
--External Table Products
-------------------------

CREATE EXTERNAL TABLE ExtProducts
WITH 
(
    LOCATION = 'ExtProducts',
    DATA_SOURCE = Ext_Source_gold,
    FILE_FORMAT = Parquet_File_Format
)
AS
SELECT * from gold.Products



-------------------------
--External Table Returns
-------------------------

CREATE EXTERNAL TABLE ExtReturns
WITH 
(
    LOCATION = 'ExtReturns',
    DATA_SOURCE = Ext_Source_gold,
    FILE_FORMAT = Parquet_File_Format
)
AS
SELECT * from gold.Returns



-------------------------
--External Table Sales
-------------------------

CREATE EXTERNAL TABLE ExtSales
WITH 
(
    LOCATION = 'ExtSales',
    DATA_SOURCE = Ext_Source_gold,
    FILE_FORMAT = Parquet_File_Format
)
AS
SELECT * from gold.Sales




-------------------------
--External Table Subcategories
-------------------------

CREATE EXTERNAL TABLE ExtSubcategories
WITH 
(
    LOCATION = 'ExtSubcategories',
    DATA_SOURCE = Ext_Source_gold,
    FILE_FORMAT = Parquet_File_Format
)
AS
SELECT * from gold.Subcategories




-------------------------
--External Table Territories
-------------------------

CREATE EXTERNAL TABLE ExtTerritories
WITH 
(
    LOCATION = 'ExtTerritories',
    DATA_SOURCE = Ext_Source_gold,
    FILE_FORMAT = Parquet_File_Format
)
AS
SELECT * from gold.Territories





