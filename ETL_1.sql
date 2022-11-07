create table sale(s_person varchar(20), items_sold int, price int, 
sale_date date, item_category varchar(20), num_item_sold int);

insert into sale values('Manav', 20, 4000, '12-Dec-22', 'Hardware', 25);
insert into sale values('Harry', 12, 1200, '13-Jan-22', 'Software', 18);
insert into sale values('John', 02, 4300, '11-Feb-22', 'Hardware', 12);
insert into sale values('Harris', 20, 1300, '12-Dec-22', 'Hardware', 13);
insert into sale values('Harsh', 15, 1770, '10-Aug-22', 'Software', 08);
insert into sale values('Aditi', 16, 1340, '15-Jan-22', 'Hardware', 01);
insert into sale values('Shalaka', 22, 3400, '14-Apr-22', 'Software', 17);
insert into sale values('Palakh', 01, 1200, '26-May-22', 'Software', 07);
insert into sale values('Mahek', 14, 1600, '13-Aug-22', 'Software', 16);
insert into sale values('Annu', 19, 4340, '16-Dec-22', 'Software', 06);

select * from sale;