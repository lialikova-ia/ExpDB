
-- на всякий случай спрячем почты, а то мало ли
-- ну и их отсутствие тоже стоит обработать
create or replace view STUDENT_VIEW as
select first_nm, last_nm, year,
case when email is null
    then '-'
    else overlay(email placing '****' from 2 for 4)
end
from STUDENT
order by year, last_nm, first_nm;

select *
from STUDENT_VIEW;

create or replace view ASSIST_VIEW as
select first_nm, last_nm,
case when email is null
    then '-'
    else overlay(email placing '****' from 2 for 4)
end
from ASSIST
order by last_nm, first_nm;

select *
from ASSIST_VIEW;

create or replace view TASK_VIEW as
select nm, txt, theme,
case when src is null
    then '?'
    else src
end, year
from TASK
order by year, nm;

select *
from TASK_VIEW;

create or replace view SET_VIEW as
select nm, txt
from SET
order by nm;

select *
from SET_VIEW;


create or replace view ITEM_VIEW as
select nm, cnt, descr,
case when txt is null
    then '-'
    else txt
end
from ITEM
order by nm;

select *
from ITEM_VIEW;

--set_view получился совсем неитнересный, даже непонятно что к чему относится
--поэтому переходим к сложным view с джойнами


create or replace view TASK_X_SET_VIEW as
select TASK.nm as task_nm, SET.nm as set_nm, theme, TASK.txt as task_txt,
case when src is null
    then '?'
    else src
end, year
from TASK
join SET on SET.id = set_id
order by TASK.nm;

select *
from TASK_X_SET_VIEW;

-- Сводная таблица для результатов уроков

create or replace view TASK_X_SET_VIEW as
select TASK.nm as task_nm, SET.nm as set_nm, theme, TASK.txt as task_txt,
case when src is null
    then '?'
    else src
end, year
from TASK
join SET on SET.id = set_id
order by TASK.nm;

create or replace view LESSON_RESULTS as
select A.first_nm || ' ' || A.last_nm as assist,
       S.first_nm || ' ' || S.last_nm as student,
       T.nm as task, grade
from LESSON
join ASSIST A on A.id = LESSON.assist_id
join STUDENT S on S.id = LESSON.student_id
join TASK T on T.id = LESSON.task_id;

select *
from LESSON_RESULTS;