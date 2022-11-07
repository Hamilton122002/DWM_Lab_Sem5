create table game_stat(spec_id int references spec(s_id), loc_id int references loc(l_id),
game_id int references games(g_id), dt_id int references g_date(date_id));

select * from game_stat;

insert into game_stat values(1, 201, 902, 1);
insert into game_stat values(4, 402, 901, 3);
insert into game_stat values(3, 301, 900, 2);
insert into game_stat values(2, 402, 903, 4);