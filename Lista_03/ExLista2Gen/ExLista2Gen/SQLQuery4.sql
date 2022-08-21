CREATE DATABASE Classificados;

USE Classificados;

CREATE TABLE tb_usuarios (
	Id_usuarios INT NOT NULL PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	Usuario VARCHAR(100) NOT NULL,
	Senha VARCHAR(255) NOT NULL,
	Url_Foto VARCHAR(100) NOT NULL
);

CREATE TABLE tb_anuncios(
	Id_anuncios INT NOT NULL PRIMARY KEY IDENTITY,
	titulo VARCHAR(50) NOT NULL,
	Descricao VARCHAR(1000) NOT NULL,
	contato VARCHAR(50) NOT NULL,
	Estoque INT NOT NULL,
	Categoria VARCHAR(100) NOT NULL,
	Url_imagem VARCHAR(100) NOT NULL,
	FK_usuarios INT NOT NULL,
	FOREIGN KEY(FK_usuarios) REFERENCES tb_usuarios(Id_usuarios)
);