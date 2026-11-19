SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
  AND NOT (WarehouseCity = 'Atlanta'
        OR WarehouseCity = 'Bangor'
        OR WarehouseCity = 'Chicago');


