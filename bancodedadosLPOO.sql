DROP DATABASE Doceria;
CREATE DATABASE Doceria;
USE Doceria;


CREATE TABLE Produtos(
idProduto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255),
preco INT
);

CREATE TABLE Clientes(
idCliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255),
idade INT 
);

CREATE TABLE Funcionarios(
idFuncionario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255),
cargo VARCHAR(255)
);

CREATE TABLE Vendas(
idVenda INT NOT NULL PRIMARY KEY AUTO_INCREMENT,

idCliente INT NOT NULL,
FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),

idProduto INT NOT NULL,
FOREIGN KEY (idProduto) REFERENCES Produtos(idProduto),

idFuncionario INT NOT NULL,
FOREIGN KEY (idFuncionario) REFERENCES Funcionarios(idFuncionario),

quantidade INT NOT NULL,
precoTotal INT
);




