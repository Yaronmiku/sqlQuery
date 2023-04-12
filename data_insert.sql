INSERT INTO Course
VALUES ('ITC110', 'Beginning Programming', 'Programming using C#')
	 , ('ITC220', 'Introduction to Database', 'Overview of database design and topics')
     , ('ITC255', 'Systems Analysis', 'Systems analysis and design')
     , ('MAT107', 'Applied Math', 'Applied math for computers')
     , ('ENG211', 'Technical Writing', 'Technical writing for information technology')
     , ('WEB110', 'Beginning Web Page Design', 'Basic xhtml')
     , ('ITC226', 'Database Administration', 'SQL Server administration');

INSERT INTO Ethnicity
VALUES ('Caucasian', 'White, European origin')
	 , ('Asian', 'Chinese, Japanese, Korean, Southeast Asian')
     , ('AfrAmer', 'African American or of African origin')
     , ('Hispanic', 'Mexican, Central or South American, Caribbean')
     , ('Pacific', 'Pacific islander')
     , ('Mideast', 'Arabic or Persian')
     , ('Other', 'Other or not disclosed');

INSERT INTO Tutor
VALUES ('980010000', 'Roberts', 'Martha', '2065551467', 'mroberts@yahoo.com', '01/06/2010', 'Active')
     , ('980010001', 'Brown', 'Susan', '2055553528', 'Sb4@hotmail.com', '02/01/2009', 'Active')
     , ('980010002', 'Foster', 'Daniel', '2055553490', 'Foster32@aol.com', '02/12/2009', 'Active')
     , ('980010003', 'Anderson', 'Nathan', '3065556320', NULL, '03/02/2009', 'Inactive')
     , ('980010004', 'Lewis', 'Ginger', '2055552985', 'ginger@hotmail.com', '3/15/2009', 'Active');

INSERT INTO TutorCourse
VALUES ('980010002', 'ITC255')
     , ('980010002', 'ENG211')
     , ('980010004', 'MAT107')
     , ('980010000', 'WEB110')
     , ('980010001', 'ITC220')
     , ('980010001', 'WEB110')
     , ('980010003', 'ITC110');


INSERT INTO Student
VALUES ('990001000', 'Peterson', 'Laura', NULL, '2065559318', 'F', 23, 'TRUE', 'FALSE', 'Caucasian')
     , ('990001002', 'Carter', 'Shannon', 'Shannon@Carter.Org', '2065554301', 'F', 32, 'TRUE', 'TRUE', 'AfrAmer')
     , ('990001003', 'Martinez', 'Sandy', 'sandym@gmail.com', '2065551158', 'F', 18, 'TRUE', 'FALSE', 'Hispanic')
     , ('990001004', 'Nguyen', 'Lu', 'lstar@yahoo.com', '2065552938', 'M', 19, 'FALSE', 'FALSE', 'Asian')
     , ('990001005', 'Zukof', 'Mark', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , ('990001006', 'Taylor', 'Patty', 'P147@marketplace.com', '2065552076', 'F', 42, 'TRUE', 'TRUE', 'Caucasian')
     , ('990001007', 'Thomas', 'Lawrence', NULL, NULL, 'M', 24, 'TRUE', 'FALSE', 'Caucasian')
     , ('980001008', 'Bradbury', 'Ron', 'rbradbury@mars.org', '2065557296', 'M', 53, 'TRUE', 'TRUE', 'Caucasian')
     , ('980001009', 'Carlos', 'Juan', 'Carlos23@hotmail.com', '2065559134', 'M', 25, 'FALSE', 'FALSE', 'Hispanic')
     , ('009001010', 'Min', 'Ly', 'lymin@hotmail.com', '2065552789', 'F', 20, 'FALSE', 'FALSE', 'Asian');


INSERT INTO StudentCourse
VALUES ('990001000', 'ITC220', 'Fall09')
     , ('990001000', 'ITC110', 'Fall09')
     , ('990001000', 'WEB110', 'Fall09')
     , ('990001002', 'ITC220', 'Fall09')
     , ('990001002', 'ITC110', 'Fall09')
     , ('990001004', 'MAT107', 'Fall09')
     , ('990001004', 'WEB110', 'Fall09')
     , ('990001007', 'ITC110', 'Fall09')
     , ('980001009', 'ITC110', 'Fall09')
     , ('980001009', 'ITC220', 'Fall09')
     , ('980001009', 'MAT107', 'Fall09')
     , ('990001002', 'ENG211', 'WinterlO')
     , ('990001002', 'ITC255', 'WinterlO')
     , ('990001003', 'ENG211', 'WinterlO')
     , ('990001003', 'ITC255', 'WinterlO')
     , ('990001005', 'MAT107', 'WinterlO')
     , ('009001010', 'MAT107', 'WinterlO')
     , ('009001010', 'ITC255', 'WinterlO')
     , ('009001010', 'ENG211', 'WinterlO')
     , ('990001000', 'ITC255', 'WinterlO')
     , ('990001000', 'MAT107', 'WinterlO');

INSERT INTO SessionTable
VALUES ('10/20/2009', '14:00', '980010001', 'WEB110', '990001000', 'C', 'CSS')
     , ('10/20/2009', '13:00', '980010003', 'ITC110', '990001000', '0', 'For next loop')
     , ('11/20/2009', '10:30', '980010001', 'ITC220', '990001002', 'C', 'Relations')
     , ('11/05/2009', '10:00', '980010001', 'ITC220', NULL, 'NS', NULL)
     , ('11/10/2009', '13:00', '980010004', 'MAT107', '990001004', 'C', 'Binary Numbers')
     , ('11/10/2009', '14:00', '980010001', 'WEB110', '990001000', '0', 'Web Forms')
     , ('1/15/2010', '09:30', '980010002', 'ITC255', '990001000', 'C', 'Use Cases')
     , ('1/20/2010', '11:00', '980010002', 'ENG211', '990001003', 'C', 'Document structure')
     , ('1/22/2012', '14:00', '980010004', 'MAT107', '990001005', 'NS', NULL)
     , ('02/05/2010', '10:30', '980010002', 'ITC255', '990001000', 'C', 'Feasibility')
     , ('02/10/2010', '13:30', '980010004', 'MAT107', NULL, NULL, NULL)
     , ('02/10/2010', '14:00', '980010004', 'MAT107', NULL, NULL, NULL)
     , ('2/13/2010', '10:00', '980010002', 'ITC255', NULL, NULL, NULL)
     , ('2/14/2010', '11:00', '980010002', 'ENG211', NULL, NULL, NULL);

INSERT INTO Request
VALUES ('1001', '01/05/2010', 'ITC226', 'Active', '009001010');

INSERT INTO RequestNote
VALUES ('01/06/2010 14:00', '1001', 'Only offered once a year and not a lot of requests for this class')
     , ('01/10/2010 10:00', '1001',
        'No students available, because a capstone class would have to get someone off campus');
