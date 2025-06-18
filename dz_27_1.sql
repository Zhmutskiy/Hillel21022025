create database qaAuto;
use qaAuto;

create table Car_brands (
    Id int auto_increment primary key,
    Title varchar(100) not null
);

insert into Car_brands (Title)
    values ('Toyota'), ('BMW'), ('Tesla');

describe table Car_brands;

create table Car_models (
    Id int auto_increment primary key,
    CarBrandId int,
    Title varchar(100) not null,
    foreign key (CarBrandId) references Car_brands(Id)
);

	insert into Car_models (CarBrandId, Title)
values 
    (1, 'Corolla'),
    (1, 'Camry'),
    (2, 'X5'),
    (2, 'M5'),
    (3, 'Model 3'),
    (3, 'Model X');

create table Users (
    Id int auto_increment primary key,
    FirstName varchar(100),
    LastName varchar(100),
    Email varchar(150) unique,
    Password varchar(100)
);

	insert into Users (FirstName, LastName, Email, Password)
values 
    ('Igor', 'Zhmutskiy', 'igor@example.com', '123456'),
    ('Anna', 'Kovalenko', 'anna@example.com', 'qwerty'),
    ('Dmytro', 'Bondarenko', 'dmytro@example.com', 'pass123');

create table Cars (
    Id int auto_increment primary key,
    UserId int,
    CarBrandId int,
    CarModelId int,
    Mileage int,
    InitialMileage int,
    foreign key (UserId) references Users(Id),
    foreign key (CarBrandId) references Car_brands(Id),
    foreign key (CarModelId) references Car_models(Id)
);

	insert into Cars (UserId, CarBrandId, CarModelId, Mileage, InitialMileage)
values 
    (1, 1, 1, 120000, 1000),     -- Igor – Toyota Corolla
    (1, 3, 5, 8000, 500),        -- Igor – Tesla Model 3
    (2, 2, 3, 50000, 5000),      -- Anna – BMW X5
    (3, 2, 4, 30000, 2000);      -- Dmytro – BMW M5
    
    show tables;
    describe Users;
    select * from Cars;
    select * from Users;
    select * from Car_Brands;
    select * from Car_Models;
    
    