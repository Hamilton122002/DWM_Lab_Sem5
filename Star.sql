create table audience(aud_id int primary key, aud_name varchar(50), 
aud_category varchar(20) constraint d check(aud_category in('student', 'adult', 'senior')), charges int);

insert into audience values(1, 'Manav', 'student', 200);
insert into audience values(2, 'Mann', 'adult', 250);
insert into audience values(3, 'Annu', 'adult', 250);
insert into audience values(4, 'Rakesh', 'senior', 150);
insert into audience values(5, 'Tom', 'student', 200);

create table sports(sport_id int primary key, sport_name varchar(30), game_type varchar(15));

insert into sports values(10, 'Cricket', 'Team');
insert into sports values(20, 'Badminton', 'Solo');
insert into sports values(30, 'Hockey', 'Team');
insert into sports values(40, 'Golf', 'Solo');

create table stadium(stadium_id int primary key, stadium_name varchar(50), stadium_loc varchar(30));

insert into stadium values(100, 'DY Patil', 'Nerul');
insert into stadium values(200, 'Wankhede', 'Marine Lines');
insert into stadium values(300, 'Brabourne', 'Marines');
insert into stadium values(400, 'Rajiv Gandhi', 'Hyderabad');

create table schedule(date_id int primary key, game_day varchar(10), game_month varchar(15), game_year varchar(10));

insert into schedule values(1000, '5', 'March', '2022');
insert into schedule values(2000, '4', 'April', '2022');
insert into schedule values(3000, '14', 'August', '2022');
insert into schedule values(4000, '13', 'September', '2022');

create table sport_stats(audience_id int references audience(aud_id), sport_id int references sports(sport_id),
stadium_id int references stadium(stadium_id), date_id int references schedule(date_id), charges int);

insert into sport_stats values(1, 30 ,200, 1000, 3000);
insert into sport_stats values(3, 20, 400, 2000, 1500);
insert into sport_stats values(2, 40, 200, 3000, 4500);
insert into sport_stats values(5, 10, 300, 1000, 3000);

select sum(ss.charges), aud.aud_category, s.stadium_id, sc.game_year from sport_stats ss, audience aud, stadium s, schedule sc
where ss.audience_id = aud.aud_id and ss.date_id = sc.date_id and ss.stadium_id = s.stadium_id 
group by aud.aud_category, s.stadium_id, sc.game_year
having aud.aud_category = 'student' and s.stadium_id = 400 and sc.game_year = '2022';

select sum(ss.charges), aud.aud_id, s.stadium_id, sp.sport_id from sport_stats ss, audience aud, stadium s, sports sp 
where aud.aud_id= ss.audience_id and s.stadium_id = ss.stadium_id and ss.sport_id = sp.sport_id
group by cube(aud.aud_id, s.stadium_id, sp.sport_id);