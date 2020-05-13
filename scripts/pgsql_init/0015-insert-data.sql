COPY public."STG_Customers" ("CustomerName", "Province", "Region", "CustomerSegment") FROM '/data/customers.csv' (format csv, delimiter ';', header true);
COPY public."STG_Orders" ("RowID", "OrderID", "OrderDate", "OrderPriority", "OrderQuantity", "Sales", "Discount", "ShipMode", "Profit", "UnitPrice", "ShippingCost", "CustomerName", "ProductName", "ShipDate") FROM '/data/orders.csv' (format csv, delimiter ';', header true);
COPY public."STG_Products" ("ProductName", "ProductCategory", "ProductSubCategory", "ProductContainer", "ProductBaseMargin") FROM '/data/products.csv' (format csv, delimiter ';', header true);
COPY public."STG_RegionManagers" ("Region","Manager") FROM '/data/region_managers.csv' (format csv, delimiter ';', header true);
COPY public."STG_Returns" ("OrderID", "Status") FROM '/data/returns.csv' (format csv, delimiter ';', header true);
