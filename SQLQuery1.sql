use day1

--one to many for mountains & peaks

CREATE TABLE Mountains(
  MountainID INT PRIMARY KEY,
  MountainName VARCHAR(50)
)

CREATE TABLE Peaks(
  PeakId INT PRIMARY KEY,
  MountainID INT,
  CONSTRAINT FK_Peaks_Mountains 
  FOREIGN KEY (MountainID)   REFERENCES Mountains(MountainID))

alter table peaks
add PeakName nvarchar(100)

insert into Mountains
values (0, 'phansipan')

INSERT INTO Peaks
VALUES (0, 0, 'phansipan 0')


-- many to many for employees & projects

CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY,  EmployeeName VARCHAR(50), Emp_Address nvarchar(50)
)
insert Employees
values (0, 'thao', '1 abc, Hai Chieu district'),
(1, 'A', 'NY'),
(2, 'B', 'Oregan')


CREATE TABLE Projects(
	ProjectID INT PRIMARY KEY,  ProjectName VARCHAR(50), Proj_address nvarchar(100)
)

insert Projects
values (0, 'Captain America', 'wakanda')

DELETE FROM Projects

CREATE TABLE EmployeesProjects(
	EID INT,  PID INT,
  CONSTRAINT PK_EmployeesProjects
  PRIMARY KEY(EID, PID),

  CONSTRAINT FK_EmployeesProjects_Employees
  FOREIGN KEY(EID)
  REFERENCES Employees(EmployeeID),

  CONSTRAINT FK_EmployeesProjects_Projects
  FOREIGN KEY(PID)
  REFERENCES Projects(ProjectID)
)

insert EmployeesProjects
values (1, 0), (2,0)

delete from EmployeesProjects

truncate table EmployeesProjects

-- one to one relationship Drivers & Cars
CREATE TABLE Drivers(
  DriverID INT PRIMARY KEY,
  DriverName VARCHAR(50),
  Phonenumber varchar(10)
)

CREATE TABLE Cars(
  CarID INT PRIMARY KEY,
  DriverID INT UNIQUE,

  CONSTRAINT FK_Cars_Drivers 
  FOREIGN KEY(DriverID) 
  REFERENCES Drivers(DriverID)
)

