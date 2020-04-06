-- Autor: Andre Rodas
-- SQL engine: SQLite
    
VACUUM;

DROP TABLE friend;
DROP TABLE likes;
DROP TABLE highschooler;

CREATE TABLE highschooler (
ID INT NOT NULL,
NOMBRE VARCHAR(50),
GRADE INT,
CONSTRAINT HIGH_PK
PRIMARY KEY (ID)
);

CREATE TABLE friend (
ID1 INT NOT NULL,
ID2 INT NOT NULL,
CONSTRAINT fk_id1_friend FOREIGN KEY (ID1)
        REFERENCES highschooler(ID),
CONSTRAINT fk_id2_friend FOREIGN KEY (ID2)
        REFERENCES highschooler(ID)
);

CREATE TABLE likes (
ID1 INT NOT NULL,
ID2 INT NOT NULL,
CONSTRAINT fk_id1_likes FOREIGN KEY (ID1)
        REFERENCES highschooler(ID),
CONSTRAINT fk_id2_likes FOREIGN KEY (ID2)
        REFERENCES highschooler(ID)
);

-- Inciso 1

CREATE TRIGGER FRIEND_DEL 
AFTER DELETE ON Friend
FOR EACH ROW WHEN EXISTS 
(SELECT * FROM Friend WHERE ID1 = OLD.ID2 AND ID2 = OLD.ID1) 
BEGIN 
DELETE FROM Friend WHERE (ID1 = OLD.ID2 AND ID2 = OLD.ID1); 
END;


CREATE TRIGGER FRIEND_ADD_SYM 
AFTER INSERT ON Friend
FOR EACH ROW WHEN NOT EXISTS 
(SELECT * FROM Friend WHERE ID1 = NEW.ID2 AND ID2 = NEW.ID1) 
BEGIN 
    INSERT INTO Friend VALUES (NEW.ID2, NEW.ID1);
END;

-- Inserts
insert into highschooler values (1,'Andre',3);
insert into highschooler values (2,'Andrea',3);
insert into highschooler values (3,'Luis',3);


-- Prueba Agregar
insert into friend values (1,2);
insert into friend values (1,3);
select * from friend;

-- Prueba Borrar
delete from friend where id1='2';
select * from friend;
 


-- Inciso 2
CREATE TRIGGER GRADUACIÓN
AFTER UPDATE OF grade ON Highschooler
FOR EACH ROW WHEN NEW.grade > 12 
BEGIN 
DELETE FROM Highschooler WHERE (ID = NEW.ID); 
END;

CREATE TRIGGER NUEVO_GRADO
AFTER UPDATE OF grade ON Highschooler
FOR EACH ROW WHEN NEW.grade = OLD.grade + 1 
BEGIN 
    UPDATE Highschooler SET grade = new.grade WHERE ID IN (SELECT DISTINCT ID2 FROM Friend WHERE ID1 = NEW.ID); 
END;

-- Inserts
insert into highschooler values (4,'Grande',12);
insert into highschooler values (5,'Peque1',4);
insert into highschooler values (6,'Peque2',4);
select * from highschooler;


-- Prueba Agregar
insert into friend values (5,6);
select * from friend;
select * from highschooler;
update highschooler set grade = 5 where id=5;
select * from highschooler;

select * from highschooler;
update highschooler set grade = 13 where id=4;
select * from highschooler;

-- Inciso 3
CREATE TRIGGER NOES_AMIGO
AFTER UPDATE OF ID2 ON Likes
FOR EACH ROW WHEN (Old.ID1 = New.ID1 and Old.ID2 <> New.ID2)
BEGIN 
delete from Friend where (Friend.ID1 = Old.ID2 and Friend.ID2 = New.ID2)
 or (Friend.ID1 = New.ID2 and Friend.ID2 = Old.ID2);
END;

-- Inciso 4




