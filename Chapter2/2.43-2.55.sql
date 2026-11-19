
USE cape_codd;





-- 2.43
-- SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState
-- FROM INVENTORY, WAREHOUSE
-- WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
-- AND WarehouseCity NOT IN ('Atlanta', 'Bangor', 'Chicago');


-- 2.44
-- SELECT CONCAT(SKU_Description, ' is located in ', WarehouseCity) AS ItemLocation
-- FROM INVENTORY, WAREHOUSE
-- WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID


-- 2.45
-- SELECT SKU, SKU_Description, WarehouseID
-- FROM INVENTORY
-- WHERE WarehouseID IN (
--  SELECT WarehouseID
--  FROM WAREHOUSE
--  WHERE Manager = 'Lucille Smith'
-- );


-- 2.46
-- SELECT I.SKU, I.SKU_Description, I.WarehouseID
-- FROM INVENTORY I
-- JOIN WAREHOUSE W
-- WHERE I.WarehouseID = W.WarehouseID
-- AND W.Manager = 'Lucille Smith';



-- 2.47
-- SELECT I.SKU, I.SKU_Description, I.WarehouseID
-- FROM INVENTORY I
-- INNER JOIN WAREHOUSE W
-- ON I.WarehouseID = W.WarehouseID
-- WHERE W.Manager = 'Lucille Smith';


-- 2.48
-- SELECT WarehouseID, AVG(QuantityOnHand)
-- FROM INVENTORY
-- WHERE WarehouseID IN (
--     SELECT WarehouseID
--     FROM WAREHOUSE
--     WHERE Manager = 'Lucille Smith'
-- )
-- GROUP BY WarehouseID;



-- -- -- 2.49
-- SELECT I.WarehouseID, AVG(I.QuantityOnHand)
-- FROM INVENTORY I, WAREHOUSE W
-- WHERE I.WarehouseID = W.WarehouseID
-- AND W.Manager = 'Lucille Smith'
-- GROUP BY I.WarehouseID;



-- 2.50
-- SELECT I.WarehouseID, AVG(I.QuantityOnHand)
-- FROM INVENTORY I
-- JOIN WAREHOUSE W ON I.WarehouseID = W.WarehouseID
-- WHERE W.Manager = 'Lucille Smith'
-- GROUP BY I.WarehouseID;



-- -- 2.51
-- SELECT W.WarehouseID, W.WarehouseCity, W.WarehouseState,
-- W.Manager, I.SKU, I.SKU_Description, I.QuantityOnHand
-- FROM INVENTORY I
-- JOIN WAREHOUSE W ON I.WarehouseID = W.WarehouseID
-- WHERE W.Manager = 'Lucille Smith';



-- 2.52
-- SELECT WarehouseID,
-- SUM(QuantityOnOrder) AS TotalItemsOnOrder,
-- SUM(QuantityOnHand) AS TotalItemsOnHand
-- FROM INVENTORY
-- GROUP BY WarehouseID, QuantityOnOrder;

-- 2.53 You cannot use a subquery because the question requires data from two tables to be combined. A JOIN is more suitable because it connects related records from different tables.
-- 2.54  Subquery A query written inside another query to retrieve information needed by the main query.JOIN: Combines data from two or more tables using a common column.

-- SELECT WAREHOUSE.*, INVENTORY. *
-- FROM WAREHOUSE
-- LEFT OUTER JOIN INVENTORY
-- ON WAREHOUSE.WarehouseID = INVENTORY.WarehouseID;
