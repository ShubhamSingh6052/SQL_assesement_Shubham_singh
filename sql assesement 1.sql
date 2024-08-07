Create Schema Workers_1;
Use Workers_1;

Create table worker (
Worker_Id Int Not Null,
First_Name Varchar(25),
Last_Name Varchar(25),
Salary Int,
Joining_Date DateTime,
Department Varchar(25)
);

Insert into Worker(Worker_Id,First_Name,Last_Name,Salary,Joining_Date,Department)
Values(1,"Monika","Arora",100000,"2014-02-20 9:00","HR"),
	  (2,"Niharika","Verma",80000,"2014-06-11 9:00","Admin"),
      (3,"Vishal","Singhal",300000,"2014-02-20 9:00","HR"),
      (4,"Amitabh","Singh",500000,"2014-02-20 9:00","Admin"),
      (5,"Vivek","Bhati",500000,"2014-06-11 9:00","Admin"),
      (6,"Vipul","Diwan",200000,"2014-06-11 9:00","Account"),
      (7,"Satish","Kumar",75000,"2014-01-20 9:00","Account"),
      (8,"Geetika","Chouhan",90000,"2014-04-11 9:00","Admin");

-- Q.1 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
Select * from worker order by First_Name ASC, Department Desc;     

-- Q.2 Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
Select * from Worker where First_Name in ("Vipul","Satish");

-- Q.3 Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
Select * from Worker where First_Name like "_____h";

-- Q.4 . Write an SQL query to print details of the Workers whose SALARY lies between 1 and 250000.
Select * from Worker where salary between 1 and 250000;

-- Q.5  Write an SQL query to fetch duplicate records having matching data in some fields of a table.
(Select distinct Salary, count(*) from worker group by Salary having count(*) >1) union all
(Select distinct Joining_Date, count(*) from worker group by Joining_Date having count(*) >1) union all
(Select distinct Department, count(*) from worker group by Department having count(*) >1);

-- 6. Write an SQL query to show the top 6 records of a table.
Select * from worker order by worker_id asc limit 6;

-- 7. Write an SQL query to fetch the departments that have less than five people in them.
Select Department, count(Department) as No_of_People from worker group by Department having count(Department) < 5;

-- 8. Write an SQL query to show all departments along with the number of people in there. 
Select Department, count(*) as No_of_People from worker group by Department;

-- 9. Write an SQL query to print the name of employees having the highest salary in each department.
(Select Department, Salary from worker where Department = "HR" order by Salary Desc limit 1) union all
(Select Department, Salary from worker where Department = "Admin" order by Salary Desc limit 1) union all
(Select Department, Salary from worker where Department = "Account" order by Salary Desc limit 1);
SELECT DEPARTMENT, MAX(SALARY) FROM Worker GROUP BY DEPARTMENT;


