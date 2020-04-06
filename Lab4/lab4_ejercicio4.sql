-- Autor: André Rodas

DROP FUNCTION FORMATO_TELEFONO(num text);
CREATE FUNCTION FORMATO_TELEFONO(num text) RETURNS text AS $$
BEGIN
	RETURN regexp_replace(num, '(\d{3})(\d{4})(\d{4})', '+(\1) \3-\3');
END; $$ LANGUAGE plpgsql;

SELECT FORMATO_TELEFONO('50211111111');

