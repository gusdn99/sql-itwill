

create table team (
    team_code           varchar2(20 char)
                        constraint team_pk primary key,
    team_name           varchar2(20 char)
                        constraint team_team_name not null,
    coach               varchar2(20 char)
                        constraint team_coach not null
);

insert into team (team_code, team_name, coach) values ('BOS', '보스턴 셀틱스', '조 마줄라');
insert into team (team_code, team_name, coach) values ('CHI', '시카고 불스', '빌리 도너번');
insert into team (team_code, team_name, coach) values ('GSW', '골든스테이트 워리어스', '스티브 커');
insert into team (team_code, team_name, coach) values ('LAL', '로스앤젤레스 레이커스', '다빈 햄');
insert into team (team_code, team_name, coach) values ('MIL', '밀워키 벅스', '닥 리버스');

commit;