USE Construmax;

#Administrador
CREATE USER 'administrador'@'localhost' IDENTIFIED BY '@admin123';
#Gerente Geral
CREATE USER 'gerente_geral'@'localhost' IDENTIFIED BY '@mainmanager123';
#Gerente de Recursos Humanos
CREATE USER 'gerente_rh'@'localhost' IDENTIFIED BY '@rhmanager123';
#Gerente de Projetos
CREATE USER 'gerente_projetos'@'localhost' IDENTIFIED BY '@promanager123';
#Funcionario
CREATE USER 'funcionario'@'localhost' IDENTIFIED BY '@employee123';
#Cliente
CREATE USER 'cliente'@'localhost' IDENTIFIED BY '@cliente123';

#Views do Gerente de Recursos Humanos
CREATE VIEW DepartamentoRH AS SELECT * FROM Departamentos WHERE NomeDepartamento = 'Departamento de Recursos Humanos';
#Views do Gerente de Projetos
CREATE VIEW DepartamentosProjetos AS SELECT * FROM Departamentos WHERE 
	NomeDepartamento = 'Departamento de Engenharia'
	OR NomeDepartamento = 'Departamento de Arquitetura' 
    OR NomeDepartamento = 'Departamento de Orçamentos e Custos'
    OR NomeDepartamento = 'Departamento de Planejamento de controle' 
    OR NomeDepartamento = 'Departamento de Qualidade'
    OR NomeDepartamento = 'Departamento de Segurança no Trabalho'
    OR NomeDepartamento = 'Departamento de Suprimentos e Compras'
    OR NomeDepartamento = 'Departamento de Meio ambiente e Sustentabilidade';
CREATE VIEW FuncionariosDepartamentos AS SELECT * FROM Funcionarios WHERE
	IDDepartamentos = 1 # Departamento de Engenharia
    OR IDDepartamentos = 2 # Departamento de Arquitetura
    OR IDDepartamentos = 3 # Departamento de Orçamentos e Custos
    OR IDDepartamentos = 4 # Departamento de Planejamento de controle
    OR IDDepartamentos = 5 # Departamento de Qualidade
    OR IDDepartamentos = 6 # Departamento de Segurança no Trabalho
    OR IDDepartamentos = 7 # Departamento de Suprimentos e Compras
    OR IDDepartamentos = 10; # Departamento de Meio ambiente e Sustentabilidade
CREATE VIEW ClientesProjetos AS SELECT Clientes.IDClientes, Clientes.NomeClientes, Clientes.TelefoneClientes, 
	Clientes.EnderecoClientes, Clientes.CPFClientes, Clientes.CNPJClientes
	FROM Clientes INNER JOIN Projetos WHERE Projetos.IDClientes != NULL;
#Views do Funcionario
CREATE VIEW InformacoesFuncionarios AS SELECT 
	Funcionarios.NomeFuncionarios, Funcionarios.CargoFuncionarios, Departamentos.NomeDepartamento
    FROM Funcionarios INNER JOIN Departamentos;
CREATE VIEW InformacoesProjetos AS SELECT NomeProjeto, DescricaoProjeto FROM Projetos;
#Views do Cliente (exemplo atual: Alice Sousa, ID=1)
CREATE VIEW InformacoesClienteProjetos AS SELECT
	Projetos.NomeProjeto, Projetos.DescricaoProjeto, Projetos.CustoProjeto, Projetos.DataInicio, Projetos.DataTermino 
    FROM Projetos WHERE Projetos.IDClientes = 1;
CREATE VIEW InformacoesCliente AS SELECT * FROM Clientes WHERE IDClientes = 1;

#Permissões do Administrador
GRANT ALL PRIVILEGES ON Construmax.* TO 'administrador'@'localhost';
#Permissões do Gerente Geral
GRANT SELECT, INSERT, UPDATE, DELETE ON Construmax.* TO 'gerente_geral'@'localhost';
#Permissões do Gerente de Recursos Humanos
GRANT SELECT ON Construmax.DepartamentoRH TO 'gerente_rh'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Construmax.Funcionarios TO 'gerente_rh'@'localhost';
#Permissões do Gerente de Projetos
GRANT SELECT ON Construmax.DepartamentosProjetos TO 'gerente_projetos'@'localhost';
GRANT SELECT ON Construmax.FuncionariosDepartamentos TO 'gerente_projetos'@'localhost';
GRANT SELECT ON Construmax.ClientesProjetos TO 'gerente_projetos'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Construmax.Fornecedores TO 'gerente_projetos'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Construmax.Materiais TO 'gerente_projetos'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Construmax.Projetos TO 'gerente_projetos'@'localhost';
#Permissões do Funcionario
GRANT SELECT ON Construmax.InformacoesFuncionarios TO 'funcionario'@'localhost';
GRANT SELECT ON Construmax.InformacoesProjetos TO 'funcionario'@'localhost';
#Permissões do Cliente
GRANT SELECT ON Construmax.InformacoesClienteProjetos TO 'cliente'@'localhost';
GRANT SELECT ON Construmax.InformacoesCliente TO 'cliente'@'localhost';

#Transações e Controle de Transações

#Transação ocorre normalmente
START TRANSACTION;
UPDATE Clientes SET NomeClientes = 'INTER' WHERE NomeClientes = 'NUBANK';
COMMIT;
SELECT * FROM Clientes;

#Transação dá errado
START TRANSACTION;
UPDATE Clientes SET NomeClientes = 'Romero Brito';
ROLLBACK;
SELECT * FROM Clientes;
