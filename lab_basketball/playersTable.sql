

--create table players (
--    id                  number(4) generated always as identity
--                        constraint players_pk primary key,
--    name                varchar2(20 char)
--                        constraint players_name not null,
--    height              number(3)
--                        constraint players_height check (height >= 0),
--    weight              number(3)
--                        constraint players_weight check (weight >= 0),
--    uniform_number      number(2)
--                        constraint players_uniform_number check (uniform_number >= 0),
--    points              number(2)
--                        constraint players_points check (points >= 0),
--    position            varchar2(20 char)
--                        constraint players_position not null,
--    team_code           varchar2(20 char)
--                        constraint players_team_code_not_null not null,
--    constraint players_team_code_foreign foreign key (team_code) references team (team_code)
--    constraint players_team_uniform_unique unique (team_code, uniform_number)
--    constraint players_name_format check (regexp_like(name, '^[a-zA-Z\sㄱ-힣]+$'))
--);

create table players (
    id                  number(4) generated always as identity
                        constraint players_pk primary key,
    name                varchar2(20 char)
                        constraint players_name not null,

    height              number(3)
                        constraint players_height check (height >= 0),
    weight              number(3)
                        constraint players_weight check (weight >= 0),
    uniform_number      number(2)
                        constraint players_uniform_number check (uniform_number >= 0),
    points              number(2)
                        constraint players_points check (points >= 0),
    position            varchar2(20 char)
                        constraint players_position not null,
    team_code           varchar2(20 char)
                        constraint players_team_code_not_null not null,
    constraint players_team_code_foreign foreign key (team_code) references team (team_code),
    constraint players_team_uniform_unique unique (team_code, uniform_number)
);


insert into players (name, height, weight, uniform_number, points, position, team_code) values
('즈루 할러데이', 191, 93, 4, 13, '가드', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('데릭 화이트', 193, 86, 9, 15, '가드', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('페이 프리차드', 185, 88, 11, 10, '가드', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('JD 데이비슨', 185, 88, 20, 2, '가드', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('제이든 스프링어', 193, 92, 44, 3, '가드', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('제일런 브라운', 198, 102, 7, 23, '가드-포워드', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('스비 미하일류크', 201, 93, 50, 4, '가드-포워드', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('제이슨 테이텀', 206, 102, 0, 27, '포워드', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('오셰이 브리셋', 201, 95, 12, 4, '포워드', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('조던 월시', 201, 93, 27, 2, '포워드', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('샘 하우저', 201, 98, 30, 9, '포워드', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('크리스탑스 포르징기스', 221, 109, 8, 20, '포워드-센터', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('제이비어 틸먼', 201, 111, 26, 5, '포워드-센터', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('루크 코넷', 218, 113, 40, 5, '포워드-센터', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('알 호포드', 206, 108, 42, 9, '포워드-센터', 'BOS');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('네미아스 케타', 213, 113, 88, 6, '센터', 'BOS');

insert into players (name, height, weight, uniform_number, points, position, team_code) values
('코비 화이트', 193, 88, 0, 20, '가드', 'CHI');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('론조 볼', 198, 86, 2, 12, '가드', 'CHI');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('제본 카터', 185, 91, 5, 1, '가드', 'CHI');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('알렉스 카루소', 196, 84, 6, 4, '가드', 'CHI');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('아요 도순무', 193, 91, 12, 3, '가드', 'CHI');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('잭 라빈', 196, 90, 8, 20, '가드-포워드', 'CHI');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('더마 드로잔', 198, 100, 11, 4, '가드-포워드', 'CHI');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('자본테 그린', 193, 93, 24, 7, '가드-포워드', 'CHI');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('토리 크레이그', 201, 100, 13, 4, '포워드', 'CHI');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('줄리언 필립스', 203, 90, 15, 1, '포워드', 'CHI');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('데일런 테리', 201, 88, 25, 2, '포워드', 'CHI');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('패트릭 윌리엄스', 201, 98, 44, 4, '포워드', 'CHI');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('안드레 드러먼드', 208, 126, 3, 8, '센터', 'CHI');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('니콜라 부세비치', 208, 117, 9, 11, '센터', 'CHI');

insert into players (name, height, weight, uniform_number, points, position, team_code) values
('게리 페이튼 II세', 188, 88, 0, 6, '가드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('브랜딘 포지엠스키', 193, 92, 2, 9, '가드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('크리스 폴', 183, 79, 3, 9, '가드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('모제스 무디', 196, 93, 4, 8, '가드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('제롬 로빈슨', 193, 86, 18, 1, '가드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('스테판 커리', 188, 84, 30, 26, '가드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('클레이 탐슨', 198, 97, 11, 18, '가드-포워드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('기 산토스', 198, 100, 15, 4, '가드-포워드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('앤드류 위긴스', 201, 89, 22, 13, '가드-포워드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('레스터 퀴뇨네스', 193, 94, 25, 4, '가드-포워드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('드레이먼드 그린', 198, 104, 23, 9, '포워드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('케본 루니', 203, 100, 5, 5, '포워드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('우스만 가루바', 203, 104, 12, 1, '포워드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('다리오 샤리치', 208, 102, 20, 4, '포워드', 'GSW');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('트레이스 잭슨데이비스', 203, 111, 32, 8, '포워드', 'GSW');

insert into players (name, height, weight, uniform_number, points, position, team_code) values
('제일런 후드쉬피노', 194, 98, 0, 2, '가드', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('디안젤로 러셀', 191, 88, 1, 18, '가드', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('게이브 빈센트', 188, 91, 7, 3, '가드', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('맥스 크리스티', 196, 86, 10, 4, '가드', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('오스틴 리브스', 196, 89, 15, 12, '가드', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('스펜서 딘위디', 196, 98, 26, 13, '가드', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('캠 레디시', 201, 98, 5, 9, '가드-포워드', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('재러드 밴더빌트', 203, 97, 2, 7, '포워드', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('타우린 프린스', 198, 98, 12, 10, '포워드', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('맥스웰 루이스', 199, 88, 21, 0, '포워드', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('르브론 제임스', 203, 120, 23, 27, '포워드', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('하치무라 루이', 203, 104, 28, 13, '포워드', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('앤서니 데이비스', 211, 114, 3, 24, '포워드-센터', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('잭슨 헤이즈', 211, 100, 11, 7, '포워드-센터', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('해리 자일스',	206, 109, 20, 5, '포워드-센터', 'LAL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('크리스천 우드', 206, 97, 35, 14, '포워드-센터', 'LAL');

insert into players (name, height, weight, uniform_number, points, position, team_code) values
('데미안 릴라드', 187, 86, 0, 24, '가드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('말릭 비즐리', 193, 85, 5, 11, '가드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('AJ 그린', 196, 86, 20, 5, '가드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('패트릭 베벌리', 185, 81, 21, 6, '가드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('타이타이 워싱턴 주니어', 191, 89, 23, 1, '가드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('라이언 롤린스', 191, 82, 55, 3, '가드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('마존 보챔프', 196, 90, 3,	4, '가드-포워드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('팻 코너튼', 196, 95, 24, 6, '가드-포워드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('안드레 잭슨 주니어', 198, 95, 44, 2, '가드-포워드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('크리스 리빙스턴', 198, 100, 7, 1, '포워드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('크리스 미들턴', 201, 101, 22, 15, '포워드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('야니스 아데토쿤보', 211, 110, 34, 30, '포워드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('타나시스 아데토쿤보',	198, 99, 43, 1, '포워드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('제이 크라우더', 198, 107, 99, 6, '포워드', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('바비 포르티스', 208, 113, 9, 14, '포워드-센터', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('다닐로 갈리나리',	208, 106, 12, 6, '포워드-센터', 'MIL');
insert into players (name, height, weight, uniform_number, points, position, team_code) values
('브룩 로페즈',	213, 128, 11, 13, '센터', 'MIL');

commit; 




