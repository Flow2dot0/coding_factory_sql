/* Story 1 - Creation de la table utilisateur */

USE DATABASE sql;

CREATE TABLE utilisateur (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	email VARCHAR(100) NOT NULL UNIQUE,
	mdp VARCHAR(191) NOT NULL,
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

/* Story 2 - Création de 25 utilisateurs */

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


/* Story 3 - Ajout d'un utilisateur sans  préciser tous les champs */

INSERT INTO utilisateur(email, mdp, pseudo, date_inscription)
VALUES 
	('fausseadresse25@yahoo.com', '123456', 'fake25', '2018-10-22')

/* Story 4 - Mise à jour du profil Story 3 avec toutes les informations de la Story 1 */

UPDATE utilisateur
SET adresse = "25 rue du lac", code_postale = "75000", ville = "Paris", pays = "France", numero_portable = "0600000025", numero_fixe = "0101010101"
WHERE id = 26;

/* Story 14 */

DELETE FROM utilisateur
WHERE id = 5;
