# SAP BI

## Project use
This project contains a set of cascading views that breaks out SAP tables into a standard English format.  It is based on the SAP ERP on HANA connector (using SNC) at the time of 03/17/2025.  It is used in Fivetran as a dbt Core project.

## 73 Total tables used
```
AFIH, AFKO, AUFK, BKPF, BSEG, DD07L, DD07T, EKBE, EKES, EKET, EKKO, EKPO, FAGLFLEXA, FAGLFLEXT, KNA1, LFA1, LIKP, LIPS, MAKT, MARA, PA0000, PA0001, PA0007, PA0008, PA0031, PMCO, QMEL, QMFE, QMIH, QMSM, QPCD, QPCT, QPGR, QPGT, SKA1, T001, T001W, T005, T005T, T024, T024E, T025, T025T, T134, T134T, T161, T161T, T165M, T165R, T179, T179T, T503, T880, TCURC, TCURT, TCURV, TKA01, TSPA, TSPAT, TVAG, TVAGT, TVAU, TVAUT, TVKO, TVKOT, VBAK, VBAP, VBKD, VBPA, VBRK, VBRP, VBUK, VBUP
```

### Commands to build:
- dbt run

```
run dbt dimfact model
```

```
dbt run --select +d_customer +d_vendor +f_sales_order +d_plant +d_rejection_reason +d_purchasing_organization +f_purchasing_order +d_material +d_purchasing_order
```

## Sample queries:
### Top 10 Sales by Material Type
SELECT
  d_material.material_type_description,
  COUNT(f_sales_order.material_id) AS total_sales_orders
FROM
  f_sales_order
  JOIN d_material ON f_sales_order.material_id = d_material.material_id
GROUP BY
  d_material.material_type_description
ORDER BY 
  total_sales_orders desc
LIMIT 10;

### Lowest sales orders by plant (under 1000).
SELECT
  d_plant.plant_id,
  d_plant.plant_name,
  COUNT(f_sales_order.material_id) AS total_sales_orders
FROM
  f_sales_order
  JOIN d_plant ON f_sales_order.plant_id = d_plant.plant_id
GROUP BY
  d_plant.plant_id,
  d_plant.plant_name
HAVING 
  total_sales_orders < 1000
ORDER BY
  total_sales_orders;

### Top 10 purchased materials is USD.
SELECT
  d_material.material_id,
  d_material.material_description,
  sum(f_purchasing_order.purchasing_document_currency_amount) as total_purchase
FROM
  f_purchasing_order
  JOIN d_material ON f_purchasing_order.material_id = d_material.material_id
WHERE
  f_purchasing_order.currency_id = 'USD'
GROUP BY
  d_material.material_id,
  d_material.material_description
ORDER BY 
  total_purchase desc
LIMIT 10;

### Num of purchase orders by org.
SELECT
  d_purchasing_organization.purchasing_organization_id,
  d_purchasing_organization.description,
  COUNT(f_purchasing_order.purchasing_document_id) AS total_purchasing_documents
FROM
  f_purchasing_order
  JOIN d_purchasing_organization ON f_purchasing_order.purchasing_organization_id = d_purchasing_organization.purchasing_organization_id
GROUP BY
  d_purchasing_organization.purchasing_organization_id,
  d_purchasing_organization.description
ORDER BY 
  total_purchasing_documents desc;
  

