create database hw;

use hw;

create table driver (
name varchar(50),
gender varchar (20),
age int,
experiance_years int,
health_trouble bool);

drop table driver; 

select*from driver; 

insert into driver(name, gender, age, experiance_years, health_trouble)
values ('Andrew', 'male', 32, 10, false),
('Steve', 'male', 24, 2, false),
('CLare', 'female', 40, 8, true);

alter table driver
modify column experiance_years int after name; 

alter table driver
add column id int not null Auto_increment,
add primary key (id);

alter table driver 
modify column id int not null first; 

create table car(
mark varchar(30),
year date,
comfort int,
max_speed int);

alter table car
add column driver_id int unique,
add foreign key (driver_id) references driver(id);

drop table car; 

update car
set driver_id = car_id where car_id <4;

select*from car;

insert into car(mark, year, comfort, max_speed)
values ('Mazda', '2008-9-21', 86, 140),
('Nissan', '2014-3-10', 97, 150),
('BMW', '2003-9-11', 79, 145);

select age, count(*) from driver group by age;

alter table car
add column car_id int not null Auto_increment,
add primary key (car_id);

alter table car 
modify column car_id int not null first; 

select driver.name, driver.experiance_years, car.car_id, car.driver_id
from car
left join driver on driver.id = car.driver_id;





create database racing; 

use racing; 

create table racers(
racer_id int not null primary key auto_increment,
name varchar(30) not null);

insert into racers (name)
values ('Andry'), ('Stepan'), ('Bill');

select*from racers;

create table tracks(
track_id int not null primary key auto_increment,
track varchar(30) not null);

insert into tracks (track)
values ('long'), ('short'), ('circle');

select*from tracks; 

drop table tracks; 

create table RT(
Track_id int not null,
Racer_id int not null,
foreign key (Track_id) references tracks (track_id),
foreign key (Racer_id) references racers (racer_id),
primary key (Track_id, Racer_id));

insert into RT (Track_id, Racer_id)
values (3,2), (2,1);

select*from racers; 
select* from tracks; 

select driver.name, driver.experiance_years, car.car_id, car.driver_id
from car
left join driver on driver.id = car.driver_id;

rename table rt to racers_tracks;

select * from tracks 
left join racers_tracks on racers_tracks.track_id = tracks.track_id
left join racers on racers_tracks.racer_id = racers.racer_id; 

select * from racers;
select * from tracks;
select * from racers_tracks;
 


drop table RT; 