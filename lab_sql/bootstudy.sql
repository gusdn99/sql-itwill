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

create table comments (
    id                          number(9) generated as identity,
    post_id                     number(9) not null,
    ctext                       varchar2(500 char) not null,
    writer                      varchar2(20 char) not null,
    created_time                timestamp,
    modified_time               timestamp,
    constraint comments_pk_id   primary key (id)
);

alter table comments
add constraint fk_comments_ref_posts
    foreign key (post_id) references posts (id)
    on delete cascade;

-- delete cascade: posts 테이블의 id가 삭제되면 comments 테이블의 모든 post_id가 삭제됨.
    