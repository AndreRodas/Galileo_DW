#Autor: Andre Rodas

DROP DATABASE IF EXISTS clase;
CREATE DATABASE clase;

USE clase;

CREATE TABLE departamento (
ID INT NOT NULL,
NOMBRE VARCHAR(50),
LOCALIDAD VARCHAR(50),
CONSTRAINT DEPARTAMENTOS_PK
PRIMARY KEY (ID)
);

CREATE TABLE curso (
    id INT NOT NULL ,
    codigo VARCHAR(5),
    nombre VARCHAR(25),
    descripcion TEXT,
    codigo_departamento INT,
    CONSTRAINT CURSOS_PK
        PRIMARY KEY (id),
    CONSTRAINT  CHK_CORREO
        CHECK (REGEXP_LIKE(codigo, '^[A-Z0-9][A-Z0-9]\-[0-9][0-9]$')),
    CONSTRAINT fk_codigo_departamento FOREIGN KEY (codigo_departamento)
        REFERENCES departamento(ID)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE libro (
    ISBN VARCHAR(13) NOT NULL ,
    nombre VARCHAR(50),
    autor VARCHAR(30),
    edicion INT,
    editorial VARCHAR(40),
    año INT,
    codigo_curso INT,
    CONSTRAINT LIBROS_PK
        PRIMARY KEY (ISBN),
    CONSTRAINT CHK_ISBN
         CHECK (REGEXP_LIKE(ISBN, '^[2-9][2-9][0-9]{11}$')),
    CONSTRAINT CHK_ANIO
         CHECK (año > 2000 AND año <= 2020 ),
    CONSTRAINT CHK_EDICION
         CHECK (edicion > 3 AND edicion < 6 ),
    CONSTRAINT CODIGO_CURSO_ID_FK
        FOREIGN KEY (codigo_curso) REFERENCES curso(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

insert into curso (id, codigo, nombre, descripcion) values (1, 'KY-28', 'Lotstring', 'massa tempor convallis nulla');
insert into curso (id, codigo, nombre, descripcion) values (2, 'OC-12', 'Andalax', 'quam sollicitudin vitae consectetuer eget');
insert into curso (id, codigo, nombre, descripcion) values (3, 'RF-14', 'Tres-Zap', 'turpis sed ante');
insert into curso (id, codigo, nombre, descripcion) values (4, 'UQ-30', 'Voyatouch', 'odio donec vitae');
insert into curso (id, codigo, nombre, descripcion) values (5, 'FY-84', 'Latlux', 'aenean auctor gravida');
insert into curso (id, codigo, nombre, descripcion) values (6, 'OD-70', 'Ventosanzap', 'mauris laoreet ut rhoncus');
insert into curso (id, codigo, nombre, descripcion) values (7, 'WV-26', 'Zathin', 'maecenas leo odio');
insert into curso (id, codigo, nombre, descripcion) values (8, 'KB-77', 'Solarbreeze', 'rutrum nulla tellus');
insert into curso (id, codigo, nombre, descripcion) values (9, 'AV-19', 'Ventosanzap', 'eu magna vulputate luctus');
insert into curso (id, codigo, nombre, descripcion) values (10, 'SQ-68', 'Opela', 'odio justo sollicitudin ut');
insert into curso (id, codigo, nombre, descripcion) values (11, 'IF-52', 'Konklab', 'ac leo pellentesque ultrices');
insert into curso (id, codigo, nombre, descripcion) values (12, 'PG-23', 'Cookley', 'interdum mauris non ligula pellentesque');
insert into curso (id, codigo, nombre, descripcion) values (13, 'VG-08', 'Y-find', 'mattis odio donec');
insert into curso (id, codigo, nombre, descripcion) values (14, 'KG-70', 'Latlux', 'est donec odio justo sollicitudin');
insert into curso (id, codigo, nombre, descripcion) values (15, 'BP-09', 'Zamit', 'lacinia sapien quis libero');
insert into curso (id, codigo, nombre, descripcion) values (16, 'MJ-34', 'Lotstring', 'sit amet nunc viverra');
insert into curso (id, codigo, nombre, descripcion) values (17, 'EP-90', 'Aerified', 'orci luctus et ultrices posuere');
insert into curso (id, codigo, nombre, descripcion) values (18, 'JU-86', 'Aerified', 'pharetra magna ac consequat metus');
insert into curso (id, codigo, nombre, descripcion) values (19, 'UV-44', 'Aerified', 'volutpat erat quisque erat');
insert into curso (id, codigo, nombre, descripcion) values (20, 'FL-38', 'Zontrax', 'justo aliquam quis turpis eget');
insert into curso (id, codigo, nombre, descripcion) values (21, 'HJ-23', 'Greenlam', 'ut ultrices vel');
insert into curso (id, codigo, nombre, descripcion) values (22, 'GE-41', 'Keylex', 'turpis sed ante vivamus tortor');
insert into curso (id, codigo, nombre, descripcion) values (23, 'YI-74', 'Zathin', 'mattis odio donec');
insert into curso (id, codigo, nombre, descripcion) values (24, 'DU-76', 'Flowdesk', 'in hac habitasse platea dictumst');
insert into curso (id, codigo, nombre, descripcion) values (25, 'BO-19', 'Trippledex', 'quisque id justo sit amet');
insert into curso (id, codigo, nombre, descripcion) values (26, 'RO-53', 'Vagram', 'hendrerit at vulputate');
insert into curso (id, codigo, nombre, descripcion) values (27, 'CD-07', 'Bamity', 'volutpat erat quisque erat eros');
insert into curso (id, codigo, nombre, descripcion) values (28, 'JD-08', 'Tresom', 'sit amet lobortis');
insert into curso (id, codigo, nombre, descripcion) values (29, 'FL-62', 'Greenlam', 'cubilia curae mauris viverra');
insert into curso (id, codigo, nombre, descripcion) values (30, 'NT-64', 'Lotlux', 'pede malesuada in imperdiet');
insert into curso (id, codigo, nombre, descripcion) values (31, 'ZP-63', 'Pannier', 'at nunc commodo placerat');
insert into curso (id, codigo, nombre, descripcion) values (32, 'WG-05', 'Cardify', 'lorem ipsum dolor sit');
insert into curso (id, codigo, nombre, descripcion) values (33, 'WS-74', 'Temp', 'mattis egestas metus aenean');
insert into curso (id, codigo, nombre, descripcion) values (34, 'OJ-64', 'Tres-Zap', 'id luctus nec');
insert into curso (id, codigo, nombre, descripcion) values (35, 'YD-71', 'Job', 'praesent blandit nam nulla');
insert into curso (id, codigo, nombre, descripcion) values (36, 'ZV-04', 'Gembucket', 'primis in faucibus orci luctus');
insert into curso (id, codigo, nombre, descripcion) values (37, 'MB-50', 'Aerified', 'metus vitae ipsum');
insert into curso (id, codigo, nombre, descripcion) values (38, 'AO-56', 'Treeflex', 'varius integer ac');
insert into curso (id, codigo, nombre, descripcion) values (39, 'WT-80', 'Alphazap', 'imperdiet sapien urna pretium nisl');
insert into curso (id, codigo, nombre, descripcion) values (40, 'TM-31', 'Tresom', 'posuere cubilia curae');
insert into curso (id, codigo, nombre, descripcion) values (41, 'AF-02', 'Treeflex', 'purus eu magna vulputate luctus');
insert into curso (id, codigo, nombre, descripcion) values (42, 'WA-84', 'Viva', 'sed vestibulum sit amet cursus');
insert into curso (id, codigo, nombre, descripcion) values (43, 'ME-07', 'Temp', 'porttitor lacus at');
insert into curso (id, codigo, nombre, descripcion) values (44, 'CD-60', 'Temp', 'magna vulputate luctus');
insert into curso (id, codigo, nombre, descripcion) values (45, 'GT-46', 'Y-find', 'eros vestibulum ac est');
insert into curso (id, codigo, nombre, descripcion) values (46, 'CP-69', 'Zaam-Dox', 'et tempus semper');
insert into curso (id, codigo, nombre, descripcion) values (47, 'DI-14', 'Overhold', 'proin leo odio porttitor id');

insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9922660093438', 'Gilberta Marcone', 'Marcone', 5, 'Twitterbeat', 2009, 42);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9873094839462', 'Verne Carp', 'Carp', 4, 'Babbleblab', 2010, 21);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7835581512785', 'Abrahan McPhate', 'McPhate', 4, 'Bluejam', 2007, 20);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9902017477094', 'Janet Romeo', 'Romeo', 4, 'Meevee', 2017, 24);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('4768476422495', 'Tamas Desport', 'Desport', 4, 'Latz', 2011, 32);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('2881551956724', 'Aubrey Kemson', 'Kemson', 4, 'Snaptags', 2017, 38);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9893175529283', 'Thorin Zorener', 'Zorener', 4, 'Roodel', 2003, 43);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8917716945593', 'Sharia Hendrickson', 'Hendrickson', 5, 'Yodo', 2010, 31);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9995274030288', 'Donnajean Redihalgh', 'Redihalgh', 4, 'Jaloo', 2008, 7);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9904542594538', 'Dana O''Hearn', 'O''Hearn', 4, 'Browsecat', 2007, 10);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8802622534708', 'Ryley Donson', 'Donson', 5, 'Viva', 2016, 3);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9999076262638', 'Lizabeth Grimmert', 'Grimmert', 4, 'Twitterlist', 2003, 15);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8955426615827', 'Blair Hearn', 'Hearn', 4, 'Skinder', 2018, 32);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7948753409364', 'Emelyne Fidal', 'Fidal', 5, 'Pixoboo', 2010, 32);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9893509531936', 'Charmain Stivens', 'Stivens', 5, 'Zoomdog', 2007, 6);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8741098779685', 'Aleda Mulholland', 'Mulholland', 4, 'Oodoo', 2012, 32);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9869308138459', 'Dex Millson', 'Millson', 4, 'Yakitri', 2015, 43);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('6991926635617', 'Ingar Robotham', 'Robotham', 5, 'Blognation', 2018, 6);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8950398626901', 'Eyde Klement', 'Klement', 5, 'Skinder', 2006, 11);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('6760395788021', 'Rodger Boggon', 'Boggon', 5, 'Agimba', 2002, 24);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9959828594371', 'Ara Claricoates', 'Claricoates', 4, 'Realcube', 2011, 26);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8972256692199', 'Missy Attrill', 'Attrill', 5, 'Aibox', 2014, 36);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7881824757227', 'Rodi Delicate', 'Delicate', 5, 'Divanoodle', 2004, 32);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9976962593671', 'Frederik Abdon', 'Abdon', 4, 'Fivespan', 2001, 2);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9826075150888', 'Cathyleen Boldock', 'Boldock', 4, 'Vinte', 2002, 34);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9833296322124', 'Carolus Lefeaver', 'Lefeaver', 4, 'Aivee', 2014, 18);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7836851769801', 'Zondra Stoggell', 'Stoggell', 4, 'Voonder', 2006, 45);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9996868163572', 'Fidelio Trammel', 'Trammel', 5, 'Livetube', 2018, 11);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9975759580320', 'Charlean Lockery', 'Lockery', 4, 'Voonte', 2016, 45);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8976242679464', 'Korrie Fullilove', 'Fullilove', 5, 'Wordtune', 2005, 28);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8612843035764', 'Mattie Howley', 'Howley', 5, 'Jabbertype', 2003, 43);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('5663566662179', 'Karrie Samms', 'Samms', 4, 'Feedspan', 2014, 31);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('3709333047211', 'Jacquenetta Goly', 'Goly', 4, 'Babbleopia', 2008, 25);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7944871458581', 'Garner Mendez', 'Mendez', 4, 'Lazzy', 2011, 9);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9990237766645', 'Khalil Marsay', 'Marsay', 5, 'Yakijo', 2007, 35);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9898833819486', 'Dahlia Shulver', 'Shulver', 4, 'Jabberstorm', 2017, 23);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9678779555294', 'Berkeley Elderton', 'Elderton', 4, 'Agivu', 2003, 17);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9859670339206', 'Alida Tuckwell', 'Tuckwell', 4, 'Latz', 2016, 20);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7965364598622', 'Dredi Gisbey', 'Gisbey', 4, 'Linkbuzz', 2019, 25);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9845179927706', 'Heinrick Loffill', 'Loffill', 5, 'Thoughtmix', 2008, 23);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9975560243097', 'Angelle Grigson', 'Grigson', 4, 'Quimba', 2017, 20);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8896222611371', 'Dante Astles', 'Astles', 5, 'Blognation', 2008, 10);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8849129460262', 'Sosanna Ewdale', 'Ewdale', 4, 'Livetube', 2017, 1);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8879358786587', 'Hurlee Benley', 'Benley', 4, 'Yozio', 2011, 44);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9900060942232', 'Harlene Shurmer', 'Shurmer', 5, 'Chatterbridge', 2006, 37);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8976624579589', 'Ware Geggie', 'Geggie', 4, 'Twiyo', 2001, 38);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9963504322965', 'Abbe Lamlin', 'Lamlin', 4, 'Quire', 2004, 14);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9979730984539', 'Cyrill Butts', 'Butts', 5, 'Meevee', 2017, 26);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8936683568851', 'Rollin Jolly', 'Jolly', 5, 'Layo', 2012, 44);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8957640632014', 'Georgette Tomaszewski', 'Tomaszewski', 5, 'Skivee', 2017, 6);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9965351478229', 'Colver Hutson', 'Hutson', 4, 'Wordify', 2019, 42);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('3980845403612', 'Luci Wrassell', 'Wrassell', 5, 'Vipe', 2020, 12);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8978083259674', 'Kellie Domegan', 'Domegan', 5, 'Zava', 2006, 12);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9869428480574', 'Amerigo Jaspar', 'Jaspar', 5, 'Dabshots', 2013, 43);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9856137727987', 'Emmalee Drydale', 'Drydale', 4, 'Mydo', 2011, 5);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9651608883168', 'Joly Klais', 'Klais', 4, 'Feedspan', 2014, 43);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8838707436007', 'Oberon Yearnes', 'Yearnes', 4, 'Livetube', 2019, 19);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7964040882117', 'Rica Dreakin', 'Dreakin', 5, 'Katz', 2012, 46);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8974870785283', 'Dominique Katz', 'Katz', 5, 'Photolist', 2002, 28);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9857363662859', 'Brennen Duddin', 'Duddin', 4, 'Jabberbean', 2014, 29);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8980143109042', 'Toma Di Maggio', 'Di Maggio', 4, 'Topicshots', 2015, 13);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9918645590358', 'Fritz Gallihaulk', 'Gallihaulk', 5, 'Divavu', 2019, 43);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('5992338507165', 'Domeniga Lemerie', 'Lemerie', 4, 'Edgewire', 2018, 45);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7955526359486', 'Bradan Gerholz', 'Gerholz', 5, 'Jetwire', 2013, 47);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8858087895267', 'Faun Haynesford', 'Haynesford', 4, 'Blogpad', 2010, 33);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9842066666551', 'Cordie Jacobsen', 'Jacobsen', 5, 'Wikibox', 2002, 1);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8857132370109', 'Flynn Roch', 'Roch', 5, 'Npath', 2017, 5);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7980618316930', 'Victoir Agott', 'Agott', 4, 'Tambee', 2008, 29);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7916317192926', 'Albert D''Acth', 'D''Acth', 5, 'Brightdog', 2004, 38);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9935195727903', 'Charita Telling', 'Telling', 5, 'Kamba', 2008, 29);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9841028365109', 'Sammy Domino', 'Domino', 4, 'Zoomzone', 2008, 22);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9903607038839', 'Wynn Cerro', 'Cerro', 4, 'Abata', 2018, 45);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8630451493769', 'Enrika Ghio', 'Ghio', 4, 'Devify', 2009, 27);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9838555670345', 'Alvy Bispo', 'Bispo', 5, 'Dabshots', 2019, 20);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8933004589635', 'Niccolo Black', 'Black', 5, 'Zoomlounge', 2014, 11);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8909605668021', 'Phil Mattholie', 'Mattholie', 4, 'Quamba', 2016, 35);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7680555185018', 'Gil Gerran', 'Gerran', 4, 'Jamia', 2016, 13);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9903735448329', 'Rita Palfree', 'Palfree', 4, 'Leenti', 2001, 33);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('6884317295446', 'Yurik Hischke', 'Hischke', 5, 'Digitube', 2005, 10);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8700830199538', 'Costanza Elliot', 'Elliot', 4, 'Flashpoint', 2020, 46);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9629493608441', 'Liva Trembath', 'Trembath', 4, 'Flipopia', 2011, 25);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('2841361759038', 'Ursa Tompkin', 'Tompkin', 5, 'Jaxspan', 2007, 9);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9911866309898', 'Levy Emes', 'Emes', 4, 'Fiveclub', 2015, 30);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9904646010200', 'Sisely Prangle', 'Prangle', 5, 'Zazio', 2007, 5);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8266015192285', 'Kenneth Duckerin', 'Duckerin', 5, 'Browsedrive', 2019, 16);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9905935662720', 'Bea Seakes', 'Seakes', 5, 'Omba', 2017, 9);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9860099736946', 'Haydon Iacovo', 'Iacovo', 4, 'Twimm', 2012, 27);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7983136098897', 'Guillaume Kippie', 'Kippie', 5, 'Bubbletube', 2016, 15);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9909350364821', 'Jamesy Yeo', 'Yeo', 4, 'Zooveo', 2012, 13);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9918226276246', 'Katy Le - Count', 'Le - Count', 4, 'Skiptube', 2019, 35);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8920460587633', 'Faustine Staunton', 'Staunton', 5, 'Voomm', 2009, 27);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('4842826052414', 'Kenon Hansberry', 'Hansberry', 4, 'Youspan', 2008, 45);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9792732891129', 'Siana Sell', 'Sell', 5, 'Abatz', 2015, 29);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9995775516827', 'Norma Cutteridge', 'Cutteridge', 5, 'Twitterworks', 2019, 38);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('2762399365651', 'Aviva Giacopelo', 'Giacopelo', 4, 'Twimbo', 2003, 3);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9920182748475', 'Clarette Mattes', 'Mattes', 5, 'Realfire', 2013, 33);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8908822738524', 'Dolorita Sisson', 'Sisson', 4, 'Lazzy', 2015, 40);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('6813177073161', 'Engracia Nisuis', 'Nisuis', 5, 'Devpoint', 2007, 43);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8528405476561', 'Ketti Childrens', 'Childrens', 4, 'Skyba', 2008, 20);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9817654895707', 'Minerva Lindner', 'Lindner', 5, 'Twitterbeat', 2014, 18);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9932026200955', 'Stefan Penwright', 'Penwright', 4, 'Topicware', 2016, 21);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8695858114097', 'Smith Risborough', 'Risborough', 5, 'Quamba', 2014, 11);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9925069831476', 'Annadiane Mushett', 'Mushett', 5, 'Gabcube', 2020, 27);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8831335520214', 'Taddeusz Merlin', 'Merlin', 5, 'Bluezoom', 2005, 21);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9957805541672', 'Rozanna Riddich', 'Riddich', 4, 'Aimbu', 2002, 10);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8807564268492', 'Barrett Reggio', 'Reggio', 5, 'Devify', 2001, 26);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9850800970682', 'Dieter Doody', 'Doody', 5, 'Skinder', 2013, 10);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7589876817946', 'Kimmy Sier', 'Sier', 5, 'Twimbo', 2008, 36);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9917825848132', 'Shaylyn Plascott', 'Plascott', 5, 'Quimba', 2016, 45);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9951838801739', 'Amery Ramelet', 'Ramelet', 4, 'Zoomdog', 2005, 3);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9829417414085', 'Alphonso Shaw', 'Shaw', 5, 'Realcube', 2016, 25);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7977467923909', 'Burtie Eate', 'Eate', 4, 'Jaxnation', 2006, 39);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9866890536290', 'Tillie Dummett', 'Dummett', 4, 'Yabox', 2004, 45);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9877229390429', 'Eberto Muddiman', 'Muddiman', 5, 'Quatz', 2004, 14);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8843574025297', 'Adore Priscott', 'Priscott', 5, 'Rooxo', 2016, 47);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('6976550439575', 'Conway Lenglet', 'Lenglet', 4, 'Eamia', 2010, 14);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9883465683295', 'Graeme Bigly', 'Bigly', 5, 'Innotype', 2004, 37);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9808116076215', 'Sharleen Filipczynski', 'Filipczynski', 5, 'Twiyo', 2015, 9);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9999906633867', 'Gerta Crimp', 'Crimp', 4, 'Flashpoint', 2016, 36);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7985484343624', 'Al Tressler', 'Tressler', 4, 'Jaloo', 2002, 22);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9966580680230', 'Morris Gabbidon', 'Gabbidon', 5, 'Realcube', 2019, 19);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9707072485914', 'Kermie Severn', 'Severn', 5, 'Jaxspan', 2019, 7);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8880766007382', 'Dottie Blake', 'Blake', 5, 'Feedfish', 2002, 18);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8931827960076', 'Torey Kinforth', 'Kinforth', 4, 'Centimia', 2001, 21);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8896432700295', 'Christoforo Tift', 'Tift', 5, 'Jabbercube', 2008, 45);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9872578404343', 'Berky Garcia', 'Garcia', 5, 'Jatri', 2006, 10);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9929860464634', 'Alys Dahmke', 'Dahmke', 5, 'Dablist', 2008, 29);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9999241486896', 'Goldi Caird', 'Caird', 5, 'Realpoint', 2019, 39);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9845816183760', 'Illa Huet', 'Huet', 5, 'Cogilith', 2017, 42);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9903584896004', 'Jenn Lemmon', 'Lemmon', 5, 'Teklist', 2009, 8);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9835213697614', 'Shandee Mahady', 'Mahady', 5, 'Midel', 2020, 14);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9915528373850', 'Kyrstin Pitford', 'Pitford', 4, 'Zoomlounge', 2001, 20);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8824119329202', 'Tan Bartolomeoni', 'Bartolomeoni', 5, 'Youspan', 2013, 34);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('6697420339144', 'Enrica Redborn', 'Redborn', 5, 'Npath', 2003, 16);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9601641766623', 'Jere Eisikowitz', 'Eisikowitz', 4, 'Feedfire', 2019, 30);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8998345177875', 'Powell Bentame', 'Bentame', 5, 'Skyvu', 2020, 33);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7912835314285', 'Torrie Belitz', 'Belitz', 5, 'Meembee', 2002, 12);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('7989380622000', 'Eliot Caughey', 'Caughey', 5, 'Meedoo', 2013, 23);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('8915497818531', 'Josee Trubshaw', 'Trubshaw', 5, 'Skinix', 2012, 4);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9949581154580', 'Roanne Comins', 'Comins', 4, 'Yakitri', 2011, 24);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9720504204022', 'Tiertza McLaughlin', 'McLaughlin', 5, 'Babbleset', 2002, 16);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9984871445016', 'Kennie Sutherby', 'Sutherby', 4, 'Quimm', 2012, 35);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('6446907840349', 'Yoko Gooddy', 'Gooddy', 5, 'Brainverse', 2010, 38);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('5800609586656', 'Brande Gery', 'Gery', 5, 'Yata', 2011, 26);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('6921886149032', 'Hillard McEvoy', 'McEvoy', 5, 'Skipfire', 2007, 3);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9750156510761', 'Dorisa Abel', 'Abel', 5, 'Zoomlounge', 2013, 23);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('6576364243584', 'Casi Conneau', 'Conneau', 4, 'Avamm', 2005, 31);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('5721567024131', 'Horacio Crocombe', 'Crocombe', 4, 'Gabvine', 2014, 37);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9971118273485', 'Mitzi Matula', 'Matula', 5, 'Feedspan', 2011, 17);
insert into libro (ISBN, nombre, autor, edicion, editorial, año, codigo_curso) values ('9921515011900', 'Cornelle Orange', 'Orange', 5, 'Omba', 2002, 35);

