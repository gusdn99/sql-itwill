

select * from players order by id desc;
select * from players order by points desc;
select * from players where team_code = 'BOS' order by id desc;

 -- 선수별 득점 순위
select p.id, p.name, t.team_name, p.points, rank() over (order by p.points desc) as ranking
from players p
join team t on p.team_code = t.team_code;

 -- 팀 득점 순위
select team_code, sum(points), rank() over (order by sum(points) desc)
from players
group by team_code;

-- 팀코드별 팀 순위.
select p.team_code, t.team_name, sum(p.points) as SUM_POINTS, rank() over (order by sum(p.points) desc) as "TEAM_RANKING"
from players p
join team t on p.team_code = t.team_code
group by p.team_code, t.team_name;

 -- 팀 정보 프레임에 조인하고 싶음.
select p.team_code, t.team_name, p.name, p.uniform_number, p.points, p.position
from players p
join team t on p.team_code = t.team_code
where p.team_code = 'BOS';

-- 해당 팀에 등 번호가 중복되지 않게 하고 싶음.
select uniform_number, team_code from players where team_code = 'MIL';

select count(*) from players where team_code = 'MIL' and uniform_number = 11;







