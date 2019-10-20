from cassandra import ConsistencyLevel
from cassandra.cluster import Cluster
from cassandra.query import SimpleStatement

cluster = Cluster()

session = cluster.connect('student_base')


# INSERT -----------------------------------------------------------------------------------------------------------------------------------

# Student insert
query1 = SimpleStatement("INSERT INTO student_base.student(gradebook_number,group,receipt_year,coursework_curator,percentage_of_complete_uni) VALUES(4534554,'lf234',1989,'bobia',70)",  consistency_level = ConsistencyLevel.ANY)
query2 = SimpleStatement("INSERT INTO student_base.student(gradebook_number,group,receipt_year,coursework_curator,percentage_of_complete_uni) VALUES(4534554,'lf234',1989,'bobia',70)",  consistency_level = ConsistencyLevel.ANY)
query3  = SimpleStatement("INSERT INTO student_base.student(gradebook_number,group,receipt_year,coursework_curator,percentage_of_complete_uni) VALUES(4534554,'lf234',1989,'bobia',70)",  consistency_level = ConsistencyLevel.ANY)
session.execute(query1)
session.execute(query2)
session.execute(query3)


# teacher insert
query4 = SimpleStatement("INSERT INTO student_base.teacher(pass_num,department,student_groups,congestion) VALUES(4657854,'fmm','km62,km72,hn56,ty4',90)",  consistency_level = ConsistencyLevel.ANY)
query5 = SimpleStatement("INSERT INTO student_base.teacher(pass_num,department,student_groups,congestion) VALUES(467875854,'fPm','km82,km42,hK56,tL4',50)",  consistency_level = ConsistencyLevel.ANY)
query6  = SimpleStatement("INSERT INTO student_base.teacher(pass_num,department,student_groups,congestion) VALUES(445344,'fDm','Rm62,Wm72,hM56,ty4',75)",  consistency_level = ConsistencyLevel.ANY)
session.execute(query4)
session.execute(query5)
session.execute(query6)

#coursework insert
query7 = SimpleStatement("INSERT INTO student_base.course_work(initalization_num,name,research_direction,curator,student_name,percentage_of_complete) VALUES(425344,'bestwork','math','Ivanov','petrov',75)",  consistency_level = ConsistencyLevel.ANY)
query8 = SimpleStatement("INSERT INTO student_base.course_work(initalization_num,name,research_direction,curator,student_name,percentage_of_complete) VALUES(44545464,'middlework','physics','Ivan','petr',25)",  consistency_level = ConsistencyLevel.ANY)
query9  = SimpleStatement("INSERT INTO student_base.course_work(initalization_num,name,research_direction,curator,student_name,percentage_of_complete) VALUES(445344,'lowwork','biology','Inov','Qrov',5)",  consistency_level = ConsistencyLevel.ANY)
session.execute(query7)
session.execute(query8)
session.execute(query9)

#subject insert
query10 = SimpleStatement("INSERT INTO student_base.subject(register_num,name,stud_rating,subj_teacher) VALUES(445344,'Math',{'laboratory work':(5)},'Inov')",  consistency_level = ConsistencyLevel.ANY)
query11 = SimpleStatement("INSERT INTO student_base.subject(register_num,name,stud_rating,subj_teacher) VALUES(4445664,'Geometry',{'laboratory work':(4)},'Ivanov')",  consistency_level = ConsistencyLevel.ANY)
query12 = SimpleStatement("INSERT INTO student_base.subject(register_num,name,stud_rating,subj_teacher) VALUES(4476844,'Biology',{'laboratory work':(2)},'Petrov')",  consistency_level = ConsistencyLevel.ANY)
session.execute(query10)
session.execute(query11)
session.execute(query12)

# UPDATE -----------------------------------------------------------------------------------------------------------------------------------

#student update
query13 = SimpleStatement("UPDATE student_base.student SET teacher_name={firstname:'Updated',lastname:'lastname'} WHERE gradebook_number=45354;", consistency_level = ConsistencyLevel.ANY)
query14 = SimpleStatement("UPDATE student_base.student SET group='km61' WHERE gradebook_number=4534554;", consistency_level=ConsistencyLevel.ANY)
query15 = SimpleStatement("UPDATE student_base.student SET coursework_curator='BOBBBY' WHERE  gradebook_number=4535 and percentage_of_complete_uni=49;", consistency_level=ConsistencyLevel.ANY)
session.execute(query13)
session.execute(query14)
session.execute(query15)

#teacher update
query16 = SimpleStatement("UPDATE student_base.teacher SET student_name={firstname:'Updated',lastname:'updated'} WHERE pass_num=4657854;", consistency_level = ConsistencyLevel.ANY)
query17 = SimpleStatement("UPDATE student_base.teacher SET department ='MATH' WHERE pass_num=467875854;", consistency_level=ConsistencyLevel.ANY)
query18 = SimpleStatement("UPDATE student_base.teacher SET student_groups='km61,km62,km63' WHERE  pass_num=445344 and congestion=75;", consistency_level=ConsistencyLevel.ANY)
session.execute(query16)
session.execute(query17)
session.execute(query18)
#coursework update
query19 = SimpleStatement("UPDATE student_base.course_work SET research_direction='electronics' WHERE initalization_num=44545464;", consistency_level = ConsistencyLevel.ANY)
query20 = SimpleStatement("UPDATE student_base.course_work SET subj_teacher='Ivanov' WHERE register_num=445344;", consistency_level = ConsistencyLevel.ANY)
session.execute(query19)
session.execute(query20)


#4 запити
query21 = SimpleStatement("SELECT curator FROM student_base.course_work WHERE  initalization_num=44545464;")
query22 = SimpleStatement("SELECT  subj_teacher FROM student_base.subject WHERE  register_num=445344;")
query23 = SimpleStatement("SELECT  student_name FROM student_base.course_work WHERE  initalization_num=44545464;")
query24 = SimpleStatement("SELECT  student_groups FROM student_base.teacher  WHERE pass_num=445344;")
session.execute(query21)
session.execute(query22)
session.execute(query23)
session.execute(query24)

#delete
query25 = SimpleStatement("DELETE FROM student_base.course_work WHERE initalization_num = 44545464;", consistency_level = ConsistencyLevel.ONE)
query26 = SimpleStatement("DELETE  FROM student_base.subject WHERE register_num=445344;", consistency_level = ConsistencyLevel.ONE)
query27 = SimpleStatement("DELETE  FROM student_base.student WHERE  gradebook_number=4535;", consistency_level = ConsistencyLevel.ONE)
session.execute(query25)
session.execute(query26)
session.execute(query27)
