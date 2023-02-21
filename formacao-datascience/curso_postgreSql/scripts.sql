/*

AULA 01

Nesta aula, aprendemos:

Como instalar o PostgreSQL e o pgAdmin
Como conectar ao PostgreSQL, utilizando o terminal e o pgAdmin
A criar o banco de dados pelo terminal e pelo pgAdmin
Como apagar o banco de dados pelo terminal e pelo pgAdmin
A criar tabela com os tipos de dados mais comuns:
SERIAL
VARCHAR
CHAR
TEXT
INTEGER
NUMERIC
BOOLEAN
DATE
TIME
TIMESTAMP

*/
-- AULA 01

CREATE DATABASE alura;

CREATE DATABASE teste;

DROP DATABASE teste;



--  AULA 01 - ATIVIDADE 05

CREATE TABLE aluno
(
    id SERIAL,
    nome  VARCHAR(255),
    cpf CHAR(11),
    observacao TEXT,
    idade INTEGER,
    dinheiro NUMERIC(10,2),
    altura REAL,
    ativo BOOLEAN,
    data_nascimento DATE,
    hora_aula TIME,
    matriculado_em TIMESTAMP
);

SELECT * FROM aluno;



/*

AULA 02 

Nesta aula, aprendemos:

Como incluir um registro na tabela, entendendo a sintaxe de inclusão de cada tipo de campo
A efetuar uma consulta simples, para listar os dados da tabela
Como alterar um registro na tabela
Como excluir um registro na tabela
*/

-- AULA 02 - 01

INSERT INTO aluno(
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em) 
VALUES (
	'Diogo',
	'12345678901',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras finibus mollis justo in congue. Curabitur eget malesuada lorem, posuere varius ante. Mauris in est orci. Sed semper pretium velit vitae egestas. Donec finibus semper eleifend. Ut id velit ultricies, pellentesque purus nec, maximus risus. Nulla tristique tellus nec quam condimentum, sit amet convallis erat fermentum. Mauris in dictum dui. In et ante quam. Suspendisse tempor leo nec elementum mattis. Vestibulum rutrum quam risus, eu aliquam sem rhoncus eu.Vestibulum facilisis nunc at viverra luctus. Vestibulum quis tortor lacus. Sed at euismod mauris. Praesent sed neque risus. Donec sed cursus ligula. Nam cursus porttitor purus auctor consequat. In vitae turpis aliquet, euismod quam eu, finibus lacus. Curabitur volutpat tellus et pretium volutpat.',
	35,
	100.50,
	1.81,
	TRUE,
	'1984-08-27',
	'17:30:00',
	'2020-02-08 12:32:45'
);

 SELECT * FROM aluno;


-- AULA 02 - Atividade 03



  SELECT * 
   FROM aluno
  WHERE ID = 1;

 UPDATE aluno
 SET nome = 'Nico',
	cpf = '10987654321',
	observacao ='Teste',
	idade = 38,
	dinheiro = 15.32,
	altura = 1.90,
	ativo = FALSE,
	data_nascimento = '1980-01-15',
	hora_aula = '13:00:00',
	matriculado_em = '2020-01-02 15:00:00'
  WHERE id = 1;
  
  
 SELECT *  FROM aluno ;

-- Atividade 05

 SELECT * 
   FROM aluno
  WHERE nome = 'Nico';

DELETE 
   FROM aluno
  WHERE nome = 'Nico';


/*

AULA 03

Nesta aula, aprendemos:

A selecionar campos específicos da tabela
Como definir um alias para os nomes dos campos
A filtrar registros, utilizando o WHERE para campos do tipo de texto
Operadores =, !=,<>, LIKE e NOT LIKE
A diferença entre = e LIKE
O funcionamento do caractere % no filtro com LIKE e NOT LIKE
O funcionamento do caractere _ no filtro com LIKE e NOT LIKE
Como filtrar utilizando IS NULL e IS NOT NULL
Como filtrar registros para campos do tipos relacionados a números, datas e horas
=, !=, <>, <, <=, >, >=
BETWEEN
Como filtrar registros para campos do tipo booleano
=, !=, <>
Como funciona os operadores lógicos AND e OR

*/
-- AULA 03

INSERT INTO aluno(
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em) 
VALUES (
	'Diogo',
	'12345678901',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras finibus mollis justo in congue. Curabitur eget malesuada lorem, posuere varius ante. Mauris in est orci. Sed semper pretium velit vitae egestas. Donec finibus semper eleifend. Ut id velit ultricies, pellentesque purus nec, maximus risus. Nulla tristique tellus nec quam condimentum, sit amet convallis erat fermentum. Mauris in dictum dui. In et ante quam. Suspendisse tempor leo nec elementum mattis. Vestibulum rutrum quam risus, eu aliquam sem rhoncus eu.Vestibulum facilisis nunc at viverra luctus. Vestibulum quis tortor lacus. Sed at euismod mauris. Praesent sed neque risus. Donec sed cursus ligula. Nam cursus porttitor purus auctor consequat. In vitae turpis aliquet, euismod quam eu, finibus lacus. Curabitur volutpat tellus et pretium volutpat.',
	35,
	100.50,
	1.81,
	TRUE,
	'1984-08-27',
	'17:30:00',
	'2020-02-08 12:32:45'
);

SELECT * 
   FROM aluno;

   SELECT nome 
  FROM aluno;
  
 SELECT nome,
 		idade
  FROM aluno;
   
 SELECT nome,
 		idade,
		matriculado_em
  FROM aluno;
  
 SELECT nome,
 		idade,
		matriculado_em as quando_se_matriculou
  FROM aluno;
  
 SELECT nome as "Nome do Aluno",
 		idade,
		matriculado_em as quando_se_matriculou
  FROM aluno;  
  
 SELECT nome as Nome do Aluno,
 		idade,
		matriculado_em as quando_se_matriculou
  FROM aluno;
  
 SELECT nome as "Nome do Aluno",
 		idade,
		matriculado_em as quando_se_matriculou
  FROM aluno; 


-- AULA 03 - Atividade 03


INSERT INTO aluno (nome) VALUES('Vinicius Dias');
INSERT INTO aluno (nome) VALUES('Nico Steppat');
INSERT INTO aluno (nome) VALUES('João Roberto');
INSERT INTO aluno (nome) VALUES('Diego');

SELECT *
  FROM aluno; 
  
SELECT *
  FROM aluno
 WHERE nome= 'Diogo';
 
SELECT *
  FROM aluno
 WHERE nome <> 'Diogo';
 
SELECT *
  FROM aluno
 WHERE nome != 'Diogo';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '_iogo';
 
SELECT *
  FROM aluno
 WHERE nome LIKE 'Di_go';
 
SELECT *
  FROM aluno
 WHERE nome NOT LIKE 'Di_go';
 
SELECT *
  FROM aluno
 WHERE nome LIKE 'D%';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '%s';
 
 SELECT *
  FROM aluno
 WHERE nome LIKE '% %';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '%i%a%';

-- AULA 03 - Atividade 05

SELECT *
  FROM aluno
 WHERE cpf IS NULL;
 
SELECT *
  FROM aluno
 WHERE cpf IS NOT NULL;

  SELECT *
  FROM aluno
 WHERE idade = 35;
 
 SELECT *
  FROM aluno
 WHERE idade <> 36;
 
 SELECT *
  FROM aluno
 WHERE idade >= 35;
 
  SELECT *
  FROM aluno
 WHERE idade <= 35;
 
 SELECT *
  FROM aluno
 WHERE idade > 35;
 
 SELECT *
  FROM aluno
 WHERE idade < 100;
 
 SELECT *
  FROM aluno
 WHERE idade BETWEEN 10 AND 40;
 
 SELECT * FROM aluno WHERE ativo = true;
 SELECT * FROM aluno WHERE ativo = false; 
 SELECT * FROM aluno WHERE ativo IS NULL;


 -- Aula 03 - Atividade 7

 SELECT *
  FROM aluno
 WHERE nome LIKE 'D%'
   AND cpf IS NOT NULL;
   
SELECT *
  FROM aluno
 WHERE nome LIKE 'Diogo'
   OR nome LIKE 'Rodrigo';
   
SELECT *
  FROM aluno
 WHERE nome LIKE 'Diogo'
    OR nome LIKE 'Rodrigo'
	OR nome LIKE 'Nico%';
	
SELECT *
  FROM aluno
 WHERE nome LIKE '%Steppat'
	AND nome LIKE 'Nico%';
	
SELECT *
  FROM aluno
 WHERE nome LIKE 'Diogo'
	OR nome LIKE 'Nico%';



/*
AULA 04

Nesta aula, aprendemos:

Como funciona a chave primária
Como funciona os campos que aceitam NULL e que não aceitam NULL (NOT NULL)
Como funciona um campo UNIQUE
Como criar uma chave primária
Como funciona a chave estrangeira
Como criar uma chave estrangeira
Como criar consultas com relacionamentos
INNER JOIN
LEFT JOIN
RIGHT JOIN
FULL JOIN
CROSS JOIN

*/

-- Aula 04 - atividade 1

CREATE TABLE curso(
	id INTEGER,
	nome VARCHAR(255)
);

INSERT INTO curso (id, nome) VALUES (NULL, NULL);

SELECT * FROM curso;

DROP TABLE curso;

CREATE TABLE curso(
	id INTEGER NOT NULL,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (NULL, NULL);
INSERT INTO curso (id, nome) VALUES (1, NULL);
INSERT INTO curso (id, nome) VALUES (NULL, 'HTML');

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (1, 'Javascript');

SELECT * FROM curso;

DROP TABLE curso;

CREATE TABLE curso(
	id INTEGER NOT NULL UNIQUE,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');

DROP TABLE curso;

CREATE TABLE curso(
	id INTEGER PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');

SELECT * FROM curso;

-- Aula 04 Atividade 03 

SELECT * FROM curso;
SELECT * FROM aluno;

DROP TABLE aluno;

CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT  INTO aluno (nome) VALUES ('Diogo');
INSERT  INTO aluno (nome) VALUES ('Vinícius');

SELECT * FROM aluno;

SELECT * FROM curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id,curso_id)
);

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (1,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (2,1);

SELECT * FROM aluno WHERE id = 1;
SELECT * FROM curso WHERE id = 1;

SELECT * FROM aluno WHERE id = 2;
SELECT * FROM curso WHERE id = 1;

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (3,1);


SELECT * FROM aluno WHERE id = 3;
SELECT * FROM curso WHERE id = 1;

DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id,curso_id),
	
	FOREIGN KEY (aluno_id)
   REFERENCES aluno (id),
	
	FOREIGN KEY (curso_id)
   REFERENCES curso (id)
);


 /*  
   FOREIGN KEY (CAMPO_NA_TABELA_ORIGEM)
   REFERENCES TABELA_DESTINO (CAMPO_TABELA_DESTINO)
   		ON UPDATE OPÇÃO
		ON DELETE OPÇÃO
 */
 --  OPÇÃO (RESTRICT, CASCADE)

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (1,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (2,1);

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (3,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (1,3);



-- Aula 04 Atividade 05

SELECT * FROM aluno;

SELECT * FROM curso;


SELECT * 
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id;
  
SELECT * 
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2);

SELECT aluno.nome,
	   curso.nome
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
SELECT aluno.nome as aluno,
	   curso.nome as curso
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
SELECT aluno.nome as aluno_nome,
	   curso.nome as curso_nome
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;


  -- Aula 04 atividade 7

  INSERT INTO aluno (nome) VALUES ('Nico');

SELECT * FROM aluno;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
INSERT INTO curso (id,nome) VALUES (3,'CSS');

SELECT * FROM curso;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
     FROM aluno
LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
LEFT JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
     FROM aluno
RIGHT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
RIGHT JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
     FROM aluno
FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
FULL JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
     FROM aluno
CROSS JOIN curso;

INSERT INTO aluno (nome) VALUES ('João');


/*

AULA 05

Nesta aula, aprendemos:

Como funciona as restrições de chave estrangeira
A diferença entre RESTRICT e CASCADE
Como aplicar tipos diferentes de restrições de chave estrangeira no DELETE
RESTRICT
CASCADE
A aplicar tipos diferentes de restrições de chave estrangeira no UPDATE
RESTRICT
CASCADE

*/

-- Aula 05 -- atividad 01

SELECT * FROM aluno;
SELECT * FROM aluno_curso;
SELECT * FROM curso;

DELETE FROM alunos WHERE id =1;

DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id,curso_id),
	
	FOREIGN KEY (aluno_id)
     REFERENCES aluno (id)
	 ON DELETE CASCADE,
	
	FOREIGN KEY (curso_id)
   REFERENCES curso (id)
);

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (1,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (2,1);

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (3,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (1,3);


SELECT * FROM aluno_curso;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

DELETE FROM aluno WHERE id =1;

SELECT * FROM aluno;


-- Aula 05 - atividade 3

UPDATE aluno
	SET id = 10
	WHERE id = 2
	
SELECT * FROM aluno;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

UPDATE aluno
	SET id = 20
	WHERE id = 4;
	
DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id,curso_id),
	
	FOREIGN KEY (aluno_id)
     REFERENCES aluno (id)
	 ON DELETE CASCADE
	 ON UPDATE CASCADE,
	
	FOREIGN KEY (curso_id)
   REFERENCES curso (id)
);

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (2,1);

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (3,1);

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
 SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

UPDATE aluno
	SET id = 10
	WHERE id = 2;
	
SELECT * FROM aluno_curso;



/*

AULA 06

Nesta aula, aprendemos:

Como ordenar uma consulta
Ordenar utilizando os nomes de campo
Ordenar com mais de um campo
Ordenar por posição do campo
Ordenar por ordem Crescente e Decrescente
Ordenar com campos de tabelas diferentes
Como limitar quantidade e paginar registros de consulta
LIMIT
OFFSET
Como funcionam as funções de agregação
COUNT
SUM
MAX
MIN
AVG
Como funciona a função de arredondamento ROUND
Como funciona o agrupamento de dados
A diferença entre DISTINCT e GROUP BY
Onde utilizar o DISTINCT
Onde utilizar o GROUP BY
Como utilizar o GROUP BY com os nomes de campo
Como utilizar o GROUP BY por posição
Como funcionam os filtros por funções de agrupamento, utilizando HAVING
A diferença entre WHERE e HAVING
Como utilizar o HAVING
*/

-- Aula 06 - atividade 01

DROP TABLE funcionarios;

CREATE TABLE funcionarios (
	id			SERIAL PRIMARY KEY,
	matricula	VARCHAR(10),
	nome		VARCHAR(255),
	sobrenome	VARCHAR(255)
);

INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M001','Diogo','Mascarenha');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M002','Vinicius','Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M003','Nico','Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M004','João','Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M005','Diogo','Mascarenha');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M006','Alberto','Martins');


SELECT * FROM funcionarios;

SELECT *
	FROM funcionarios
	ORDER BY nome;
	
SELECT *
	FROM funcionarios
	ORDER BY nome DESC;
	
SELECT *
	FROM funcionarios
	ORDER BY nome,matricula;
	
SELECT *
	FROM funcionarios
	ORDER BY nome,matricula DESC;
	
SELECT *
	FROM funcionarios
	ORDER BY 4;

SELECT *
	FROM funcionarios
	ORDER BY 3,4,2;
	
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M007','Diogo','Oliveira');

SELECT *
	FROM funcionarios
	ORDER BY 3,4,2;
	
SELECT *
	FROM funcionarios
	ORDER BY 4 DESC, nome DESC, 2 ASC;
	
SELECT *
	FROM funcionarios
	ORDER BY 4 DESC, funcionarios.nome DESC, 2 ASC;
	

SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY aluno.nome;
  
SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY aluno.nome DESC;
  
SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY aluno.nome DESC, curso.nome;
  
SELECT * FROM curso;
SELECT * FROM aluno;	
  
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (20,3);

SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY aluno.nome DESC, curso.nome;
  
 SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY curso.nome, aluno.nome DESC;
  
 SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY curso.nome, aluno.nome;



  -- Aula 06 - atividade 02


  SELECT * FROM funcionarios;

SELECT * FROM funcionarios LIMIT 5;

SELECT * 
	FROM funcionarios 
	ORDER BY nome
	LIMIT 5;
	
SELECT * 
	FROM funcionarios 
	ORDER BY id
	LIMIT 5
	OFFSET 3;



-- Aula 06 - atividade 04 


-- COUNT - Retorna a quantidade de registros
-- SUM   - Retorna a soma dos registros
-- MAX   - Retorna o maior valor dos registros
-- MIN   - Retorna o menor valor dos registros
-- AVG   - Retorna a média dos registros

SELECT * 
	FROM funcionarios;
	
SELECT COUNT(id) 
	FROM funcionarios;
	
SELECT COUNT(id),
	   SUM(id)
	FROM funcionarios;
	
SELECT COUNT(id),
	   SUM(id),
	   MAX(id)
	FROM funcionarios;

SELECT COUNT(id),
	   SUM(id),
	   MAX(id),
	   MIN(Id)
	FROM funcionarios;
	
SELECT COUNT(id),
	   SUM(id),
	   MAX(id),
	   MIN(Id),
	   ROUND(AVG(id),0)
	FROM funcionarios;

-- Atividade 04 

SELECT * 
	FROM funcionarios;
	
SELECT nome 
	FROM funcionarios;

SELECT nome
	FROM funcionarios
	ORDER BY nome;
	
SELECT DISTINCT 
	   nome
	FROM funcionarios
	ORDER BY nome;
	
SELECT DISTINCT 
	   nome,
	   sobrenome
	FROM funcionarios
	ORDER BY nome;
	
SELECT  
	   nome,
	   sobrenome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY nome, sobrenome
	ORDER BY nome;
	
SELECT  
	   nome,
	   sobrenome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY 1, 2
	ORDER BY nome;
	
SELECT * 
	FROM aluno
	JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
	JOIN curso ON curso.id = aluno_curso.curso_id;
	
SELECT curso.nome,
	   COUNT(aluno.id)
	FROM aluno
	JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
	JOIN curso ON curso.id = aluno_curso.curso_id
	GROUP BY 1
	ORDER BY 1;


-- Atividade 6

SELECT * FROM aluno;
SELECT * FROM aluno_curso;
SELECT * FROM curso;

SELECT * 
	FROM curso
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id;
	
SELECT curso.nome,
	   COUNT(aluno.id)
	FROM curso
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
	GROUP BY 1;

SELECT  curso.nome,
	   COUNT(aluno.id)
	FROM curso
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
	-- WHERE curso.nome =  'Javascript'
	GROUP BY 1
	HAVING COUNT(aluno.id) > 0;
	
SELECT nome	
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT (id) > 1;
	
SELECT nome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT(id) > 1;

SELECT nome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT(id) =1;