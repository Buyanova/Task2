create table ����������
(
���_���������� int Primary key,
��� nvarchar(1000) not null,
������� nvarchar(15) not null,
Email nvarchar(50) not null,
������ nvarchar(50) not null,
����� nvarchar(100) not null
)

create table ��������������_�������
(
Id_��������� int Primary key, 
���_��������� nvarchar(100) not null,
������������� nvarchar(100) not null,
������_������������ nvarchar(100) not null,
����� nvarchar(100) not null,
�������� nvarchar(100) not null,
������ nvarchar(100) not null
)

create table �����
(
���_������ int Primary key,
�������� nvarchar(100) not null,
Id_��������� int not null,
����������_�_������ int not null,
���� float not null,
����������� varbinary(max) not null,
��������_������ nvarchar(max) not null,
Foreign key (Id_���������) references ��������������_�������(Id_���������) on update cascade on delete cascade
)

create table �����
(
�����_������ int Primary key not null,
���_���������� int not null,
����_������ Date not null,
�����_������ int not null,
���_���������� varchar(max) null,
�����_�������� nvarchar(100) null
Foreign key (���_����������) references ����������(���_����������)
)

create table ����������_������
(
�����_������ int not null,
���_������ int not null,
����_������ date not null,
�������� nvarchar(25) not null,
���������� int not null
Foreign key (�����_������) references �����(�����_������) on update cascade on delete cascade,
Foreign key (���_������) references �����(���_������) on update cascade on delete cascade
)