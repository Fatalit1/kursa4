Create table Client_11 (id numeric(60) primary key, Name varchar(100) not null, Surname varchar(100) not null, Middlename varchar(100), Phone numeric(11) );
Create table Client_ticket_11 (id numeric(60) primary key, Client_id numeric(10) not null, Ticket_id numeric(60) not null, coach_id numeric(60), end_date date not null, Visit numeric(4) );
Create table Coach_11 (id numeric(60) primary key, Name varchar(100) not null, Surname varchar(100) not null, Middlename varchar(100), Phome numeric(11) );
Create table Ticket_type_11 (id numeric(60) primary key, Name varchar(100) not null, Cost numeric(10) not null, visit numeric(10), Months numeric(10) );
Create table Payment_11 (id numeric(60) primary key, Client_id numeric(10), Total numeric(10), Date_ date );
create table logtable_11 (id_ticket_type numeric(60), oldcost numeric(10), date_log date, operation_type varchar(10));
create table logtable_112 (id_payment numeric(60), oldpay numeric(10), date_log date, operation_type varchar(10));


alter table Payment_11
add CONSTRAINT Payment_Client_11
FOREIGN key (Client_id)
REFERENCES Client_11(id);

alter table Client_ticket_11
add CONSTRAINT Client_ticket_Coach_11
FOREIGN key (coach_id)
REFERENCES Coach_11(id);

alter table Client_ticket_11
add CONSTRAINT Client_ticket_Ticket_type_11
FOREIGN key (Ticket_id)
REFERENCES Ticket_type_11(id);

alter table Client_ticket_11
add CONSTRAINT Client_ticket_Client_11
FOREIGN key (Client_id)
REFERENCES Client_11(id);
