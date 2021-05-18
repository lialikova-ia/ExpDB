
-- Ситуация: школьник отчислен
delete from STUDENT
where first_nm = 'Артем' and last_nm = 'Власов';
-- Зато поступил новый школьник (его брат)
insert into STUDENT(first_nm, last_nm, year, email)
values ('Евгений', 'Власов', 10, 'e1238@ya.ru');
--В бухгалтерии опять все перепутали, это девочка
update STUDENT set first_nm = 'Евгения', last_nm='Власова'
where first_nm = 'Евгений' and last_nm = 'Власов';
--Проверим, что теперь всё правильно с этой фамилией
select first_nm, last_nm from STUDENT where last_nm like 'Власо%';
--Ну да, в школе теперь только Евгения


--Ещё и ассистент уволился
delete from ASSIST where last_nm='Смирнов';
--Ну и пожалуйста, возьмём нового. А лучше двух
insert into ASSIST(first_nm, last_nm, email) values ('Ян', 'Соколов');
insert into ASSIST(first_nm, last_nm, email) values ('Наталья', 'Чернышева');
--Упс, они поженились
update ASSIST set last_nm = 'Соколова' where last_nm = 'Чернышева';
--Увольняем обоих
delete from ASSIST where last_nm like 'Соколов%'
--Сколько их в итоге осталось? Вроде достаточно
select first_nm, last_nm
from ASSIST;