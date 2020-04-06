-- Autor: André Rodas

-- Tabla
CREATE TABLE num(id_num INT primary key);

CREATE OR REPLACE FUNCTION NO_NULL_TABLE() RETURNS TRIGGER AS $$
BEGIN          
	IF (SELECT COUNT(id_num) FROM num) < 2 THEN
		RAISE EXCEPTION 'NO PUEDE QUEDAR LA TABLA VACIA';
	END IF;
RETURN OLD;
END; $$ LANGUAGE plpgsql;

-- Trigger
CREATE TRIGGER trg_delete_numero
BEFORE DELETE ON num
FOR EACH ROW EXECUTE PROCEDURE NO_NULL_TABLE();

-- Pruebas

insert into num(id_num) values (1);
insert into num(id_num) values (2);
insert into num(id_num) values (3);
select * from num;
delete from num where id_num>0;
delete from num where id_num>1;
select * from num;
