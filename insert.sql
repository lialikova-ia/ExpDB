
insert into STUDENT (first_nm, last_nm, year, email)
values ('Тимофей', 'Петров', 9, 't1496@ya.ru');
insert into STUDENT (first_nm, last_nm, year, email)
values ('Амина', 'Булгакова', 9, 'a9284@ya.ru');
insert into STUDENT (first_nm, last_nm, year, email)
values ('Полина', 'Макарова', 9, 'p3758@ya.ru');
insert into STUDENT (first_nm, last_nm, year, email)
values ('Матвей', 'Морозов', 10, 'm1935@ya.ru');
insert into STUDENT (first_nm, last_nm, year, email)
values ('Артем', 'Власов', 10, 'a3248@ya.ru');
insert into STUDENT (first_nm, last_nm, year, email)
values ('Маргарита', 'Киселева', 10, 'm0192@ya.ru');
insert into STUDENT (first_nm, last_nm, year)
values ('Александр', 'Панкратов', 10);
insert into STUDENT (first_nm, last_nm, year, email)
values ('Владислав', 'Петровский', 10, 'v2945@ya.ru');
insert into STUDENT (first_nm, last_nm, year, email)
values ('Евгений', 'Акимов', 11, 'e1943@ya.ru');
insert into STUDENT (first_nm, last_nm, year, email)
values ('Ярослав', 'Чернов', 11, 'y2098@ya.ru');
insert into STUDENT (first_nm, last_nm, year, email)
values ('Анна', 'Соколова', 11, 'a1109@ya.ru');
insert into STUDENT (first_nm, last_nm, year, email)
values ('Дмитрий', 'Ушаков', 11, 'd2939@ya.ru');



insert into ASSIST (first_nm, last_nm, email)
values ('Всеволод', 'Смирнов', 'v2939@ya.ru');
insert into ASSIST (first_nm, last_nm, email)
values ('Ярослав', 'Панкратов', 'y2939@ya.ru');
insert into ASSIST (first_nm, last_nm, email)
values ('Марк', 'Павлов', 'm2939@ya.ru');
insert into ASSIST (first_nm, last_nm, email)
values ('Матвей', 'Гусев', 'm2939@ya.ru');
insert into ASSIST (first_nm, last_nm, email)
values ('Арина', 'Козлова', 'a2939@ya.ru');
insert into ASSIST (first_nm, last_nm, email)
values ('Илья', 'Головин', 'i2939@ya.ru');

insert into SET (nm, txt)
values ('Гайка', '');
insert into SET (nm, txt)
values ('Серый ящик Три Нити', 'нужно привязать к стене');
insert into SET (nm, txt)
values ('Чёрный ящик №42', 'зелёный провод +');
insert into SET (nm, txt)
values ('Теплоёмкость алюминия', 'для работы нужен кипяток');
insert into SET (nm, txt)
values ('Черный ящик 6 выводов', 'мультиметры без предохранителей');
insert into SET (nm, txt)
values ('Черный ящик 4 конденсатора', 'мультиметры без предохранителей');


insert into TASK(nm, txt, theme, src, year, set_id) values
('Гайка',
 'Описание эксперимента\nЭто гайка.\nПрактическая часть\n1. Определите коэффициент трения бумаги о бумагу.',
 'Механика', 'от КМС', 9, 1);
insert into TASK(nm, txt, theme, src, year, set_id) values
('ТриНити',
 'Три нити связаны в одной точке. В каждой из нитей имеются резиновые вставки из одного материала равного поперечного сечения, но разные по длине. Первая нить выведена из
трубы через её дно так, что резиновая вставка доступна для измерения. Вторая и третья нити целиком находятся в трубе и прикреплены к крышке трубы. Длина третьей нити от
общего узла до крышки трубы больше длины второй нити. Не вскрывая трубы, выполните следующие задания.
Задания \n 1. Постройте график зависимости удлинения первой нити от удлинения второй нити
(тех, что внутри трубы). \n 2. Найдите на сколько длина третьей нити больше длины второй нити. \n
3. Найдите длину резиновой вставки во второй нити. \n 4. Найдите длину резиновой вставки в третьей нити.',
 'Механика', 'регион 2011', 10, 2);
insert into TASK(nm, txt, theme, src, year, set_id) values
('Чёрный ящик',
 'Внутри черного ящика находятся три резистора и кнопка. Три вывода на кор-
пусе подключены к трём точкам электрической цепи.\n 1. Определите, как соединены резисторы и кнопка внутри черного ящика.\n
2. Определите значения сопротивлений резисторов.',
 'Электричество', 'регион 2009', 10, 3);
insert into TASK(nm, txt, theme, src, year, set_id) values
('Теплоёмкость алюминия I',
 '1. Наполните стакан горячей водой. Измерьте зависимость температуры во-
ды от времени при остывании.\n
2. Постойте линеаризованный график зависимости температуры воды от вре-
мени. Определите значение коэффициента .\n
3. Поместите в стакан алюминиевый цилиндр, налейте горячую воду до того
же уровня, что в пункте 1. Измерьте зависимость температуры от времени
в этом случае.\n
4. Постойте линеаризованный график зависимости, измеренной в п. 3.\n
5. Определите удельную теплоёмкость алюминия.\n
Не наливайте в стакан только что закипевшую воду из чайника!',
 'Термодинамика', 'сборы 2014', 10, 4);
insert into TASK(nm, txt, theme, src, year, set_id) values
('Теплоёмкость алюминия II',
 'Измерьте удельную теплоёмкость алюминия. Удельная теплоёмкость воды 4,2 г*C/Дж
удельная теплоёмкость стекла 0,8 Дж/г*С. Плотность алюминия ρ = 2,7г/см^3. \n
 Не наливайте в стакан только что закипевшую воду из чайника!',
 'Термодинамика', 'сборы 2014', 11, 4);
insert into TASK(nm, txt, theme, src, year, set_id) values
('Шесть выводов',
 'Внутри чёрного ящика находится электрическая схема, изображённая на рисунке.
 Определите сопротивления резисторов и установите соответствие выводов.',
 'Электричество', 'регион 2017', 9, 5);


insert into ITEM(nm, cnt, descr, txt) values ('гайка', 100, 'масса 5 г', 'Возвращайте гайки на место!');
insert into ITEM(nm, cnt, descr) values ('серый ящик три нити', 3, 'заменить ящик 1');
insert into ITEM(nm, cnt, descr, txt) values ('бумага', 1000, 'стандартной плотности', 'лежит в принтере');
insert into ITEM(nm, cnt, descr) values ('динамометр', 100, 'предел 5 Н');
insert into ITEM(nm, cnt, descr, txt) values ('провода', 600, 'крокодил-банан', 'Просьба аккуратно складывать!');
insert into ITEM(nm, cnt, descr, txt) values ('провода', 1000, 'банан-банан', 'Просьба аккуратно складывать!');
insert into ITEM(nm, cnt, descr, txt) values ('мультиметр', 100, 'без предохранителей', 'сгоревшие мультиметры складывайте в черную коробку.');
insert into ITEM(nm, cnt, descr, txt) values ('стакан стеклянный мерный', 20, 'объём 500 мл', 'термостойкий');
insert into ITEM(nm, cnt, descr) values ('алюминиевый цилиндр', 15, 'масса 316.5 г');
insert into ITEM(nm, cnt, descr) values ('черный ящик №42', 10, 'зелёный провод +');
insert into ITEM(nm, cnt, descr, txt) values ('черный ящик 6 выводов', 40, 'сопротивления 100 и 200 кОм', 'некоторые установки отличаются');
insert into ITEM(nm, cnt, descr, txt) values ('черный ящик 4 конденсатора', 4, 'ёмкости 120 и 300 мкФ', 'временно недоступны');
insert into ITEM(nm, cnt, descr, txt) values ('линейка', 200, 'деревянные 50 см', 'Возвращайте на место!');
insert into ITEM(nm, cnt, descr, txt) values ('весы', 50, 'предел 300 г', 'сменные батарейки у лаборанта');
insert into ITEM(nm, cnt, descr) values ('термометр', 40, 'спиртовой');

insert into SET_X_ITEM(set_id, item_id, cnt) values (1, 1, 1);
insert into SET_X_ITEM(set_id, item_id, cnt) values (1, 3, 2);
insert into SET_X_ITEM(set_id, item_id, cnt) values (1, 13, 1);
insert into SET_X_ITEM(set_id, item_id, cnt) values (2, 2, 1);
insert into SET_X_ITEM(set_id, item_id, cnt) values (2, 13, 1);
insert into SET_X_ITEM(set_id, item_id, cnt) values (3, 5, 2);
insert into SET_X_ITEM(set_id, item_id, cnt) values (3, 6, 2);
insert into SET_X_ITEM(set_id, item_id, cnt) values (3, 7, 2);
insert into SET_X_ITEM(set_id, item_id, cnt) values (3, 10, 1);
insert into SET_X_ITEM(set_id, item_id, cnt) values (4, 8, 2);
insert into SET_X_ITEM(set_id, item_id, cnt) values (4, 9, 1);
insert into SET_X_ITEM(set_id, item_id, cnt) values (4, 14, 1);
insert into SET_X_ITEM(set_id, item_id, cnt) values (4, 15, 1);
insert into SET_X_ITEM(set_id, item_id, cnt) values (5, 11, 1);
insert into SET_X_ITEM(set_id, item_id, cnt) values (5, 6, 4);
insert into SET_X_ITEM(set_id, item_id, cnt) values (5, 7, 1);
insert into SET_X_ITEM(set_id, item_id, cnt) values (6, 12, 1);
insert into SET_X_ITEM(set_id, item_id, cnt) values (6, 6, 2);
insert into SET_X_ITEM(set_id, item_id, cnt) values (6, 7, 1);


insert into LESSON(student_id, assist_id, task_id, grade, date)
values (1, 1, 1, 9, to_date('18 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (2, 1, 1, 18, to_date('18 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (3, 1, 1, 5, to_date('18 May 2021', 'DD Mon YYYY'));

insert into LESSON(student_id, assist_id, task_id, grade, date)
values (9, 2, 5, 14, to_date('15 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (10, 2, 5, 18, to_date('15 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (11, 2, 5, 13, to_date('15 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (12, 2, 5, 10, to_date('15 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (6, 2, 5, 12, to_date('15 May 2021', 'DD Mon YYYY'));

insert into LESSON(student_id, assist_id, task_id, grade, date)
values (4, 4, 4, 9, to_date('15 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (5, 4, 4, 16, to_date('15 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (9, 4, 4, 13, to_date('15 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (7, 4, 4, 13, to_date('15 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (8, 4, 4, 10, to_date('15 May 2021', 'DD Mon YYYY'));


insert into LESSON(student_id, assist_id, task_id, grade, date)
values (8, 5, 2, 19, to_date('5 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (9, 5, 2, 15, to_date('5 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (10, 5, 2, 13, to_date('5 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (11, 5, 2, 12, to_date('5 May 2021', 'DD Mon YYYY'));


insert into LESSON(student_id, assist_id, task_id, grade, date)
values (7, 5, 4, 19, to_date('11 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (8, 5, 4, 14, to_date('11 May 2021', 'DD Mon YYYY'));


insert into LESSON(student_id, assist_id, task_id, grade, date)
values (1, 6, 6, 14, to_date('5 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (2, 6, 6, 14, to_date('5 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (3, 6, 6, 14, to_date('5 May 2021', 'DD Mon YYYY'));


insert into LESSON(student_id, assist_id, task_id, grade, date)
values (4, 2, 2, 7, to_date('17 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (5, 2, 2, 11, to_date('17 May 2021', 'DD Mon YYYY'));
insert into LESSON(student_id, assist_id, task_id, grade, date)
values (6, 2, 2, 9, to_date('17 May 2021', 'DD Mon YYYY'));


insert into LESSON(student_id, assist_id, task_id, grade, date)
values (3, 3, 3, 9, to_date('9 May 2021', 'DD Mon YYYY'));

