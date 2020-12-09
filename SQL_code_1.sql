create table quessolmaster (id integer auto_increment,student varchar(50),passord varchar(50) not null,
course varchar(50),question varchar(1000)  ,solution varchar(1000),primary key(id));


create table employee (
 id integer auto_increment,
 firstname varchar(255) NOT NULL,
 lastname varchar(255) NOT NULL,
 filename varchar(255) NOT NULL,
 path varchar(255) NOT NULL,
 added_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (id)
);


create table studentInput(ID integer auto_increment,Name varchar(50) not null,passord varchar(50) not null unique,
email varchar(50) not null,mobile varchar(20) not null,city varchar(50) not null,primary key(id));


create table TeacherDetail(ID integer auto_increment,Name varchar(50) not null,passord varchar(50) not null unique,
email varchar(50) not null,mobile varchar(20) not null,city varchar(50) not null,primary key(id));
