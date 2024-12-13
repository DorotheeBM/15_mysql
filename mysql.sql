--ETAPE 1-- CREER LE TABLEAU

-- DROP TABLE edusign;-- pour effacer la table

--Création de la table edusign de base-- 
--CREATE TABLE edusign (
-- id INTEGER PRIMARY KEY AUTOINCREMENT,
-- firstname TEXT NULL,
-- lastname TEXT NULL,
-- email TEXT NULL,
-- signature_date DATETIME NOT NULL
-- );

--Insertion de donnée--
-- INSERT INTO edusign (firstname, lastname, email, signature_date)
-- SELECT 'Simone', 'de Beauvoir', 'simone@email.com', '1949-12-12'  
-- UNION SELECT 'Virginia', 'Woolf', 'virginia@email.com', '1929-12-12'
-- UNION SELECT 'Hélène', 'Cixous', 'helene@email.com', '1975-12-12'  
-- UNION SELECT 'Sylvia', 'Plath', 'silvia@email.com', '1963-12-12'  
-- UNION SELECT 'Mona', 'Chollet', 'mona@email.com', '2018-12-12' 
-- UNION SELECT 'Simone', 'de Beauvoir', 'simone@email.com', '1967-12-12'  
-- UNION SELECT 'Simone', 'de Beauvoir', 'simone@email.com', '1970-12-12' ;


--ETAPE 2-- Structurons la base de données

--Création de la table users--
-- CREATE TABLE users (
-- 	user_id INTEGER PRIMARY KEY AUTOINCREMENT,
--  firstname TEXT NULL,
-- 	lastname TEXT NULL,
-- 	email TEXT NULL
-- );

--donnée intégrée pour tester--
-- INSERT INTO users (firstname, lastname, email)
-- SELECT 'Simone', 'de Beauvoir', 'simone@email.com' 
-- UNION SELECT 'Virginia', 'Woolf', 'virginia@email.com'  
-- UNION SELECT 'Hélène', 'Cixous', 'helene@email.com'
-- UNION SELECT 'Sylvia', 'Plath', 'silvia@email.com'
-- UNION SELECT 'Mona', 'Chollet', 'mona@email.com' 
-- UNION SELECT 'Simone', 'de Beauvoir', 'simone@email.com'
-- UNION SELECT 'Simone', 'de Beauvoir', 'simone@email.com' ;

--DROP TABLE edusign;

-- CREATE TABLE edusign (
-- id_edusign INTEGER PRIMARY KEY AUTOINCREMENT,
-- users_id INTEGER NULL,
-- signature_date DATETIME NULL,
-- FOREIGN KEY (users_id) REFERENCES users(user_id)
-- );

--INSERT INTO users (firstname, lastname, email) VALUES ('Ada', 'Lovelace', 'ada@test.fr');
--INSERT INTO users (firstname, lastname, email) VALUES ('Beatrice', 'Worsley', 'bea@test.fr');
--INSERT INTO users (firstname, lastname, email) VALUES ('Bella', 'Guerin', 'bella@test.fr');
--INSERT INTO users (firstname, lastname, email) VALUES ('Barbara', 'Chase', 'barbara@test.fr');

--ETAPE 3 -- Requêtons


--NIVEAU FAIBLE--
--Sélectionner toutes les lignes de la table users
--SELECT * FROM users

--Sélectionner uniquement la ligne où le prénom est Ada dans la table users
-- SELECT * FROM users
-- WHERE firstname = 'Ada';

--Sélectionner les lignes dont la première lettre du prénom est un B dans la table users
-- SELECT * FROM users 
-- WHERE firstname LIKE 'B%';

--Compter le nombre de ligne qu’il y a dans la table users
--SELECT COUNT(*) FROM users;

--Compter le nombre de ligne dont la première lettre du prénom est un B dans la table users
-- SELECT COUNT(*) FROM users 
-- WHERE firstname LIKE 'B%';

--Afficher uniquement la colonne contenant le prénom de la table users.
--SELECT firstname FROM users



--Niveau moyen--

--Insérer une ligne dans la table edusign qui correspond à la user Ada avec comme date de signature le 2024-05-30 09:30:00
--INSERT INTO edusign (users_id, signature_date) VALUES ('6', '2024-05-30 09:30:00');

--Insérer une ligne dans la table edusign qui correspond à la user Bella avec comme date de signature le 2024-05-30 09:30:00
--INSERT INTO edusign (users_id, signature_date) VALUES ('8', '2024-05-30 09:30:00');

--Insérer toutes les lignes de la table users (1 à 13 dans mon exemple) dans la table edusign avec pour date de signature le 2024-09-01 09:30:00
-- INSERT INTO edusign (users_id, signature_date)
-- SELECT '1', '2024-09-01 09:30:00' 
-- UNION SELECT '2', '2024-09-01 09:30:00'   
-- UNION SELECT '3', '2024-09-01 09:30:00' 
-- UNION SELECT '4', '2024-09-01 09:30:00' 
-- UNION SELECT '5', '2024-09-01 09:30:00' 
-- UNION SELECT '6', '2024-09-01 09:30:00' 
-- UNION SELECT '7', '2024-09-01 09:30:00' 
-- UNION SELECT '8', '2024-09-01 09:30:00'   
-- UNION SELECT '9', '2024-09-01 09:30:00' 
-- UNION SELECT '10', '2024-09-01 09:30:00' 
-- UNION SELECT '11', '2024-09-01 09:30:00' 
-- UNION SELECT '12', '2024-09-01 09:30:00' 
-- UNION SELECT '13', '2024-09-01 09:30:00';

--Sélectionner toutes les lignes de la table edusign ordonnées par date de signature de la plus récente à la plus ancienne et par user_id ascendant. 
-- SELECT *
-- FROM edusign
-- ORDER BY signature_date DESC, users_id ASC;

--Sélectionner toutes les lignes de la table edusign dont la date est 2024-05-30 09:30:00
-- SELECT *
-- FROM edusign
-- WHERE signature_date = '2024-05-30 09:30:00';


-- Niveau moyen+ (bonus)

--Dans la table edusign, afficher le nombre d’apprenantes par date.
-- SELECT signature_date, COUNT(users_id) AS nombre_apprenantes
-- FROM edusign
-- GROUP BY signature_date
-- ORDER BY signature_date ASC;

