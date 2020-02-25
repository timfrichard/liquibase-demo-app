--liquibase formatted sql
--changeset proud.mary:002.1  context:dev and test and production and local
ALTER TABLE EMPLOYEE ALTER COLUMN job_title VARCHAR(50);