select sum(sp.charge), sp.category, l.stad_name, d.game_year
from game_stat gs, spec sp, loc l, g_date d
where gs.spec_id = sp.s_id and
gs.dt_id = d.date_id
group by sp.category, l.stad_name, d.game_year
having sp.category = 'student'
and d.game_year = '2022'
and l.stad_name = 'Wankhede';