DROP TABLE IF EXISTS Tablin;
CREATE TABLE Tablin(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	telephone VARCHAR(100),
	created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DROP TABLE IF EXISTS Tablin2;
CREATE TABLE Tablin2(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	telephone VARCHAR(100),
	idTablin INT UNSIGNED,
	created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY(idTablin) 
	REFERENCES Tablin(id)
);
INSERT INTO Tablin VALUE(0,'Name01','01010101',NOW());
INSERT INTO Tablin VALUE(0,'Name02','01010101',NOW());
INSERT INTO Tablin(nameReg,telephone) VALUE('Name03','01010101');

INSERT INTO Tablin2 VALUE(0,'Name01','02020202',3,NOW());

INSERT INTO Tablin2 VALUE(0,'Name02','02020202',2,NOW());

INSERT INTO Tablin2(nameReg,telephone,idTablin) VALUE('Name03','02020202',1);

Select T.id idTablin, 
T.nameReg nameTablin, 
T.telephone AS telephoneTablin,  
T2.nameReg nameTablin2, 
T2.telephone telephoneTablin2
FROM Tablin T
INNER JOIN Tablin2 T2 ON T.id = T2.idTablin

DELIMITER $$
CREATE PROCEDURE GetTablin()
	BEGIN

	SELECT *
	FROM Tablin;

	END$$
DELIMITER ;
Select *
FROM Tablas;

CALL GetTablin();
DROP PROCEDURE GetTablin;
CREATE PROCEDURE GetTablin(IN pId INT)
	BEGIN

	SELECT *
	FROM Tablin T
	WHERE T.id = pId;

	END
	
CALL GetTablin(2);

SELECT COUNT(*)
FROM Tablin;


SELECT MAX(T.created)
FROM Tablin T;
SELECT MIN(T.created)
FROM Tablin T;