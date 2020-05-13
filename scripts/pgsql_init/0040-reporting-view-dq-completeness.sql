--DQ view - Completeness
create or replace view dq_completeness as
select 
'STG_Orders' AS table,
'RowID' AS attribute,
sum(case WHEN "RowID" IS NULL THEN 1 ELSE 0 END) AS count_null_records
from public."STG_Orders"
union all 
select 
'STG_Orders',
'OrderID',
sum(case WHEN "OrderID" IS NULL THEN 1 ELSE 0 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'OrderDate',
sum(case WHEN "OrderDate" IS NULL THEN 1 ELSE 0 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'OrderPriority',
sum(case WHEN "OrderPriority" IS NULL THEN 1 ELSE 0 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'OrderQuantity',
sum(case WHEN "OrderQuantity" IS NULL THEN 1 ELSE 0 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'Sales',
sum(case WHEN "Sales" IS NULL THEN 1 ELSE 0 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'Discount',
sum(case WHEN "Discount" IS NULL THEN 1 ELSE 0 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'ShipMode',
sum(case WHEN "ShipMode" IS NULL THEN 1 ELSE 0 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'Profit',
sum(case WHEN "Profit" IS NULL THEN 1 ELSE 0 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'UnitPrice',
sum(case WHEN "UnitPrice" IS NULL THEN 1 ELSE 0 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'ShippingCost',
sum(case WHEN "ShippingCost" IS NULL THEN 1 ELSE 0 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'CustomerName',
sum(case WHEN "CustomerName" IS NULL THEN 1 ELSE 0 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'ProductName',
sum(case WHEN "ProductName" IS NULL THEN 1 ELSE 0 END)
from public."STG_Orders"
union all 
select 
'STG_Orders',
'ShipDate',
sum(case WHEN "ShipDate" IS NULL THEN 1 ELSE 0 END)
from public."STG_Orders"
union all 
select 
'STG_Returns',
'OrderID',
sum(case WHEN "OrderID" IS NULL THEN 1 ELSE 0 END)
from public."STG_Returns"
union all 
select 
'STG_Returns',
'Status',
sum(case WHEN "Status" IS NULL THEN 1 ELSE 0 END)
from public."STG_Returns"
union all 
select 
'STG_Products',
'ProductName',
sum(case WHEN "ProductName" IS NULL THEN 1 ELSE 0 END)
from public."STG_Products"
union all 
select 
'STG_Products',
'ProductCategory',
sum(case WHEN "ProductCategory" IS NULL THEN 1 ELSE 0 END)
from public."STG_Products"
union all 
select 
'STG_Products',
'ProductSubCategory',
sum(case WHEN "ProductSubCategory" IS NULL THEN 1 ELSE 0 END)
from public."STG_Products"
union all 
select 
'STG_Products',
'ProductContainer',
sum(case WHEN "ProductContainer" IS NULL THEN 1 ELSE 0 END)
from public."STG_Products"
union all 
select 
'STG_Products',
'ProductBaseMargin',
sum(case WHEN "ProductBaseMargin" IS NULL THEN 1 ELSE 0 END)
from public."STG_Products"
union all 
select 
'STG_RegionManagers',
'Region',
sum(case WHEN "Region" IS NULL THEN 1 ELSE 0 END)
from public."STG_RegionManagers"
union all 
select 
'STG_RegionManagers',
'Manager',
sum(case WHEN "Manager" IS NULL THEN 1 ELSE 0 END)
from public."STG_RegionManagers"
union all 
select 
'STG_Customers',
'CustomerName',
sum(case WHEN "CustomerName" IS NULL THEN 1 ELSE 0 END)
from public."STG_Customers"
union all 
select 
'STG_Customers',
'Province',
sum(case WHEN "Province" IS NULL THEN 1 ELSE 0 END)
from public."STG_Customers"
union all 
select 
'STG_Customers',
'Region',
sum(case WHEN "Region" IS NULL THEN 1 ELSE 0 END)
from public."STG_Customers"
union all 
select 
'STG_Customers',
'CustomerSegment',
sum(case WHEN "CustomerSegment" IS NULL THEN 1 ELSE 0 END)
from public."STG_Customers"
union all 
select 
'DWH_Customers',
'CustomerName',
sum(case WHEN "CustomerName" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Customers"
union all 
select 
'DWH_Customers',
'Province',
sum(case WHEN "Province" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Customers"
union all 
select 
'DWH_Customers',
'Region',
sum(case WHEN "Region" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Customers"
union all 
select 
'DWH_Customers',
'CustomerSegment',
sum(case WHEN "CustomerSegment" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Customers"
union all 
select 
'DWH_Orders',
'RowID',
sum(case WHEN "RowID" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Orders',
'OrderID',
sum(case WHEN "OrderID" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Orders',
'OrderDate',
sum(case WHEN "OrderDate" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Orders',
'OrderPriority',
sum(case WHEN "OrderPriority" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Orders',
'OrderQuantity',
sum(case WHEN "OrderQuantity" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Orders',
'Sales',
sum(case WHEN "Sales" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Orders',
'Discount',
sum(case WHEN "Discount" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Orders',
'ShipMode',
sum(case WHEN "ShipMode" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Orders',
'Profit',
sum(case WHEN "Profit" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Orders',
'UnitPrice',
sum(case WHEN "UnitPrice" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Orders',
'ShippingCost',
sum(case WHEN "ShippingCost" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Orders',
'CustomerName',
sum(case WHEN "CustomerName" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Orders',
'ProductName',
sum(case WHEN "ProductName" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Orders',
'ShipDate',
sum(case WHEN "ShipDate" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Orders"
union all 
select 
'DWH_Products',
'ProductName',
sum(case WHEN "ProductName" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Products"
union all 
select 
'DWH_Products',
'ProductCategory',
sum(case WHEN "ProductCategory" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Products"
union all 
select 
'DWH_Products',
'ProductSubCategory',
sum(case WHEN "ProductSubCategory" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Products"
union all 
select 
'DWH_Products',
'ProductContainer',
sum(case WHEN "ProductContainer" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Products"
union all 
select 
'DWH_Products',
'ProductBaseMargin',
sum(case WHEN "ProductBaseMargin" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Products"
union all 
select 
'DWH_RegionManagers',
'Region',
sum(case WHEN "Region" IS NULL THEN 1 ELSE 0 END)
from public."DWH_RegionManagers"
union all 
select 
'DWH_RegionManagers',
'Manager',
sum(case WHEN "Manager" IS NULL THEN 1 ELSE 0 END)
from public."DWH_RegionManagers"
union all 
select 
'DWH_Returns',
'OrderID',
sum(case WHEN "OrderID" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Returns"
union all 
select 
'DWH_Returns',
'Status',
sum(case WHEN "Status" IS NULL THEN 1 ELSE 0 END)
from public."DWH_Returns"
union all 
select 
'DM_CustomerRegionalSales',
'CustomerName',
sum(case WHEN "CustomerName" IS NULL THEN 1 ELSE 0 END)
from public."DM_CustomerRegionalSales"
union all 
select 
'DM_CustomerRegionalSales',
'Province',
sum(case WHEN "Province" IS NULL THEN 1 ELSE 0 END)
from public."DM_CustomerRegionalSales"
union all 
select 
'DM_CustomerRegionalSales',
'Region',
sum(case WHEN "Region" IS NULL THEN 1 ELSE 0 END)
from public."DM_CustomerRegionalSales"
union all 
select 
'DM_CustomerRegionalSales',
'CustomerSegment',
sum(case WHEN "CustomerSegment" IS NULL THEN 1 ELSE 0 END)
from public."DM_CustomerRegionalSales"
union all 
select 
'DM_CustomerRegionalSales',
'OrderID',
sum(case WHEN "OrderID" IS NULL THEN 1 ELSE 0 END)
from public."DM_CustomerRegionalSales"
union all 
select 
'DM_CustomerRegionalSales',
'OrderDate',
sum(case WHEN "OrderDate" IS NULL THEN 1 ELSE 0 END)
from public."DM_CustomerRegionalSales"
union all 
select 
'DM_CustomerRegionalSales',
'Sales',
sum(case WHEN "Sales" IS NULL THEN 1 ELSE 0 END)
from public."DM_CustomerRegionalSales"
;