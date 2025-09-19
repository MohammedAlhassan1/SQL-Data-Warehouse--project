/* 
===================================================================================
DDL Script: Create Bronze Tables
===================================================================================
Script Purpose:
This Script creates Tables in the 'bronze' schema.
Run this Script to re-define the DDL structure of 'bronze' tables
===================================================================================
*/

Create Table bronze.crm_cust_info (
	cst_id int,
	cst_key NVARCHAR(50),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_material_status NVARCHAR(50),
	cst_gndr NVARCHAR(50),
	cst_create_date Date
);  
 

Create Table bronze.crm_prd_info (
	prd_id int,
	prd_key NVARCHAR(50),
	prd_nm NVARCHAR(50),
	prd_cost int,
	prd_line NVARCHAR(50),
	prd_start_dt Datetime,
	prd_end_dt Datetime
);

Create Table bronze.crm_sales_details (
	sls_ord_num NVARCHAR(50),
	sls_prd_key NVARCHAR(50),
	sls_cust_id Int,
	sls_order_dt Int,
	sls_ship_dt Int,
	sls_due_dt Int,
	sls_sales int,
	sls_quantity Int,
	sls_price Int
);

Create Table bronze.erp_loc_a101 (
	cid NVARCHAR(50),
	cntry NVARCHAR(50)
);

Create table bronze.erp_cust_az12 (
	cid NVARCHAR(50),
	bdate Date,
	gen NVARCHAR(50)
);

Create table bronze.erp_px_cat_g1v2 (
	id NVARCHAR(50),
	cat NVARCHAR(50),
	subcat NVARCHAR(50),
	maintenance NVARCHAR(50)
);
