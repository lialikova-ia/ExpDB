-- Сколько пар провёл ассистент за последний месяц? Какой средний балл ставил?
select first_nm, min(last_nm), count(date)
from (
    select distinct first_nm, last_nm, date
    from ASSIST
    join LESSON
    on ASSIST.id = LESSON.assist_id
) as less
group by first_nm;

select distinct min(first_nm), min(last_nm), avg(grade)
from ASSIST
join LESSON
on ASSIST.id = LESSON.assist_id
group by assist_id;


-- Средний балл учеников с ранжированием внутри класса
select distinct first_nm, last_nm, year,
                row_number() over (partition by year order by avg) as rank
from (
        select distinct min(first_nm) first_nm, min(last_nm) last_nm,
                min(year) as year, avg(grade) avg
        from STUDENT
        join LESSON
        on STUDENT.id = LESSON.student_id
        group by student_id
     ) as t
order by year, rank;


-- Какая лаба самая простая?
select distinct nm, avg(grade)
from TASK
join LESSON on id = task_id
group by nm
order by avg(grade) desc;


-- Сколько можно собрать установок каждого типа?
with elements as (
    select SET_X_ITEM.set_id, I.cnt / SET_X_ITEM.cnt available
    from SET_X_ITEM
    join ITEM I
    on I.id = SET_X_ITEM.item_id
)
select min(SET.nm), min(available)
from elements
join SET
on set_id = SET.id
group by SET.id;


-- Какие установки используются чаще всего? (считая по числу учеников, а не уроков)
with task_set as (
    select SET.id set_id, TASK.id task_id
    from TASK
    join SET
    on SET.id = TASK.set_id
),
lessons as (
    select task_set.set_id set_id, count(date) count
    from task_set
    join LESSON
    on LESSON.task_id = task_set.task_id
    group by set_id
)
select nm, count
from lessons
join SET
on id = set_id
order by count desc;