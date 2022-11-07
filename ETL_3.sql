create table sales_record(supplier varchaR(50), item_name varchar(20), price int,
sales_date date, branch varchar(20), item_Category varchar(20), num_item_sold int);

insert into sales_record(supplier, price, sales_date, item_Category,
num_item_sold) select s_person, price, sale_date,
item_category, num_item_sold from sale;

insert into sales_record(supplier, item_name, price, sales_date,
branch, num_item_sold) select sale_person, iten_name, item_price, sales_date,
branch, no_of_items_sold from sales_detail;

select * from sales_record;

alter table sales_record drop column item_name;

select * from sales_record where branch is NULL;

update sales_record set item_Category = 'Unknown' where item_Category = 'unknown';

update sales_record set num_item_sold =(select avg(num_item_sold) from
sales_record) where item_Category = 'Software';

create view catalog5 as (select sum(price*num_item_sold) as year from
sales_record group by (sales_date));

select * from catalog5;

create view category3 as (select * from sales_record where item_Category = 'Software');

select * from category3;