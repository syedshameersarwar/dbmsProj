--dumping class data into classes table
INSERT INTO CLASSES(class_id,class_name) VALUES (CLASS_SEQ.NEXTVAL,'Karachi Board 9th Computer');    
INSERT INTO CLASSES(class_id,class_name) VALUES (CLASS_SEQ.NEXTVAL,'Karachi Board 9th Science');
INSERT INTO CLASSES(class_id,class_name) VALUES (CLASS_SEQ.NEXTVAL,'Karachi Board 10th');
INSERT INTO CLASSES(class_id,class_name) VALUES (CLASS_SEQ.NEXTVAL,'Karachi Board 11th Medical');
INSERT INTO CLASSES(class_id,class_name) VALUES (CLASS_SEQ.NEXTVAL,'Karachi Board 11th Engineering');
INSERT INTO CLASSES(class_id,class_name) VALUES (CLASS_SEQ.NEXTVAL,'Karachi Board 11th Computer');
INSERT INTO CLASSES(class_id,class_name) VALUES (CLASS_SEQ.NEXTVAL,'Karachi Board 11th Commerce');
INSERT INTO CLASSES(class_id,class_name) VALUES (CLASS_SEQ.NEXTVAL,'Karachi Board 12th Medical');
INSERT INTO CLASSES(class_id,class_name) VALUES (CLASS_SEQ.NEXTVAL,'Karachi Board 12th Engineering');
INSERT INTO CLASSES(class_id,class_name) VALUES (CLASS_SEQ.NEXTVAL,'Karachi Board 12th Computer');
INSERT INTO CLASSES(class_id,class_name) VALUES (CLASS_SEQ.NEXTVAL,'Karachi Board 12th Commerce');




--dumping subject data into subjects table
INSERT INTO SUBJECTS(subject_id,subject_name) VALUES (SUBJECT_SEQ.NEXTVAL,'Maths');
INSERT INTO SUBJECTS(subject_id,subject_name) VALUES (SUBJECT_SEQ.NEXTVAL,'Physics');
INSERT INTO SUBJECTS(subject_id,subject_name) VALUES (SUBJECT_SEQ.NEXTVAL,'Chemistry');
INSERT INTO SUBJECTS(subject_id,subject_name) VALUES (SUBJECT_SEQ.NEXTVAL,'Urdu');
INSERT INTO SUBJECTS(subject_id,subject_name) VALUES (SUBJECT_SEQ.NEXTVAL,'Islamiat');
INSERT INTO SUBJECTS(subject_id,subject_name) VALUES (SUBJECT_SEQ.NEXTVAL,'English');
INSERT INTO SUBJECTS(subject_id,subject_name) VALUES (SUBJECT_SEQ.NEXTVAL,'Pakistant Studies');
INSERT INTO SUBJECTS(subject_id,subject_name) VALUES (SUBJECT_SEQ.NEXTVAL,'Computer');
INSERT INTO SUBJECTS(subject_id,subject_name) VALUES (SUBJECT_SEQ.NEXTVAL,'Sindhi');
INSERT INTO SUBJECTS(subject_id,subject_name) VALUES (SUBJECT_SEQ.NEXTVAL,'Political Science');




--dumping town data into towns table
INSERT INTO TOWNS(town_id,town_name) VALUES (TOWN_SEQ.NEXTVAL,'Gulistan-e-Johar');
INSERT INTO TOWNS(town_id,town_name) VALUES (TOWN_SEQ.NEXTVAL,'Gulshan-e-Iqbal');
INSERT INTO TOWNS(town_id,town_name) VALUES (TOWN_SEQ.NEXTVAL,'Malir');
INSERT INTO TOWNS(town_id,town_name) VALUES (TOWN_SEQ.NEXTVAL,'Lyari');
INSERT INTO TOWNS(town_id,town_name) VALUES (TOWN_SEQ.NEXTVAL,'Hyderi');
INSERT INTO TOWNS(town_id,town_name) VALUES (TOWN_SEQ.NEXTVAL,'Clifton');
INSERT INTO TOWNS(town_id,town_name) VALUES (TOWN_SEQ.NEXTVAL,'Bahria Town');
INSERT INTO TOWNS(town_id,town_name) VALUES (TOWN_SEQ.NEXTVAL,'North Karachi');
INSERT INTO TOWNS(town_id,town_name) VALUES (TOWN_SEQ.NEXTVAL,'North Nazimabad');




--dumping user type data into user_type table
INSERT INTO USER_TYPE(user_type_id,type_name) VALUES(1,'Student');
INSERT INTO USER_TYPE(user_type_id,type_name) VALUES(2,'Teacher');




--dumping student data into students table
INSERT INTO STUDENTS(student_id,student_name,student_email,class_id,student_contact)
    VALUES (STUDENT_SEQ.NEXTVAL,'Shameer','syedshameersarwar@gmail.com',9,'0331-2058811');
INSERT INTO STUDENTS(student_id,student_name,student_email,class_id,student_contact)
    VALUES (STUDENT_SEQ.NEXTVAL,'Kazim','rkazim78@gmail.com',5,'0334-6177924');
INSERT INTO STUDENTS(student_id,student_name,student_email,class_id,student_contact)
    VALUES (STUDENT_SEQ.NEXTVAL,'Saad','syedsms98@gmail.com',9,'0331-6432134');
INSERT INTO STUDENTS(student_id,student_name,student_email,class_id,student_contact)
    VALUES (STUDENT_SEQ.NEXTVAL,'Ali','ali4445@gmail.com',7,'0312-4538543');
INSERT INTO STUDENTS(student_id,student_name,student_email,class_id,student_contact)
    VALUES (STUDENT_SEQ.NEXTVAL,'Hassan','hassan68@yahoo.com',3,'0314-5123420');
INSERT INTO STUDENTS(student_id,student_name,student_email,class_id,student_contact)
    VALUES (STUDENT_SEQ.NEXTVAL,'Shaheer','shaheer97@gmail.com',6,'0345-2264399');
INSERT INTO STUDENTS(student_id,student_name,student_email,class_id,student_contact)
    VALUES (STUDENT_SEQ.NEXTVAL,'Kamal','kamalattaturk@gmail.com',10,'0333-2000176');
INSERT INTO STUDENTS(student_id,student_name,student_email,class_id,student_contact)
    VALUES (STUDENT_SEQ.NEXTVAL,'Ahmed','ahmedimran78@gmail.com',9,'0312-4327547');
INSERT INTO STUDENTS(student_id,student_name,student_email,class_id,student_contact)
    VALUES (STUDENT_SEQ.NEXTVAL,'Asad','asadart48@gmail.com',11,'0344-6419803');
INSERT INTO STUDENTS(student_id,student_name,student_email,class_id,student_contact)
    VALUES (STUDENT_SEQ.NEXTVAL,'Saim','saimakhtar59@gmail.com',5,'0331-2544823');




--dumping teacher data into teachers table
INSERT INTO TEACHERS(teacher_id,teacher_name,teacher_email,
        qualification,hour_fee,subject_fee,is_negotiable,website)
    VALUES (TEACHER_SEQ.NEXTVAL,'Aqeel','aqeelchemist@gmail.com','Phd in Chemistry',500,5000,'Y','aqeelchemist.com');
INSERT INTO TEACHERS(teacher_id,teacher_name,teacher_email,
        qualification,hour_fee,subject_fee,is_negotiable,website)
    VALUES (TEACHER_SEQ.NEXTVAL,'Adnan','mathswithadnan@gmail.com','Master in CS',500,7000,'N','mathswithadnan.com');
INSERT INTO TEACHERS(teacher_id,teacher_name,teacher_email,
        qualification,hour_fee,subject_fee,is_negotiable,website)
    VALUES (TEACHER_SEQ.NEXTVAL,'Fahad','fahadeng@gmail.com','Master in EE',300,3000,'Y','fahadHaseebEE.com');
INSERT INTO TEACHERS(teacher_id,teacher_name,teacher_email,
        qualification,hour_fee,subject_fee,is_negotiable,website)
    VALUES (TEACHER_SEQ.NEXTVAL,'Faisal','faisalnazim@gmail.com','MBA',600,3500,'Y','faisalNazimDubai.com');
INSERT INTO TEACHERS(teacher_id,teacher_name,teacher_email,
        qualification,hour_fee,subject_fee,is_negotiable,website)
    VALUES (TEACHER_SEQ.NEXTVAL,'Behroz','behroz98@gmail.com','Master in CS',100,1000,'N','behrozTT.com');
INSERT INTO TEACHERS(teacher_id,teacher_name,teacher_email,qualification)
    VALUES (TEACHER_SEQ.NEXTVAL,'Mohsin','mohsinDj@gmail.com','BS in Physics');
INSERT INTO TEACHERS(teacher_id,teacher_name,teacher_email,qualification)
    VALUES (TEACHER_SEQ.NEXTVAL,'Aziz','azizIslamia@gmail.com','Masters in Chemistry');
INSERT INTO TEACHERS(teacher_id,teacher_name,teacher_email,qualification,website)
    VALUES (TEACHER_SEQ.NEXTVAL,'Munawar','munwarKanup@gmail.com','Phd in Physics','munawarKanup.com');
INSERT INTO TEACHERS(teacher_id,teacher_name,teacher_email,qualification,website)
    VALUES (TEACHER_SEQ.NEXTVAL,'Usman','usman43@gmail.com','Master in EE','usmanAskari.com');
INSERT INTO TEACHERS(teacher_id,teacher_name,teacher_email,qualification)
    VALUES (TEACHER_SEQ.NEXTVAL,'Umar','umar58@gmail.com','Master in CS');




--dumping teacher available towns data in teacher_towns table
INSERT INTO TEACHER_TOWNS(teacher_id,town_id) VALUES(1,1);
INSERT INTO TEACHER_TOWNS(teacher_id,town_id) VALUES(2,1);
INSERT INTO TEACHER_TOWNS(teacher_id,town_id) VALUES(3,2);
INSERT INTO TEACHER_TOWNS(teacher_id,town_id) VALUES(4,6);
INSERT INTO TEACHER_TOWNS(teacher_id,town_id) VALUES(5,3);
INSERT INTO TEACHER_TOWNS(teacher_id,town_id) VALUES(6,2);
INSERT INTO TEACHER_TOWNS(teacher_id,town_id) VALUES(7,4);
INSERT INTO TEACHER_TOWNS(teacher_id,town_id) VALUES(8,1);
INSERT INTO TEACHER_TOWNS(teacher_id,town_id) VALUES(9,3);
INSERT INTO TEACHER_TOWNS(teacher_id,town_id) VALUES(10,7);




--dumping teacher associated classes and subjects data into teacher_class_subject table
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (1,3,5);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (1,4,5);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (1,5,5);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (1,6,5);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (1,7,5);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (1,1,3);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (1,2,3);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (1,4,3);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (1,5,3);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (1,8,3);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (1,9,3);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (2,3,1);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (2,5,1);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (2,9,1);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (3,9,2);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (4,1,3);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (4,1,6);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (5,5,1);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (5,9,1);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (6,4,2);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (6,5,2);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (6,8,2);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (6,9,2);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (7,4,3);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (7,5,3);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (7,8,3);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (7,9,3);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (8,9,2);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (9,3,1);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (9,3,2);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (9,3,3);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (10,1,1);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (10,6,1);
INSERT INTO TEACHER_CLASS_SUBJECT(teacher_id,class_id,subject_id) VALUES (10,10,8);





--dumping invite data into invites table
INSERT INTO INVITES(invite_id,student_id,teacher_id,invite_timestamp)
    VALUES (INVITE_SEQ.NEXTVAL,1,1,CURRENT_TIMESTAMP);
INSERT INTO INVITES(invite_id,student_id,teacher_id,invite_timestamp)
    VALUES (INVITE_SEQ.NEXTVAL,1,2,CURRENT_TIMESTAMP);
INSERT INTO INVITES(invite_id,student_id,teacher_id,invite_timestamp)
    VALUES (INVITE_SEQ.NEXTVAL,1,4,CURRENT_TIMESTAMP);
INSERT INTO INVITES(invite_id,student_id,teacher_id,invite_timestamp)
    VALUES (INVITE_SEQ.NEXTVAL,2,6,CURRENT_TIMESTAMP);
INSERT INTO INVITES(invite_id,student_id,teacher_id,invite_timestamp)
    VALUES (INVITE_SEQ.NEXTVAL,2,7,CURRENT_TIMESTAMP);
INSERT INTO INVITES(invite_id,student_id,teacher_id,invite_timestamp)
    VALUES (INVITE_SEQ.NEXTVAL,3,5,CURRENT_TIMESTAMP);
INSERT INTO INVITES(invite_id,student_id,teacher_id,invite_timestamp)
    VALUES (INVITE_SEQ.NEXTVAL,3,10,CURRENT_TIMESTAMP);
INSERT INTO INVITES(invite_id,student_id,teacher_id,invite_timestamp)
    VALUES (INVITE_SEQ.NEXTVAL,6,1,CURRENT_TIMESTAMP);
INSERT INTO INVITES(invite_id,student_id,teacher_id,invite_timestamp)
    VALUES (INVITE_SEQ.NEXTVAL,6,3,CURRENT_TIMESTAMP);
INSERT INTO INVITES(invite_id,student_id,teacher_id,invite_timestamp)
    VALUES (INVITE_SEQ.NEXTVAL,6,5,CURRENT_TIMESTAMP);



--dumping inivte details into invite_details table
INSERT INTO INVITE_DETAILS(invite_id,subject_id) VALUES(1,5);
INSERT INTO INVITE_DETAILS(invite_id,subject_id) VALUES(1,3);
INSERT INTO INVITE_DETAILS(invite_id,subject_id) VALUES(2,1);
INSERT INTO INVITE_DETAILS(invite_id,subject_id) VALUES(3,6);
INSERT INTO INVITE_DETAILS(invite_id,subject_id) VALUES(4,2);
INSERT INTO INVITE_DETAILS(invite_id,subject_id) VALUES(5,3);
INSERT INTO INVITE_DETAILS(invite_id,subject_id) VALUES(6,1);
INSERT INTO INVITE_DETAILS(invite_id,subject_id) VALUES(7,8);
INSERT INTO INVITE_DETAILS(invite_id,subject_id) VALUES(8,5);
INSERT INTO INVITE_DETAILS(invite_id,subject_id) VALUES(9,2);
INSERT INTO INVITE_DETAILS(invite_id,subject_id) VALUES(10,1);




--dumping users into users table
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'syedshameersarwar@gmail.com','shameer',1);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'rkazim78@gmail.com','kazim',1);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'syedsms98@gmail.com','saad',1);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'ali4445@gmail.com','ali',1);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'hassan68@yahoo.com','hassan',1);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'shaheer97@gmail.com','shaheer',1);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'kamalattaturk@gmail.com','kamal',1);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'ahmedimran78@gmail.com','ahmed',1);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'asadart48@gmail.com','asad',1);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'saimakhtar59@gmail.com','saim',1);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'aqeelchemist@gmail.com','aqeel',2);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'mathswithadnan@gmail.com','adnan',2);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'fahadeng@gmail.com','fahad',2);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'faisalnazim@gmail.com','faisal',2);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'behroz98@gmail.com','behroz',2);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'mohsinDj@gmail.com','mohsin',2);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'azizIslamia@gmail.com','aziz',2);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'munwarKanup@gmail.com','munawar',2);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'usman43@gmail.com','usman',2);
INSERT INTO USERS(user_id,user_email,user_pass,user_type_id)
    VALUES(USERS_SEQ.NEXTVAL,'umar58@gmail.com','umar',2);











