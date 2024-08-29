create database Industria;

CREATE TABLE Pecas (
    Número INT PRIMARY KEY,
    Peso DECIMAL(10, 2),
    Cor VARCHAR(50)
);

CREATE TABLE Depósitos (
    Numero INT PRIMARY KEY,
    Endereço VARCHAR(255)
);

CREATE TABLE Fornecedor (
    Numero INT PRIMARY KEY,
    Endereço VARCHAR(255)
);

CREATE TABLE Projeto (
    Numero INT PRIMARY KEY,
    Orcamento DECIMAL(15, 2),
    Data_Inicio DATE,
    Horas_Trabalhadas DECIMAL(10, 2)
);

CREATE TABLE Funcionario (
    Numero INT PRIMARY KEY,
    Salario DECIMAL(15, 2),
    Telefone VARCHAR(20),
    Departamento_Numero INT,
    FOREIGN KEY (Departamento_Numero) REFERENCES Departamento(Numero)
);

CREATE TABLE Departamento (
    Numero INT PRIMARY KEY,
    Setor VARCHAR(100)
);

CREATE TABLE Projeto_Fornecedor (
    Projeto_Numero INT,
    Fornecedor_Numero INT,
    FOREIGN KEY (Projeto_Numero) REFERENCES Projeto(Numero),
    FOREIGN KEY (Fornecedor_Numero) REFERENCES Fornecedor(Numero),
    PRIMARY KEY (Projeto_Numero, Fornecedor_Numero)
);


INSERT INTO Pecas (Número, Peso, Cor) VALUES
(1, 10.5, 'Vermelho'),
(2, 8.2, 'Azul');

INSERT INTO Depósitos (Numero, Endereço) VALUES
(101, 'Rua A, 123'),
(102, 'Avenida B, 456');

INSERT INTO Fornecedor (Numero, Endereço) VALUES
(201, 'Rua C, 789'),
(202, 'Avenida D, 1011');

INSERT INTO Projeto (Numero, Orcamento, Data_Inicio, Horas_Trabalhadas) VALUES
(301, 50000.00, '2024-04-01', 200.5),
(302, 75000.00, '2024-04-10', 350.0);

INSERT INTO Funcionario (Numero, Salario, Telefone, Departamento_Numero) VALUES
(401, 3000.00, '(11) 1234-5678', 501),
(402, 3500.00, '(11) 9876-5432', 502);

INSERT INTO Departamento (Numero, Setor) VALUES
(501, 'Produção'),
(502, 'Engenharia');

INSERT INTO Projeto_Fornecedor (Projeto_Numero, Fornecedor_Numero) VALUES
(301, 201),
(301, 202),
(302, 202);

select * from pecas, projeto, departamento, depósitos, fornecedor, funcionario;