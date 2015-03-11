--Connor Sargent
select ordno, dollars
from orders;

select name, city
from agents 
where name = 'Smith'

select pid, name, priceUSD 
from products 
where quantity > 200,000

select name, city, customers 
from products 
where city = 'Dallas'

select name
from agents 
where city != 'New York', 'Tokyo'


select *
from products
where != 'Dallas', 'Duluth', priceUSD > 1.00

select *
from orders
where mon = 'jan', 'may'

select *
from orders
where mon = 'feb', dollars > 500

select *
from orders
where cid = c005






