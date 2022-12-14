CREATE DATABASE ESCOLA;

USE ESCOLA;

CREATE TABLE ESTUDANTES( 
ID BIGINT AUTO_INCREMENT,
NOME CHAR (100),
DISCIPLINA CHAR (255),
SERIE INT,
IDADE INT,
NOTA FLOAT,
PRIMARY KEY (ID)
);

INSERT INTO ESTUDANTES (NOME, DISCIPLINA, SERIE, IDADE, NOTA) VALUES ("PAULA", "MATEMÁTICA", 5, 12, 8.6);
INSERT INTO ESTUDANTES (NOME, DISCIPLINA, SERIE, IDADE, NOTA) VALUES ("MARIA", "PORTUGUÊS", 6, 13, 9.2);
INSERT INTO ESTUDANTES (NOME, DISCIPLINA, SERIE, IDADE, NOTA) VALUES ("JOAO", "GEOGRAFIA", 7, 14, 5.9);
INSERT INTO ESTUDANTES (NOME, DISCIPLINA, SERIE, IDADE, NOTA) VALUES ("GABRIEL", "FÍSICA", 8, 15, 8.9);
INSERT INTO ESTUDANTES (NOME, DISCIPLINA, SERIE, IDADE, NOTA) VALUES ("PRISCILA", "ARTES", 1, 16, 5.6);
INSERT INTO ESTUDANTES (NOME, DISCIPLINA, SERIE, IDADE, NOTA) VALUES ("BRUNO", "QUÍMICA", 2, 17, 6.9);
INSERT INTO ESTUDANTES (NOME, DISCIPLINA, SERIE, IDADE, NOTA) VALUES ("CARLOS", "HISTÓRIA", 3, 18, 8.3);
INSERT INTO ESTUDANTES (NOME, DISCIPLINA, SERIE, IDADE, NOTA) VALUES ("CESAR", "INGLÊS", 6, 13, 7.2);

SELECT * FROM ESTUDANTES WHERE NOTA > 7.0;

SELECT * FROM ESTUDANTES WHERE NOTA < 7.0;	

SELECT * FROM ESTUDANTES;

UPDATE ESTUDANTES SET NOTA = 9.1 WHERE ID = 5;

SELECT * FROM ESTUDANTES WHERE ID = 5;
