-- liquibase formatted sql
-- changeset timmy.richard:001.0  context:dev and test and production and local
-- comment: Comment - Don't cross the street with your eyes closed
CREATE SCHEMA EMPLOYEES_DB AUTHORIZATION DBA;

CREATE SEQUENCE EMPLOYEE_SEQ AS BIGINT START WITH 20 INCREMENT BY 1;

CREATE TABLE EMPLOYEE (
    ID_NUMBER BIGINT GENERATED BY DEFAULT AS SEQUENCE EMPLOYEE_SEQ,
    VERSION_ID BIGINT DEFAULT 0 NOT NULL,
    address VARCHAR(50),
    city VARCHAR(30),
    country VARCHAR(30),
    state VARCHAR(2),
    zip_code INTEGER,
    business_phone VARCHAR(15),
    company VARCHAR(30),
    email_address VARCHAR(50),
    fax_phone VARCHAR(15),
    first_name VARCHAR(30),
    home_phone VARCHAR(15),
    job_title VARCHAR(30),
    last_name VARCHAR(30),
    mobile_phone VARCHAR(15),
    notes VARCHAR(255),
    web_page VARCHAR(100),
    LOGONID VARCHAR(20) NOT NULL,
    PRIMARY KEY (ID_NUMBER)
);

ALTER TABLE EMPLOYEE ADD CONSTRAINT UC_Employee_LogonId UNIQUE (LOGONID);
--rollback DROP SEQUENCE EMPLOYEE_SEQ;
--rollback DROP TABLE EMPLOYEE;
