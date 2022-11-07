create table sales_detail(sale_person varchar(50), iten_name varchar(30),
item_price int, sales_date date, branch varchar(40),
no_of_items_sold int);

insert into sales_detail values('Shalaka', 'Hard Disk', 3200, '26-Aug-22',
'Malegaon', 15);
insert into sales_detail values('Manav', 'AntiVirus', 1000, '16-Feb-22',
'Nashik', 8);
insert into sales_detail values('Harry', 'KeyBoard', 1800, '29-Jan-22',
'Bhiwandi', 10);
insert into sales_detail values('John', 'CPU', 2000, '25-Aug-22',
'Kurla', 9);
insert into sales_detail values('Aditi', 'RAM', 2800, '02-Feb-22',
'Powai', 12);
insert into sales_detail values('Annu', 'Mouse', 800, '10-Dec-22',
'Nerul',19);
insert into sales_detail values('Mahek', 'Monitor', 8000, '20-Aug-22',
'Chembur', 6);
insert into sales_detail values('Harsh', 'Windows', 3200, '13-Feb-22',
'Mumbai', 5);
insert into sales_detail values('Palakh', 'Speaker', 4000, '12-Mar-22',
'Vashi', 4);
insert into sales_detail values('Drishti', 'Hard Disk', 3000, '18-Aug-22',
'Thane', 2);

select * from sales_detail;