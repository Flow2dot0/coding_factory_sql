/*story 1*/
CREATE DATABASE database_sql CHARACTER SET 'utf8';



USE DATABASE database_sql;


CREATE TABLE utilisateur (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	email VARCHAR(100) NOT NULL UNIQUE,
	mdp VARCHAR(20) NOT NULL,
	pseudo VARCHAR(20) NOT NULL UNIQUE,
	adresse VARCHAR (100) NULL,
	code_postale VARCHAR (20) NULL,
	ville VARCHAR (50) NULL,
	pays VARCHAR (50) NULL,
	numero_portable VARCHAR (20) NULL,
	numero_fixe VARCHAR (20) NULL,
	date_inscription DATE NULL,
	PRIMARY KEY (id)
)
CHARACTER SET 'utf8'
ENGINE = INNODB;
-----------------------------------------------------
CREATE TABLE service (
id_service INT UNSIGNED NOT NULL AUTO_INCREMENT,
id_utilisateur INT UNSIGNED NOT NULL,
nom_service VARCHAR(50) NOT NULL,
description_service TEXT NOT NULL,
adresse_service VARCHAR(50) NOT NULL,
code_postale_service VARCHAR(10) NOT NULL,
ville_service VARCHAR(30) NOT NULL,
pays_service VARCHAR(40) NOT NULL,
date_heure_service DATETIME NOT NULL,
info_complementaire TEXT NOT NULL,
PRIMARY KEY (id_service)
)
CHARACTER SET 'utf8'
ENGINE = INNODB;
---------------------------------------------------

USE database_sql;
CREATE TABLE service_utilisateur (
    id_service INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_utilisateur VARCHAR(100) NOT NULL,
    date_heure_inscription DATETIME NOT NULL,
    PRIMARY KEY(id_service)
)
CHARACTER SET 'utf8'
ENGINE = INNODB
------------------------------------------------------
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
----------------------------------------------------

/*story 2*/

INSERT INTO utilisateur(email, mdp, pseudo, adresse, code_postale, ville, pays, numero_portable, numero_fixe, date_inscription)
VALUES 
	('bengrandin@hotmail.com', '123456', 'ben', '157 bouvelvard malesherbes', '75017', 'Paris', 'France', '0619621161', NULL, '2018-10-22'),
	('fausseadresse1@yahoo.com', '123456', 'fake', '1rue du lac', '75000', 'Paris', 'France', '0600000001', NULL, '2018-10-22'),
	('fausseadresse2@yahoo.com', '123456', 'fake2', '2 rue du lac', '75000', 'Paris', 'France', '0600000002', NULL, '2018-10-22'),
	('fausseadresse3@yahoo.com', '123456', 'fake3', '3 rue du lac', '75000', 'Paris', 'France', '0600000003', NULL, '2018-10-22'),
	('fausseadresse4@yahoo.com', '123456', 'fake4', '4 rue du lac', '75000', 'Paris', 'France', '0600000004', NULL, '2018-10-22'),
	('fausseadresse5@yahoo.com', '123456', 'fake5', '5 rue du lac', '75000', 'Paris', 'France', '0600000005', NULL, '2018-10-22'),
	('fausseadresse6@yahoo.com', '123456', 'fake6', '6 rue du lac', '75000', 'Paris', 'France', '0600000006', NULL, '2018-10-22'),
	('fausseadresse7@yahoo.com', '123456', 'fake7', '7 rue du lac', '75000', 'Paris', 'France', '0600000007', NULL, '2018-10-22'),
	('fausseadresse8@yahoo.com', '123456', 'fake8', '8 rue du lac', '75000', 'Paris', 'France', '0600000008', NULL, '2018-10-22'),
	('fausseadresse9@yahoo.com', '123456', 'fake9', '9 rue du lac', '75000', 'Paris', 'France', '0600000009', NULL, '2018-10-22'),
	('fausseadresse10@yahoo.com', '123456', 'fake10', '10 rue du lac', '75000', 'Paris', 'France', '060000010', NULL, '2018-10-22'),
	('fausseadresse11@yahoo.com', '123456', 'fake11', '11 rue du lac', '75000', 'Paris', 'France', '0600000011', NULL, '2018-10-22'),
	('fausseadresse12@yahoo.com', '123456', 'fake12', '12 rue du lac', '75000', 'Paris', 'France', '0600000012', NULL, '2018-10-22'),
	('fausseadresse13@yahoo.com', '123456', 'fake13', '13 rue du lac', '75000', 'Paris', 'France', '0600000013', NULL, '2018-10-22'),
	('fausseadresse14@yahoo.com', '123456', 'fake14', '15 rue du lac', '75000', 'Paris', 'France', '0600000014', NULL, '2018-10-22'),
	('fausseadresse15@yahoo.com', '123456', 'fake15', '16 rue du lac', '75000', 'Paris', 'France', '0600000015', NULL, '2018-10-22'),
	('fausseadresse16@yahoo.com', '123456', 'fake16', '17 rue du lac', '75000', 'Paris', 'France', '0600000016', NULL, '2018-10-22'),
	('fausseadresse17@yahoo.com', '123456', 'fake17', '18 rue du lac', '75000', 'Paris', 'France', '0600000017', NULL, '2018-10-22'),
	('fausseadresse18@yahoo.com', '123456', 'fake18', '19 rue du lac', '75000', 'Paris', 'France', '0600000018', NULL, '2018-10-22'),
	('fausseadresse19@yahoo.com', '123456', 'fake19', '20 rue du lac', '75000', 'Paris', 'France', '0600000019', NULL, '2018-10-22'),
	('fausseadresse20@yahoo.com', '123456', 'fake20', '21 rue du lac', '75000', 'Paris', 'France', '0600000020', NULL, '2018-10-22'),
	('fausseadresse21@yahoo.com', '123456', 'fake21', '21 rue du lac', '75000', 'Paris', 'France', '0600000021', NULL, '2018-10-22'),
	('fausseadresse22@yahoo.com', '123456', 'fake22', '22 rue du lac', '75000', 'Paris', 'France', '0600000022', NULL, '2018-10-22'),
	('fausseadresse23@yahoo.com', '123456', 'fake23', '23 rue du lac', '75000', 'Paris', 'France', '0600000023', NULL, '2018-10-22'),
	('fausseadresse24@yahoo.com', '123456', 'fake24', '24 rue du lac', '75000', 'Paris', 'France', '0600000024', NULL, '2018-10-22');
	-------------------------------------------------	-------------------------------------------------	-------------------------------------------------

INSERT INTO service (id_utilisateur, nom_service, description_service, adresse_service, code_postale_service, ville_service, pays_service, date_heure_service, info_complementaire)
VALUES
    (1, 'boulangerie', 'faire du pain', 'boulevard du pain', '69069', 'Breadland', 'France', '2012-11-1 00:00:00', 'jaime le pain'),
    (2, 'poissonerie', 'vendre du poisson', 'avenue du thon', '78000', 'Fishcity','France', '2018-10-25 12:23:45', 'jaime le poisson'),
    (3, 'patisserie', 'faire des gateaux', 'chemin du paris brest', '54789', 'cookieplace','France', '2017-09-01 22:22:22', ' jaime les gateaux'),
    (4, 'chocolaterie', 'faire du chocolat', 'rue du cacao', '34678', 'Chcolatetown','france', '2016-08-02 21:21:21', 'jaime le chocolat'),
    (5, 'boucherie', 'vendre de la viande', 'impasse du porc', '12574', 'Pigland','france', '2015-09-03 20:20:20', 'jaime le cochon'),
    (6, 'fromagerie', 'vendre du fromage', 'square du brie', '32654', 'Cheesecity', 'france', '2014-08-02 19:19:19', 'jaime le fromage'),
    (7, 'fleuriste', ' vendre des fleurs', 'boulevard de la tulipe', '12896', 'flowerplace', 'france', ' 2013-12-12 18:18:18', 'jaime les fleurs'),
    (8, 'superette', ' vendre de tout', 'rue de la nuit', '89609', 'Markettown', 'france', '2012-04-04 17:17:17', 'jaime le tout'),
    (9, 'vignoble', ' faire du vin', 'chemin de la beuverie', ' 34670', 'wineland', 'france', '2011-05-05 16:16:16', 'jaime le vin'),
    (10, 'saverie', ' service sac', 'boulevard du sav', ' 23456', 'savcity', 'france', '2010-04-04 15:15:15', 'jaime le sav'),
    (11, 'natationerie', ' savoir nager', 'avenue de la nage', ' 21345', 'nageplace', 'france', '2009-12-12 12:12:12',' jaime nager'),
    (12, 'courserie', ' savoir courir', 'chemin de la course', ' 21213', 'coursetown', 'france', '2008-12-12 11:11:11', ' jaime courir'),
    (13, 'volerie', ' savoir voler', 'rue du vole', ' 34567', 'flyland', 'france', '2007-12-12 10:10:10', 'jaime voler'),
    (14, 'marcherie', ' savoir marher', 'impasse de la marche', '65478', 'waycity', 'france', '2006-12-12 10:10:10', 'jaime marcher'),
    (15, 'animalerie', ' vendre des animaux', 'square du zanimal', ' 34098', ' petland', 'france', '2005-11-11 09:09:09', 'jaime les animaux'),
    (16, 'herboristerie', 'utiliser la fleur', 'boulevard de la plante', '12345', 'plantplace', 'france', '2098-12-30 08:08:08', 'jaime les plantes'),
    (17, 'porsherie', 'garage de porshe', 'avenue de la porshe', '45634', 'porshetown', 'france', ' 2345-08-23 07:07:07', 'jaime les porshe'),
    (18,'proferie', 'former un prof', 'chemin du prof', '34765', 'teacherland', 'france', '2123-04-01 06:06:06', 'jaime les profs'),
    (19, 'boulerie', 'enseigner la petanque', 'impasse de la boule', '09678', 'ballcity','france', '2098-05-12 05:05:05', 'jaime les boules'),
    (20, 'tintinrie', 'expert en tintin', 'square de tournesol', '45123', 'milouplace', 'france', '1991-08-03 03:31:21', 'jaime tintin');
-------------------------------------------------	-------------------------------------------------	-------------------------------------------------

INSERT INTO service_utilisateur (id_service, id_utilisateur, date_heure_inscription)
VALUES 	('1', '12', '2018-01-21 21:45:00'),
 		('3', '14', '2018-09-2 20:45:00'),
 		('2', '21', '2018-05-17 22:45:00'),
 		('4', '20', '2018-10-7 12:45:00'),
 		('5', '3', '2018-08-18 13:45:00'),
 		('6', '11', '2018-07-13 00:45:00'),
 		('7', '9', '2018-11-2 16:45:00'),
 		('8', '8', '2018-4-12 21:45:00'),
 		('9', '5', '2018-12-2 20:45:00'),
		('10', '19', '2018-3-3 18:45:00')
-------------------------------------------------	-------------------------------------------------	-------------------------------------------------

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


/*story 3*/

INSERT INTO utilisateur(email, mdp, pseudo, date_inscription)
VALUES 
	('fausseadresse25@yahoo.com', '123456', 'fake25', '2018-10-22')

/*story 4*/

UPDATE utilisateur
SET adresse = "25 rue du lac", code_postale = "75000", ville = "Paris", pays = "France", numero_portable = "0600000025", numero_fixe = "0101010101"
WHERE id = 26;

/*story 5*/

INSERT INTO service (id_utilisateur, nom_service, description_service, adresse_service, code_postale_service, ville_service, pays_service, date_heure_service, info_complementaire)
VALUES (8, 'bergerie', 'savoir gérer la brebis', 'boulevard du berger perdu', '64340', 'shepherdland', 'france', '1991-08-21 21:11:14', 'jaime les berger');

/*story 6*/

INSERT INTO service_utilisateur (id_utilisateur, date_heure_inscription)
VALUES (13, '2018-10-7 12:45:00');

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

/*story 10*/

INSERT INTO service (id_utilisateur, nom_service, description_service, adresse_service, code_postale_service, ville_service, pays_service, date_heure_service, info_complementaire)
VALUES
(1, 'boulangerie', 'faire du pain', 'avenue de la fougasse', '69069', 'Breadland', 'France', '2025-10-02 10:02:43', 'nouvelle super boulangerie'),
(3, 'boulangerie', 'faire du pain', 'rue du croissant', '69069', 'Breadland', 'France', '2025-10-02 10:02:43', 'nouvelle super boulangerie'),
(5, 'boulangerie', 'faire du pain', 'impasse de la chocolatine', '69069', 'Breadland', 'France', '2025-10-02 10:02:43', 'nouvelle super boulangerie')


SELECT service.*
FROM service
WHERE service.id_service NOT IN (SELECT id_service FROM service_utilisateur)
AND service.date_heure_service > NOW()
AND service.nom_service LIKE '%boulangerie%'
ORDER BY ASC; 

/*story 11*/

SELECT S.nom_service, S.description_service, S.adresse_service, 
        S.code_postale_service, S.ville_service, S.pays_service, 
        S.date_heure_service, S.info_complementaire, U.pseudo as pseudo_propose_service, 
        U.numero_portable as numero_portable_propose_service, U2.pseudo as pseudo_inscrit, U2.numero_portable as numero_portable_inscrit
FROM service as S
INNER JOIN utilisateur as U 
    ON U.id = S.id_utilisateur
LEFT JOIN service_utilisateur as SU
    ON S.id_service = SU.id_service
LEFT JOIN utilisateur as U2
    ON U2.id = SU.id_utilisateur
WHERE S.id_service = 8

/*story 12*/

DELETE FROM service
WHERE id= 10;

/*story 13*/

DELETE FROM service_utilisateur
WHERE id = 7

/*story 14*/

DELETE FROM utilisateur
WHERE id = 5;

/*story 15*/

DELETE FROM MESSAGE
WHERE id = 27;

/*story 16*/

SELECT S.*,
	(SELECT COUNT(SU.id)
	FROM service_utilisateur AS SU
	INNER JOIN utilisateur
	ON SU.id_utilisateur = utilisateur.id 
	WHERE users.id=10)

AS TOTAL
FROM service_utilisateur AS SU
INNER JOIN utilisateur
ON utilisateur.id = SU.id_utilisateur
LEFT JOIN service AS S
ON S.id_utilisateur = utilisateur.id
WHERE utilisateur_id = 10
Order by S.date_hour, S.ville ASC;

/*story 17*/

SELECT 
S.nom_service, S.description_service, S.adresse_service, 
S.code_postale_service, S.ville_service, S.pays_service, 
S.date_heure_service, S.info_complementaire,
U.pseudo as pseudo_propose_service,
U2.pseudo as pseudo_inscrit,  SU.date_heure_inscription, U2.email,
U2.adresse, U2.code_postale, U2.ville, U2.pays, U2.numero_portable
FROM service as S
LEFT JOIN utilisateur as U 
    ON U.id = S.id_utilisateur
LEFT JOIN service_utilisateur as SU
    ON S.id_service = SU.id_service
LEFT JOIN utilisateur as U2
    ON U2.id = SU.id_utilisateur
WHERE SU.id_utilisateur = 10
LIMIT 1;

/*secretstory (18)*/
