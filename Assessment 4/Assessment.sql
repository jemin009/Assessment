#Question - 1
create database assessment;
use assessment;

CREATE TABLE Worker (
    WORKER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY INT,
    JOINING_DATE DATETIME,
    DEPARTMENT VARCHAR(50)
);

INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(1,'Monika','Arora',100000,'2014-02-20 09:00:00','HR'),
(2,'Niharika','Verma',80000,'2014-06-11 09:00:00','Admin'),
(3,'Vishal','Singhal',300000,'2014-02-20 09:00:00','HR'),
(4,'Amitabh','Singh',500000,'2014-02-20 09:00:00','Admin'),
(5,'Vivek','Bhati',500000,'2014-06-11 09:00:00','Admin'),
(6,'Vipul','Diwan',200000,'2014-06-11 09:00:00','Account'),
(7,'Satish','Kumar',75000,'2014-01-20 09:00:00','Account'),
(8,'Geetika','Chauhan',90000,'2014-04-11 09:00:00','Admin');

#1
select * from worker
order by
	FIRST_NAME,
    DEPARTMENT desc;
    
#2
select * from worker
where FIRST_NAME in ("Vipul","Satish");

#3
select * from worker
where FIRST_NAME like "%h" and FIRST_NAME like "______";

#4
select * from worker
where SALARY between 1 and 100000;

#5
select FIRST_NAME, DEPARTMENT, count(*)
from Worker
group by FIRST_NAME, DEPARTMENT
having COUNT(*) > 1;

#6
select * from worker
order by
	SALARY desc
    limit 6;
    
#7
select 
	DEPARTMENT,
	COUNT(*) as total_people
from Worker
group by 
	DEPARTMENT
having
	COUNT(*) < 5;
    
#8
select 
	DEPARTMENT,
    count(*) as Total_people
from worker
group by
	department;
    
#9
select 
	FIRST_NAME, 
    LAST_NAME, 
    DEPARTMENT, 
    SALARY as Highest_salary
from Worker
where SALARY = (select MAX(SALARY) 
				from Worker w2
				where w2.DEPARTMENT = Worker.DEPARTMENT);




#Question - 2
use assessment;

CREATE TABLE Student (
    StdID INT PRIMARY KEY,
    StdName VARCHAR(50),
    Sex VARCHAR(10),
    Percentage INT,
    Class INT,
    Sec CHAR(1),
    Stream VARCHAR(20),
    DOB DATE
);

INSERT INTO Student (StdID, StdName, Sex, Percentage, Class, Sec, Stream, DOB) VALUES
(1001, 'Surekha Joshi', 'Female', 82, 12, 'A', 'Science', '1998-08-03'),
(1002, 'MAAHI AGARWAL', 'Female', 56, 11, 'C', 'Commerce', '2008-11-23'),
(1003, 'Sanam Verma', 'Male', 59, 11, 'C', 'Commerce', '2006-06-29'),
(1004, 'Ronit Kumar', 'Male', 63, 11, 'C', 'Commerce', '1997-11-05'),
(1005, 'Dipesh Pulkit', 'Male', 78, 11, 'B', 'Science', '2003-09-14'),
(1006, 'JAHANVI Puri', 'Female', 60, 11, 'B', 'Commerce', '2008-11-07'),
(1007, 'Sanam Kumar', 'Male', 23, 12, 'F', 'Commerce', '1998-08-03'),
(1008, 'SAHIL SARAS', 'Male', 56, 11, 'C', 'Commerce', '2008-11-07'),
(1009, 'AKSHRA AGARWAL', 'Female', 72, 12, 'B', 'Commerce', '1996-10-01'),
(1010, 'STUTI MISHRA', 'Female', 39, 11, 'F', 'Science', '2008-11-23'),
(1011, 'HARSH AGARWAL', 'Male', 42, 11, 'C', 'Science', '1998-08-03'),
(1012, 'NIKUNJ AGARWAL', 'Male', 49, 12, 'C', 'Commerce', '1997-06-28'),
(1013, 'AKRITI SAXENA', 'Female', 89, 12, 'A', 'Science', '2008-11-23'),
(1014, 'TANI RASTOGI', 'Female', 82, 12, 'A', 'Science', '2008-11-23');

select * from student;

#1
SELECT * FROM student; 

#2
SELECT StdName, DOB 
FROM student 
where StdID = 1005;

#3
SELECT * FROM student 
WHERE percentage >= 80;  

#4
SELECT StdName, Stream, Percentage 
from student 
WHERE percentage > 80; 

#5
SELECT * from student 
WHERE stream = "Science" AND percentage > 75;











