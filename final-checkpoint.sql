create table wine(
	number_wine serial constraint wpk primary key,
	number_producer serial,
	category varchar(50),
	year date default current_date,
	degree float,

	constraint pfkey foreign key(number_producer) references producer(number_producer)


);
 
alter table wine add column quantity int

create table producer(
	number_producer serial constraint ppk primary key,
	first_name varchar(200),
	last_name varchar(200),
	region varchar(200)

);

create table harvest(
	number_producer int,
	number_wine int,
	quantity int,
	constraint hfk1 foreign key (number_producer) references producer(number_producer),
	constraint hfk2 foreign key (number_wine) references wine(number_wine)
	
)


select * from producer

select * from producer order by last_name, first_name,

select * from producer where region = 'sousse'

select sum(quantity), from harvest where number_wine = 12

select quantity, category from wine inner join harvest on wine.number_wine = harvest.number_wine

select first_name, last_name, name,region, quantity from producer inner join harvest on producer.number_producer = harvest.number_producer
where region = 'sousse' and quantity >=1

select number_producer, degree from wine inner join harvest on wine.number_wine = harvest.number_wine
where degree >12 and number_producer = 24
