select current_date();
select curdate();

select current_time();
select curtime();

select now();
select current_timestamp();

select date('2025-02-28');
           -- YYYY-MM-DD--
           
select time('2025-02-15 15:45:00');

select year(now());
select month('2025-09-23');
select day('2025-09-23');

select hour('2025-03-23 15:45:30');
select minute('2025-03-23 15:45:30');
select second('2025-03-23 15:45:30');

select dayname('2025-02-19');
select monthname('2025-08-23');

select extract(year from '2025-09-23 15:45:00');
select extract(month from '2025-09-23 15:45:00');
select extract(day from '2025-09-23 15:45:00');
select extract(hour from '2025-09-23 15:45:00');
select extract(minute from '2025-09-23 15:45:00');
select extract(second from '2025-09-23 15:45:00');

select adddate(now(), interval 10 day);
select date_add(now(), interval 2 month);

select date_sub('2025-09-23', interval 7 day);

select datediff('2025-11-15', '2005-02-04');

select timediff('10:30:00', '09:15:00');

select last_day('2025-03-12');

select dayofweek('2026-03-12');
select dayofweek('2026-03-30');
select dayofyear('2026-03-30');

select week('2026-03-30');
select quarter('2026-03-30');

select utc_date();
select utc_time();
select utc_timestamp();

select unix_timestamp('2026-03-30 12:25:00');
select from_unixtime('1774853700');


