#Cenário 1 - DDL (Data Definition Language)
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
    CNPJClientes BIGINT,
    UNIQUE (CPFClientes),
    UNIQUE (CNPJClientes));
    
CREATE TABLE Departamentos (
	IDDepartamentos BIGINT PRIMARY KEY AUTO_INCREMENT,
	NomeDepartamento VARCHAR(100));
    
CREATE TABLE Funcionarios (
	IDFuncionarios BIGINT PRIMARY KEY AUTO_INCREMENT,
    IDDepartamentos BIGINT,
	NomeFuncionarios VARCHAR(100),
	CargoFuncionarios VARCHAR(100),
	MatriculaFuncionarios BIGINT,
	TelefoneFuncionarios BIGINT,
	EnderecoFuncionarios VARCHAR(200),
	CPFFuncionarios BIGINT,
	SalarioFuncionarios DECIMAL(10,2),
    FOREIGN KEY (IDDepartamentos) REFERENCES Departamentos(IDDepartamentos),
    UNIQUE (CPFFuncionarios));
    
CREATE TABLE Fornecedores (
	IDFornecedores BIGINT PRIMARY KEY AUTO_INCREMENT,
	NomeFornecedores VARCHAR(100),
    TelefoneFornecedores BIGINT,
    CNPJFornecedores BIGINT,
    EnderecoFornecedores VARCHAR(200),
    UNIQUE (CNPJFornecedores));
    
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


DROP TABLE projetos, materiais, funcionarios, fornecedores, departamentos, clientes;