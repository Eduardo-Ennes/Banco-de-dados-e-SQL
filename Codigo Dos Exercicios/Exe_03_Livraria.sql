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

/* Trazer o nome do livro e do autor */
SELECT LIVRO, AUTOR FROM LIVROS; 

/* Trazer o nome do livro e a uf dos autores masculinos */
SELECT LIVRO, UF FROM LIVROS
WHERE SEXO = 'M';

/* Trazer o nome dos livros e o número de paginas do sexo feminino */ 
SELECT LIVRO, PAG FROM LIVROS
WHERE SEXO = 'F';

/* Trazer dados dos autores do masculinos que tiverem livros publicados nauf rj */ 
SELECT  LIVRO, AUTOR
FROM LIVROS
WHERE UF = 'RJ'
AND SEXO = 'M';