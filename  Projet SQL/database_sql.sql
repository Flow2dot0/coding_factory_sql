/* STORY 1 */

/* Création de la base */

CREATE DATABASE database_sql CHARACTER SET 'utf8';

/* Création de la table utilisateur */

USE database_sql;
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


/* Création de la table service */

USE database_sql;
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

/* Création de la table service_utilisateur */

USE database_sql;
CREATE TABLE service_utilisateur (
    id_service INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_utilisateur VARCHAR(100) NOT NULL,
    date_heure_inscription DATETIME NOT NULL,
    PRIMARY KEY(id_service)
)
CHARACTER SET 'utf8'
ENGINE = INNODB

/* Création de la table message */

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


/* Story 16 */

INSERT INTO service_utilisateur (id_service, id_utilisateur, date_heure_inscription)
VALUES 	('5', '8', '2018-03-21 21:45:00')

SELECT 
S.nom_service, S.description_service, S.adresse_service, 
S.code_postale_service, S.ville_service, S.pays_service, 
S.date_heure_service, S.info_complementaire,
U.pseudo as pseudo_propose_service,
U2.pseudo as pseudo_inscrit,  U2.date_heure_inscription, U2.email,
U2.adresse, U2.code_postale, U2.ville, U2.pays, U2.numero_portable
FROM service as S
LEFT JOIN utilisateur as U 
    ON U.id = S.id_utilisateur
LEFT JOIN service_utilisateur as SU
    ON S.id_service = SU.id_service
LEFT JOIN utilisateur as U2
    ON U2.id = SU.id_utilisateur
WHERE SU.id_utilisateur = 8
ORDER BY U2.date_heure_inscription, U2.ville DESC;

/* Story 17 */

SELECT 
S.nom_service, S.description_service, S.adresse_service, 
S.code_postale_service, S.ville_service, S.pays_service, 
S.date_heure_service, S.info_complementaire,
U.pseudo as pseudo_propose_service,
U2.pseudo as pseudo_inscrit,  U2.date_heure_inscription, U2.email,
U2.adresse, U2.code_postale, U2.ville, U2.pays, U2.numero_portable
FROM service as S
LEFT JOIN utilisateur as U 
    ON U.id = S.id_utilisateur
LEFT JOIN service_utilisateur as SU
    ON S.id_service = SU.id_service
LEFT JOIN utilisateur as U2
    ON U2.id = SU.id_utilisateur
WHERE SU.id_utilisateur = 8 
AND MIN(S.id_service)


SELECT 
S.nom_service, S.description_service, S.adresse_service, 
S.code_postale_service, S.ville_service, S.pays_service, 
S.date_heure_service, S.info_complementaire,
U.pseudo as pseudo_propose_service,
U2.pseudo as pseudo_inscrit,  U2.date_heure_inscription, U2.email,
U2.adresse, U2.code_postale, U2.ville, U2.pays, U2.numero_portable
FROM service as S
LEFT JOIN utilisateur as U 
    ON U.id = S.id_utilisateur
LEFT JOIN service_utilisateur as SU
    ON S.id_service = SU.id_service
LEFT JOIN utilisateur as U2
    ON U2.id = SU.id_utilisateur
WHERE SU.id_utilisateur = 8
AND LIMIT 1;

/* STORY 18 */

CREATE TABLE bonus (
    Mois INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Pseudo_utilisateur VARCHAR(50) NOT NULL,
    Participation_total INT UNSIGNED NOT NULL,
    PRIMARY KEY (Mois),
    FOREIGN KEY (Mois) REFERENCES service_utilisateur(id.service)
)
CHARACTER SET 'utf8'
ENGINE = INNODB;

MOIS = ID
PSEUDO UTILISATEUR = PSEUDO
PARTICIPATIONS TOTAL = SUM ID UTILISATEUR DE LA TABLE SERVICE

SELECT
S.id_service as Mois,
U.pseudo as Pseudo_utilisateur,
SUM(S.id_utilisateur) as Participants_total









