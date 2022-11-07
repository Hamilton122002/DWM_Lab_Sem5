create table g_date(date_id int primary key, game_Day varchar(20),
game_month varchar(20), game_year varchar(20));

insert into g_date values(1, '12', 'August', '2022');
insert into g_date values(2, '07', 'April', '2022');
insert into g_date values(3, '15', 'January', '2022');
insert into g_date values(4, '29', 'December', '2022');
insert into g_date values(5, '13', 'May', '2022');

select * from g_date;