--CREATE SCHEMA
CREATE SCHEMA public
    AUTHORIZATION postgres;
COMMENT ON SCHEMA public
    IS 'standard public schema';
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;

--CREATE STG TABLES
-- Table: public."STG_Customers"
CREATE TABLE public."STG_Customers"
(
    "CustomerName" character varying,
    "Province" character varying,
    "Region" character varying,
    "CustomerSegment" character varying
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."STG_Customers"
    OWNER to postgres;
-- Table: public."STG_Orders"
CREATE TABLE public."STG_Orders"
(
    "RowID" numeric,
    "OrderID" numeric,
    "OrderDate" date,
    "OrderPriority" character varying,
    "OrderQuantity" numeric,
    "Sales" numeric,
    "Discount" numeric,
    "ShipMode" character varying,
    "Profit" numeric,
    "UnitPrice" numeric,
    "ShippingCost" numeric,
    "CustomerName" character varying,
    "ProductName" character varying,
    "ShipDate" date
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."STG_Orders"
    OWNER to postgres;
-- Table: public."STG_Products"
CREATE TABLE public."STG_Products"
(
    "ProductName" character varying,
    "ProductCategory" character varying,
    "ProductSubCategory" character varying,
    "ProductContainer" character varying,
    "ProductBaseMargin" numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."STG_Products"
    OWNER to postgres;
-- Table: public."STG_RegionManagers"
CREATE TABLE public."STG_RegionManagers"
(
    "Region" character varying,
    "Manager" character varying
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."STG_RegionManagers"
    OWNER to postgres;
-- Table: public."STG_Returns"
CREATE TABLE public."STG_Returns"
(
    "OrderID" numeric,
    "Status" character varying
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."STG_Returns"
    OWNER to postgres;

--CREATE DWH TABLES
-- Table: public."DWH_Customers"
CREATE TABLE public."DWH_Customers"
(
    "CustomerName" character varying,
    "Province" character varying,
    "Region" character varying,
    "CustomerSegment" character varying
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."DWH_Customers"
    OWNER to postgres;
-- Table: public."DWH_Orders"
CREATE TABLE public."DWH_Orders"
(
    "RowID" numeric,
    "OrderID" numeric,
    "OrderDate" date,
    "OrderPriority" character varying,
    "OrderQuantity" numeric,
    "Sales" numeric,
    "Discount" numeric,
    "ShipMode" character varying,
    "Profit" numeric,
    "UnitPrice" numeric,
    "ShippingCost" numeric,
    "CustomerName" character varying,
    "ProductName" character varying,
    "ShipDate" date
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."DWH_Orders"
    OWNER to postgres;
-- Table: public."DWH_Products"
CREATE TABLE public."DWH_Products"
(
    "ProductName" character varying,
    "ProductCategory" character varying,
    "ProductSubCategory" character varying,
    "ProductContainer" character varying,
    "ProductBaseMargin" numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."DWH_Products"
    OWNER to postgres;
-- Table: public."DWH_RegionManagers"
CREATE TABLE public."DWH_RegionManagers"
(
    "Region" character varying,
    "Manager" character varying
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."DWH_RegionManagers"
    OWNER to postgres;
-- Table: public."DWH_Returns"
CREATE TABLE public."DWH_Returns"
(
    "OrderID" numeric,
    "Status" character varying
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."DWH_Returns"
    OWNER to postgres;
	
--CREATE DM TABLES
CREATE TABLE public."DM_CustomerRegionalSales"
(
    "CustomerName" character varying,
    "Province" character varying,
    "Region" character varying,
    "CustomerSegment" character varying,
	"OrderID" numeric,
    "OrderDate" date,
	"Sales" numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."DM_CustomerRegionalSales"
    OWNER to postgres;