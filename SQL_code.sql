create table CourseMaster (id integer auto_increment,Nam varchar(50) not null,
DURATION integer ,fees integer  ,TECHNOLOGY varchar(50),primary key(id));
insert into CourseMaster(Nam,DURATION,TECHNOLOGY,fees) values ('Core Java',2,'java',1000);
insert into CourseMaster(Nam,DURATION,TECHNOLOGY,fees) values ('Advance Java',2,'java',2000);
insert into CourseMaster(Nam,DURATION,TECHNOLOGY,fees) values ('Python',1,'python',2500);
select * from CourseMaster;

create table studentMaster(ID integer auto_increment,Name varchar(50) not null,passord varchar(50) not null unique,
email varchar(50) not null,mobile varchar(20) not null,city varchar(50) not null,primary key(id));
insert into studentMaster(name,passord,email,mobile,city) values ('jack','jack123','jack@gmail.com','123456','london');
insert into studentMaster(name,passord,email,mobile,city) values ('bob','bob123','bob@gmail.com','123457','paris');
insert into studentMaster(name,passord,email,mobile,city) values ('satya','satya123','satya@gmail.com','123489','new york');
select * from studentMaster;

create table CoursesEnrolled (eid integer auto_increment,studentid integer not null,courseid integer not null,feeid integer ,
primary key(eid),Foreign key(courseid) references CourseMaster(id),Foreign key(studentid) references studentMaster(ID));
select * from CoursesEnrolled;

create table feepaid (id integer auto_increment,studentsid integer not null,
amount integer,primary key(id));
select * from feepaid;


create table quessolmaster (id integer auto_increment,student varchar(50),passord varchar(50) not null,
course varchar(50),question varchar(1000)  ,solution varchar(1000),primary key(id));
select * from quessolmaster;

create table employee (
 id integer auto_increment,
 firstname varchar(255) NOT NULL,
 lastname varchar(255) NOT NULL,
 filename varchar(255) NOT NULL,
 path varchar(255) NOT NULL,
 added_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (id)
);
select * from employee;

create table studentInput(ID integer auto_increment,Name varchar(50) not null,passord varchar(50) not null unique,
email varchar(50) not null,mobile varchar(20) not null,city varchar(50) not null,primary key(id));
insert into studentInput(name,passord,email,mobile,city) values ('jack','jack123','jack@gmail.com','123456','london');
insert into studentInput(name,passord,email,mobile,city) values ('bob','bob123','bob@gmail.com','123457','paris');
insert into studentInput(name,passord,email,mobile,city) values ('satya','satya123','satya@gmail.com','123489','new york');
select * from studentInput;

create table TeacherDetail(ID integer auto_increment,Name varchar(50) not null,passord varchar(50) not null unique,
email varchar(50) not null,mobile varchar(20) not null,city varchar(50) not null,primary key(id));
insert into TeacherDetail(name,passord,email,mobile,city) values ('mukul jha','mukul123','mukul@gmail.com','123456','london');
insert into TeacherDetail(name,passord,email,mobile,city) values ('rishikesh','rishikesh123','rishikesh@gmail.com','123457','paris');
insert into TeacherDetail(name,passord,email,mobile,city) values ('AK','AK123','AK@gmail.com','123489','new york');
insert into TeacherDetail(name,passord,email,mobile,city) values ('teacher','teacher123','teacher@gmail.com','123489','new york');
select * from TeacherDetail;

CourseMaster;
studentMaster;
CoursesEnrolled;
feepaid;
quessolmaster;
employee;
studentInput;
TeacherDetail;