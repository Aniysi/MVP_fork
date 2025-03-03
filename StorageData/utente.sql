CREATE TABLE nearyou.utente(
       id UInt32,
       nome String,
       cognome String,
       email String,
       genere String,
       data_nascita Date DEFAULT toDate(now()),
       stato_civile String,
       PRIMARY KEY(id)
) ENGINE = MergeTree()
ORDER BY id;



INSERT INTO nearyou.utente (id, nome, cognome, email, genere, data_nascita, stato_civile) VALUES
(1, 'Mario', 'Rossi', 'mario.rossi@example.com', 'M', '1985-05-15', 'Single'),
(2, 'Luca', 'Bianchi', 'luca.bianchi@example.com', 'M', '1990-07-20', 'Married'),
(3, 'Giulia', 'Verdi', 'giulia.verdi@example.com', 'F', '1993-11-25', 'Single'),
(4, 'Alessandro', 'Ferrari', 'alessandro.ferrari@example.com', 'M', '1988-02-10', 'Single'),
(5, 'Francesca', 'Ricci', 'francesca.ricci@example.com', 'F', '1995-06-30', 'Single'),
(6, 'Matteo', 'Moretti', 'matteo.moretti@example.com', 'M', '1982-09-05', 'Married'),
(7, 'Elena', 'Romano', 'elena.romano@example.com', 'F', '1996-12-18', 'Single'),
(8, 'Davide', 'Conti', 'davide.conti@example.com', 'M', '1983-04-22', 'Married'),
(9, 'Sara', 'Gallo', 'sara.gallo@example.com', 'F', '1991-08-09', 'Married'),
(10, 'Andrea', 'Costa', 'andrea.costa@example.com', 'M', '1987-03-14', 'Single');
