CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
   tipo_produto VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produto (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    indicação VARCHAR(255) NOT NULL,
    quantidade BIGINT NOT NULL,
    valor FLOAT NOT NULL,
    fk_categoria BIGINT DEFAULT NULL,
    
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(tipo_produto)
VALUES ("Medicamento"), ("Higiene"), ("Cosméticos"), ("Cabelo"), ("Vida saudável");

SELECT * FROM tb_produto;

INSERT INTO tb_produto(nome, indicação, quantidade, valor, fk_categoria)
VALUES 
("Novalgina 1G", "Dor e Febre", 2, 17.79, 1), 
("Buscopan Composto", "Cólica", 5, 13.89, 1), 
("Loção Hidratante Corporal", "Peles secas e extrassecas", 6, 87.20, 3), 
("Máscara de Cílios", "Alongamento de cílios", 3, 54.99, 3),
("Sabonete em Barra", '', 8, 2.89, 2),
("Desodorante", "48h de proteção", 10, 14.29, 2), 
("Condicionador", "Hidratação", 5, 20.14, 4),
("Shampoo", "Limpeza", 5, 17.09, 4),
("Suplemento Vitamínico", "Fortalecer imunidade e energia", 5, 19.79, 5),
("Vitamina C Bio-C + Zinco", "Funcionamento do sistema imunológico", 8, 23.49, 5);

SELECT * FROM tb_produto WHERE valor > 50.00;

SELECT * FROM tb_produto WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE '%C%';

SELECT tb_produto.nome, tb_produto.indicação, tb_produto.quantidade, tb_produto.valor, tb_categoria.tipo_produto
FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.fk_categoria
WHERE tb_categoria.tipo_produto LIKE 'Cosméticos';
