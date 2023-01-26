insert into user_tb(username, password, email, created_at) values('ssar', '0001', 'ssar@nate.com', now());
insert into user_tb(username, password, email, created_at) values('jane', '0002', 'jane@nate.com', now());

insert into board_tb(title, user_id, created_at) values('첫 번째 글',1, now());
insert into board_tb(title, user_id, created_at) values('두 번째 글',1, now());
insert into board_tb(title, user_id, created_at) values('세 번째 글',1, now());
insert into board_tb(title, user_id, created_at) values('네 번째 글',1, now());
insert into board_tb(title, user_id, created_at) values('다섯 번째 글',1, now());
insert into board_tb(title, user_id, created_at) values('첫 번째 글',2 ,now());
insert into board_tb(title, user_id, created_at) values('두 번째 글',2, now());
insert into board_tb(title, user_id, created_at) values('세 번째 글',2 ,now());
insert into board_tb(title, user_id, created_at) values('네 번째 글',2 ,now());
insert into board_tb(title, user_id, created_at) values('다섯 번째 글',2 ,now());

commit;