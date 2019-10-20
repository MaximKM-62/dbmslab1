CREATE KEYSPACE IF NOT EXISTS student_base WITH replication = {
  'class': 'SimpleStrategy',
  'replication_factor': '1'
};


DROP TABLE IF EXISTs "student";
DROP TABLE IF EXISTs "teacher";
DROP TABLE IF EXISTs "course_work";

DROP TYPE IF EXISTS student_name_type;
DROP TYPE IF EXISTS teacher_name_type;


CREATE TYPE IF NOT EXISTS student_name_type(
	firstname text,
	middlename text,
	lastname text
);

CREATE TYPE IF NOT EXISTS teacher_name_type(
	firstname text,
	middlename text,
	lastname text
);

CREATE TABLE IF NOT EXISTs "student" (
gradebook_number int,
student_name frozen<student_name_type> STATIC,
group text STATIC,
receipt_year date,
coursework_curator text,
percentage_of_complete_uni int,
PRIMARY KEY((gradebook_number),percentage_of_complete_uni)
);



CREATE TABLE IF NOT EXISTs "teacher" (
pass_num int,
teacher_name frozen<teacher_name_type> STATIC,
department text STATIC,
student_groups text,
congestion int,
PRIMARY KEY((pass_num),congestion)
);



CREATE TABLE IF NOT EXISTs "course_work" (
initalization_num int,
name text,
research_direction text,
curator text,
student_name text,
percentage_of_complete int,
PRIMARY KEY(initalization_num)

);

DROP TABLE IF EXISTs "subject";

CREATE TABLE IF NOT EXISTs "subject" (
register_num int,
name text,
stud_rating map<text,frozen<tuple<int>>>,
subj_teacher text,
PRIMARY KEY(register_num)
);