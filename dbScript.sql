/*** SEQUENCES ***/

CREATE SEQUENCE INVITE_SEQ 
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;


CREATE SEQUENCE STUDENT_SEQ 
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;


CREATE SEQUENCE SUBJECT_SEQ 
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;


CREATE SEQUENCE TEACHER_SEQ 
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;


CREATE SEQUENCE TOWN_SEQ 
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;


CREATE SEQUENCE USERS_SEQ 
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;


CREATE SEQUENCE CLASS_SEQ 
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;
    
/*** SEQUENCES END ***/



/*** TABLES ***/

CREATE TABLE Classes (
    class_id NUMBER(38,0) NOT NULL,
    class_name VARCHAR2(100) NOT NULL,
    CONSTRAINT classes_pk PRIMARY KEY(class_id)
);


CREATE TABLE Towns (
    town_id NUMBER(38,0) NOT NULL,
    town_name VARCHAR2(150) NOT NULL,
    CONSTRAINT towns_pk PRIMARY KEY(town_id)
);


CREATE TABLE Subjects (
    subject_id NUMBER(38,0) NOT NULL,
    subject_name VARCHAR2(100) NOT NULL,
    CONSTRAINT subjects_pk PRIMARY KEY(subject_id)
);


CREATE TABLE Students (
    student_id NUMBER(38,0) NOT NULL,
    student_name VARCHAR2(200) NOT NULL,
    student_email VARCHAR2(100) NOT NULL UNIQUE,
    class_id NUMBER(38,0) NOT NULL,
    student_contact VARCHAR2(15) NOT NULL,
    CONSTRAINT students_pk PRIMARY KEY(student_id),
    CONSTRAINT fk_classes FOREIGN KEY(class_id) 
    REFERENCES Classes(class_id)
);


CREATE TABLE Teachers (
    teacher_id NUMBER(38,0) NOT NULL,
    teacher_name VARCHAR2(200) NOT NULL,
    teacher_email VARCHAR2(100) NOT NULL UNIQUE,
    qualification VARCHAR2(250) NOT NULL,
    hour_fee NUMBER(38,2) DEFAULT NULL,
    subject_fee NUMBER(38,2) DEFAULT NULL,
    is_negotiable CHAR(1) DEFAULT NULL CHECK (is_negotiable in ('Y','N')),
    website VARCHAR2(1000) DEFAULT NULL,
    CONSTRAINT teachers_pk PRIMARY KEY(teacher_id)
);


CREATE TABLE Teacher_Towns (
    teacher_id NUMBER(38,0) NOT NULL,
    town_id NUMBER(38,0) NOT NULL,
    CONSTRAINT fk_teachers FOREIGN KEY(teacher_id)
    REFERENCES Teachers(teacher_id),
    CONSTRAINT fk_towns FOREIGN KEY(town_id)
    REFERENCES Towns(town_id),
    CONSTRAINT teacher_towns_pk PRIMARY KEY(teacher_id,town_id)
);


CREATE TABLE Teacher_Class_Subject (
    teacher_id NUMBER(38,0) NOT NULL,
    class_id NUMBER(38,0) NOT NULL,
    subject_id NUMBER(38,0) NOT NULL,
    CONSTRAINT fk_teachers1 FOREIGN KEY(teacher_id)
    REFERENCES Teachers(teacher_id),
    CONSTRAINT fk_classes1 FOREIGN KEY(class_id) 
    REFERENCES Classes(class_id),
    CONSTRAINT fk_subjects1 FOREIGN KEY(subject_id)
    REFERENCES Subjects(subject_id),
    CONSTRAINT teacher_class_subject_pk 
    PRIMARY KEY(teacher_id,class_id,subject_id)
);


CREATE TABLE User_Type(
    user_type_id NUMBER(38,0) NOT NULL,
    type_name VARCHAR2(10) NOT NULL,
    CONSTRAINT user_type_pk PRIMARY KEY(user_type_id)
);


CREATE TABLE Users(
    user_id NUMBER(38,0) NOT NULL,
    user_email VARCHAR2(100)NOT NULL UNIQUE,
    user_pass VARCHAR2(128) NOT NULL,
    user_type_id NUMBER(38,0) NOT NULL,
    valid CHAR(1) default 'N' CHECK (valid in ('Y','N')),
    CONSTRAINT users_pk PRIMARY KEY(user_id),
    CONSTRAINT fk_user_type FOREIGN KEY(user_type_id)
    REFERENCES User_Type(user_type_id) 
);


CREATE TABLE Invites (
    invite_id NUMBER(38,0) NOT NULL UNIQUE,
    student_id NUMBER(38,0) NOT NULL,
    teacher_id NUMBER(38,0) NOT NULL,
    invite_timestamp TIMESTAMP NOT NULL,
    status VARCHAR2(20) DEFAULT 'Un-read',
    CONSTRAINT fk_students2 FOREIGN KEY(student_id)
    REFERENCES Students(student_id),
    CONSTRAINT fk_teachers2 FOREIGN KEY(teacher_id)
    REFERENCES Teachers(teacher_id),
    CONSTRAINT invites_pk PRIMARY KEY(teacher_id,student_id)
);


CREATE TABLE Invite_Details (
    invite_id NUMBER(38,0) NOT NULL,
    subject_id NUMBER(38,0) NOT NULL,
    CONSTRAINT fk_invites FOREIGN KEY(invite_id)
    REFERENCES Invites(invite_id),
    CONSTRAINT fk_subjects2 FOREIGN KEY(subject_id)
    REFERENCES Subjects(subject_id),
    CONSTRAINT invite_details_pk PRIMARY KEY(invite_id,subject_id)
);


CREATE TABLE Invite_History (
    invite_id NUMBER(38,0) NOT NULL,
    class_id NUMBER(38,0) NOT NULL,
    CONSTRAINT fk_invites1 FOREIGN KEY(invite_id)
    REFERENCES Invites(invite_id),
    CONSTRAINT fk_classes2 FOREIGN KEY(class_id)
    REFERENCES Classes(class_id),
    CONSTRAINT invite_history_pk PRIMARY KEY(invite_id)
);

/*** TABLES END ***/


/*** INDEXES ***/
CREATE INDEX user_pass_index ON Users(user_email,user_pass);
/*** INDEXES END ***/



/*** TRIGGERS ***/

/* TRIGGER TO DELETE TEACHER FROM SYSTEM */
CREATE OR REPLACE TRIGGER BEFORE_TEACHER_DELETE 
    BEFORE DELETE ON Teachers FOR EACH ROW 
    BEGIN
        --deleting teacher records from Teacher_Class_Subject table
        DELETE FROM Teacher_Class_Subject WHERE teacher_id  = :OLD.teacher_id;
        
        --deleteing teacher record from Teacher_Towns table
        DELETE FROM Teacher_Towns WHERE teacher_id  = :OLD.teacher_id;
        
        --deleting teacher data from Invites table
        DELETE FROM Invites WHERE teacher_id = :OLD.teacher_id;
        
        --deleting teacher from users table
        DELETE FROM Users WHERE user_email = :OLD.teacher_email;
    END;


/* TRIGGER TO DELETE STUDENT FROM SYSTEM */
CREATE OR REPLACE TRIGGER BEFORE_STUDENT_DELETE
    BEFORE DELETE ON Students FOR EACH ROW
    BEGIN
        --deleting student data from Invites table
        DELETE FROM Invites WHERE student_id = :OLD.student_id;
        
        --deleting student from users table
        DELETE FROM Users WHERE user_email = :OLD.student_email;
    END;


/* TRIGGER TO UPDATE USER EMAIL BASED ON STUDENT EMAIL UPDATE */
CREATE OR REPLACE TRIGGER AFTER_STUDENT_UPDATE
    AFTER UPDATE ON Students FOR EACH ROW
    BEGIN
        --if student email is updated,user email will be updated
        IF (:OLD.student_email != :NEW.student_email) THEN
            UPDATE Users SET user_email = :NEW.student_email
            WHERE user_email = :OLD.student_email;
        END IF;
    END;


/* TRIGGER TO UPDATE USER EMAIL BASED ON TEACHER EMAIL UPDATE */
CREATE OR REPLACE TRIGGER AFTER_TEACHER_UPDATE
    AFTER UPDATE ON Teachers FOR EACH ROW
    BEGIN
        --if teacher email is updated,user email will be updated
        IF (:OLD.teacher_email != :NEW.teacher_email) THEN
            UPDATE Users SET user_email = :NEW.teacher_email
            WHERE user_email = :OLD.teacher_email;
        END IF;
    END;


/* TRIGGER TO DELETE INVITE FROM THE SYSTEM */
CREATE OR REPLACE TRIGGER BEFORE_INVITE_DELETE 
    BEFORE DELETE ON Invites FOR EACH ROW
    BEGIN
        --delete invite data from Invite_Details table
        DELETE FROM Invite_Details WHERE invite_id = :OLD.invite_id;

        --delete invite data from Invite_History table
        DELETE FROM Invite_History WHERE invite_id = :OLD.invite_id;
    END;


/* TRIGGER TO POPULATE INVITE_HISTORY TABLE ON INVITE STATUS CHANGE */
CREATE OR REPLACE TRIGGER AFTER_INVITE_UPDATE
    AFTER UPDATE ON INVITES FOR EACH ROW
    DECLARE student_class_id NUMBER(38,0);
    BEGIN
        --if invite status changed,then add student class to 
        -- invite_history table
        IF (:NEW.status = 'read') THEN
            SELECT class_id INTO student_class_id
            FROM STUDENTS WHERE student_id = :NEW.student_id;
            
            INSERT INTO Invite_History(invite_id,class_id)
                VALUES(:NEW.invite_id,student_class_id);
            END IF;
    END;

/*** TRIGGERES END ***/



/*** PROCEDURES ***/

/* PROCEDURE TO AUTHORISE USER */
CREATE OR REPLACE PROCEDURE AuthorizeUser(usrID IN NUMBER)
    IS
    BEGIN
        --toggle valid to TRUE for user authorization
        UPDATE Users SET valid = 'Y' WHERE user_id = TRUNC(usrID);
    END;


/* PROCEDRE TO TOGGLE INVITE STATUS */
CREATE OR REPLACE PROCEDURE ToggleInviteStatus(inviteID IN NUMBER)
    IS
    BEGIN
	--toggle invite status to 'read'
        UPDATE Invites SET status = 'read' WHERE invite_id = TRUNC(inviteID);
    END;

/*** PROCEDURES END ***/




/*** VIEWS ***/

/* VIEW TO FIND NUMBER OF TEACHER AVAILABLE FOR EACH SUBJECT */
CREATE VIEW Teacher_Availability AS
    select count(t.teacher_id) number_of_teachers,s.subject_name from teacher_class_subject t
    right join subjects s on t.subject_id = s.subject_id group by s.subject_name;


/* VIEW TO FIND NUMBER OF INVITES RECIEVED BY EACH SUBJECT */
CREATE VIEW Subject_Invites AS
    select s.subject_name,count(i.invite_id) number_of_invites from subjects s 
    left join invite_details i on s.subject_id = i.subject_id group by s.subject_name;


/*** VIEWS END ***/