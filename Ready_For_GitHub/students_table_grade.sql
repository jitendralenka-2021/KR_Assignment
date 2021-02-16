/*
Description: The given table 'students' contains the total marks of a student in a class. 
The teacher of the class wants to assign grades to the students with the following logic:
*/

CREATE TABLE students (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    marks int,
    PRIMARY KEY (id)
);


insert into students(name, marks) values('jitu', 98);
insert into students(name, marks) values('sujit', 75);
insert into students(name, marks) values('Srikanta', 55);
insert into students(name, marks) values('Rahul', 44);
insert into students(name, marks) values('Etina', 35);

select id, name, marks,
    CASE
         when marks<40 then 'F'
        when marks>=40 and marks<50 then 'C'
        when marks>=50 and marks<70 then 'B'
        when marks>=70 and marks<90 then 'A'
        when marks>=90 then 'A+'
    END AS Grade
from students order by id;
