create table user_tb(
  id int auto_increment primary key,
  username varchar not null,
  password varchar not null,
  email varchar unique not null,
  created_at timestamp
);

create table board_tb(
    id int auto_increment primary key,
    title varchar not null,
    user_id int not null,
    created_at timestamp
);