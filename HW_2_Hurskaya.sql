--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
create table employee (
	id serial primary key,
	employee_name Varchar(50) not null
);

--Наполнить таблицу employee 70 строками.
insert into employee (employee_name)
values ('user_1'),
	   ('user_2'),
	   ('user_3'),
	   ('user_4'),
	   ('user_5'),
	   ('user_6'),
	   ('user_7'),
	   ('user_8'),
	   ('user_9'),
	   ('user_10'),
	   ('user_11'),
	   ('user_12'),
	   ('user_13'),
	   ('user_14'),
	   ('user_15'),
	   ('user_16'),
	   ('user_17'),
	   ('user_18'),
	   ('user_19'),
	   ('user_20'),
	   ('user_21'),
	   ('user_22'),
	   ('user_23'),
	   ('user_24'),
	   ('user_25'),
	   ('user_26'),
	   ('user_27'),
	   ('user_28'),
	   ('user_29'),
	   ('user_30'),
	   ('user_31'),
	   ('user_32'),
	   ('user_33'),
	   ('user_34'),
	   ('user_35'),
	   ('user_36'),
	   ('user_37'),
	   ('user_38'),
	   ('user_39'),
	   ('user_40'),
	   ('user_41'),
	   ('user_42'),
	   ('user_43'),
	   ('user_44'),
	   ('user_45'),
	   ('user_46'),
	   ('user_47'),
	   ('user_48'),
	   ('user_49'),
	   ('user_50'),
	   ('user_51'),
	   ('user_52'),
	   ('user_53'),
	   ('user_54'),
	   ('user_55'),
	   ('user_56'),
	   ('user_57'),
	   ('user_58'),
	   ('user_59'),
	   ('user_60'),
	   ('user_61'),
	   ('user_62'),
	   ('user_63'),
	   ('user_64'),
	   ('user_65'),
	   ('user_66'),
	   ('user_67'),
	   ('user_68'),
	   ('user_69'),
	   ('user_70');
	  
--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
create table salary (
	id serial primary key,
	monthly_salary Int not null
);

--Наполнить таблицу salary 15 строками:
insert into salary (monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	  
--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id Int not null	  
);

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id, salary_id)
values
(3, 7),
(1, 4),
(5, 9),
(40, 13),
(23, 4),
(11, 2),
(52, 10),
(15, 13),
(26, 4),
(16, 1),
(33, 7),
(65, 2),
(34, 5),
(66, 10),
(58, 12),
(82, 14),
(102, 8),
(59, 12),
(79, 7),
(61, 13),
(62, 6),
(74, 11),
(43, 3),
(94, 10),
(67, 15),
(89, 14),
(81, 9),
(57, 1),
(50, 15),
(4, 2),
(85, 3),
(60, 4),
(24, 5),
(99, 7),
(7, 6),
(45, 8),
(100, 9),
(12, 12),
(2, 11),
(19, 10)
;

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
create table roles (
	id serial primary key,
	roles_name int not null unique
);  

--Поменять тип столба role_name с int на varchar(30)
ALTER TABLE roles ALTER COLUMN roles_name TYPE varchar(30);

--Наполнить таблицу roles 20 строками:
insert into roles (roles_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developerr'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	CONSTRAINT fk_employee FOREIGN KEY(employee_id) REFERENCES employee(id),
	CONSTRAINT fk_role FOREIGN KEY(role_id) REFERENCES roles(id)
);

--Наполнить таблицу roles_employee 40 строками
insert into roles_employee (employee_id, role_id)
values 
(7, 2),
(20, 4),
(3, 9),
(5, 13),
(23, 4),
(11, 2),
(10, 9),
(22, 13),
(21, 3),
(34, 4),
(2, 7),
(1, 19),
(4, 18),
(6, 17),
(8,15),
(9, 8),
(12, 9),
(13, 11),
(14, 13),
(15, 15),
(16, 16),
(17, 3),
(19, 4),
(18, 5),
(24, 6),
(25, 7),
(26, 9),
(27, 8),
(28, 14),
(29, 16),
(30, 18),
(31, 20),
(32, 19),
(33, 17),
(40, 15),
(35, 13),
(36, 11),
(37, 9),
(38, 1),
(39, 3);