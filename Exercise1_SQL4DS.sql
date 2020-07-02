-- testing basic statements in SQL: create, insert, select, update, delete and drop.
DROP TABLE instructor;
CREATE TABLE instructor  (
	ins_id INTEGER PRIMARY KEY  NOT NULL,
	lastname VARCHAR(15) NOT NULL,
	firstname VARCHAR(15) NOT NULL,
	city VARCHAR(15), 
	country CHAR(2)
	);

insert into instructor
	(ins_id, lastname, firstname, city, country)
	values
		(1, 'Ahuja', 'Rav', 'Toronto','CA'),
		(2, 'Chong', 'Raul', 'Toronto','CA'),
		(3, 'Vasudevan', 'Hima', 'Chicago','US');
		
select * from instructor;
		
select firstname, lastname, country from instructor
	where city = 'Toronto';
	
update instructor
	set city = 'Markham'
	where ins_id=1; --firstname = 'Rav' and lastname = 'Ahuja'; - this is my version, theirs was with the primary key, it still works
	
delete from instructor
	where  ins_id=2;--firstname = 'Raul' and lastname = 'Chong'; this is my version, theirs was with the primary key, it still works
	
select * from instructor;
