CREATE TABLE Countries(
    Country_id char(5) PRIMARY KEY,
    Country_name varchar(20),
    Region_id decimal(10,0));

insert into Countries values('IND','India','101' );
insert into Countries values('US','United States','102' );
insert into Countries values('CHI','China','103' );
insert into Countries values('UK','United Kingdom','104' );
insert into Countries values('JAP','Japan','105' );

select * from countries;

create table location(
    location_id decimal(7,0) primary key,
    street_address varchar(40) default null,
    city varchar(10) not null, 
    state_province varchar(16) default null,
    country varchar(19),postalcode varchar(12),
    country_id char(5),
    foreign key (country_id) references countries(country_id));

insert into location values('10101','CR-01 MojoStreet','Bangalore','Karnataka','India','500051','IND');
insert into location values('10102','ETR-15 Siriseri','Chennai','TamilNadu','India','612236','IND');
insert into location values('10201','Paul Street','Belmount','California','United States','10001','US');
insert into location values('10202','Claremount Road','Cape Coral','Florida','United States','50514','US');
insert into location values('10301','Jiangsu Han','Shanghai','','China','513946','CHI');
insert into location values('10302','Hansugi Street','Beijing','','China','500944','CHI');
insert into location values('10402','C/52-MarieJae','Nottingham','','United Kingdom','200940','UK');
insert into location values('10501','Kr-12 Enamoto Road ','Tokyo','','Japan','100510','JAP');

select * from location
    
create table Department (
    Department_id decimal(6,0) primary key,
    department_name varchar(50) not null,
    manager_id decimal(6,0) default null,
    location_id decimal(7,0),
    foreign key (location_id) references location(location_id));

insert into department values('10','Admistration','1001','10101');
insert into department values('20','Executive','1002','10102');
insert into department values('30','Marketing','1003','10201');
insert into department values('40','Human Resources','1004','10202');
insert into department values('50','Purchase','1005','10101');
insert into department values('60','Admistration','1006','10201');
insert into department values('70','Sales','1007','10301');
insert into department values('80','Sales','1008','10501');
insert into department values('90','Human Resources','1009','10402');
insert into department values('100','Marketing','10010','10302');

select * from department;

create table jobs(job_id varchar(10) primary key,
    job_title varchar(40),
    min_salary decimal(6,0),
    max_salary decimal(10,0));

insert into jobs values('Ad_VP','Adiminstration Vice President','150000','330000');
insert into jobs values('Ad_As','Administration Assistant','45000','150000');
insert into jobs values('Fi_Mg','Finance Manager','55000','155000');
insert into jobs values('Fi_HR','Finance HR','60000','300000');
insert into jobs values('Pr_Ac','Accountant','35000','150000');
insert into jobs values('Ac_Mg','Accounting Manager','45000','250000');
insert into jobs values('Pr_Mg','Purchase Manager','45000','250000');
insert into jobs values('Sa_hd','Sales Head','50000','150000');
insert into jobs values('Ex_Mg','Executive Manager','55000','250000');

select * from jobs;

create table Employees (
    Employee_id decimal(6,0) primary key,
    First_name varchar(20),
    Last_name varchar(20),
    email varchar(20),
    phone_no varchar(20),
    Hire_Date varchar(10),
    salary float,
    Department_id decimal(6,0),
    job_id varchar(6),
    manager_id decimal(6,0),
    foreign key (department_id) references department(department_id));

insert into employees values('100001','Karthik','Chandra','karthi@gmail.com','9648324850','2006-02-03','50000','10','Ad_As','1001');
insert into employees values('100002','Sneha','Paul','sneha@gmail.com','8648324850','2011-09-14','60000','20','Ex_mg','1002');
insert into employees values('100003','Christy','Varghese','Christy@gmail.com','9642204850','2010-04-23','75000','40','Fi_HR','1004');
insert into employees values('100004','Irfan','Ahemed','Irfan01@gmail.com','994915440','2005-05-10','75000','40','Fi_HR','1009');
insert into employees values('100005','Karthika','Menon','karthika01@gmail.com','8148335450','2001-02-03','50000','50','Pr_Mg','1005');
insert into employees values('100006','Steve','Jove','steve@gmail.com','9612324850','2001-01-15','300000','60','Ad_VP','1006');
insert into employees values('100007','Mathews','Jocob','jacobm@gmail.com','9611124850','2021-02-05','50000','70','Sa_hd','1007');
insert into employees values('100008','Clara','Gracy','clara@gmail.com','9112248501','2011-12-03','100000','80','Sa_hd','1008');
insert into employees values('100009','Karthik','Menon','karthimen@gmail.com','9648555850','2022-02-03','100000','90','Fi_HR','1009');
insert into employees values('100010','Marie','Curie','marie@gmail.com','964812574','2005-01-13','60000','50','Pr_Mg','1005');
insert into employees values('100011','Nanadana','Prasaad','nanadana@gmail.com','9646664850','2001-02-03','75000','50','Pr_Mg','1005');
insert into employees values('100012','Fatima','Biwi','Fathu@gmail.com','9648321150','2011-05-01','60000','20','Ad_As','1001');
insert into employees values('100013','Asna','KB','asnakb@gmail.com','9641104800','2021-05-12','75000','20','Ex_mg','1002');
insert into employees values('100014','Rasheed','Hasan','Rasheed@gmail.com','9648377850','2011-05-13','100000','90','Fi_HR','1009');
insert into employees values('100015','Joseph','Augustin','jacob@gmail.com','998724850','2015-01-13','50000','50','Pr_Mg','1005');
insert into employees values('100016','Karthika','Chandran','karthiachu@gmail.com','8147264850','2013-06-01','50000','10','Ad_As','1001');
insert into employees values('100017','Federick','Revio','federick@gmail.com','8718300850','2007-08-14','100000','80','Sa_hd','1007');
insert into employees values('100018','Venu','Kumar','kumar@gmail.com','9645124850','2011-09-05','50000','70','Sa_hd','1007');
insert into employees values('100019','Bindu','SI','bindusi@gmail.com','9848314850','2007-10-01','200000','60','Ad_VP','1006');
insert into employees values('100020','Gracy','Angel','gracy@gmail.com','9647224850','2014-02-03','80000','20','Ex_mg','1002');

select * from employees
    
create table job_history(employee_id decimal(6,0),
    start_date varchar(20),
    end_date varchar(20),
    job_id varchar(10),
    department_id decimal(6,0),
    primary key(employee_id,start_date));

insert into job_history values('100005','2001-02-03','2010-03-30','Pr_Mg','50');
insert into job_history values('100010','2005-01-13','2010-01-30','Pr_Mg','50');
insert into job_history values('100020','2014-01-13','2021-10-30','Ex_mg','20');

select * from job_history;

select First_name as "First Name", Last_name as "Last Name" 
    from employees;

select distinct department_id 
    from Employees;

select * from employees 
    order by first_Name;

select First_name, last_name, salary, salary*0.12 as "PF" 
    from employees;

select employee_id, first_name, Last_name,salary 
    from employees 
    order by salary desc;

select sum(salary) as "Total Salary" 
    from employees;

select max(salary) as "Maximum Salary", min(salary) as "Minimum Salary" 
    from employees;

select avg(salary) as "Average Salary",count(*) as "Number of Employees" 
    from employees;

select count(distinct job_id) 
    from employees;

select UPPER(First_Name) 
    from employees;

select a.First_name,a.last_name,b.department_name 
    from employees a,department b 
    where a.department_id=b.department_id; 

select a.First_name,a.last_name,b.department_name ,c.Street_address,c.city,c.state_province,c.country
    from employees a 
    inner join department b 
    on a.department_id=b.department_id
    inner join location c
    on b.location_id=c.location_id;

select a.employee_id,a.First_name,a.last_name,b.job_title,a.salary 
    from employees a 
    inner join jobs b 
    on a.job_id=b.job_id 
    where a.salary>100000;

select a.employee_id,a.First_name,a.last_name,b.job_title,a.salary 
    from employees a 
    inner join jobs b 
    on a.job_id=b.job_id 
    where a.salary>60000
    order by salary;

select b.job_title,sum(salary) as"total salary paid for corresponding job",
    count(employee_id) as "Number of employee with the job Title"
    from employees a 
    left outer join jobs b 
    on a.job_id=b.job_id 
    group by job_title;

select b.job_title,sum(salary) as"total salary paid for corresponding job",
    count(employee_id) as "Number of employee with the job Title"
    from employees a 
    right outer join jobs b 
    on a.job_id=b.job_id 
    group by job_title;

select a.employee_id,a.First_name,a.Last_name,b.department_name,b.manager_id 
    from employees a 
    left outer join department b 
    on a.department_id=b.department_id
    order by employee_id;

select min_salary,max_salary
    from jobs
    where job_title = 'Finance HR'

