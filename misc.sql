create table Покупатель
(
Код_покупателя int Primary key,
ФИО nvarchar(1000) not null,
Телефон nvarchar(15) not null,
Email nvarchar(50) not null,
Пароль nvarchar(50) not null,
Адрес nvarchar(100) not null
)

create table Характеристика_товаров
(
Id_категории int Primary key, 
Имя_категории nvarchar(100) not null,
Производитель nvarchar(100) not null,
Страна_изготовитель nvarchar(100) not null,
Бренд nvarchar(100) not null,
Материал nvarchar(100) not null,
Размер nvarchar(100) not null
)

create table Товар
(
Код_товара int Primary key,
Название nvarchar(100) not null,
Id_категории int not null,
Количество_в_наборе int not null,
Цена float not null,
Изображение varbinary(max) not null,
Описание_товара nvarchar(max) not null,
Foreign key (Id_категории) references Характеристика_товаров(Id_категории) on update cascade on delete cascade
)

create table Заказ
(
Номер_заказа int Primary key not null,
Код_покупателя int not null,
Дата_заказа Date not null,
Сроки_сборки int not null,
Доп_информация varchar(max) null,
Адрес_доставки nvarchar(100) null
Foreign key (Код_покупателя) references Покупатель(Код_покупателя)
)

create table Содержимое_заказа
(
Номер_заказа int not null,
Код_товара int not null,
Дата_заказа date not null,
Упаковка nvarchar(25) not null,
Количество int not null
Foreign key (Номер_заказа) references Заказ(Номер_заказа) on update cascade on delete cascade,
Foreign key (Код_товара) references Товар(Код_товара) on update cascade on delete cascade
)