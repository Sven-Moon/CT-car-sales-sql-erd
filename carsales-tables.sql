create table if not exists mechanic (
id serial primary key,
name varchar(100) not null,
hourly_rate numeric(6,2) not null
);

create table if not exists parts (
part_id serial primary key,
price numeric(7,2) not null,
name varchar(50)
);

create table if not exists salesperson (
id serial primary key,
name varchar(100) not null,
hire_date date,
salary numeric(9,2)
);

create table if not exists car (
vin serial primary key,
sold_by int,
foreign key (sold_by) references salesperson(id),
year smallint not null,
model varchar(50) not null,
make varchar(50) not null,
used Bool not null,
msrp numeric(9,2) not null
);

create table if not exists customer (
id serial primary key,
name varchar(50) not null,
credit_score smallInt
);

create table if not exists service_invoice (
id serial primary key,
vin int not null,
foreign key (vin) references car(vin),
customer_id int not null,
foreign key(customer_id) references customer(id),
labor_cost numeric(7,2),
parts_cost numeric(7,2),
work_desc varchar(500)
);

create table if not exists service_parts (
id serial primary key,
part_id int not null,
foreign key(part_id) references parts(part_id),
quantity smallint not null,
service_invoice_id int not null,
foreign key(service_invoice_id) references service_invoice(id)
);

create table if not exists service_invoice (
id serial primary key,
mechanic_id int not null,
foreign key(mechanic_id) references mechanic(mechanic_id),
service_invoice_id int not null,
labor_hours numeric(5,2) not null
);

create table if not exists sales_invoice (
id serial primary key,
vin int,
foreign key(vin) references car(vin),
customer_id int not null,
foreign key(customer_id) references customer(id),
sale_price numeric(9,2) not null
);

create table if not exists mechanic_invoice (
mechanic_id int,
foreign key(mechanic_id) references mechanic(id),
service_invoice_id int,
foreign key(service_invoice_id) references service_invoice(id),
labor_hours smallint not null
);