CREATE DATABASE db_Lista2_Classificado;
USE db_Lista2_Classificado;

CREATE TABLE tb_usuarios(
Id_usuario INT NOT NULL PRIMARY KEY,
Nome Varchar (45),
Usuario Varchar (45),
Senha Varchar (100),
url_imagem VARCHAR (100)
);

CREATE TABLE tb_anuncios(
Id_anuncio INT NOT NULL PRIMARY KEY,
Titulo VARCHAR (45),
Descricao VARCHAR (1000),
Contato VARCHAR (50),
url_imagem Varchar (100),
FK_Usuario INT,
FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id_usuario),
);

DROP TABLE tb_anuncios