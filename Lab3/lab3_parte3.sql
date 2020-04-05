# -- 1. Considerando las reglas de normalización, ¿Qué mejoras podría realizar en las tablas?

# Le asignaria una llave foranea para conectar la tabla RANGO_SUELDO con EMPLEADO. El atributo CARGO de EMPLEADO lo volvería tabla.
# Sueldo y comisión lo movería a RANGO_SUELDO.

# -- 2. ¿Qué registro de empleado falla y por qué? ¿Cómo se corrige?

#Original:
INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, EMAIL, TELEFONO, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (6, 'INES', 'FERNANDEZ SANCHEZ', 'fsanchez!@gmail.com','+50255552612a',
'PRESIDENTE', NULL, '1991-11-17', 5000, NULL, 1);

#Corregido:
# Se corrige quitando los singos que no estan permitidos y agragando primero el insert de los departamentos
# Y quitando los ultimos inserts de empleados que se repiten


INSERT INTO DEPARTAMENTO (ID, NOMBRE, LOCALIDAD)
VALUES (1, 'INFORMATICA', 'BILBAO');

INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, EMAIL, TELEFONO, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (6, 'INES', 'FERNANDEZ SANCHEZ', 'fsanchez@gmail.com','+50255552612',
'PRESIDENTE', NULL, '1991-11-17', 5000, NULL, 1);

# -- 3. Obtener los apellidos del empleado
SELECT APELLIDOS FROM empleado;

# -- 4. Obtener los apellidos del empleado sin repetición
SELECT DISTINCT APELLIDOS FROM empleado;

# -- 5. Obtener todos los datos de los empleados apellidados López
SELECT * FROM empleado WHERE APELLIDOS LIKE '%LOPEZ%';


# -- 6. Obtener todos los datos del empleado con apellido López o Peña
SELECT * FROM empleado WHERE APELLIDOS LIKE '%LOPEZ%' OR APELLIDOS LIKE '%PEÑA%';

# -- 7. Obtener los datos del empleado que trabaja en el departamento de informática.
SELECT e.* FROM empleado e
    INNER JOIN departamento d ON d.ID=e.DEPARTAMENTO_ID
    WHERE d.NOMBRE LIKE 'INFORMATICA';

# -- 8. Obtener los datos del empleado cuyo nombre comience por I
SELECT * FROM empleado WHERE NOMBRE LIKE 'I%';

# -- 9. Obtener el nombre del departamento y el número de empleados que tiene.
SELECT d.NOMBRE,COUNT(d.NOMBRE) FROM empleado e INNER JOIN departamento d ON d.ID=e.DEPARTAMENTO_ID GROUP BY d.NOMBRE;

# -- 10. Consultar los diferentes cargos desempeñados en la empresa.
SELECT DISTINCT e.CARGO FROM empleado e;

# -- 11. Listar los empleados como sigue: LOPEZ PEREZ, CARLOS: es PRESIDENTE
SELECT * FROM empleado e
    ORDER BY case
        WHEN e.APELLIDOS LIKE '%LOPEZ%' THEN 1
        WHEN e.NOMBRE LIKE '%CARLOS%' THEN 2
        WHEN e.CARGO='PRESIDENTE' THEN 3
        ELSE 4
    end;

# 12. Mostrar el nombre, apellidos, sueldo y comisión del empleado que tiene jefe, y su comisión es superior a 150 €.




13. Obtener los empleados que no ejercen de comercial y cuyos nombres contienen la letra N.
14. De los empleados que tienen comisión, obtener el nombre, sueldo y comisión, ordenados
por sueldo de mayor a menor.
15. Ordenar a los empleados por sus apellidos y nombres.
16. Obtener el nombre, sueldo anual y fecha de alta de los empleados que no tienen
comisión, ordenados por fecha de alta en la empresa.
17. Mostrar el nombre y sueldo de los empleados incrementados en un 10% y ordenados por
nombre y apellidos.
18. Mostrar el nombre y fecha de alta de cada empleado, ordenado por fecha de entrada
como sigue: Fecha de entrada (como título) Ejemplo: ‘Carlos Alonso García empezó a
trabajar el 20 de febrero de 1991’
19. Obtener el nombre de los comerciales, la comisión, el sueldo mensual y el sueldo
incrementado como sigue: si la comisión es menor que 50 €, aumentar un 25%; y si es
igual o superior, aumentar un 12%.
20. Mostrar la localidad, nombre y sueldo del empleado cuyo grado es 2 o 3.
21. Mostrar el nombre de los departamentos cuyos empleados tienen comisión o su sueldo
anual es superior a 18.000 €.
22. Calcular el número de empleados del departamento de VENTAS.
23. Calcular la comisión media de los empleados, excluyendo al presidente y suponiendo que
todos los empleados cobran al menos una comisión de o €.
24. Calcular el sueldo máximo de los empleados de cada departamento siempre que el
mínimo sueldo del departamento sea superior a 780 €.
25. Mostrar el nombre y fecha de entrada de todos los empleados que trabajan en el mismo
departamento que ESTHER.
26. Calcular el número de empleados que están en BILBAO