GRANT ALL PRIVILEGES ON *.* TO "Glhalton"; 
REVOKE ALL PRIVILEGES ON aula_02_09_2024.* FROM "Glhalton";

USE Construmax;

DROP TABLE clientes;
DROP TABLE fornecedores;
DROP TABLE funcionarios;
DROP TABLE materiais;
DROP TABLE projetos;

SELECT * FROM clientes;
SELECT * FROM fornecedores;
SELECT * FROM funcionario;
SELECT * FROM materiais;
SELECT * FROM projetos;