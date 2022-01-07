
-- SE ELIMINA LA BASE DE DATOS SI YA EXISTE;
DROP DATABASE IF EXISTS NOTESMANAGER;
-- SE CREA LA BASE DE DATOS 
CREATE DATABASE NOTESMANAGER;


-- CREAR TABLA USUARIOS

CREATE TABLE USUARIOS(
	users_id INT NOT NULL auto_increment,
	full_name VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL,
	PRIMARY KEY(users_id)
);


CREATE TABLE CATEGORIES_NOTES(
	categories_id INT NOT NULL auto_increment,
	name_categories VARCHAR(50) NOT NULL,
	PRIMARY KEY(categories_id)
);


CREATE TABLE NOTES(
	notes_id INT NOT NULL auto_increment,
	users_id INT NOT NULL,
	categories_id INT NOT NULL,
	title VARCHAR(100) NOT NULL,
	creation_date DATE NOT NULL,
	last_modified_date DATE NOT NULL,
	descriptions VARCHAR(500) NOT NULL,
	can_deleted BIT NOT NULL,
	PRIMARY KEY(notes_id)
);


CREATE TABLE ACTIONS(
	actions_id INT NOT NULL auto_increment,
	notes_id INT NOT NULL,
	users_id INT NOT NULL,
	create_action BIT,
	delete_action BIT,
	modified_action BIT,
	date_action DATE NOT NULL,
	PRIMARY KEY(actions_id)
);

ALTER TABLE NOTES
	ADD FOREIGN KEY (users_id)
	REFERENCES USUARIOS(users_id)
	ON UPDATE CASCADE;

ALTER TABLE NOTES
	ADD FOREIGN KEY (categories_id)
	REFERENCES CATEGORIES_NOTES(categories_id);

ALTER TABLE ACTIONS
	ADD FOREIGN KEY (notes_id)
	REFERENCES NOTES(notes_id)
	ON UPDATE CASCADE;

ALTER TABLE ACTIONS
	ADD FOREIGN KEY (users_id)
	REFERENCES USUARIOS(users_id)
	ON DELETE CASCADE;
use notesmanager;

INSERT INTO USUARIOS (full_name, email) values('Erick','eluna1802@alumno.ipn.mx');
INSERT INTO USUARIOS (full_name, email) values('Alan','123@alumno.ipn.mx');
INSERT INTO USUARIOS (full_name, email) values('juan','1802@alumno.ipn.mx');
INSERT INTO USUARIOS (full_name, email) values('pedro','p12@alumno.ipn.mx');
INSERT INTO USUARIOS (full_name, email) values('pablo','p13@alumno.ipn.mx');
INSERT INTO USUARIOS (full_name, email) values('Sandra','Sl11@alumno.ipn.mx');
INSERT INTO USUARIOS (full_name, email) values('Guadalupe','gp4@alumno.ipn.mx');
INSERT INTO USUARIOS (full_name, email) values('Brandon','br54@alumno.ipn.mx');
INSERT INTO USUARIOS (full_name, email) values('Thompson','th1@alumno.ipn.mx');
INSERT INTO USUARIOS (full_name, email) values('Guillermo','furr1@alumno.ipn.mx');

select * from usuarios;

INSERT INTO CATEGORIES_NOTES(name_categories) VALUES('PENDIENTES');
INSERT INTO CATEGORIES_NOTES(name_categories) VALUES('CONTACTOS');
INSERT INTO CATEGORIES_NOTES(name_categories) VALUES('FECHAS');
INSERT INTO CATEGORIES_NOTES(name_categories) VALUES('RECORDATORIOS');
INSERT INTO CATEGORIES_NOTES(name_categories) VALUES('NOTAS DE CLASE');
INSERT INTO CATEGORIES_NOTES(name_categories) VALUES('ACORDEONES');
INSERT INTO CATEGORIES_NOTES(name_categories) VALUES('OCIO');
INSERT INTO CATEGORIES_NOTES(name_categories) VALUES('IMPORTANTES');
INSERT INTO CATEGORIES_NOTES(name_categories) VALUES('CHISTES');
INSERT INTO CATEGORIES_NOTES(name_categories) VALUES('OTRAS');

select * from CATEGORIES_NOTES;

INSERT INTO NOTES(users_id, categories_id, title, creation_date, last_modified_date, descriptions, can_deleted) VALUES(1,1,'NOTA 1', curdate(), curdate(), 'ESTA ES LA NOTA 1', 1);
INSERT INTO NOTES(users_id, categories_id, title, creation_date, last_modified_date, descriptions, can_deleted) VALUES(2,2,'NOTA 2', curdate(), curdate(), 'ESTA ES LA NOTA 2', 0);
INSERT INTO NOTES(users_id, categories_id, title, creation_date, last_modified_date, descriptions, can_deleted) VALUES(3,3,'NOTA 3', curdate(), curdate(), 'ESTA ES LA NOTA 3', 1);
INSERT INTO NOTES(users_id, categories_id, title, creation_date, last_modified_date, descriptions, can_deleted) VALUES(4,4,'NOTA 4', curdate(), curdate(), 'ESTA ES LA NOTA 4', 0);
INSERT INTO NOTES(users_id, categories_id, title, creation_date, last_modified_date, descriptions, can_deleted) VALUES(5,5,'NOTA 5', curdate(), curdate(), 'ESTA ES LA NOTA 5', 1);
INSERT INTO NOTES(users_id, categories_id, title, creation_date, last_modified_date, descriptions, can_deleted) VALUES(6,6,'NOTA 6', curdate(), curdate(), 'ESTA ES LA NOTA 6', 0);
INSERT INTO NOTES(users_id, categories_id, title, creation_date, last_modified_date, descriptions, can_deleted) VALUES(7,7,'NOTA 7', curdate(), curdate(), 'ESTA ES LA NOTA 7', 1);
INSERT INTO NOTES(users_id, categories_id, title, creation_date, last_modified_date, descriptions, can_deleted) VALUES(8,8,'NOTA 8', curdate(), curdate(), 'ESTA ES LA NOTA 8', 0);
INSERT INTO NOTES(users_id, categories_id, title, creation_date, last_modified_date, descriptions, can_deleted) VALUES(9,9,'NOTA 9', curdate(), curdate(), 'ESTA ES LA NOTA 9', 1);
INSERT INTO NOTES(users_id, categories_id, title, creation_date, last_modified_date, descriptions, can_deleted) VALUES(10,10,'NOTA 10', curdate(), curdate(), 'ESTA ES LA NOTA 10', 0);
select * from NOTES;

INSERT INTO ACTIONS(notes_id, users_id, create_action, date_action) VALUES(1,1,1,curdate());
INSERT INTO ACTIONS(notes_id, users_id, modified_action, date_action) VALUES(2,2,1,curdate());
INSERT INTO ACTIONS(notes_id, users_id, delete_action, date_action) VALUES(3,3,1,curdate());
INSERT INTO ACTIONS(notes_id, users_id, create_action, date_action) VALUES(4,4,1,curdate());
INSERT INTO ACTIONS(notes_id, users_id, modified_action, date_action) VALUES(5,5,1,curdate());
INSERT INTO ACTIONS(notes_id, users_id, delete_action, date_action) VALUES(6,6,1,curdate());
INSERT INTO ACTIONS(notes_id, users_id, create_action, date_action) VALUES(7,7,1,curdate());
INSERT INTO ACTIONS(notes_id, users_id, modified_action, date_action) VALUES(8,8,1,curdate());
INSERT INTO ACTIONS(notes_id, users_id, delete_action, date_action) VALUES(9,9,1,curdate());
INSERT INTO ACTIONS(notes_id, users_id, create_action, date_action) VALUES(10,10,1,curdate());

select * from actions;
