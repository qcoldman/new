create database my_first_db;

drop database my_first_db;

use my_first_db;

/*create table dog(
name varchar(50),
age int,
breed varchar(80));

create table chair(
name varchar(60),
height int,
width int,
weight int);

drop table dog;

drop table chair;
*/

create table p_charact(
name varchar(30) unique,
is_married bool, 
height int, 
weight decimal(4, 2),
birthday date);

drop table p_charact;

select*from p_charact;

insert into p_charact(name, is_married, height, weight, birthday)
values('Bill', true, 178, 72.21, '1999-11-30'),
('Jean', false, 198, 70.11, '1983-11-20');


alter table p_charact
add column mark decimal(4,2);

update p_charact set mark=11.24 where name ='Bill';
update p_charact set mark=9.34 where name ='Jean';

alter table p_charact
rename column mark to interest;

/*if column mark*/

select name from p_charact where name = 'Bill';

select name, height, interest from p_charact where height > 170;

alter table p_charact
add column id int not null Auto_increment,
add primary key (id);

alter table p_charact 
modify column id int not null first; 

alter table p_charact 
modify column birthday date after is_married; 
 
  
