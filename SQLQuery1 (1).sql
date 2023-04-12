--create database day3

use day3

create table Course
(
    CourseKey         nchar(10)    not null,
    CourseName        nvarchar(50) not null,
    CourseDescription nvarchar(200),
    PRIMARY KEY (CourseKey)
)

create table Tutor
(
    tutorID    nchar(10) primary key,
    lastname   nvarchar(50) not null,
    firstname  nvarchar(50),
    tutorPhone nchar(10)    not null,
    email      nvarchar(50),
    hireDate   Date         not null,
    tStatus    nchar(10)    not null,
)

drop table if exists TutorCourse

create table TutorCourse
(
    TutorKey  nchar(10),
    CourseKey nchar(10),
    primary key (TutorKey, CourseKey),
    FOREIGN KEY (TutorKey) REFERENCES Tutor (tutorID),
    FOREIGN KEY (CourseKey) REFERENCES Course (CourseKey),
)


create table Ethnicity
(
    EthnicKey         nchar(10) primary key,
    EthnicDescription nvarchar(50)
)

create table Student
(
    ID                nchar(10) primary key,
    lastname          nvarchar(50) not null,
    firstname         nvarchar(50),
    email             nvarchar(100),
    phone             nvarchar(10),
    gender            nchar(1),
    age               int,
    citizen           bit,
    worker_retraining bit,
    EthKey            nchar(10),
    FOREIGN KEY (EthKey) REFERENCES Ethnicity (EthnicKey)
)

create table studentcourse
(
    studentid              nchar(10),
    courseid               nchar(10),
    student_course_quarter nchar(10),
    primary key (studentid, courseid, student_course_quarter),
    fOREIGN KEY (studentid) REFERENCES Student (ID),
    fOREIGN KEY (courseid) REFERENCES Course (CourseKey)
)


drop table if exists sessionTable

create table sessionTable
(
    sDate            Date,
    sTime            Time,
    TutorKey         nchar(10),
    CourseKey        nchar(10),
    StudentKey       nchar(10),
    sStatus          nchar(10),
    sMaterialCovered nvarchar(255),
    primary key (sDate, sTime, TutorKey, CourseKey),
    FOREIGN KEY (TutorKey, CourseKey) REFERENCES TutorCourse (TutorKey, CourseKey),
    fOREIGN KEY (StudentKey) REFERENCES Student (ID),
)

create table request
(
    requestKey    nchar(10) primary key,
    requestDate   Date,
	courseKey     nchar(10),
    requestStatus nchar(10),
    studentKey    nchar(10),
    FOREIGN KEY (courseKey) REFERENCES Course (CourseKey),
    FOREIGN KEY (StudentKey) REFERENCES Student (ID)
)

create table requestNote
(
    id         DateTime primary key,
    RequestKey nchar(10),
	NoteText   nvarchar(Max),
    FOREIGN KEY (RequestKey) REFERENCES request (requestKey)
)