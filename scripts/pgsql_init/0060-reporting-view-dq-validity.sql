--DQ view - Validity
create or replace view dq_validity as
select 
'STG_Orders' AS table,
'RowID' AS validity_constraint,
'> 1' AS validity_rule,
sum(case WHEN "RowID" > 0 THEN 1 ELSE 0 END) AS count_valid_records,
sum(case WHEN "RowID" > 0 THEN 0 ELSE 1 END) AS count_invalid_records
from public."STG_Orders"
union all 
select 
'STG_Orders',
'OrderID',
'> 1',
sum(case WHEN "OrderID" > 0 THEN 1 ELSE 0 END),
sum(case WHEN "OrderID" > 0 THEN 0 ELSE 1 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'OrderDate',
'> 2000-01-01',
sum(case WHEN "OrderDate" > to_date('2000-01-01','YYYY-MM-DD') THEN 1 ELSE 0 END),
sum(case WHEN "OrderDate" > to_date('2000-01-01','YYYY-MM-DD') THEN 0 ELSE 1 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'OrderQuantity',
'> 0',
sum(case WHEN "OrderQuantity" > 0 THEN 1 ELSE 0 END),
sum(case WHEN "OrderQuantity" > 0 THEN 0 ELSE 1 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'Sales',
'> 0',
sum(case WHEN "Sales" > 0 THEN 1 ELSE 0 END),
sum(case WHEN "Sales" > 0 THEN 0 ELSE 1 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'Discount',
'>= 0',
sum(case WHEN "Discount" >= 0 THEN 1 ELSE 0 END),
sum(case WHEN "Discount" >= 0 THEN 0 ELSE 1 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'Discount',
'< 1',
sum(case WHEN "Discount" < 1 THEN 1 ELSE 0 END),
sum(case WHEN "Discount" < 1 THEN 0 ELSE 1 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'UnitPrice',
'> 0',
sum(case WHEN "UnitPrice" > 0 THEN 1 ELSE 0 END),
sum(case WHEN "UnitPrice" > 0 THEN 0 ELSE 1 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'ShippingCost',
'> 0',
sum(case WHEN "ShippingCost" > 0 THEN 1 ELSE 0 END),
sum(case WHEN "ShippingCost" > 0 THEN 0 ELSE 1 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'ShipDate',
'> $OrderDate',
sum(case WHEN "ShipDate" >= "OrderDate" THEN 1 ELSE 0 END),
sum(case WHEN "ShipDate" >= "OrderDate" THEN 0 ELSE 1 END)
from public."STG_Orders"
;
