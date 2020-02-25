--liquibase formatted sql
--changeset speed.racer:002.2  context:dev and test and production and local
-- comment: Comment - Added the column employee.full_name
ALTER TABLE EMPLOYEE ADD FULL_NAME varchar(60);

-- liquibase formatted sql
-- changeset john.the.baptist:002.21 context:dev and test and local
-- comment: Comment - Update the full_name column with a value.
UPDATE employee
   SET full_name = 'Timmy Fidel Richard'
WHERE id_number = 10;