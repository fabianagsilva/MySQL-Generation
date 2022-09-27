CREATE DATABASE db_cidade_das_feiras;
USE db_cidade_das_feiras;

CREATE TABLE tb_categoria (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produto (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    kg DECIMAL(10,3) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    fk_categoria BIGINT DEFAULT NULL,
    
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_categoria;
INSERT INTO tb_categoria (categoria, tipo)
VALUES 
("Orgânico", "Legume"),
("Orgânico", "Fruta"),
("Orgânico", "Vegetal"),
("Tradicional", "Legume"),
("Tradicional", "Fruta"),
("Tradicional", "Vegetal");

SELECT * FROM tb_produto;
INSERT INTO tb_produto (nome, kg, valor, fk_categoria)
VALUES 
("Maçã", 0.500, 12.90, 2),
("Banana", 0.600, 8.90, 5),
("Manga", 1.000, 12.40, 2),
("Cenoura", 0.500, 6.90, 1),
("Berinjela", 0.400, 8.00, 1),
("Abóbora", 0.500, 6.90, 4),
("Alface", 0.100, 2.90, 6),
("Couve", 0.100, 2.90, 6),
("Espinafre", 0.100, 6.90, 3);

SELECT * FROM tb_produto WHERE valor < 50.00;

SELECT * FROM tb_produto WHERE valor BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produto WHERE nome LIKE '%C%';

SELECT tb_produto.nome, tb_produto.kg, tb_produto.valor, tb_produto.fk_categoria, tb_categoria.categoria, tb_categoria.tipo
FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.fk_categoria
WHERE tb_categoria.tipo LIKE '%Legume%';