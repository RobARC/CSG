CREATE DATABASE IF NOT EXISTS CSG;
USE CSG;

CREATE TABLE IF NOT EXISTS Department (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR(255), 
location VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Employee (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR(255), 
salary INT, 
depto_id INT
);

INSERT INTO Department (id, name, location) VALUES("1", "Executive", "Sydney"),
("2", "Production", "Sydnay"),
("3", "Resources", "Cape Town"),
("4", "Technical", "Texas"),
("5", "Management", "Paris");

INSERT INTO Employee (id, name, salary, depto_id) VALUES(1, "Candice", 4685, 1),
(2, "Julia", 2559, 2),
(3, "Bob", 4405, 4),
(4, "Scarlet", 2350, 1),
(5, "Ilena", 1151, 4);


SELECT COUNT(E.depto_id) as COUNT, D.name 
FROM Employee E INNER JOIN Department D 
ON D.id=E.depto_id 
GROUP BY D.name 
ORDER BY COUNT ASC
;