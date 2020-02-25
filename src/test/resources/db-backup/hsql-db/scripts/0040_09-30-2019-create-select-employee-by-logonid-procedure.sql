--liquibase formatted sql
--changeset goergia.greybeard:003.0  context:dev and test and production and local
-- comment: Comment - Created a SQL Stored Procedure Employee Row by LogonId.
CREATE PROCEDURE SelectEmployeeByLogonId (IN myLogonId VARCHAR(20)) READS SQL DATA DYNAMIC RESULT SETS 1 BEGIN ATOMIC DECLARE result CURSOR WITH RETURN
FOR
SELECT *
FROM EMPLOYEE
WHERE logonid = myLogonId;

OPEN result;

END;

GRANT ALL
  ON PROCEDURE SelectEmployeeByLogonId
  TO "EMPLOYEEAPPROLE";