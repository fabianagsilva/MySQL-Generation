CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
	CREATE TABLE tb_classe (
		id BIGINT AUTO_INCREMENT PRIMARY KEY,
        funcao VARCHAR(255) NOT NULL,
        defesa BIGINT NOT NULL,
        ataque BIGINT NOT NULL
    );

USE db_generation_game_online;
	CREATE TABLE tb_personagem (
		id BIGINT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(255) NOT NULL,
        habilidade VARCHAR(255) NOT NULL,
        dificuldade VARCHAR(255) NOT NULL,
        arma VARCHAR(255) NOT NULL,
        classe_id BIGINT DEFAULT NULL,
        
        FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
    );
    
INSERT INTO tb_classe (funcao, defesa, ataque) 
VALUES
("Atirador", 1200, 2300),
("Arqueiro", 500, 1000),
("Mago", 1500, 2000),
("Lutador", 2300, 2500),
("Suporte", 2000, 700);

INSERT INTO tb_personagem (nome, habilidade, dificuldade, arma, classe_id) 
VALUES
("JINX", "ZAP!", "Moderado", "Pistola de choque", 1),
("ASHE", "TIRO CONGELADO", "Moderado", "Arco e flechas", 2),
("AHRI", "FURTO DE ESSÊNCIA", "Moderado", "Magia", 3),
("DIANA", "GOLPE CRESCENTE", "Moderado", "Espada", 4),
("NAMI", "BÊNÇÃO DA CONJURADORA", "Moderado", "Magia", 5),
("MISS FORTUNE", "CHUVA DE DISPAROS", "Baixa", "Arma de Fogo", 1),
("LUX", "CENTELHA FINAL", "Moderado", "Magia", 3);

SELECT * FROM tb_personagem;

SELECT tb_personagem.nome,  tb_personagem.habilidade, tb_personagem.dificuldade, tb_personagem.arma, tb_classe.ataque, tb_classe.funcao
FROM tb_personagem
INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id
WHERE tb_classe.ataque >= 2000;

SELECT tb_personagem.nome,  tb_personagem.habilidade, tb_personagem.dificuldade, tb_personagem.arma, tb_classe.defesa, tb_classe.funcao
FROM tb_personagem
INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id
WHERE tb_classe.defesa >= 1000 
AND tb_classe.defesa <= 2000;

INSERT INTO tb_personagem (nome, habilidade, dificuldade, arma, classe_id) 
VALUES ("CAITLYN", "BEM NA MIRA!", "Moderado", "Rifle", 1);

SELECT tb_personagem.nome, tb_personagem.habilidade, tb_personagem.arma
FROM tb_personagem 
WHERE tb_personagem.nome LIKE "%C%";

SELECT tb_personagem.nome, tb_personagem.habilidade, tb_personagem.arma, tb_personagem.classe_id, tb_classe.funcao
FROM tb_personagem 
INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id
WHERE tb_classe.funcao LIKE "Atirador";
