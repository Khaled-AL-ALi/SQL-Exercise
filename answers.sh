SELECT name FROM students;
SELECT name FROM students WHERE age >30;
SELECT name FROM students WHERE age =30 and Gender='F' ;
SELECT points FROM students WHERE name='Alex';
INSERT INTO students VALUES(7,'khaled',23,'M',33);
UPDATE students SET Points=350 where name='Basma';
UPDATE students SET Points=150 where name='Alex';

//part2
CREATE TABLE graduates (
    ID  INTEGER  AUTO_INCREMENT,
    Name varchar(30) NOT NULL UNIQUE,
    Age INTEGER,
    gender varchar(10),
	points INTEGER,
	graduation date,
    PRIMARY KEY (ID)
);

INSERT INTO graduates (name, Age, gender, points)
SELECT name, Age, gender, points
FROM students
WHERE name='Layal';

UPDATE  graduates SET graduation='08/09/2018'
where name='Layal';

delete  from students where name='Layal';

//part 3

select employees.Name
from employees INNER JOIN companies
on companies.Name=employees.Company
where companies.Date< 2000;


select companies.Name
from employees INNER JOIN companies
on companies.Name=employees.Company
where employees.Role='Graphic Designer';

//part 4


select name
from students
where points = (select max(points) from students) ;

select avg(points)
FROM students;

select count()
from students
WHERE points=500;

select name
from students
where name like '%s%';

select name
from students
ORDER by points desc;
