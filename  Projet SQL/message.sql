/* Story 1 - Création de la table message */

USE database_sql;
CREATE TABLE message (
    id_message INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_exp INT UNSIGNED NOT NULL,
    id_recev INT UNSIGNED NOT NULL,
    contenu TEXT,
    date_heure_envoi DATETIME NOT NULL,
    PRIMARY KEY(id_message)
)
CHARACTER SET 'utf8'
ENGINE = INNODB

/* Ajout des clés étrangères */

ALTER TABLE message
ADD FOREIGN KEY (id_exp) REFERENCES utilisateur(id) ON DELETE CASCADE ON UPDATE CASCADE
ADD FOREIGN KEY (id_recev) REFERENCES utilisateur(id) ON DELETE CASCADE ON UPDATE CASCADE

/* Story 2 - Insertion des 30 messages envoyés */

INSERT INTO message (id_exp, id_recev, contenu, date_heure_envoi)
VALUES 
    (2, 24, 'Je suis en retard', '2018-10-01 14:56:34'),
    (3, 23, 'Je suis en retard', '2018-10-02 14:00:00'),
    (4, 22, 'Je suis en retard', '2018-10-03 14:00:00'),
    (5, 21, 'Je suis en retard', '2018-10-04 14:00:00'),
    (6, 20, 'Je suis en retard', '2018-10-05 14:00:00'),
    (7, 19, 'Je suis en retard', '2018-10-06 14:00:00'),
    (8, 18, 'Je suis en retard', '2018-10-07 14:00:00'),
    (9, 17, 'Je suis en retard', '2018-10-08 14:00:00'),
    (10, 16, 'Je suis en retard', '2018-10-09 14:00:00'),
    (11, 15, 'Je suis en retard', '2018-10-10 14:00:00'),

    (12, 24, 'Je suis en retard', '2018-10-11 14:00:00'),
    (13, 23, 'Je suis en retard', '2018-10-12 14:00:00'),
    (14, 22, 'Je suis en retard', '2018-10-13 14:00:00'),
    (15, 21, 'Je suis en retard', '2018-10-14 14:00:00'),
    (16, 20, 'Je suis en retard', '2018-10-15 14:00:00'),
    (17, 19, 'Je suis en retard', '2018-10-16 14:00:00'),
    (18, 18, 'Je suis en retard', '2018-10-17 14:00:00'),
    (19, 17, 'Je suis en retard', '2018-10-18 14:00:00'),
    (20, 16, 'Je suis en retard', '2018-10-19 14:00:00'),
    (21, 15, 'Je suis en retard', '2018-10-20 14:00:00'),

    (22, 14, 'Je suis en retard', '2018-10-21 14:00:00'),
    (23, 13, 'Je suis en retard', '2018-10-22 14:00:00'),
    (24, 12, 'Je suis en retard', '2018-10-23 14:00:00'),
    (25, 11, 'Je suis en retard', '2018-10-24 14:00:00'),
    (2, 10, 'Je suis en retard', '2018-10-25 14:00:00'),
    (3, 9, 'Je suis en retard', '2018-10-26 14:00:00'),
    (4, 8, 'Je suis en retard', '2018-10-27 14:00:00'),
    (5, 7, 'Je suis en retard', '2018-10-28 14:00:00'),
    (6, 1, 'Je suis en retard', '2018-10-29 14:00:00'),
    (7, 5, 'Je suis en retard', '2018-10-30 14:00:00')

/* Story 7 - créer la requête qui permettra d’envoyer un message */

INSERT INTO message (id_exp, id_recev, contenu, date_heure_envoi)
VALUES 
    (26, 24, 'Je suis en retard', '2018-10-30 16:56:34');

/* Story 8 - afficher les conversation d’un utilisateur */

INSERT INTO message (id_exp, id_recev, contenu, date_heure_envoi)
VALUES 
    (7, 5, 'Je serais là dans 4 min', '2018-11-01 16:00:34'),
    (7, 9, 'Je serais là dans 6 min', '2018-11-02 16:00:34');

SELECT contenu
FROM message
WHERE 
(id_exp = 7)
ORDER BY date_heure_envoi DESC;

/* Story 9 - afficher les messages d’une conversation */ 

INSERT INTO message (id_exp, id_recev, contenu, date_heure_envoi)
VALUES 
    (9, 3, 'Compris, dans combien de temps serais-tu là ?', '2018-10-30 17:56:34');

SELECT contenu
FROM message
WHERE 
(id_exp = 3 AND id_recev = 9)
OR
(id_exp = 9 AND id_recev = 3)
ORDER BY date_heure_envoi DESC;

/* Story 15 */

DELETE FROM MESSAGE
WHERE id = 27;