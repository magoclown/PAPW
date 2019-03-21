DROP TABLE IF EXISTS Tablita;
CREATE TABLE Tablita(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nameTablita VARCHAR(255) NOT NULL,
	telephone VARCHAR(30),
	regDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DROP TABLE IF EXISTS Tablita2;
CREATE TABLE Tablita2(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nameTablita VARCHAR(255) NOT NULL,
	telephone VARCHAR(30),
	idTablita INT UNSIGNED,
	regDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY(idTablita) 
	REFERENCES Tablita(id)
);

INSERT INTO Tablita VALUE(0, 'NAME01', '010101', NOW());
INSERT INTO Tablita(nameTablita, telephone) VALUE('NAME02', '020202');

INSERT INTO Tablita2(nameTablita, telephone) 
VALUE('NAMET201', '010101');

INSERT INTO Tablita2(nameTablita, telephone, idTablita) 
VALUE('NAMET201', '010101', 1);

SELECT T.id idTablita,
T.nameTablita AS nameT,
T2.id idTablita2,
T2.nameTablita as nameT2
FROM Tablita T
INNER JOIN Tablita2 T2 ON T.id = T2.idTablita;

DROP PROCEDURE IF EXISTS GetTablita;
DELIMITER //
CREATE PROCEDURE GetTablita()
	BEGIN
		SELECT *
		FROM Tablita;
	END//
DELIMITER ;

DROP PROCEDURE IF EXISTS GetTablita;
DELIMITER //
CREATE PROCEDURE GetTablita(IN pId INT)
	BEGIN
		SELECT *
		FROM Tablita T
		WHERE T.id = pId;
	END//
DELIMITER ;

CALL GetTablita(1);

CREATE VIEW Tablitas AS
(SELECT T.id,
T.nameTablita,
T.telephone
FROM Tablita T)
UNION
(SELECT T.id,
T.nameTablita,
T.telephone
FROM Tablita2 T)

SELECT *
FROM Tablitas
GROUP BY id;

SELECT COUNT(*) Contador,
T.*
FROM Tablitas T
GROUP BY id;