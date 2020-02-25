-- liquibase formatted sql
-- changeset johnny.doughboy:001.1  context:dev and test and local
-- comment: Comment - This employee will be inserted in every database except production.
INSERT INTO employee (ID_NUMBER, company, last_name, first_name, email_address, job_title, business_phone, home_phone, mobile_phone, fax_phone, address, city, state, zip_code, country, web_page, notes, logonId)
	VALUES (1,'Northwind Traders','Freehafer','Nancy','nancy@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 1st Avenue','Seattle','WA','99999','USA','#http://northwindtraders.com#',NULL, 'nfreehafer');
INSERT INTO employee (ID_NUMBER, company, last_name, first_name, email_address, job_title, business_phone, home_phone, mobile_phone, fax_phone, address, city, state, zip_code, country, web_page, notes, logonId)
	VALUES (2,'Northwind Traders','Cencini','Andrew','andrew@northwindtraders.com','Vice President, Sales','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 2nd Avenue','Bellevue','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','Joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales.', 'acencini');
INSERT INTO employee (ID_NUMBER, company, last_name, first_name, email_address, job_title, business_phone, home_phone, mobile_phone, fax_phone, address, city, state, zip_code, country, web_page, notes, logonId)
	VALUES (3,'Northwind Traders','Kotas','Jan','jan@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 3rd Avenue','Redmond','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','Was hired as a sales associate and was promoted to sales representative.', 'jkotas');
INSERT INTO employee (ID_NUMBER, company, last_name, first_name, email_address, job_title, business_phone, home_phone, mobile_phone, fax_phone, address, city, state, zip_code, country, web_page, notes, logonId)
	VALUES (4,'Northwind Traders','Sergienko','Mariya','mariya@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 4th Avenue','Kirkland','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#',NULL, 'msergienko');
INSERT INTO employee (ID_NUMBER, company, last_name, first_name, email_address, job_title, business_phone, home_phone, mobile_phone, fax_phone, address, city, state, zip_code, country, web_page, notes, logonId)
	VALUES (5,'Northwind Traders','Thorpe','Steven','steven@northwindtraders.com','Sales Manager','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 5th Avenue','Seattle','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','Joined the company as a sales representative and was promoted to sales manager.  Fluent in French.', 'sthorpe');
INSERT INTO employee (ID_NUMBER, company, last_name, first_name, email_address, job_title, business_phone, home_phone, mobile_phone, fax_phone, address, city, state, zip_code, country, web_page, notes, logonId)
	VALUES (6,'Northwind Traders','Neipper','Michael','michael@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 6th Avenue','Redmond','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','Fluent in Japanese and can read and write French, Portuguese, and Spanish.', 'mneipper');
INSERT INTO employee (ID_NUMBER, company, last_name, first_name, email_address, job_title, business_phone, home_phone, mobile_phone, fax_phone, address, city, state, zip_code, country, web_page, notes, logonId)
	VALUES (7,'Northwind Traders','Zare','Robert','robert@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 7th Avenue','Seattle','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#',NULL, 'rzare');
INSERT INTO employee (ID_NUMBER, company, last_name, first_name, email_address, job_title, business_phone, home_phone, mobile_phone, fax_phone, address, city, state, zip_code, country, web_page, notes, logonId)
	VALUES (8,'Northwind Traders','Giussani','Laura','laura@northwindtraders.com','Sales Coordinator','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 8th Avenue','Redmond','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','Reads and writes French.', 'lgiussani');
INSERT INTO employee (ID_NUMBER, company, last_name, first_name, email_address, job_title, business_phone, home_phone, mobile_phone, fax_phone, address, city, state, zip_code, country, web_page, notes, logonId)
	VALUES (9,'Northwind Traders','Hellung-Larsen','Anne','anne@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 9th Avenue','Seattle','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','Fluent in French and German.', 'ahellung');
INSERT INTO employee (ID_NUMBER, company, last_name, first_name, email_address, job_title, business_phone, home_phone, mobile_phone, fax_phone, address, city, state, zip_code, country, web_page, notes, logonId)
	VALUES (10,'Northwind Traders','Richard','Tim','timmyf@northwindtraders.com','Vice President, Coffee','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 2nd Avenue','Bellevue','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','He knows nothing about the company.', 'tim');
--rollback DELETE FROM EMPLOYEE WHERE ID_NUMBER in(1);
--rollback DELETE FROM EMPLOYEE WHERE ID_NUMBER in(2);
--rollback DELETE FROM EMPLOYEE WHERE ID_NUMBER in(3);
--rollback DELETE FROM EMPLOYEE WHERE ID_NUMBER in(4);
--rollback DELETE FROM EMPLOYEE WHERE ID_NUMBER in(5);
--rollback DELETE FROM EMPLOYEE WHERE ID_NUMBER in(6);
--rollback DELETE FROM EMPLOYEE WHERE ID_NUMBER in(7);
--rollback DELETE FROM EMPLOYEE WHERE ID_NUMBER in(8);
--rollback DELETE FROM EMPLOYEE WHERE ID_NUMBER in(9);
--rollback DELETE FROM EMPLOYEE WHERE ID_NUMBER in(10);