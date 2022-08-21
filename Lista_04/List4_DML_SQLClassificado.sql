USE db_Lista2_Classificado

-- LISTA 3 INSERT + SELECT WHERE

INSERT INTO tb_usuarios
VALUES
(1,'Amanda', 'amanda@email.com', '123amanda', '123.123.123-12'),
(2,'Johnny', 'johnny@email.com', '123johnny', '456.456.456-45'),
(3,'Nick', 'nick@email.com', '123nick', '789.789.789-78');

INSERT INTO tb_anuncios
VALUES
(23, 'Vende-se Chinelo de ouro', 'Chinelo mais caro do mundo à venda apenas aqui', '11 91234-5678','FOTODECHINELODEOURO',1),
(273, 'Nem tudo são flores', 'Vende-se tudo que não sejam flores', '11 94334-6478','FOTODENÃOFLORES',2),
(327, 'Nova plataforma para Filmes e séries', 'Festa de abertura da Chinelaflix, leia mais aqui', '11 91374-5848','FOTODECHINELAFLIX',2);



SELECT * FROM tb_anuncios
WHERE Descricao LIKE '%chinel%'

SELECT * FROM tb_anuncios
WHERE Id_anuncio BETWEEN 200 AND 500

SELECT * FROM tb_anuncios
WHERE Titulo LIKE ('%our%');

--LISTA 4 JOIN + SELECT (IN/LIKE/BETWEEN) + SELECT (COUNT/AVG/SUM)

SELECT
	Id_usuario AS 'ID do anunciante', Id_anuncio AS 'ID do anúncio', Nome AS 'Nome do anunciante', Titulo AS 'Título do anúncio', Descricao AS 'Descrição do anúncio'
	FROM tb_usuarios
RIGHT JOIN tb_anuncios
	ON Id_usuario = FK_Usuario
WHERE Id_Usuario IN (1);

SELECT COUNT(Titulo) AS '# Total de anúncios'
FROM tb_anuncios

