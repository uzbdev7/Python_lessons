create database company_db;
use company_db;
create table employees(
    id int AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    age int not null,
    Phone varchar(15),
    Position varchar(100),
    department varchar(100),
    Salary decimal(10,2) not null);
INSERT INTO employees(first_name, last_name, Age, Phone, Position, department, Salary) VALUES
('Ali', 'Karimov', 28, '998901234567', 'Dasturchi', 'IT', 8500.00),
('Malika', 'Tursunova', 32, '998911112233', 'Bosh hisobchi', 'Buxgalteriya', 9500.00),
('Jasur', 'Mahmudov', 25, '998931234567', 'Yordamchi dasturchi', 'IT', 6500.00),
('Shahnoza', 'Olimova', 30, '998941234567', 'HR menejeri', 'Kadrlar', 7200.00),
('Bekzod', 'Islomov', 29, '998901112233', 'Loyiha boshqaruvchi', 'IT', 10500.00),
('Dilnoza', 'Rasulova', 27, '998931112233', 'Marketing mutaxassisi', 'Marketing', 7800.00),
('Azamat', 'Rustamov', 35, '998901234567', 'Texnik xizmat ko‘rsatuvchi', 'Texnik bo‘lim', 6800.00),
('Gulbahor', 'Qodirova', 31, '998901234321', 'Grafik dizayneliyaviy', 6700.00),
('Madina', 'Sobirova', 33, '998901122334', 'Bosh tahlilchi', 'Moliyaviy', 9200.00),
('Umar', 'Abdurahmonov', 40, '998951122334', 'Xavfsizlik muhandisi', 'Xavfsizlik', 8800.00),
('Nigora', 'To‘xtayeva', 29, '998901199988', 'Frontend dasturchi', 'IT', 8400.00),
('Habibullo', 'Soliyev', 36, '998911188877', 'Backend dasturchi', 'IT', 8600.00),
('Sevara', 'Mamatqulova', 27, '998931100220', 'Kadrlar bo‘limi yordamchisi', 'Kadrlar', 6400.00);

-- First query
select * from employees where department = "Savdo";
-- Second query
select * from employees order by Salary desc limit 5;
-- Third query
select* from employees where Phone like "%99890%" or Phone like "%99891%";
-- Fourth querys group by department; 
select department, sum(Salary) as jami_maosh from employee group by department;