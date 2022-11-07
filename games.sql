create table games(g_id int primary key, g_name varchar(30), g_type varchar(10));

insert into games values(900, 'Cricket', 'Outdoor');
insert into games values(901, 'Hockey', 'Outdoor');
insert into games values(902, 'Table Tennis', 'Indoor');
insert into games values(903, 'Badminton', 'Indoor');

select * from games;
