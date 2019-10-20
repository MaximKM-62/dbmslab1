from cassandra import ConsistencyLevel
from cassandra.cluster import Cluster
from cassandra.query import SimpleStatement

cluster = Cluster()

session = cluster.connect('student_base')
transaction = SimpleStatement("BEGIN BATCH INSERT INTO student_base.student(gradebook_number,group,receipt_year,coursework_curator,percentage_of_complete_uni) VALUES(4534554,'lf234',1989,'bobia',70)UPDATE student_base.course_work SET research_direction='QA' WHERE initalization_num=4534554  APPLY BATCH",  consistency_level = ConsistencyLevel.ANY)


session.execute(transaction)