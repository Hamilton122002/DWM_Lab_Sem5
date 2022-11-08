create table sales(sales_person varchar(20), item_sold int, price int, sale_date date, category varchar(20), total_items_sold int);

insert into sales values('A', 1, 5000, '2-Feb-2022', 'hardware', 5);
insert into sales values('B', 3, 4500, '4-Aug-2022', 'software', 3);
insert into sales values('C', 2, 6000, '12-Dec-2022', 'hardware', 4);
insert into sales values('D', 4, 5000, '18-Apr-2022', 'software', 5);

create table s_d(s_p varchar(20), item_name varchar(30), price int, sale_date date, branch varchar(20), total int);

insert into s_d values('Z', 'CPU', 5000, '4-Dec-2022', 'Thane', 15000);
insert into s_d values('Y', 'Keyboard', 1000, '5-Nov-2022', 'Chembur', 4000);
insert into s_d values('X', 'Mouse', 2000, '4-Apr-2022', 'Kurla', 2000);

create table total_sale(sales_guy varchar(30), item varchar(30), price int, sales_date date, branch varchar(20));

insert into total_sale(sales_guy, item, price, sales_date) select sales_person, category, price, sale_date from sales;

insert into total_sale(sales_guy, item, price, sales_date, branch) select s_p, item_name, price, sale_date, branch from s_d;

select * from total_sale;

update total_sale set item = 'hardware' where item in ('CPU', 'keyboard', 'Mouse');

create view catalogue1 as(select * from total_sale where item = 'software');

select * from catalogue1;

create view catalogue2 as(select avg(price) as average_price from total_sale where item = 'hardware');

select * from catalogue2;