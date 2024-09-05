#DDL
#Criação do Banco de Dados
CREATE DATABASE Construmax;
USE Construmax;

#Criação das Tabelas 
CREATE TABLE Clientes (
	IDClientes BIGINT PRIMARY KEY AUTO_INCREMENT,
	NomeClientes VARCHAR(100), 
    TelefoneClientes BIGINT, 
    EnderecoClientes VARCHAR(200), 
    CPFClientes BIGINT, 
    CNPJClientes BIGINT);
    
CREATE TABLE Funcionarios (
	IDFuncionarios BIGINT PRIMARY KEY AUTO_INCREMENT,
	NomeFuncionarios VARCHAR(100),
	CargoFuncionarios VARCHAR(100),
	MatriculaFuncionarios BIGINT,
	TelefoneFuncionarios BIGINT,
	EnderecoFuncionarios VARCHAR(200),
	CPFFuncionarios BIGINT,
	SalarioFuncionarios BIGINT);
    
CREATE TABLE Fornecedores (
	IDFornecedores BIGINT PRIMARY KEY AUTO_INCREMENT,
	NomeFornecedores VARCHAR(100),
    TelefoneFornecedores BIGINT,
    CNPJFornecedores BIGINT,
    EnderecoFornecedores VARCHAR(200));
    
CREATE TABLE Materiais (
	IDMateriais BIGINT PRIMARY KEY AUTO_INCREMENT,
	IDFornecedores BIGINT,
    NomeMaterial VARCHAR(100),
    PrecoMaterial DECIMAL(12, 2),
    QuantidadeMaterial BIGINT,
    FOREIGN KEY (IDFornecedores) REFERENCES Fornecedores(IDFornecedores));
    
CREATE TABLE Projetos (
	IDProjetos BIGINT PRIMARY KEY AUTO_INCREMENT,
	IDClientes BIGINT,
    IDFuncionarios BIGINT,
    IDMateriais BIGINT,
    NomeProjeto VARCHAR(100),
    DescricaoProjeto VARCHAR(1000),
    CustoProjeto DECIMAL(12, 2),
    DataInicio DATE,
    DataTermino DATE,
    FOREIGN KEY (IDClientes) REFERENCES Clientes(IDClientes),
    FOREIGN KEY (IDFuncionarios) REFERENCES Funcionarios(IDFuncionarios),
    FOREIGN KEY (IDMateriais) REFERENCES Materiais(IDMateriais));
    
    
CREATE TABLE Departamentos (
	IDDepartamentos BIGINT PRIMARY KEY AUTO_INCREMENT,
	IDFuncionarios BIGINT,
	NomeDepartamento VARCHAR(100),
    FOREIGN KEY (IDFuncionarios) REFERENCES Funcionarios(IDFuncionarios));

#DML
#Inserção de informações nas tabelas    
INSERT INTO Clientes (NomeClientes, TelefoneClientes, EnderecoClientes, CPFClientes, CNPJClientes) VALUES
('Alice Sousa', 11987654321, 'Rua das Flores, 123, São Paulo - SP', 12345678901, NULL),
('Carlos Silva', 11876543210, 'Avenida Paulista, 1000, São Paulo - SP', 23456789012, NULL),
('Casa de Tintas', 11765432109, 'Rua XV de Novembro, 50, Curitiba - PR', NULL, 96977297000119),
('Pedro Santos', 11654321098, 'Rua do Comércio, 200, Belo Horizonte - MG', 45678901234, NULL),
('NUBANK', 11543210987, 'Praça da Sé, 10, Salvador - BA', NULL, 83750253000100),
('Lucas Costa', 11432109876, 'Avenida Beira Mar, 300, Fortaleza - CE', 67890123456, NULL),
('Fernanda Almeida', 11321098765, 'Rua dos Andradas, 400, Porto Alegre - RS', 78901234567, NULL),
('Lenovo', 11210987654, 'Rua São João, 500, Recife - PE', NULL, 00423763000145),
('Juliana Arocha', 11109876543, 'Rua da Paz, 600, Goiânia - GO', 90123456789, NULL),
('TJ gaming', 11098765432, 'Rua dos Trabalhadores, 700, Brasília - DF', NULL, 23001229000146);

INSERT INTO Funcionarios (NomeFuncionarios, CargoFuncionarios, MatriculaFuncionarios, TelefoneFuncionarios, EnderecoFuncionarios, CPFFuncionarios, SalarioFuncionarios) VALUES
('João Pereira', 'Engenheiro Civil', 1001, 11900000001, 'Rua das Acácias, 101, São Paulo - SP', 12345678900, 3000),
('Mariana Silva', 'Analista de Recursos humanos', 1002, 11800000002, 'Avenida Paulista, 1100, São Paulo - SP', 23456789001, 3200),
('Roberto Costa', 'Mestre de Obras', 1003, 11700000003, 'Rua das Palmeiras, 202, Curitiba - PR', 34567890102, 3500),
('Camila Almeida', 'Técnico de Edificações', 1004, 11600000004, 'Rua do Centro, 303, Belo Horizonte - MG', 45678901203, 2800),
('Felipe Santos', 'Pedreiro', 1005, 11500000005, 'Praça Central, 404, Salvador - BA', 56789012304, 3100),
('Tatiane Oliveira', 'Analista de Projetos', 1006, 11400000006, 'Avenida Atlântica, 505, Fortaleza - CE', 67890123405, 3400),
('Eduardo Lima', 'Recrutador', 1007, 11300000007, 'Rua do Comércio, 606, Porto Alegre - RS', 78901234506, 3300),
('Juliana Costa', 'Auxiliar de Engenharia', 1008, 11200000008, 'Rua do Sol, 707, Recife - PE', 89012345607, 3000),
('Lucas Almeida', 'Gerente de Obras', 1009, 11100000009, 'Rua das Orquídeas, 808, Goiânia - GO', 90123456708, 3100),
('Marcos Pereira', 'Coordenador de Construção', 1010, 11000000010, 'Rua das Margaridas, 909, Brasília - DF', 12345678901, 3200);

INSERT INTO Fornecedores (NomeFornecedores, TelefoneFornecedores, CNPJFornecedores, EnderecoFornecedores) VALUES
('Construmaterial Ltda.', 11911122334, 12345678000123, 'Rua das Laranjeiras, 123, São Paulo - SP'),
('Supreme Fornecedores', 11822233445, 23456789000198, 'Avenida das Nações, 456, São Paulo - SP'),
('Materiais Pro', 11733344556, 34567890000187, 'Rua das Palmeiras, 789, Curitiba - PR'),
('Forte Fornecedores', 11644455667, 45678901000176, 'Rua da Cidadania, 101, Belo Horizonte - MG'),
('Edifica Ltda.', 11555566778, 56789012000165, 'Rua das Acácias, 234, Salvador - BA'),
('Construsul Ltda.', 11466677889, 67890123000154, 'Avenida dos Pescadores, 345, Fortaleza - CE'),
('TecnoMateriais', 11377788990, 78901234000143, 'Rua do Comércio, 456, Porto Alegre - RS'),
('AltoFornecedores', 11288899001, 89012345000132, 'Rua São Francisco, 567, Recife - PE'),
('Material Prime', 11199900112, 90123456000121, 'Rua das Flores, 678, Goiânia - GO'),
('Construlider Ltda.', 11000011223, 12345678000234, 'Rua da Liberdade, 789, Brasília - DF');

INSERT INTO Materiais (IDFornecedores, NomeMaterial, PrecoMaterial, QuantidadeMaterial) VALUES
(1, 'Cimento Portland', 25.00, 1000),
(2, 'Areia Média', 15.00, 1500),
(3, 'Tijolo Cerâmico', 0.50, 5000),
(4, 'Bloco de Concreto', 1.00, 3000),
(5, 'Aço Para Estrutura', 1000.00, 200),
(6, 'Madeira Para Carpintaria', 80.00, 100),
(7, 'Argamassa', 30.00, 800),
(8, 'Revestimento Cerâmico', 40.00, 600),
(9, 'Cal Hidráulica', 22.00, 500),
(10, 'Tinta Acrílica', 120.00, 200);

INSERT INTO Projetos (IDClientes, IDFuncionarios, IDMateriais, NomeProjeto, DescricaoProjeto, CustoProjeto, DataInicio, DataTermino) VALUES
(1, 1, 1, 'Construção Residencial', 'Construção de uma casa com três quartos e garagem.', 150000.00, '2024-01-10', '2024-06-10'),
(2, 2, 2, 'Reforma Comercial', 'Reforma de loja com novo layout e pintura.', 50000.00, '2024-02-01', '2024-04-30'),
(3, 3, 3, 'Edifício Comercial', 'Construção de um edifício de 10 andares para escritórios.', 500000.00, '2024-03-15', '2025-03-15'),
(4, 4, 4, 'Casa de Campo', 'Construção de uma casa de campo com área de lazer.', 200000.00, '2024-04-20', '2024-09-20'),
(5, 5, 5, 'Centro de Eventos', 'Construção de um centro de eventos para grandes conferências.', 700000.00, '2024-05-05', '2025-05-05'),
(6, 6, 6, 'Ponte de Concreto', 'Construção de uma ponte sobre um rio.', 1200000.00, '2024-06-10', '2025-12-10'),
(7, 7, 7, 'Área de Lazer', 'Criação de uma área de lazer em um condomínio.', 80000.00, '2024-07-01', '2024-11-01'),
(8, 8, 8, 'Reforma de um prédio', 'Reforma de uma prédio com nova fachada e interiores.', 45000.00, '2024-08-15', '2024-11-15'),
(9, 9, 9, 'Shopping Center', 'Construção de um novo shopping center em área urbana.', 1500000.00, '2024-09-10', '2025-12-10'),
(10, 10, 10, 'Edificio Comercial', 'Construção de um edificio comercial pequeno com 4 quartos em uma area ponto de venda.', 600000.00, '2024-10-01', '2025-08-01');

INSERT INTO Departamentos (IDFuncionario, NomeDepartamento) VALUES
();


SELECT * FROM clientes;
SELECT * FROM fornecedores;
SELECT * FROM funcionarios;
SELECT * FROM materiais;
SELECT * FROM projetos;

TRUNCATE funcionarios; 
TRUNCATE clientes;
TRUNCATE fornecedores;
TRUNCATE materiais;
TRUNCATE projetos;

ALTER TABLE materiais NOCHECK CONSTRAINT materiais_ibfk_1
ALTER TABLE materiais CHECK CONSTRAINT materiais_ibfk_1

DROP TABLE materiais;
DROP TABLE m;

SELECT 
    CONSTRAINT_NAME
FROM 
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE 
    TABLE_NAME = "funcionarios"
    AND CONSTRAINT_SCHEMA = "construmax" 
    AND REFERENCED_TABLE_NAME IS NOT NULL;


DELETE FROM funcionarios;