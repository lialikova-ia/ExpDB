create database ExpDBv;

create table STUDENT (
    id serial primary key,
    first_nm varchar(40) not null,
    last_nm varchar(40) not null,
    year int not null,
    email varchar(40)
);

create table ASSIST (
    id serial primary key,
    first_nm varchar(40) not null,
    last_nm varchar(40) not null,
    email varchar(40)
);

create table SET (
    id serial primary key,
    nm varchar(40) not null,
    txt varchar
);

create table TASK (
    id serial primary key,
    nm varchar(40) not null,
    txt varchar not null,
    theme varchar(40) not null,
    src varchar(40),
    year int,
    constraint set_id foreign key (id) references SET(id)
                  on delete cascade
                  on update cascade
);

create table ITEM (
    id serial primary key,
    nm varchar(40) not null,
    cnt integer not null,
    descr varchar not null,
    txt varchar
);

create table SET_X_ITEM (
    set_id int not null ,
    item_id int not null,
    foreign key (set_id) references SET(id)
                  on delete cascade
                  on update cascade,
    foreign key (item_id) references ITEM(id)
                  on delete cascade
                  on update cascade,
    primary key (set_id, item_id)
);

create table LESSON (
    student_id int not null ,
    assist_id int not null,
    task_id int not null,
    grade real not null,
    date date not null,
    txt varchar,
    foreign key (student_id) references STUDENT(id)
                  on delete cascade
                  on update cascade,
    foreign key (assist_id) references ASSIST(id)
                  on delete cascade
                  on update cascade,
    foreign key (task_id) references TASK(id)
                  on delete cascade
                  on update cascade,
    primary key (student_id, assist_id, task_id)
);

