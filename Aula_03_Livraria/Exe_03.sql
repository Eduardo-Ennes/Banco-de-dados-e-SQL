/* EXERCICOS LIVRARIA */ 


/* EXERCICIO 01 CODIGO: */ 
LIVROS:

CREATE TABLE LIVROS(
LIVRO VARCHAR(30),
PAG VARCHAR(4),
AUTOR VARCHAR(30),
SEXO CHAR(1),
UF CHAR(2),
VALOR VARCHAR(6)
);

INSERT INTO LIVROS(LIVRO, PAG, AUTOR, SEXO, UF, VALOR) VALUES('Os Egípicos', 285, 'Isaak Asimov', 'M', 'RJ', 49.99);
INSERT INTO LIVROS(LIVRO, PAG, AUTOR, SEXO, UF, VALOR) VALUES('D.Leopoldina', 397, 'Paulo Rezzutti', 'M', 'SP', 50.00);
INSERT INTO LIVROS(LIVRO, PAG, AUTOR, SEXO, UF, VALOR) VALUES('O jogo', 486, 'Neil Strauss', 'M', 'RJ', 45.90);
INSERT INTO LIVROS(LIVRO, PAG, AUTOR, SEXO, UF, VALOR) VALUES('Mindset', 312, 'Carol S.Deck', 'F', 'Rs', 30.90);
INSERT INTO LIVROS(LIVRO, PAG, AUTOR, SEXO, UF, VALOR) VALUES('A Formula da Confiança', 150, 'Napoleon Hill', 'M', 'MG', 15.90);
INSERT INTO LIVROS(LIVRO, PAG, AUTOR, SEXO, UF, VALOR) VALUES('Liberte-se dos seus medos', 155, 'Napoleon Hill', 'M', 'MG', 18.90);
INSERT INTO LIVROS(LIVRO, PAG, AUTOR, SEXO, UF, VALOR) VALUES('O ego é seu inimigo', 212, 'Ryan Holiday', 'M', 'PR', 90.90);
INSERT INTO LIVROS(LIVRO, PAG, AUTOR, SEXO, UF, VALOR) VALUES('Vikings', 618, 'Neil Price', 'M', 'AM', 75.90);
INSERT INTO LIVROS(LIVRO, PAG, AUTOR, SEXO, UF, VALOR) VALUES('As 5 Linguagens do amor', 125, 'Gary Chaman', 'M', 'MT', 10.90);
INSERT INTO LIVROS(LIVRO, PAG, AUTOR, SEXO, UF, VALOR) VALUES('Atravessando', 235, 'John Grinder', 'F', 'MS', 22.90);

/* Trazer todos os dados */ 
SELECT * FROM LIVROS;

+---------------------+-------------------+------+---------+-------------+--------+------+------+
| LIVRO               | AUTOR             | SEXO | PAGINAS | EDITORA     | VALOR  | UF   | ANO  |
+---------------------+-------------------+------+---------+-------------+--------+------+------+
| O poder da mente    | Clara Mafra       | F    |     120 | Continental |  56.00 | SP   | 2017 |
| Copas Inesqueciveis | Marco Alcantara   | M    |     200 | Larson      | 130.00 | RS   | 2018 |
| Cavaleiro Real      | Ana Claudia       | F    |     465 | Atlas       |  49.90 | RJ   | 2009 |
| SQL para leigos     | João Nunes        | M    |     450 | Addison     |  98.00 | SP   | 2018 |
| Receitas Caseiras   | Celia Tavares     | F    |     210 | Atlas       |  45.00 | RJ   | 2008 |
| Pessoas Efetivas    | Eduardo Santos    | M    |     390 | Beta        |  78.00 | RJ   | 2018 |
| Habitos Saudáveis   | Eduardo Santos    | M    |     630 | Beta        | 150.00 | RJ   | 2019 |
| A Casa Marrom       | Hermes Macedo     | M    |     250 | Bubba       |  60.00 | MG   | 2016 |
| Estacio Querido     | Geraldo Francisco | M    |     310 | Insignia    | 100.00 | ES   | 2015 |
| Pra sempre amigas   | Leda Silva        | F    |     510 | Insignia    |  78.00 | ES   | 2011 |
+---------------------+-------------------+------+---------+-------------+--------+------+------+


/* Trazer o nome do livro e do autor */
SELECT LIVRO, AUTOR FROM LIVROS; 

+---------------------+-------------------+
| LIVRO               | AUTOR             |
+---------------------+-------------------+
| O poder da mente    | Clara Mafra       |
| Copas Inesqueciveis | Marco Alcantara   |
| Cavaleiro Real      | Ana Claudia       |
| SQL para leigos     | João Nunes        |
| Receitas Caseiras   | Celia Tavares     |
| Pessoas Efetivas    | Eduardo Santos    |
| Habitos Saudáveis   | Eduardo Santos    |
| A Casa Marrom       | Hermes Macedo     |
| Estacio Querido     | Geraldo Francisco |
| Pra sempre amigas   | Leda Silva        |
+---------------------+-------------------+


/* Trazer o nome do livro e a uf dos autores masculinos */
SELECT LIVRO, UF FROM LIVROS
WHERE SEXO = 'M';

+---------------------+------+
| LIVRO               | UF   |
+---------------------+------+
| Copas Inesqueciveis | RS   |
| SQL para leigos     | SP   |
| Pessoas Efetivas    | RJ   |
| Habitos Saudáveis   | RJ   |
| A Casa Marrom       | MG   |
| Estacio Querido     | ES   |
+---------------------+------+


/* Trazer o nome dos livros e o número de paginas do sexo feminino */ 
SELECT LIVRO, PAGINAS FROM LIVROS
WHERE SEXO = 'F';

+-------------------+---------+
| LIVRO             | PAGINAS |
+-------------------+---------+
| O poder da mente  |     120 |
| Cavaleiro Real    |     465 |
| Receitas Caseiras |     210 |
| Pra sempre amigas |     510 |
+-------------------+---------+


/* Trazer dados dos autores do masculinos que tiverem livros publicados nauf rj */ 
SELECT  LIVRO, AUTOR
FROM LIVROS
WHERE UF = 'RJ'
AND SEXO = 'M';

+--------------------+----------------+
| LIVRO              | AUTOR          |
+--------------------+----------------+
| Pessoas Efetivas   | Eduardo Santos |
| Habitos Saudáveis  | Eduardo Santos |
+--------------------+----------------+