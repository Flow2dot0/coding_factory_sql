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





