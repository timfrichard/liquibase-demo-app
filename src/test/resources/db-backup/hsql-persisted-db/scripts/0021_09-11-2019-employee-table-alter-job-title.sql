--liquibase formatted sql
--changeset proud.mary:002.1  context:dev and test and production and local
-- comment: Comment - Altered EMPLOYEE.job_title from VARCHAR(40) to (50)
ALTER TABLE EMPLOYEE ALTER COLUMN job_title VARCHAR(50);