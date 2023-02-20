# PostgreSql

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


