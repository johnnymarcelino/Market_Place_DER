CREATE DATABASE db_Lista2_Marketplace;
USE db_Lista2_Marketplace;

DROP TABLE tb_usuarios
DROP TABLE tb_compras
DROP TABLE tb_usuarios
DROP TABLE tb_categorias

CREATE TABLE tb_usuarios (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	Email  VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	CPF VARCHAR(255) NOT NULL,
	);

CREATE TABLE tb_compras (
	Idcompra INT NOT NULL PRIMARY KEY IDENTITY,
	Descricao VARCHAR(255) NOT NULL,
	Total FLOAT NOT NULL,
	FormaDePagamento VARCHAR (255),
	DataEntrega VARCHAR (255),
	FK_usuario INT NOT NULL,
	FK_produtos INT NOT NULL,
	FOREIGN KEY (FK_usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_produtos) REFERENCES tb_produtos (Id_produto),
	);

CREATE TABLE tb_produtos (
	Id_produto INT NOT NULL PRIMARY KEY,
	Produto VARCHAR (45) Not NULL,
	Descricao VARCHAR(100) NOT NULL,
	Valor FLOAT NOT NULL,
	Estoque INT NOT NULL,
	FK_Categoria INT NOT NULL,
	FK_Criador INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Categoria) REFERENCES tb_categorias (Id_Categoria),
	URL_imagem VARCHAR (100),
	);



CREATE TABLE tb_categorias (
	Id_categoria INT NOT NULL PRIMARY KEY,
	Categoria VARCHAR (45) NOT NULL,
	);