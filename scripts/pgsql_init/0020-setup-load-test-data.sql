--LOAD STG to DWH Tables
INSERT INTO public."DWH_Customers"(
	"CustomerName", "Province", "Region", "CustomerSegment")
	SELECT * FROM public."STG_Customers"
;
INSERT INTO public."DWH_Orders"(
	    "RowID",
    "OrderID",
    "OrderDate",
    "OrderPriority",
    "OrderQuantity",
    "Sales",
    "Discount",
    "ShipMode",
    "Profit",
    "UnitPrice",
    "ShippingCost",
    "CustomerName",
    "ProductName",
    "ShipDate"
	)
	SELECT * FROM public."STG_Orders"
;
INSERT INTO public."DWH_Products"(
	    "ProductName",
    "ProductCategory",
    "ProductSubCategory",
    "ProductContainer",
    "ProductBaseMargin"
	)
	SELECT * FROM public."STG_Products"
;
INSERT INTO public."DWH_RegionManagers"(
    "Region",
    "Manager"
	)
	SELECT * FROM public."STG_RegionManagers"
;
INSERT INTO public."DWH_Returns"(
    "OrderID",
    "Status"
	)
	SELECT * FROM public."STG_Returns"
;

--LOAD DWH to DM Tables
INSERT INTO public."DM_CustomerRegionalSales"(
	"CustomerName", 
	"Province", 
	"Region", 
	"CustomerSegment",
	"OrderID",
    "OrderDate",
	"Sales"
	)
	SELECT A.*, B."OrderID", B."OrderDate", B."Sales" FROM public."DWH_Customers" AS A
	LEFT OUTER JOIN public."DWH_Orders" AS B
	ON A."CustomerName" = B."CustomerName"
;
