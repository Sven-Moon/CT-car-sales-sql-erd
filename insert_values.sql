insert into mechanic (name, hourly_rate)
values('Bernie',16.25), ('BooBoo', 12.15);

insert into parts (price, name)
values(199.99, "Blinker fluid"), (19.81, "Taco rack");

insert into salesperson (name, hire_date, salary)
values('Sam', '2021-08-15', 13432.28), ('Donovan', '2020-07-12', 19831.23);

insert into car (sold_by, year, model, make, used, msrp)
values(1, 1983, 'Robin', 'Reliant', true, 9999999.99),
(2, 2020, 'Boop', 'Boopity', false, 1234.56);

insert into customer(name, credit_score)
values('Paco', 802), ('Gonzo', 700);

insert into service_invoice(vin, customer_id, labor_cost, parts_cost, work_desc)
values(1,1,932.23,null,'Pulled a hamster out of the tail pipe'),
(2,2,29.99,18.05,'Added gasoline to an empty tank');

insert into service_parts(part_id, quantity, service_invoice_id)
values(1, 0, 1), (2,1,2);

insert into sales_invoice(vin, customer_id, sale_price)
values(1,1,9999999.98),(2,2,843.23);

insert into mechanic_invoice(mechanic_id, service_invoice_id, labor_hours)
values(1,1,3),(2,1,2),(2,2,1)