
--Функция подсчёта недоступных установок
create function how_many_unavailable()
returns bigint as $$
    with elements as (
        select SET_X_ITEM.set_id, I.cnt / SET_X_ITEM.cnt available
        from SET_X_ITEM
        join ITEM I
        on I.id = SET_X_ITEM.item_id
    ),
    counts as (
        select min(SET.nm), min(available) as available
        from elements
                 join SET
                      on set_id = SET.id
        group by SET.id
    )
    select count(*)
    from (
        select *
        from counts
        where available <= 0
    ) as a;
$$ language sql;

select how_many_unavailable();
--Ни одной. А если сгорят все мультиметры?
update ITEM set cnt = 0 where nm = 'мультиметр';
select how_many_unavailable();
--Три работы не воспроизводимы.