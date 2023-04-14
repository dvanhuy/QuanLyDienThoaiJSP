create database QuanLiDienThoai_JSP
go
use QuanLiDienThoai_JSP
go
-- Create table
create table TaiKhoan
(
tenTaiKhoan VARCHAR(30) not null,
matkhau  VARCHAR(30) not null,
vaiTro varchar(30) not null,
primary key (tenTaiKhoan)
);
-- Create table
create table DienThoai
(
idDienThoai  VARCHAR(20) not null,
ten  NVARCHAR(200) not null,
gia FLOAT not null,
chip VARCHAR(20) not null,
pin NVARCHAR(200) not null,
manHinh NVARCHAR(200) not null,
boNhoTrong NVARCHAR(200) not null,
primary key (idDienThoai)
) ; 
-- Insert data: ---------------------------------------------------------------
insert into TaiKhoan
values ('huy', '123', 'User'),
		('ad', 'ad', 'Admin')

insert into DienThoai
values ('DT001', 'Samsung Galaxy S23', '16000000','Snapdragon 8 Gen 2',N'3900 mAh và sạc nhanh 25 W',N'Dynamic AMOLED 2X','128 GB'),
		('DT002', 'Nokia S23', '18300000','Snapdragon 8 Gen 2',N'3900 mAh và sạc nhanh 25 W',N'Dynamic AMOLED 2X','128 GB')