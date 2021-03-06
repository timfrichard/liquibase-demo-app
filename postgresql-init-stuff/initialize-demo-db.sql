-- Role: "DB_OWNER_USER"
-- DROP ROLE "DB_OWNER_USER";

CREATE ROLE "DB_OWNER_USER" WITH
  LOGIN
  PASSWORD 'mysecret'
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  NOREPLICATION;
  
-- Role: "EMPLOYEEAPPROLE"
-- DROP ROLE "EMPLOYEEAPPROLE";

CREATE ROLE "EMPLOYEEAPPROLE" WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION;
  
-- Role: "EMPLOYEE_APP_USER"
-- DROP ROLE "EMPLOYEE_APP_USER";

CREATE ROLE "EMPLOYEE_APP_USER" WITH
  LOGIN
  PASSWORD 'mynonsecretpassw0rd'
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION;

GRANT "EMPLOYEEAPPROLE" TO "EMPLOYEE_APP_USER";