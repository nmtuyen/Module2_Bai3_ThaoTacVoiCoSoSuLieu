use quanlysinhvien;
select *
from student
where student.StudentName like 'h%';
select *
from class
-- where class.StartDate like '%-12-%';
where month(class.StartDate) = 12;
select *
from subject
where subject.credit between 3 and 5;

update student 
set student.ClassID = 2
where student.StudentName = 'hung';
select *
from student, subject, mark
where student.StudentID = mark.StudentID and subject.SubID = mark.SubID
order by mark.Mark asc;