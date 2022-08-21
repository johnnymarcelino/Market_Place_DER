USE db_Lista2_RedesSociais

-- LISTA 3 INSERT + SELECT WHERE

INSERT INTO tb_usuarios
VALUES
(1,'Amanda', 'Amandinha', 'amanda@email.com', '123amanda', '123.123.123-12'),
(2,'Johnny', 'JohnJohn', 'johnny@email.com', '123johnny', '456.456.456-45'),
(3,'Nick', 'Niiiiick','nick@email.com', '123nick', '789.789.789-78')

INSERT INTO tb_grupos
VALUES
(38, 'Chineleiros','Chinelo, chinelada, todo dia, toda hora','FOTODECHINELO',1),
(72, 'Floristas', 'Flores fazem o mundo melhor','FOTODEFLORES',2),
(105, 'Cineastas', 'Amamos filmes', 'FOTODECINEASTAS',3)

INSERT INTO tb_postagens
VALUES
(123, 'Chinelo das galáxias','Avistado chinelo alienígena em fazenda no Texas', 'FOTODECHINELO', 1,38),
(209,'Flores coloridas', 'Flores híbridas demonstram combinações de cores nunca antes vistas', 'FOTODEFLORES',2,72),
(911,'Filme novo de Amigojulio', 'Celebridade Amigojulio retorna ao cinema depois de 3 meses em bootcamp', 'FOTODECINEMA',3,105)

INSERT INTO tb_inscritos
VALUES
(1,38),
(2,72),
(3,105)

SELECT * FROM tb_postagens
WHERE Descricao LIKE '%chinel%'

SELECT * FROM tb_postagens
WHERE Id_postagem BETWEEN 200 AND 1000

SELECT * FROM tb_usuarios
WHERE Id_usuario BETWEEN 2 AND 3

SELECT * FROM tb_inscritos
WHERE FK_Usuario BETWEEN 2 AND 3

--LISTA 4 JOIN + SELECT (IN/LIKE/BETWEEN) + SELECT (COUNT/AVG/SUM)

SELECT
	Id_usuario AS 'ID de quem postou', Id_postagem AS 'ID do anúncio', Nome AS 'Nome de quem postou', Titulo AS 'Título do post', Descricao AS 'Descrição do post'
	FROM tb_usuarios
FULL JOIN tb_postagens
	ON Id_usuario = FK_Criador
WHERE Id_Usuario IN (1);

SELECT COUNT(Titulo) AS '# Total de posts'
FROM tb_postagens


