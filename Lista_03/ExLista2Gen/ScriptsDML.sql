-- DML (CRUD)
-- SELECT
-- INSERT
-- UPDATE
-- DELETE

USE db_blog_dotnet;

-- INSERT
INSERT INTO tb_usuarios
VALUES (159, 'Maju Boaz','maju@email.com','134652', 'URLFOTOMAJU');

INSERT INTO tb_usuarios
VALUES
(456, 'Rodrigo Boaz','rodrigo@email.com','134652', 'URLFOTORODRIGO'),
(268, 'Mauricio Boaz','mauricio@email.com','134652', 'URLFOTOMAURICIO'),
(465, 'Juliana Boaz','juliana@email.com','134652', 'URLFOTOJULIANA');

INSERT INTO tb_temas
VALUES
('CSHARP'),
('JAVA'),
('JAVASCRIPT');

INSERT INTO tb_postagens
VALUES
('CSHARP Linq', 'Otima maneira de faze3r consultas', 'FOTODAPOSTAGEN', 159, 1);

INSERT INTO tb_postagens
VALUES
('Spring Atualmente', 'Muito utilizado para desenvolvimento de app web', 'FOTODAPOSTAGEN', 456, 2),
('CSHARP Dotnet', 'Esse é o framework do momento', 'FOTODAPOSTAGEN', 465, 1);

-- SELECT
SELECT * FROM tb_usuarios;
SELECT * FROM tb_temas;
SELECT * FROM tb_postagens;

SELECT Nome, Email FROM tb_usuarios;

SELECT * FROM tb_usuarios
WHERE Nome LIKE '%dri%';

SELECT * FROM tb_usuarios
WHERE Id BETWEEN 100 AND 280;

SELECT * FROM tb_postagens
WHERE tb_postagens.Titulo IN ('CSHARP Linq','Spring Atualmente');

-- UPDATE

UPDATE tb_usuarios
SET Nome = 'Maju Costa'
WHERE Id = 159;

-- SELECT
-- INNER JOIN

SELECT 
	u.Nome AS Criador,
	p.Titulo AS 'Titulo Postagem',
	t.Descricao AS Tema
FROM tb_usuarios AS u -- Esquerda de tb_postagem
INNER JOIN tb_postagens AS p -- A Direita de tb_usuario e a Esquerda de tb_tema
	ON u.Id = p.FK_Criador
INNER JOIN tb_temas AS t -- Direita de postagem
	ON t.Id = p.FK_Tema
WHERE p.Titulo LIKE '%%';

SELECT 
	u.Nome AS Criador,
	COUNT(*) AS 'Quantidade de Postagens'
FROM tb_usuarios AS u
INNER JOIN tb_postagens AS p
	ON u.Id = p.FK_Criador
GROUP BY u.Nome
ORDER BY u.Nome DESC;

-- LEFT JOIN
SELECT 
	u.Nome AS Criador
FROM tb_usuarios AS u -- Esquerda de tb_postagem
LEFT JOIN tb_postagens AS p -- A Direita de tb_usuario
	ON u.Id = p.FK_Criador
WHERE p.Id IS NULL;

-- RIGHT JOIN
SELECT 
	t.Descricao AS Descrição
FROM tb_postagens  AS p -- Esquerda de tb_tema
RIGHT JOIN tb_temas AS t -- A Direita de tb_postagem
	ON t.Id = p.FK_Tema
WHERE p.Id IS NULL;

-- FULL JOIN
SELECT 
*
FROM tb_usuarios AS u -- Esquerda de tb_postagem
FULL JOIN tb_postagens AS p -- A Direita de tb_usuario e a Esquerda de tb_tema
	ON u.Id = p.FK_Criador
FULL JOIN tb_temas AS t -- Direita de postagem
	ON t.Id = p.FK_Tema
