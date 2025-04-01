WITH  my_cte  AS (
    SELECT 1 AS Id, 'Brazil' AS Country, TO_DATE('01/01/1991', 'DD/MM/YYYY') AS Birth FROM DUAL UNION ALL
    SELECT 2 AS Id, 'China' AS Country, TO_DATE('02/02/1992', 'DD/MM/YYYY') AS Birth FROM DUAL UNION ALL
	SELECT 3 AS Id, 'Italy' AS Country, TO_DATE('03/03/1993', 'DD/MM/YYYY') AS Birth FROM DUAL
    )

    SELECT
		C.Id,
		C.Country,
		C.Birth,
		P.Name,
    FROM
		my_cte C --You can use the cte here like a normal table
		INNER JOIN products P
		ON P.customerId = C.id