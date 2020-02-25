--liquibase formatted sql
--changeset goergia.greybeard:003.0  context:production and dev and test and local  endDelimiter:/
-- comment: Comment - Created a SQL Stored Procedure Employee Row by LogonId.
CREATE OR REPLACE PROCEDURE SelectEmployeeByLogonId (VARCHAR) LANGUAGE plpgsql
AS
$$ BEGIN
SELECT *
FROM Employee
WHERE logonid = $1;

END;
$$;
/

GRANT ALL
  ON PROCEDURE SelectEmployeeByLogonId
  TO "EMPLOYEEAPPROLE";