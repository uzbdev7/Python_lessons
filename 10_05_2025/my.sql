create database hospital;
use hospital;
create table patients(
    patient_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    birth_date date,
    gender char(1),
    phone varchar(50),
    addres varchar(200),
    blood_type int
);
INSERT INTO patients (
    patient_id, first_name, last_name, birth_date, gender, phone, addres, blood_type
) VALUES
(1, 'Aziz', 'Karimov', '1995-06-12', 'M', '+998901234567', 'Chilonzor tumani, Toshkent', 1),
(2, 'Laylo', 'Raxmatova', '1988-11-03', 'F', '+998903456789', 'Yunusobod, 6-mavze, Toshkent', 2),
(3, 'Jamshid', 'Tursunov', '1979-03-20', 'M', '+998935678901', 'Buxoro shahri, Navoiy ko‘chasi', 3),
(4, 'Madina', 'Soliyeva', '2000-07-25', 'F', '+998933210123', 'Urganch, Al-Xorazmiy ko‘chasi', 4),
(5, 'Diyor', 'Sodiqov', '1992-01-15', 'M', '+998944321654', 'Samarqand, Registon yo‘li', 1),
(6, 'Dilnoza', 'Qodirova', '1998-09-09', 'F', '+998905551122', 'Qarshi, Mustaqillik ko‘chasi', 2),
(7, 'Murod', 'Ergashev', '1985-04-02', 'M', '+998936789432', 'Farg‘ona, Marg‘ilon yo‘li', 3),
(8, 'Zilola', 'Bekmurodova', '2003-12-30', 'F', '+998937654321', 'Jizzax, Gagarin ko‘chasi', 4),
(9, 'Akmal', 'Yo‘ldoshev', '1990-05-10', 'M', '+998901112233', 'Nukus, Beruniy ko‘chasi', 1),
(10, 'Sevara', 'Nasrullayeva', '1996-08-17', 'F', '+998938899776', 'Andijon, Bobur shoh ko‘chasi', 2),
(11, 'Shahzod', 'Aliyev', '1987-02-14', 'M', '+998933456789', 'Namangan, Navbahor tumani', 3),
(12, 'Nozima', 'Mamatova', '1999-10-05', 'F', '+998907654321', 'Toshkent viloyati, Parkent', 4),
(13, 'Bahodir', 'To‘xtayev', '1991-08-22', 'M', '+998932221133', 'Xiva shahri, Ichan qal’a', 1),
(14, 'Sabina', 'Eshonqulova', '2002-04-18', 'F', '+998908877665', 'Zarafshon, Yoshlik ko‘chasi', 2),
(15, 'Sherzod', 'Bekzodov', '1983-12-11', 'M', '+998936611229', 'Qashqadaryo, Kitob tumani', 3);
-- First query
select first_name,birth_date from patients order by date(birth_date);
-- Second query
select first_name,last_name,birth_date from patients order by birth_date limit 1;
-- Third query
select * from patients where addres like "%Toshkent%" and blood_type = '1';
-- Fourth query
select blood_type, count(*) as qon_guruhi_boyicha_bemorlar_soni from patients group by blood_type;