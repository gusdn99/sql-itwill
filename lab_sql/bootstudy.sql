create table posts (
    id                      number(9) generated as identity,
    title                   varchar2(100 char) not null,
    content                 varchar2(1000 char) not null,
    author                  varchar2(20 char) not null,
    created_time            timestamp,
    modified_time           timestamp,
    constraint posts_id_pk  primary key (id)
);

insert into posts (title, content, author)
values ('2번째 꺼', '아무것도 없음', 'guest');

insert into posts (title, content, author)
values ('배고파진다', '배고픈데 먹을 게 읍따', 'user');

commit;