# CTE - Common Table Expression

É uma forma de criar uma "tabela temporária nomeada" dentro de uma query, que só existe durante a execução daquela instrução SQL.

## Select com CTE
``` sql
WITH  Estudantes  AS (
    SELECT 1 AS Id, 'João' AS Nome, TO_DATE('01/01/1991', 'DD/MM/YYYY') AS Nascimento FROM DUAL UNION ALL
    SELECT 2 AS Id, 'Maria' AS Nome, TO_DATE('02/02/1992', 'DD/MM/YYYY') AS Nascimento FROM DUAL UNION ALL
	SELECT 3 AS Id, 'Fabricio' AS Nome, TO_DATE('03/03/1993', 'DD/MM/YYYY') AS Nascimento FROM DUAL
    )

    SELECT
		E.Id,
		E.Nome,
		E.Nascimento
    FROM
		Estudantes E
```