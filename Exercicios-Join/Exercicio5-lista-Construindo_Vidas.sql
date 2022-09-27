CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categoria (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    setor VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produto (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    fk_categoria BIGINT DEFAULT NULL,
    
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_categoria;
INSERT INTO tb_categoria (setor, tipo)
VALUES 
("Hidráulica", "Material"),
("Hidráulica", "Ferramenta"),
("Elétrica", "Material"),
("Elétrica", "Ferramenta");

SELECT * FROM tb_produto;
INSERT INTO tb_produto (nome, valor, fk_categoria)
VALUES 
("Joelho 90° para esgoto", 9.90, 1),
("Tê para esgoto", 11.90, 1),
("Alicate Bomba D'agua", 139.99, 2),
("Instalador Hidráulico Pia", 169.90, 2),
("Rabicho c/ Interruptor", 23.90, 3),
("Cabo de aço revestido", 13.90, 3),
("Decapador Crimpador", 69.99, 4),
("Identificador de Cabos", 199.90, 4);

SELECT * FROM tb_produto WHERE valor > 100.00;

SELECT * FROM tb_produto WHERE valor BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produto WHERE nome LIKE '%C%';

SELECT * FROM tb_produto WHERE nome LIKE 'C%';

SELECT tb_produto.nome, tb_produto.valor, tb_categoria.setor
FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.fk_categoria
WHERE tb_categoria.setor LIKE 'Hidráulica';