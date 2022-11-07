create table spec(s_id int primary key, s_name varchar(50), category varchar(20)
constraint s check(category in('student', 'adult', 'senior')),
charge int);

insert into spec values(5, 'Dad', 'senior', 150);
insert into spec values(2, 'Harry', 'senior', 150);
insert into spec values(3, 'Gabriel', 'adult', 250);
insert into spec values(4, 'John', 'adult', 250);

select * from spec;