create database MarsColony;

use MarsColony;

create table colonist(
colonist_id int not null primary key auto_increment,
name varchar(30), 
gender varchar(10),
age int not null,
PLoyality decimal (4, 2));

insert into colonist (name, gender, age, PLoyality)
value ('Andrew', 'male', 29, 87.21),
('Ben', 'male', 22, 39.32),
('Mona', 'female', 45, 80.10),
('Jake', 'male', 21, 75.21);

select*from colonist; 

drop table colonist; 

create table Colony(
colony_id int not null primary key auto_increment,
CName varchar(30));

insert into Colony (CName)
value ('Alfa'), ('Delta'), ('Beta'); 

select*from colony; 

create table jobs(
job_id int not null primary key auto_increment, 
JName varchar(20));

insert into jobs (JName)
value ('Miner'), ('Expeditor'), ('Farmer'), ('Lamerjack');

select*from jobs; 

 create table colony_data(
 coloniest_id int not null,
 colonies_id int not null, 
 jobs_id int not null, 
 foreign key (coloniest_id) references colonist (colonist_id),
 foreign key (colonies_id) references colony (colony_id), 
 foreign key (jobs_id) references jobs (job_id)); 
 
 insert into colony_data (coloniest_id, colonies_id, jobs_id)
 values (3, 1, 2), (2, 1, 2), (1, 2, 2);
 
 select*from colonist
 left join colony_data on colony_data.coloniest_id = colonist.colonist_id
 left join Colony on colony_data.colonies_id = Colony.colony_id
 left join jobs on colony_data.jobs_id=jobs.job_id;
 
 drop table colony_data;
 
 select*from colony_data;
 
 select gender, name, count(*) from colonist group by gender;
 
 select name, age, max(PLoyality) from colonist group by name order by PLoyality desc;
 
 select count(*), avg(PLoyality) from colonist;
 
 select*from colonist where age<25; 