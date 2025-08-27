# Tipos de comandos SQL

## 🔍 DML - Data Manipulation Language
Comandos que manipulam dados nas tabelas, não altera a estrutura das tabelas.<br/>
São comandos que normalmente precisam de `COMMIT` ou `ROLLBACK` para confirmar ou desfazer.

    - Insert
    - Update
    - Delete
    - Merge
    - Select

## ✏️ DDL - Data Definition Language
Comandos que definem ou alteram a estrutura de objetos no banco.<br/>
No Oracle, comandos DDL já fazem `COMMIT` automático.

    - Create
    - Alter
    - Drop
    - Rename
    - Truncate

## 🪪 DCL - Data Control Language
Comandos para controle de permissões e segurança.

    - Grant
    - Revoke

## 🚦 TCL — Transaction Control Language
Comandos para gerenciar transações.

    - COMMIT
    - ROLLBACK
    - SAVEPOINT
    - SET TRANSACTION

## ⚙️ PL/SQL Procedural Statements (específicos do Oracle)
Usados dentro de blocos PL/SQL para controle de fluxo e lógica.

    - BEGIN ... END
    - DECLARE
    - IF ... THEN ... ELSE
    - LOOP, WHILE, FOR
    - EXCEPTION
    - CURSOR