insert into USERS(username, password, email, created_at) values('ssar', '1234', 'ssar@nate.com', now());
insert into USERS(username, password, email, created_at) values('cos', '1234', 'cos@nate.com', now());
insert into USERS(username, password, email, created_at) values('love', '1234', 'love@nate.com', now());

insert into boards(title, user_id, content, created_at) values('첫 번째 글입니다.', 1, '내용입니다', now());
insert into boards(title, user_id, content, created_at) values('두 번째 글입니다.', 1, '내용입니다', now());
insert into boards(title, user_id, content, created_at) values('세 번째 글입니다.', 1, '내용입니다', now());
insert into boards(title, user_id, content, created_at) values('네 번째 글입니다.', 1, '내용입니다', now());
insert into boards(title, user_id, content, created_at) values('다섯 번째 글입니다.', 2, '내용입니다', now());
insert into boards(title, user_id, content, created_at) values('여섯 번째 글입니다.', 2, '내용입니다', now());
insert into boards(title, user_id, content, created_at) values('일곱 번째 글입니다.', 2, '내용입니다', now());
insert into boards(title, user_id, content, created_at) values('여덟 번째 글입니다.', 2, '내용입니다', now());
insert into boards(title, user_id, content, created_at) values('아홉 번째 글입니다.', 2, '내용입니다', now());
insert into boards(title, user_id, content, created_at) values('열 번째 글입니다.', 3, '내용입니다', now());

commit;