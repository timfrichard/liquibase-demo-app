--liquibase formatted sql
--changeset swinging.sammy:002.0  context:dev and test and production and local
ALTER TABLE EMPLOYEE ALTER COLUMN company VARCHAR(40);