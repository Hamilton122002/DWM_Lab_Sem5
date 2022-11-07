select sum(spec.charge), spec.category, g.g_id from games g, game_stat gs, spec spec, loc l where
gs.game_id = g.g_id and gs.spec_id = spec.s_id and gs.loc_id = l.l_id
group by cube(spec.category, g.g_id);

//Cube//
select sum(s.charge) as total_charge, s.category, g.g_id, l.l_id from game_stat gs, games g, spec s, loc l
where gs.game_id = g.g_id and gs.spec_id = s.s_id and gs.loc_id = l.l_id
group by cube(s.category, g.g_id, l.l_id);

//Rollup//
select sum(s.charge), s.category, g.g_id, l.l_id from spec s, games g, loc l, game_stat gs 
where gs.game_id = g.g_id and gs.spec_id = s.s_id and gs.loc_id = l.l_id
group by rollup(s.category, g.g_id, l.l_id);

//Slice//
select sum(s.charge), s.category, g.g_id, l.l_id from spec s, games g, loc l, game_stat gs 
where gs.game_id = g.g_id and gs.spec_id = s.s_id and gs.loc_id = l.l_id
group by rollup(s.category, g.g_id, l.l_id) having s.category = 'student';

select sum(s.charge), s.category, g.g_id, l.l_id from spec s, games g, loc l, game_stat gs 
where gs.game_id = g.g_id and gs.spec_id = s.s_id and gs.loc_id = l.l_id
group by rollup(s.category, g.g_id, l.l_id) having g.g_id = 902;

//Dice//
select sum(s.charge), s.category, g.g_id, l.l_id from spec s, games g, loc l, game_stat gs 
where gs.game_id = g.g_id and gs.spec_id = s.s_id and gs.loc_id = l.l_id
group by cube(s.category, g.g_id, l.l_id) having l.l_id in (101, 301) or g.g_id in (902, 901)
or s.category in ('student', 'senior');

