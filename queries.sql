--query to find each student class name
select s.student_name,s.student_email,c.class_name
from students s inner join classes c on s.class_id = c.class_id;


--query to find number of students in each class
select c.class_name,count(s.student_id) as number_of_students from students s
right join classes c on c.class_id= s.class_id group by c.class_name;


--query to find town name of each teacher
select t.teacher_name,t.teacher_email,tt.town_name from
teachers t right join teacher_towns town on t.teacher_id = town.teacher_id
inner join towns tt on tt.town_id = town.town_id;


--query to find number of teachers from each town
select count(town.town_id),tt.town_name from
teachers t inner join teacher_towns town on t.teacher_id = town.teacher_id
right join towns tt on tt.town_id = town.town_id group by tt.town_name;


--query to find each teacher class and their teaching subjects a/c to class
select t.teacher_name,t.teacher_email,c.class_name,s.subject_name
from teachers t inner join teacher_class_subject tcs on t.teacher_id = tcs.teacher_id
inner join classes c on c.class_id = tcs.class_id inner join subjects s on 
s.subject_id = tcs.subject_id;


--query to find number of teacher available for each subject
select count(t.teacher_id),s.subject_name from teacher_class_subject t
right join subjects s on t.subject_id = s.subject_id group by s.subject_name;


--query to find student email and teacher email included in an invite
select i.invite_id,s.student_email,t.teacher_email,i.invite_timestamp from 
invites i inner join students s on s.student_id = i.student_id inner join 
teachers  t on  t.teacher_id = i.teacher_id;


--query to find number of invites recieved by each subject
select s.subject_name,count(i.invite_id) from subjects s 
left join invite_details i on s.subject_id = i.subject_id group by s.subject_name;


--query to find name of each user i.e teacher and then students
select u.user_email,s.student_name,t.teacher_name from users u
left join students s on u.user_email = s.student_email left join 
teachers t on t.teacher_email = u.user_email;
