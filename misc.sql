Use [Интернет-магазин]
create table Pokupatel
(
Id_pokupatel int Primary key,
FIO nvarchar(1000) not null,
Phone nvarchar(15) not null,
Email nvarchar(50) not null,
Password nvarchar(50) not null,
Adres nvarchar(100) not null
)

create table Haracterystica_tovarov
(
Id_kategorii int Primary key, 
Name_kategorii nvarchar(100) not null,
Proizvoditel nvarchar(100) not null,
Strana_proizvoditelya nvarchar(100) not null,
Brend nvarchar(100) not null,
Material nvarchar(100) not null,
Rasmer nvarchar(100) not null
)

create table Tovar
(
Id_tovara int Primary key,
Name nvarchar(100) not null,
Id_kategorii int not null,
Kolichestvo int not null,
Price float not null,
Image varbinary(max) not null,
Opisanie_tovara nvarchar(max) not null,
Foreign key (Id_kategorii) references Haracterystica_tovarov(Id_kategorii) on update cascade on delete cascade
)

create table Zakaz
(
Id_zakaz int Primary key not null,
Id_pokupatel int not null,
Date_zakaz Date not null,
Srok_sborki int not null,
Sposob_dostavci nvarchar(100) null,
Status_dostavci nvarchar(100) null
Foreign key (Id_pokupatel) references Pokupatel(Id_pokupatel)
)

create table Corzina
(
Id_zakaz int not null,
Id_tovara int not null,
Price float not null,
Kolichestvo int not null,
Discount int not null
Foreign key (Id_zakaz) references Zakaz(Id_zakaz) on update cascade on delete cascade,
Foreign key (Id_tovara) references Tovar(Id_tovara) on update cascade on delete cascade
)