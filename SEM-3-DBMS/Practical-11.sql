-- 1. Create a trigger that converts each newly inserted student name into Uppercase for table student.
Create trigger student before insert on student
for each row
begin
set new.name = upper(new.name);
end;

-- 2. Create a trigger that insert a tuple into studentinfo table after a tuple is inserted into student table.
Create trigger studentinfo after insert on student
for each row
begin
insert into studentinfo values(new.id, new.name, new.age)
end;

-- 3. Create a trigger that updates name in studentinfo table after a name is updated in student table.
Create trigger studentinfo after update on student
for each row
begin
update studentinfo set name = new.name where id = new.id;
end;

-- 4. Create a trigger that deletes a tuple from studentinfo table after a tuple is deleted from student table.
Create trigger studentinfo after delete on student
for each row
begin
delete from studentinfo where id = old.id;
end;

-- 5. Create a trigger that insert a tuple into oldstudent table before a tuple is deleted from student table.
Create trigger oldstudent before delete on student
for each row
begin
insert into oldstudent values (old.id, old.name, old.age);
end;

-- 6. Display all the triggers in your database.
show triggers;
