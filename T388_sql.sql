use t388_db;
show tables;
select * from employee;
DELETE FROM EMPLOYEE;

DELETE FROM EMPLOYEE WHERE GENDER ="mALE";

ALTER TABLE EMPLOYEE 
ADD Location varchar(10);

ALTER TABLE EMPLOYEE 
ADD Bonus float after salary;

ALTER TABLE EMPLOYEE 
ADD Title varchar(5) first;

select * from employee;

alter table employee modify fullname varchar(35);
desc employee; -- This is for comment
describe employee;

alter table employee 
change column location address varchar(36);

select * from employee;
update employee set address ="Thane";

update employee set address ="Dombivli"
where department = "IT";

update employee set title ="Mrs."
where gender = "Female";
select * from employee;

update employee set bonus = salary*0.05;
select * from employee;





DELETE FROM EMPLOYEE WHERE AGE >25;

INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);
