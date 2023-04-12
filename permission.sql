-- use a database, then create user for the selected database.
use day7_practice
go

-- create login from client level access. (login account here is global, not just in day7_practice)
CREATE LOGIN MyLogin WITH PASSWORD = 'pass@123';
-- create user from that login (crappy thinking from MS!)
CREATE USER MyUser FOR LOGIN MyLogin; 
go

---- BELOW TO GRANT INDIVIDUAL PERMISSION TO LOWEST LEVEL OBJECTS ----
-- grant 'select' for MyUser to table 'customer' 
GRANT SELECT ON OBJECT::dbo.customer TO MyUser;
GO
-- now open another connection and use MyLogin with pass@123 to login 
-- and check if you're only able to work on that table with select

-- grant alter on the default scheme DBO.
GRANT ALTER ON SCHEMA::dbo TO MyUser;
-- then grant 'create table' for MyUser to this database under scheme default dbo.
GRANT CREATE TABLE TO MyUser;

-- grant many other permission to table 'customer'
grant SELECT,UPDATE,INSERT,DELETE ON dbo.customer TO MyUser;
GO

---- GRANT/ASSIGN ROLE to the whole DB ----
-- add MyUser to be db_owner --> have all permission for that DB (day7_practice)
-- 'db_owner' or 'db_datareader'..., what's different ? detail of permission?
-- Look at this: https://docs.microsoft.com/en-us/sql/relational-databases/security/authentication-access/database-level-roles?view=sql-server-ver15
EXEC sp_addrolemember 'db_owner', 'MyUser'
