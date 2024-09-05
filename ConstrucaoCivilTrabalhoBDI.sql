CREATE DATABASE Construmax;
USE Construmax;

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
    
INSERT INTO Clientes (NomeClientes, TelefoneClientes, EnderecoClientes, CPFClientes, CNPJClientes) VALUES
('Ana Souza', 11987654321, 'Rua das Flores, 123, São Paulo - SP', 12345678901, NULL),
('Carlos Silva', 11876543210, 'Avenida Paulista, 1000, São Paulo - SP', 23456789012, NULL),
('Maria Oliveira', 11765432109, 'Rua XV de Novembro, 50, Curitiba - PR', 34567890123, NULL),
('Pedro Santos', 11654321098, 'Rua do Comércio, 200, Belo Horizonte - MG', 45678901234, NULL),
('Joana Lima', 11543210987, 'Praça da Sé, 10, Salvador - BA', 56789012345, NULL),
('Lucas Costa', 11432109876, 'Avenida Beira Mar, 300, Fortaleza - CE', 67890123456, NULL),
('Fernanda Almeida', 11321098765, 'Rua dos Andradas, 400, Porto Alegre - RS', 78901234567, NULL),
('Roberto Ferreira', 11210987654, 'Rua São João, 500, Recife - PE', 89012345678, NULL),
('Juliana Rocha', 11109876543, 'Rua da Paz, 600, Goiânia - GO', 90123456789, NULL),
('Tiago Martins', 11098765432, 'Rua dos Trabalhadores, 700, Brasília - DF', 12345678900, NULL);

INSERT INTO Funcionarios (NomeFuncionarios, MatriculaFuncionarios, TelefoneFuncionarios, EnderecoFuncionarios, CPFFuncionarios, SalarioFuncionarios) VALUES
('João Pereira', 1001, 11900000001, 'Rua das Acácias, 101, São Paulo - SP', 12345678900, 3000),
('Mariana Silva', 1002, 11800000002, 'Avenida Paulista, 1100, São Paulo - SP', 23456789001, 3200),
('Roberto Costa', 1003, 11700000003, 'Rua das Palmeiras, 202, Curitiba - PR', 34567890102, 3500),
('Camila Almeida', 1004, 11600000004, 'Rua do Centro, 303, Belo Horizonte - MG', 45678901203, 2800),
('Felipe Santos', 1005, 11500000005, 'Praça Central, 404, Salvador - BA', 56789012304, 3100),
('Tatiane Oliveira', 1006, 11400000006, 'Avenida Atlântica, 505, Fortaleza - CE', 67890123405, 3400),
('Eduardo Lima', 1007, 11300000007, 'Rua do Comércio, 606, Porto Alegre - RS', 78901234506, 3300),
('Juliana Costa', 1008, 11200000008, 'Rua do Sol, 707, Recife - PE', 89012345607, 3000),
('Lucas Almeida', 1009, 11100000009, 'Rua das Orquídeas, 808, Goiânia - GO', 90123456708, 3100),
('Marcos Pereira', 1010, 11000000010, 'Rua das Margaridas, 909, Brasília - DF', 12345678901, 3200);

INSERT INTO Funcionarios (NomeFuncionarios, CargoFuncionarios, MatriculaFuncionarios, TelefoneFuncionarios, EnderecoFuncionarios, CPFFuncionarios, SalarioFuncionarios) VALUES
('João Pereira', 'Engenheiro Civil', 1001, 11900000001, 'Rua das Acácias, 101, São Paulo - SP', 12345678900, 3000),
('Mariana Silva', 'Arquiteto', 1002, 11800000002, 'Avenida Paulista, 1100, São Paulo - SP', 23456789001, 3200),
('Roberto Costa', 'Mestre de Obras', 1003, 11700000003, 'Rua das Palmeiras, 202, Curitiba - PR', 34567890102, 3500),
('Camila Almeida', 'Técnico de Edificações', 1004, 11600000004, 'Rua do Centro, 303, Belo Horizonte - MG', 45678901203, 2800),
('Felipe Santos', 'Pedreiro', 1005, 11500000005, 'Praça Central, 404, Salvador - BA', 56789012304, 3100),
('Tatiane Oliveira', 'Analista de Projetos', 1006, 11400000006, 'Avenida Atlântica, 505, Fortaleza - CE', 67890123405, 3400),
('Eduardo Lima', 'Topógrafo', 1007, 11300000007, 'Rua do Comércio, 606, Porto Alegre - RS', 78901234506, 3300),
('Juliana Costa', 'Auxiliar de Engenharia', 1008, 11200000008, 'Rua do Sol, 707, Recife - PE', 89012345607, 3000),
('Lucas Almeida', 'Gerente de Obras', 1009, 11100000009, 'Rua das Orquídeas, 808, Goiânia - GO', 90123456708, 3100),
('Marcos Pereira', 'Coordenador de Construção', 1010, 11000000010, 'Rua das Margaridas, 909, Brasília - DF', 12345678901, 3200);

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
(8, 8, 8, 'Reforma Residencial', 'Reforma de uma residência com nova fachada e interiores.', 45000.00, '2024-08-15', '2024-11-15'),
(9, 9, 9, 'Shopping Center', 'Construção de um novo shopping center em área urbana.', 1500000.00, '2024-09-10', '2025-12-10'),
(10, 10, 10, 'Escola Municipal', 'Construção de uma nova escola com capacidade para 500 alunos.', 600000.00, '2024-10-01', '2025-08-01');
