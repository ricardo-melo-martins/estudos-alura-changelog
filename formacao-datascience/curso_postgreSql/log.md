# PostgreSql

Ref: https://cursos.alura.com.br/course/introducao-postgresql-primeiros-passos

## Instalando 

http://https//www.postgresql.org/
Porta: 5432
Default Locale: Português, Brazil

Desmarcar StackBuilder

Default
Server: localhost
Database: postgres
Port: 5432
Username: postgres
Password: **** <senha q criei>

Acessando PGAdmin

127.0.0.1:65195

Test
```
SELECT NOW()
```

## Criando banco de dados
```
CREATE DATABASE alura;

CREATE DATABASE teste;

DROP DATABASE teste;
```

## Criando tabelas

```
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
```


## Tipos comuns

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


INSERT INTO aluno (
    nome,
    cpf,
    observacao,
    idade,
    dinheiro,
    altura,
    ativo,
    data_nascimento,
    hora_aula,
    matriculado_em

) VALUES (
    'Ricardo',
    '12345678901',
    'Lorem ipsum',
    35,
    100.50,
    1.81,
    TRUE,
    '1984-08-27', -- YYYY-MM-DD
    '17:30:00',  -- HH24:MI:SS  
    '2020-02-08 12:35', -- YYYY-MM-DD HH24:MI:SS
)

SELECT * FROM aluno WHERE id = 1

UPDATE aluno SET 
    nome = 'Ricardo Melo'
WHERE id = 1    

DELETE FROM aluno WHERE id = 1