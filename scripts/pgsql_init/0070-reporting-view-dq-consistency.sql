--DQ view - Consistency
create or replace view dq_consistency as
select 
distinct
"OrderPriority" AS distinct_values,
count(*) as number_records,
'STG_Orders' AS table,
'OrderPriority' AS column
from public."STG_Orders"
group by "OrderPriority"
union all
select 
distinct
"ShipMode",
count(*),
'STG_Orders',
'ShipMode'
from public."STG_Orders"
group by "ShipMode"
union all
select 
distinct
"Status",
count(*),
'STG_Returns',
'Status'
from public."STG_Returns"
group by "Status"
union all
select 
distinct
"Province",
count(*),
'STG_Customers',
'Province'
from public."STG_Customers"
group by "Province"
union all
select 
distinct
"Region",
count(*),
'STG_Customers',
'Region'
from public."STG_Customers"
group by "Region"
union all
select 
distinct
"CustomerSegment",
count(*),
'STG_Customers',
'CustomerSegment'
from public."STG_Customers"
group by "CustomerSegment"
union all
select 
distinct
"Region",
count(*),
'STG_RegionManagers',
'Region'
from public."STG_RegionManagers"
group by "Region"
union all
select 
distinct
"ProductCategory",
count(*),
'STG_Products',
'ProductCategory'
from public."STG_Products"
group by "ProductCategory"
union all
select 
distinct
"ProductSubCategory",
count(*),
'STG_Products',
'ProductSubCategory'
from public."STG_Products"
group by "ProductSubCategory"