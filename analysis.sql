.print ''

select
    distinct name as 'What are the distinct stocks in the table?'
from Stocks;

.print ''

.print 'Notice how the Facebook stock crashed in the second half of March'
select date, price
from Stocks
where symbol = 'FB'
order by date asc;

.print ''

.print 'The stocks of Facebook and PepsiCo remain above 100, '
.print 'while Electronic Arts goes below 100 after the crash'
select name, price, date
from Stocks
where price > 100;

.print ''

.print 'Sort the table by price'
select *
from Stocks
order by price asc;

.print ''

.print 'Minimum price'
select symbol, min(price), date 
from Stocks;

.print ''

.print 'Maximum price'
select symbol, max(price), date
from Stocks;

.print ''

select printf("%6.2f", avg(price)) as ' Price', name
from Stocks
group by 2
order by 1;

.print ''
