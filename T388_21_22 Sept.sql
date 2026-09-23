use t388_db;
show tables;
-- ORDER BY CLAUSE
select * from employee order by department ;
select * from employee where gender ="Male" order by fullname desc;



-- W G H O 
-- WHERE , GROUP BY -[HAVING] , ORDER BY
-- GROUP BY CLAUSE
select department,count(EmployeeId) from employee group by department;
select gender,count(EmployeeId) from employee group by gender;
select department,sum(salary) from employee group by department;
select department,avg(salary) from employee group by department;
select department,avg(salary), sum(salary) from employee group by department;

select department,avg(salary) as Avg_Salary, sum(salary) as Total_Salary from employee group by department;
select * from employee where age = 25;

select department,count(salary) from employee group by department;
select department,count(gender) from employee group by department;
select department,avg(age),count(*) from employee group by department having avg(age) <27 ;
select department,avg(age),count(*) from employee group by department ;







-- Having Clause ( along with Group By Clause)

CREATE TABLE Projects (
ProjectId INT PRIMARY KEY AUTO_INCREMENT,
ProjectName VARCHAR(200) NOT NULL,
EmployeeId INT,
StartDate DATETIME,
EndDate DATETIME
);

delete from projects where projectid = 12;
select *  from projects;

INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from
scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company',
1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),


(3,'Manage our Company Servers', 1007,
NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),


(4,'Hosting account is not working', 1009,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),


(5,'MySQL database from my desktop
application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),


(6,'Develop new WordPress plugin for my business
website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),


(7,'Migrate web application and database to
new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),


(8,'Android Application development', 1004,
NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),


(9,'Hosting account is not working', 1001,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),


(10,'MySQL database from my desktop
application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),


(11,'Develop new WordPress plugin for my
business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));

select *,datediff(enddate, startdate) as Duration from projects
where datediff(enddate, startdate) = 45;
select *,datediff(enddate, startdate) as Duration from projects;

alter table projects add Duration int ;
select * from projects;
update projects set duration = datediff(enddate,startdate);


select now();
select duration,count(*)   from projects group by duration;
select duration,count(*)   from projects group by duration having count(*)>=2 ;
select duration,count(*) from projects 
where duration>=20 
group by duration 
having count(*)>=2
order by duration desc;

select * from employee  order by EmployeeId desc limit 5;

select * from employee limit 3,5;
select distinct department from employee;
select distinct gender from employee;
select distinct age from employee;
select * from projects;

-- 22 Sept 2026
select * from projects where employeeid is null;

update projects set employeeid = 1003 where ProjectId =6;

-- IN , Between and LIKE

select * from employee where EmployeeId in ( 1003, 1005, 1007);

select * from employee where EmployeeId = 1003 
or  EmployeeId =1005
or EmployeeId =1007;

select * from employee where 
age in ( 23,28)
and department ="IT"
and EmployeeId IN (1008,1001)
;
-- like oPERATOR

SELECT * FROM EMPLOYEE WHERE FULLNAME LIKE "m%";
use t388_db;
select * from ssimple;

select * from ssimple where fullname like "a%";
select * from ssimple where fullname like "_u%";
select * from ssimple where fullname not like "a%";
-- Aggregate Functions
select avg(salary) from employee;
select sum(salary) from employee;
select max(salary) from employee;
select min(salary) from employee;
select count(*) as Total_EMP,
avg(salary) as Average
,sum(salary) as Total_Salary from employee;

-- Math Function
select abs(6*(-7));
select (6*(-7));

select abs(datediff(startdate, enddate)) 
as duration from projects;

select mod(12,3);

select ceil(33);
select floor(33);

select truncate(123456.8765432,1);
select truncate(123456.8765432,0);
select truncate(123456.8765432,-1);









-- AUTO Increment
desc projects;
select exp(2);

select power(2,4);
select pow(2,4);
use t388_db;
select *,sqrt(salary) from employee;

select concat("Good"," ","Morning") as Remarks;

select *,lower(fullname) as newname, upper(fullname) as CAPITALNAME from employee;
select * from employee;

alter table employee modify EMAIL varchar(50);

update employee set EMAIL = concat(fullname,"@gmail.com");
select replace("Hello Everyone, Good Night" ,"Night","Morning") as Statement;
select fullname,replace(fullname,"Jones","Patil") as Changed,
reverse(fullname) 
from employee;

select fullname, length(fullname)
from employee;

select substring("Maharashtra",5,3);
select fullname,length(fullname) as Actual_Length
,ltrim(fullname) as LeftTrim, length(ltrim(fullname)) as LTRIM_Length,
rtrim(fullname) as RightTrim, length(rtrim(fullname)) as RTRIM_Length from trimmer;

select fullname,length(fullname) as Actual_Length,
ltrim(fullname) as LeftTrim, length(ltrim(fullname)) as LTRIM_Length,
rtrim(fullname) as RightTrim, length(rtrim(fullname)) as RTRIM_Length,
trim(fullname) as Both_sides_Trim, length(trim(fullname)) as All_TRIM_Length
from trimmer;

-- Sub Queries
select * from employee; 
select age from employee where fullname ="Mary Smith";

select * from employee 
where age =(select age from employee where fullname ="Mary Smith");

select * from employee 
where salary =(select salary from employee where fullname ="John Doe");

select * from employee ;
where department =(select department from employee where fullname ="John Doe");


select max(salary) from employee;
-- to show 2nd highest salary
select max(salary) from employee 
where salary <(select max(salary) from employee);

-- 3rd higehst Salary
select max(salary) from employee 
where salary <(select max(salary) from employee 
			   where salary <(select max(salary) from employee)
                );







select trim("   Hi          ");








