--liquibase formatted sql
--changeset swinging.sammy:002.0  context:dev and test and production and local
-- comment: Comment - Altered EMPLOYEE.company from VARCHAR(30) to (40)
ALTER TABLE EMPLOYEE ALTER COLUMN company VARCHAR(40);