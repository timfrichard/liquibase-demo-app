--liquibase formatted sql
--changeset proud.mary:002.1  context:production and dev and test and local
--comment: Comment - This change increased the Varchar size from forty to fifty on the job_title column of the employee table.
-- Altering the employee table and increasing the character count of job_title
ALTER TABLE EMPLOYEE
ALTER COLUMN job_title TYPE VARCHAR(50);
--rollback ALTER TABLE EMPLOYEE
--rollback ALTER COLUMN job_title TYPE VARCHAR(40);