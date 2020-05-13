--DQ view - Integrity (data lineage)
create or replace view dq_integrity as
select 
'STG_Orders' AS table,
'OrderID' AS column,
(SELECT "OrderID"::text FROM
public."DWH_Orders"
EXCEPT --equivalent to minus in Oracle
(SELECT a."OrderID"::text
FROM public."STG_Orders" a
INNER JOIN public."DWH_Orders" b
on a."OrderID" = b."OrderID"
)
) AS integrity_mismatch
union all
select 
'STG_Orders',
'OrderDate',
(SELECT "OrderDate"::text FROM
public."DWH_Orders"
EXCEPT --equivalent to minus in Oracle
(SELECT a."OrderDate"::text
FROM public."STG_Orders" a
INNER JOIN public."DWH_Orders" b
on a."OrderID" = b."OrderID"
)
)
union all
select 
'STG_Orders',
'OrderPriority',
(SELECT "OrderPriority"::text FROM
public."DWH_Orders"
EXCEPT --equivalent to minus in Oracle
(SELECT a."OrderPriority"::text
FROM public."STG_Orders" a
INNER JOIN public."DWH_Orders" b
on a."OrderID" = b."OrderID"
)
)
union all
select 
'STG_Orders',
'OrderQuantity',
(SELECT "OrderQuantity"::text FROM
public."DWH_Orders"
EXCEPT --equivalent to minus in Oracle
(SELECT a."OrderQuantity"::text
FROM public."STG_Orders" a
INNER JOIN public."DWH_Orders" b
on a."OrderID" = b."OrderID"
)
)
union all
select 
'STG_Orders',
'Sales',
(SELECT "Sales"::text FROM
public."DWH_Orders"
EXCEPT --equivalent to minus in Oracle
(SELECT a."Sales"::text
FROM public."STG_Orders" a
INNER JOIN public."DWH_Orders" b
on a."OrderID" = b."OrderID"
)
)
union all
select 
'STG_Orders',
'Discount',
(SELECT "Discount"::text FROM
public."DWH_Orders"
EXCEPT --equivalent to minus in Oracle
(SELECT a."Discount"::text
FROM public."STG_Orders" a
INNER JOIN public."DWH_Orders" b
on a."OrderID" = b."OrderID"
)
)
union all
select 
'STG_Orders',
'ShipMode',
(SELECT "ShipMode"::text FROM
public."DWH_Orders"
EXCEPT --equivalent to minus in Oracle
(SELECT a."ShipMode"::text
FROM public."STG_Orders" a
INNER JOIN public."DWH_Orders" b
on a."OrderID" = b."OrderID"
)
)
union all
select 
'STG_Orders',
'Profit',
(SELECT "Profit"::text FROM
public."DWH_Orders"
EXCEPT --equivalent to minus in Oracle
(SELECT a."Profit"::text
FROM public."STG_Orders" a
INNER JOIN public."DWH_Orders" b
on a."OrderID" = b."OrderID"
)
)
union all
select 
'STG_Orders',
'UnitPrice',
(SELECT "UnitPrice"::text FROM
public."DWH_Orders"
EXCEPT --equivalent to minus in Oracle
(SELECT a."UnitPrice"::text
FROM public."STG_Orders" a
INNER JOIN public."DWH_Orders" b
on a."OrderID" = b."OrderID"
)
)
union all
select 
'STG_Orders',
'ShippingCost',
(SELECT "ShippingCost"::text FROM
public."DWH_Orders"
EXCEPT --equivalent to minus in Oracle
(SELECT a."ShippingCost"::text
FROM public."STG_Orders" a
INNER JOIN public."DWH_Orders" b
on a."OrderID" = b."OrderID"
)
)
union all
select 
'STG_Orders',
'CustomerName',
(SELECT "CustomerName"::text FROM
public."DWH_Orders"
EXCEPT --equivalent to minus in Oracle
(SELECT a."CustomerName"::text
FROM public."STG_Orders" a
INNER JOIN public."DWH_Orders" b
on a."OrderID" = b."OrderID"
)
)
union all
select 
'STG_Orders',
'ProductName',
(SELECT "ProductName"::text FROM
public."DWH_Orders"
EXCEPT --equivalent to minus in Oracle
(SELECT a."ProductName"::text
FROM public."STG_Orders" a
INNER JOIN public."DWH_Orders" b
on a."OrderID" = b."OrderID"
)
)
union all
select 
'STG_Orders',
'ShipDate',
(SELECT "ShipDate"::text FROM
public."DWH_Orders"
EXCEPT --equivalent to minus in Oracle
(SELECT a."ShipDate"::text
FROM public."STG_Orders" a
INNER JOIN public."DWH_Orders" b
on a."OrderID" = b."OrderID"
)
)
;