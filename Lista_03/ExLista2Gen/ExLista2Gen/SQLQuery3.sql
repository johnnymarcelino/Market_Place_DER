CREATE DATABASE MarketPlace;

USE MarketPlace;

CREATE TABLE tb_usuarios (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	Usuario VARCHAR(100) NOT NULL,
	Senha VARCHAR(255) NOT NULL,
	Url_Foto VARCHAR(100) NOT NULL
);

CREATE TABLE tb_produtos(
	Id_produto INT NOT NULL PRIMARY KEY IDENTITY,
	Produto VARCHAR(50) NOT NULL,
	Descricao VARCHAR(1000) NOT NULL,
	Valor FLOAT NOT NULL,
	Estoque INT NOT NULL,
	Categoria VARCHAR(100) NOT NULL,
	Url_imagem VARCHAR(100) NOT NULL,
	FK_criador INT NOT NULL,
	FOREIGN KEY(FK_criador) REFERENCES tb_usuarios(Id),
	FK_categoria INT NOT NULL,
	FOREIGN KEY (FK_categoria) REFERENCES tb_categorias(Id_categoria)
);

CREATE TABLE tb_categorias (
	id_categoria INT NOT NULL PRIMARY KEY IDENTITY,
	Descricao VARCHAR(50) NOT NULL,
);

CREATE TABLE tb_compras (
	FK_usuario INT NOT NULL,
	FK_produto INT NOT NULL,
	DataDeCompra VARCHAR(50) NOT NULL,
	FOREIGN KEY(FK_usuario) REFERENCES tb_usuarios(Id),
	FOREIGN KEY(FK_produto) REFERENCES tb_produtos(Id_produto)
);