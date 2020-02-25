--liquibase formatted sql
--changeset swinging.sammy:002.0  context:production and dev and test and local
--comment: Comment - This change increased the Varchar size from thirty to forty on the company column of the employee table.
-- Altering the employee table and increasing the character count of company
ALTER TABLE EMPLOYEE
ALTER COLUMN company TYPE VARCHAR(40);