CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    setor VARCHAR(255) NOT NULL,
    linguagens VARCHAR(255) NOT NULL
);

CREATE TABLE tb_curso (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    curso VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    duracao VARCHAR(255),
    periodo VARCHAR(255),
    fk_categoria BIGINT DEFAULT NULL,
    
    
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id)
);

-- DML
SELECT * FROM tb_categoria;
INSERT INTO tb_categoria (setor, linguagens)
VALUES 
("Back-end", "Java"),
("Front-end", "Java"),
("Full-Stack", "Java"),
("Back-end", "Python"),
("Front-end", "React"),
("Full-Stack", "Python");

SELECT * FROM tb_curso;
INSERT INTO tb_curso (curso, valor, duracao, periodo, fk_categoria)
VALUES 
("Java Servlet", 1020.00, "100h", "manha", 1),
("Java e MongoDB", 1440.00, "120h", "tarde", 3),
("Java EE", 920.00, "100h", "noite",2),
("React Native - Mobile", 1500.00, "240h", "manha", 5),
("Python para Data Science", 1440.00, "180h", "tarde",6),
("Python Collections", 1020.00, "60h", "noite",4);

SELECT * FROM tb_curso WHERE valor > 500.00;

SELECT * FROM tb_curso WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_curso WHERE curso LIKE '%J%';

SELECT * FROM tb_curso WHERE curso LIKE 'J%';

SELECT tb_curso.curso, tb_curso.valor, tb_categoria.linguagens, tb_categoria.setor, tb_curso.duracao, tb_curso.periodo
FROM tb_curso
INNER JOIN tb_categoria ON tb_categoria.id = tb_curso.fk_categoria
WHERE tb_categoria.linguagens LIKE 'Java';