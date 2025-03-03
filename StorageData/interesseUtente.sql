CREATE TABLE nearyou.interesseUtente(
       utente UInt32,
       interesse String,
       PRIMARY KEY(utente, interesse)
) ENGINE = MergeTree()
ORDER BY (utente, interesse);



INSERT INTO nearyou.interesseUtente (utente, interesse) VALUES
(1, 'Sport'), (1, 'Natura'),
(2, 'Ristorazione'), (2, 'Cultura'),
(3, 'Musica'), (3, 'Viaggi'),
(4, 'Tecnologia'), (4, 'Cinema'),
(5, 'Moda'), (5, 'Arte'),
(6, 'Fitness'), (6, 'Sport'),
(7, 'Natura'), (7, 'Fotografia'),
(8, 'Teatro'), (8, 'Cultura'),
(9, 'Educazione'), (9, 'Musica'),
(10, 'Giochi'), (10, 'Cinema');