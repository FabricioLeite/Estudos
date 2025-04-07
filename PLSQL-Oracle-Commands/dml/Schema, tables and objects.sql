---------------------------
-- View columns in a table 
---------------------------
SELECT COL.COLUMN_ID, 
       COL.OWNER AS SCHEMA_NAME,
       COL.TABLE_NAME, 
       COL.COLUMN_NAME, 
       COL.DATA_TYPE, 
       COL.DATA_LENGTH, 
       COL.DATA_PRECISION, 
       COL.DATA_SCALE, 
       COL.NULLABLE
FROM SYS.ALL_TAB_COLUMNS COL
INNER JOIN SYS.ALL_TABLES T ON COL.OWNER = T.OWNER 
	AND COL.TABLE_NAME = T.TABLE_NAME
WHERE 
	COL.TABLE_NAME = 'PRODUCT' --case sensitive
ORDER BY COL.COLUMN_ID;

--------------------------------------------
-- Search for columns throughout the schema
--------------------------------------------
SELECT COL.COLUMN_ID, 
       COL.OWNER AS SCHEMA_NAME,
       COL.TABLE_NAME, 
       COL.COLUMN_NAME, 
       COL.DATA_TYPE, 
       COL.DATA_LENGTH, 
       COL.DATA_PRECISION, 
       COL.DATA_SCALE, 
       COL.NULLABLE
FROM SYS.ALL_TAB_COLUMNS COL
INNER JOIN SYS.ALL_TABLES T ON COL.OWNER = T.OWNER 
  AND COL.TABLE_NAME = T.TABLE_NAME
WHERE 
	COL.COLUMN_NAME LIKE  '%PRODUCT%' --case sensitive
ORDER BY COL.COLUMN_ID;

----------------------------------------------
-- Search tables that reference a given table
----------------------------------------------
SELECT 
    a.CONSTRAINT_NAME,
    a.TABLE_NAME,
    a.R_CONSTRAINT_NAME,
    b.TABLE_NAME AS REFERENCED_TABLE_NAME
FROM 
    ALL_CONSTRAINTS a
JOIN 
    ALL_CONSTRAINTS b ON a.R_CONSTRAINT_NAME = b.CONSTRAINT_NAME
WHERE 
    a.CONSTRAINT_TYPE = 'R' --foreign key
    AND b.TABLE_NAME = 'PRODUCT'; --case sensitive
	
---------------------------------------------
-- Search for foreign keys for a given table
---------------------------------------------
SELECT
    A.CONSTRAINT_NAME,
    A.TABLE_NAME,
    C.COLUMN_NAME,
    A.R_CONSTRAINT_NAME,
    B.TABLE_NAME AS REFERENCED_TABLE_NAME,
    D.COLUMN_NAME AS REFERENCED_COLUMN_NAME
FROM
    ALL_CONSTRAINTS A
JOIN
    ALL_CONS_COLUMNS C ON A.CONSTRAINT_NAME = C.CONSTRAINT_NAME
JOIN
    ALL_CONSTRAINTS B ON A.R_CONSTRAINT_NAME = B.CONSTRAINT_NAME
JOIN
    ALL_CONS_COLUMNS D ON B.CONSTRAINT_NAME = D.CONSTRAINT_NAME AND C.POSITION = D.POSITION
WHERE
    A.CONSTRAINT_TYPE = 'R'
    AND A.TABLE_NAME = 'PRODUCT'; --case sensitive