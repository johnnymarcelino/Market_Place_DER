CREATE DATABASE db_Lista2_RedesSociais;
USE db_Lista2_RedesSociais;


CREATE TABLE tb_usuarios (
	Id_usuario INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Usuario VARCHAR(50) NOT NULL,
	Email  VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	CPF VARCHAR(255) NOT NULL,
	);

CREATE TABLE tb_postagens(
	Id_postagem INT NOT NULL PRIMARY KEY,
	Titulo VARCHAR (50) NOT NULL,
	Descricao VARCHAR (1000) NOT NULL,
	url_imagem VARCHAR (100) NOT NULL,
	FK_Criador INT,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id_usuario),
	FK_Grupo INT,
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id_Grupo),
	);

CREATE TABLE tb_grupos(
	Id_Grupo INT NOT NULL PRIMARY KEY,
	Grupo VARCHAR (45) NOT NULL,
	Descricao VARCHAR (1000) NOT NULL,
	url_imagem VARCHAR (100) NOT NULL,
	FK_Criador INT,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id_usuario),
	);

CREATE TABLE tb_inscritos(
	FK_Usuario INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id_usuario),
	FK_Grupo INT,
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id_Grupo),
	);