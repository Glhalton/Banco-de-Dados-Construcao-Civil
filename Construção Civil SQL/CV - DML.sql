#DML
USE Construmax;

#Inserção de informações nas tabelas    
INSERT INTO Clientes (NomeClientes, TelefoneClientes, EnderecoClientes, CPFClientes, CNPJClientes) VALUES
('Alice Sousa', 11987654321, 'Rua das Flores, 123, São Paulo - SP', 12345678909, NULL),
('Carlos Silva', 11876543210, 'Avenida Paulista, 1000, São Paulo - SP', 23456789012, NULL),
('Casa de Tintas', 11765432109, 'Rua XV de Novembro, 50, Curitiba - PR', NULL, 96977297000119),
('Pedro Santos', 11654321098, 'Rua do Comércio, 200, Belo Horizonte - MG', 45678901234, NULL),
('NUBANK', 11543210987, 'Praça da Sé, 10, Salvador - BA', NULL, 83750253000100),
('Lucas Costa', 11432109876, 'Avenida Beira Mar, 300, Fortaleza - CE', 67890123456, NULL),
('Fernanda Almeida', 11321098765, 'Rua dos Andradas, 400, Porto Alegre - RS', 78901234567, NULL),
('Lenovo', 11210987654, 'Rua São João, 500, Recife - PE', NULL, 00423763000145),
('Juliana Arocha', 11109876543, 'Rua da Paz, 600, Goiânia - GO', 90123456789, NULL),
('TJ gaming', 11098765432, 'Rua dos Trabalhadores, 700, Brasília - DF', NULL, 23001229000146);

INSERT INTO Funcionarios (IDDepartamentos, NomeFuncionarios, CargoFuncionarios, MatriculaFuncionarios, TelefoneFuncionarios, EnderecoFuncionarios, CPFFuncionarios, SalarioFuncionarios) VALUES
(1, 'João Pereira', 'Engenheiro Civil', 1001, 11900000001, 'Rua das Acácias, 101, São Paulo - SP', 12345678900, 3000.00),
(1, 'Mariana Silva', 'Enegenheiro de Projetos', 1002, 11800000002, 'Avenida Paulista, 1100, São Paulo - SP', 23456789001, 3200.00),
(2, 'Roberto Costa', 'Arquiteto', 1003, 11700000003, 'Rua das Palmeiras, 202, Curitiba - PR', 34567890102, 3500.00),
(2, 'Camila Almeida', 'Desenhista Técnico/Projetista', 1004, 11600000004, 'Rua do Centro, 303, Belo Horizonte - MG', 45678901203, 2800.00),
(3, 'Felipe Santos', 'Analsita de Custos', 1005, 11500000005, 'Praça Central, 404, Salvador - BA', 56789012304, 3100.00),
(3, 'Tatiane Oliveira', 'Analista Financeiro', 1006, 11400000006, 'Avenida Atlântica, 505, Fortaleza - CE', 67890123405, 3400.00),
(4, 'Eduardo Lima', 'Gerente de Projetos', 1007, 11300000007, 'Rua do Comércio, 606, Porto Alegre - RS', 78901234506, 3300.00),
(4, 'Juliana Costa', 'Coordenador de Planejamento', 1008, 11200000008, 'Rua do Sol, 707, Recife - PE', 89012345607, 3000.00),
(5, 'Lucas Almeida', 'Analista de Qualidade', 1009, 11100000009, 'Rua das Orquídeas, 808, Goiânia - GO', 90123456708, 3100.00),
(5, 'Marcos Pereira', 'Tecnico em Controle de Qualidade', 1010, 11000000010, 'Rua das Margaridas, 909, Brasília - DF', 12345678901, 3200.00),
(6, 'Ana Souza', 'Técnico de Segurança no Trabalho', 1011, 11987654321, 'Rua das Flores, 123, São Paulo, SP', 12345678903, 8500.00),
(6, 'Carlos Pereira', 'Médico do Trabalho', 1012, 11923456789, 'Avenida Paulista, 1000, São Paulo, SP', 23456789012, 5500.00),
(7, 'Mariana Lima', 'Comprador', 1013, 21987654321, 'Rua da Glória, 250, Rio de Janeiro, RJ', '34567890123', 7500.00),
(7, 'João Oliveira', 'Especialista em Logistica', 1014, 21923456789, 'Rua do Comércio, 45, Rio de Janeiro, RJ', 45678901234, 6000.00),
(8, 'Fernanda Silva', 'Recrutador', 1015, 31987654321, 'Avenida Afonso Pena, 500, Belo Horizonte, MG', '56789012345', 4800.00),
(8, 'Ricardo Santos', 'Gerente de Recursos Humanos', 1016, 31923456789, 'Rua dos Andradas, 750, Belo Horizonte, MG', 67890123456, 9500.00),
(9, 'Juliana Costa', 'Gerente Juridico', 1017, 51987654321, 'Rua Padre Cacique, 100, Porto Alegre, RS', 78901234567, 8200.00),
(9, 'Marcelo Almeida', 'Advogado', 1018, 51923456789, 'Avenida Ipiranga, 200, Porto Alegre, RS', 89012345678, 7000.00),
(10, 'Patrícia Ferreira', 'Engenheiro Ambiental', 1019, 41987654321, 'Rua XV de Novembro, 150, Curitiba, PR', 90123456789, 5600.00),
(10, 'Rafael Borges', 'Auditor de Sustentabilidade', 1020, 41923456789, 'Avenida Sete de Setembro, 300, Curitiba, PR', 01234567890, 6700.00),
(NULL, 'Rosival Soares', 'Estagiario', 1021, 9491748831, 'R. Santa Fé, 777, Xique-Xique, BA', 09876543210, 0.12);

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

INSERT INTO Departamentos (NomeDepartamento) VALUES
("Departamento de Engenharia"),
("Departamento de Arquitetura"),
("Departamento de Orçamentos e custos"),
("Departamento de Planejamento de Controle"),
("Departamento de Qualidade"),
("Departamento de Segurança no Trabalho"),
("Departamento de Suprimentos e Compras"),
("Departamento de Recursos Humanos"),
("Departamento Juridico"),
("Departamento de Meio ambiente e Sustentabilidade");

UPDATE Funcionarios SET SalarioFuncionarios = 0.50 WHERE NomeFuncionarios = "Rosival Soares";
UPDATE Funcionarios SET CargoFuncionarios = "Auxiliar de TI" WHERE NomeFuncionarios = "Estagiario" ;

DELETE FROM Funcionarios WHERE NomeFuncionarios = "Rosival Soares";
DELETE FROM Funcionarios WHERE NomeFuncionarios = "Rafael Borges";

SELECT Funcionarios.NomeFuncionarios, Departamentos.NomeDepartamento FROM Funcionarios INNER JOIN Departamentos 
ON Funcionarios.IDDepartamentos = Departamentos.IDDepartamentos; 

SELECT * FROM clientes;
SELECT * FROM fornecedores;
SELECT * FROM funcionarios;
SELECT * FROM materiais;
SELECT * FROM projetos;
SELECT * FROM departamentos;
