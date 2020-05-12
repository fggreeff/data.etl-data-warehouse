--DQ view - Uniqueness
create or replace view dq_uniqueness as
select 
'STG_Orders' AS table,
'OrderID' AS unique_constraint,
count("OrderID") AS count_records,
count(distinct "OrderID") AS count_distinct_records,
count("OrderID") - count(distinct "OrderID") AS count_duplicates
from public."STG_Orders"
union all 
select 
'STG_Returns',
'OrderID',
count("OrderID"),
count(distinct "OrderID"),
count("OrderID") - count(distinct "OrderID")
from public."STG_Returns"
union all 
select 
'STG_Products',
'ProductName',
count("ProductName"),
count(distinct "ProductName"),
count("ProductName") - count(distinct "ProductName")
from public."STG_Products"
union all 
select 
'STG_RegionManagers',
'Manager',
count("Manager"),
count(distinct "Manager"),
count("Manager") - count(distinct "Manager")
from public."STG_RegionManagers"
union all 
select 
'STG_Customers',
'CustomerName',
count("CustomerName"),
count(distinct "CustomerName"),
count("CustomerName") - count(distinct "CustomerName")
from public."STG_Customers"
union all 
select 
'DWH_Customers',
'CustomerName',
count("CustomerName"),
count(distinct "CustomerName"),
count("CustomerName") - count(distinct "CustomerName")
from public."DWH_Customers"
union all 
select 
'DWH_Orders',
'OrderID',
count("OrderID"),
count(distinct "OrderID"),
count("OrderID") - count(distinct "OrderID")
from public."DWH_Orders"
union all 
select 
'DWH_Products',
'ProductName',
count("ProductName"),
count(distinct "ProductName"),
count("ProductName") - count(distinct "ProductName")
from public."DWH_Products"
union all 
select 
'DWH_RegionManagers',
'Manager',
count("Manager"),
count(distinct "Manager"),
count("Manager") - count(distinct "Manager")
from public."DWH_RegionManagers"
union all 
select 
'DWH_Returns',
'OrderID',
count("OrderID"),
count(distinct "OrderID"),
count("OrderID") - count(distinct "OrderID")
from public."DWH_Returns"
union all 
select 
'DM_CustomerRegionalSales',
'OrderID',
count("OrderID"),
count(distinct "OrderID"),
count("OrderID") - count(distinct "OrderID")
from public."DM_CustomerRegionalSales"
;