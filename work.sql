/////////////////////////////student//INSERT//////////////////////
INSERT INTO "student" (gradebook_number,student_name,group,receipt_year,coursework_curator,percentage_of_complete_uni)
VALUES(45354,{"firstname":'Ivan',"middlename":'Ivanovitch',"lastname":'Ivanov'},'км23',1999,'boba',99);

SELECT JSON * FROM "student";
		
INSERT INTO "student" (gradebook_number,student_name,group,receipt_year,coursework_curator,percentage_of_complete_uni)
VALUES(4534554,{"firstname":'Ivan',"middlename":'Ivanovitch',"lastname":'Ivanov'},'lf234',1989,'bobia',79);

SELECT JSON * FROM "student";

INSERT INTO "student" (gradebook_number,student_name,group,receipt_year,coursework_curator,percentage_of_complete_uni)
VALUES(4535,{"firstname":'Ivan',"middlename":'Ivanovitch',"lastname":'Ivanov'},'hg253',1979,'bobo',49);

SELECT JSON * FROM "student";

//////////////////////////////////teacher//INSERT//////////////////////////////


INSERT INTO "teacher" (pass_num,teacher_name,department,student_groups,congestion)
VALUES(4657854,{"firstname":'Ivan',"middlename":'Ivanovitch',"lastname":'Ivanov'},'fmm','km62,km72,hn56,ty4',90);

SELECT JSON * FROM "teacher";
		
INSERT INTO "teacher" (pass_num,teacher_name,department,student_groups,congestion)
VALUES(467875854,{"firstname":'Ivan',"middlename":'Ivanovitch',"lastname":'Ivanov'},'fPm','km82,km42,hK56,tL4',50);

SELECT JSON * FROM "teacher";

INSERT INTO "teacher" (pass_num,teacher_name,department,student_groups,congestion)
VALUES(445344,{"firstname":'Ivan',"middlename":'Ivanovitch',"lastname":'Ivanov'},'fDm','Rm62,Wm72,hM56,ty4',75);

SELECT JSON * FROM "teacher";

///////////////////////////coursework/////INSERT///////////////////

INSERT INTO "course_work" (initalization_num,name,research_direction,curator,student_name,percentage_of_complete)
VALUES(425344,'bestwork','math','Ivanov','petrov',75);

SELECT JSON * FROM "course_work";

INSERT INTO "course_work" (initalization_num,name,research_direction,curator,student_name,percentage_of_complete)
VALUES(44545464,'middlework','physics','Ivan','petr',25);

SELECT JSON * FROM "course_work";

INSERT INTO "course_work" (initalization_num,name,research_direction,curator,student_name,percentage_of_complete)
VALUES(445344,'lowwork','biology','Inov','Qrov',5);

SELECT JSON * FROM "course_work";

/////////////////////////////subject//INSERT//////////////////////

INSERT INTO "subject" (register_num,name,stud_rating,subj_teacher)
VALUES(445344,'Math',{'laboratory work':(5)},'Inov');

SELECT JSON * FROM "subject";


INSERT INTO "subject" (register_num,name,stud_rating,subj_teacher)
VALUES(4445664,'Geometry',{'laboratory work':(4)},'Ivanov');

SELECT JSON * FROM "subject";


INSERT INTO "subject" (register_num,name,stud_rating,subj_teacher)
VALUES(4476844,'Biology',{'laboratory work':(2)},'Petrov');

SELECT JSON * FROM "subject";

/////////////////////////////student//UPDATE//////////////////////
////USER//TYPE////
UPDATE "student" 
SET
	student_name={
	  				firstname:'Updated',
	  				lastname:'lastname'	  				
  			  	}
WHERE gradebook_number=45354;

SELECT JSON * FROM "student"
	WHERE gradebook_number=45354;
/////STATIC///TYPE
UPDATE "student" 
SET
	group='km61'
WHERE gradebook_number=4534554;

SELECT JSON * FROM "student"
	WHERE gradebook_number=4534554;
/////BASE//TYPE
UPDATE "student" 
SET
	coursework_curator='azairov'
WHERE gradebook_number=4535 and percentage_of_complete_uni=49;

SELECT JSON * FROM "student"
	WHERE gradebook_number=4535;
	
	
/////////////////////////////teacher//UPDATE//////////////////////
////USER//TYPE////
UPDATE "teacher" 
SET
	teacher_name={
	  				firstname:'Updated',
	  				lastname:'lastname'	  				
  			  	}
WHERE pass_num=4657854;

SELECT JSON * FROM "teacher"
	WHERE pass_num=4657854;
/////STATIC///TYPE
UPDATE "teacher" 
SET
	department ='MATH'
WHERE pass_num=467875854;

SELECT JSON * FROM "teacher"
	WHERE pass_num=467875854;
/////BASE//TYPE
UPDATE "teacher" 
SET
	student_groups='km61,km62,km63'
WHERE pass_num=445344 and congestion=75;

SELECT JSON * FROM "teacher"
	WHERE pass_num=445344;
	
/////////////////////////////course_work//UPDATE//////////////////////
/////BASE//TYPE
UPDATE "course_work" 
SET
	research_direction='electronics'
WHERE initalization_num=44545464;

SELECT JSON * FROM "course_work"
	WHERE initalization_num=44545464;
	
/////////////////////////////subject//UPDATE//////////////////////
/////BASE//TYPE
UPDATE "subject" 
SET
	subj_teacher='Petrov'
WHERE register_num=445344;

SELECT JSON * FROM "subject"
	WHERE register_num=445344;
	
	
//////////Чотири запити відповідно до пункту (1)////////////
SELECT JSON curator FROM "course_work"
	WHERE  initalization_num=44545464;

SELECT JSON subj_teacher FROM "subject"
	WHERE  register_num=445344;
	
SELECT JSON student_name FROM "course_work"
	WHERE  initalization_num=44545464;
	
SELECT JSON student_groups FROM "teacher"
	WHERE pass_num=445344;	

///////////////DELETE////////////
DELETE  FROM "course_work"
  WHERE  initalization_num=44545464;
  
DELETE subj_teacher  FROM "subject"
  WHERE  register_num=445344;
  
DELETE coursework_curator FROM "student"
  WHERE  gradebook_number=4535;
