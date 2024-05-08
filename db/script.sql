CREATE DATABASE heroisback;

\c heroisback;

CREATE TABLE herois (
    id SERIAL PRIMARY KEY NOT NULL,
    nome VARCHAR(200) NOT NULL,
    poder VARCHAR(100) NOT NULL,
    nivel INTEGER NOT NULL,
    hp INTEGER NOT NULL
);


CREATE TABLE batalhas (
    id SERIAL PRIMARY KEY NOT NULL,
    heroi1_id INTEGER NOT NULL,
    heroi2_id INTEGER NOT NULL,
    vencedor_id INTEGER NOT NULL,
    FOREIGN KEY (heroi1_id) REFERENCES herois(id),
    FOREIGN KEY (heroi2_id) REFERENCES herois(id),
    FOREIGN KEY (vencedor_id) REFERENCES herois(id)
);


INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Capitã Marvel', 'Manipular Energia', 23, 95);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Feiticeira Escarlate', 'Feiticeira', 22, 98);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Thor', 'Deus do Trovão', 21, 110);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Jean Grey', 'Telecinese', 20, 97);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Professor Xavier', 'Telepatia', 19, 85);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Thanos', 'Manipular a Realidade', 19, 100);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Doutor Estranho', 'Mago', 18, 88);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Superman', 'Super-Força', 17, 105);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Wolverine', 'garras retráteis', 17, 92);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Supergirl', 'Super-Força', 16, 105);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Darkseid', 'imortalidade', 16, 103);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Homem de Ferro ', 'Armadura Avançada', 16, 75);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Homem-Aranha', 'Teia de Aranha', 16, 85);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Lanterna Verde', 'Anéis de Poder', 15, 98);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Shazam', 'Poderes Mitologicos', 14, 95);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Mulher-Maravilha', 'Resistencia', 13, 60);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Hulk', 'Super-Força', 12, 70);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Doutor Destino', 'Feiticeiro', 10, 80);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Flash', 'Velocidade', 9, 45);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Batman', 'Inteligencia', 8, 40);
INSERT INTO herois (nome, poder, nivel, hp) VALUES ('Metrópolis', 'Controlar Planta', 7, 50);