DROP DATABASE IF EXISTS RecursosHumanos;
CREATE DATABASE RecursosHumanos;
USE RecursosHumanos;

CREATE TABLE DEPARTAMENTO (
ID INT NOT NULL,
NOMBRE VARCHAR(50),
LOCALIDAD VARCHAR(50),
CONSTRAINT DEPARTAMENTOS_PK
PRIMARY KEY (ID)
);

CREATE TABLE RANGO_SUELDO (
GRADO INT PRIMARY KEY ,
SUELDO_MIN DECIMAL(9,2),
SUELDO_MAX DECIMAL(9,2)
);

CREATE TABLE EMPLEADO (
ID INT NOT NULL,
NOMBRE VARCHAR(30),
APELLIDOS VARCHAR(60),
TELEFONO VARCHAR(25),
EMAIL VARCHAR(50),
CARGO VARCHAR(20),
JEFE_ID INT,
FECHA_ALTA DATE,
SUELDO DECIMAL(9,2),
COMISION DECIMAL(9,2),
DEPARTAMENTO_ID INT NOT NULL,
CONSTRAINT EMPLEADOS_PK
PRIMARY KEY (ID),
CONSTRAINT DEPARTAMENTO_ID_FK
FOREIGN KEY (DEPARTAMENTO_ID) REFERENCES DEPARTAMENTO(ID),
CONSTRAINT EMAIL_CHK
CHECK ( EMAIL REGEXP '^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$'),
CONSTRAINT TELEFONO_CHK
CHECK ( TELEFONO REGEXP '^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-[[:space:]]\./0-9]*$' ));

#DML. Inserción de datos:

INSERT INTO DEPARTAMENTO (ID, NOMBRE, LOCALIDAD)
VALUES (1, 'INFORMATICA', 'BILBAO');
INSERT INTO DEPARTAMENTO (ID, NOMBRE, LOCALIDAD)
VALUES (2, 'INVESTIGACION', 'MADRID');
INSERT INTO DEPARTAMENTO (ID, NOMBRE, LOCALIDAD)
VALUES (3, 'VENTAS', 'BARCELONA');
INSERT INTO DEPARTAMENTO (ID, NOMBRE, LOCALIDAD)
VALUES (4, 'PRODUCCION', 'VALENCIA');
COMMIT ;

INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, EMAIL, TELEFONO, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (6, 'INES', 'FERNANDEZ SANCHEZ', 'fsanchez@gmail.com','+50255552612',
'PRESIDENTE', NULL, '1991-11-17', 5000, NULL, 1);

INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (4, 'ESTHER', 'PEÑA MATA', '+34937377761','epena@gmail.com','DIRECTOR',
6,str_to_date('01/05/1991', '%d/%m/%Y'), 2850, NULL, 3);
INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (5, 'DANIEL', 'LOPEZ LEON', '+34937377780','dlopez@gmail.com','DIRECTOR',
6,str_to_date('09/06/1991', '%d/%m/%Y'), 2450, NULL, 1);
INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (1, 'CARLOS', 'ALONSO GARCIA',
'34937377770','carlos.alonso@gmail.com','COMERCIAL', 4,
str_to_date('20/02/1991', '%d/%m/%Y'), 1600, 30, 3);
INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (2, 'ANDRES', 'GOMEZ SEGUNDO', '+(34) 937-376-525',
'andres.gomez@gmail.com', 'COMERCIAL', 4, str_to_date('22/02/1991', '%d/%m/%Y'),
1250, 50, 3);
INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (3, 'ANA', 'HERRANZ CIFUENTES', '+34937376523','herranz.ana@gmail.com',
'COMERCIAL', 4,str_to_date('28/09/1991', '%d/%m/%Y'), 1250, 140, 3);
INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (7, 'TOMAS', 'CALLEJA ARCAZ','+34937376541','tomas.calleja@gmail.com',
'COMERCIAL', 4, str_to_date( '08/09/1991', '%d/%m/%Y'), 1500, 0, 3);
COMMIT ;


INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (1, 700, 1200);
INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (2, 1201, 1400);
INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (3, 1401, 2000);
INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)

VALUES (4, 2001, 3000);
INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (5, 3001, 9999);
COMMIT ;

