USE cape_codd;

SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
  AND (WarehouseCity = 'Atlanta'
    OR WarehouseCity = 'Bangor'
    OR WarehouseCity = 'Chicago');