Create database Nsbm;

Use Nsbm;

Create Table batch(
	batch_id varchar(25),
	batch_start_date date,
	CONSTRAINT pk_batch_id PRIMARY KEY(batch_id)
);

Create Table facult(
	facult_id varchar(25),
	facult_name varchar(255),
	dean varchar(255),
	CONSTRAINT pk_facult_id PRIMARY KEY(facult_id)
);

Select * from batch;
Select * from facult;


Insert into batch(
	batch_id,batch_start_date)values(
	'B001','2022-05-04'),(
	'B002','2022-10-10'),(
	'B003','2023-03-02'),(
	'B004','2023-08-02'
);

Select * from batch;

Insert into facult(
	facult_id,facult_name,dean)values(
	'F001','Faculty of Business','Ms. Thilini De Silva'),(
	'F002','Faculty of Computing','Dr. Chaminda Wijesinghe'),(
	'F003','Faculty of Engineering','Dr. Chandana Perera'),(
	'F004','Faculty of Science','Dr. Nuwanthi Katuwavila'
);

Select * from facult;

Create table facult_department(
	facult_department_id varchar(25),
	facult_department_name varchar(255),
	head_name varchar(255),
	facult_id varchar(25),
	CONSTRAINT pk_facult_department_id PRIMARY KEY(facult_department_id),
	CONSTRAINT fk_facult_id FOREIGN KEY(facult_id) REFERENCES facult(facult_id) ON DELETE CASCADE
);


Insert into facult_department(
	facult_department_id,facult_department_name,head_name,facult_id)values(
	'FD001','Department of Management','Ms. Bhasuri Amarathunge ','F001'),(
	'FD002','Department of Accounting and Finance','Ms. Anne Pathiranage','F001'),(
	'FD003','Department of Marketing and Tourism','Mr. Venura Colombage','F001'),(
	'FD004','Department of Operations and Logistics','Ms. Maneesha Dias','F001'),(
	'FD005','Department of Software Engineering','Ms. Pavithra Subhashini','F002'),(
	'FD006','Department of Information and Systems Sciences','Mr.Naji Saravanabavan','F002'),(
	'FD007','Department of Network and Security','Mr. Chamindra Attanayake','F002'),(
	'FD008','Department of Computer and Data Science','Ms Nethmi Weerasingha','F002'),(
	'FD009','Department of Design Studies','Archt. Upeksha Hettithanthri','F003'),(
	'FD010','Department of Biomedical Science','Dr. Damayanthi Dahanayake','F004'
);

Select * from facult_department;

Create table courses(
	courses_id varchar(25),
	courses_name varchar(255),
	course_deration varchar(25),
	facult_department_id varchar(25),
	CONSTRAINT pk_courses_id PRIMARY KEY(courses_id),
	CONSTRAINT fk_facult_departmemt_id FOREIGN KEY(facult_department_id) REFERENCES facult_department(facult_department_id) ON DELETE CASCADE
);

Select * from courses;

Insert into courses(
	courses_id,courses_name,course_deration,facult_department_id)values(
	'C001','Foundation Programme for Bachelor’s Degree','1 Year (Full time)','FD001'),(
	'C002','BSc (Hons) International Management and Business – (Plymouth University – United Kingdom)','3 Years (Full time)','FD001'),(
	'C003','BM (Hons) in International Business – (UGC Approved – Offered By NSBM)','4 Years (Full time)','FD001'),(
	'C004','BSc (Hons) Accounting and Finance – (Plymouth University – United Kingdom)','3 Years (Full time)','FD002'),(
	'C005','BSc in Business Management (Industrial Management) (Special) – (UGC Approved – Offered By NSBM)','4 Years (Full time)','FD003'),(
	'C006','BSc (Hons) Software Engineering – (Plymouth University – United Kingdom)','3 Years (Full time)','FD005'),(
	'C007','BSc (Hons) in Software Engineering – (UGC Approved – Offered By NSBM)','4 Years (Full time)','FD005'),(
	'C008','BSc (Hons) Technology Management – (Plymouth University – United Kingdom)','3 Years (Full time)','FD006'),(
	'C009','BSc in Management Information Systems (Special) – (UGC Approved – Offered By NSBM)','4 Years (Full time)','FD006'),(
	'C010','BSc (Hons) Computer Networks – (Plymouth University – United Kingdom)','3 Years (Full time)','FD007'),(
	'C011','BSc (Hons) Computer Security – (Plymouth University – United Kingdom)','3 Years (Full time)','FD007'),(
	'C012','BSc (Hons) Computer Science – (Plymouth University – United Kingdom)','3 Years (Full time)','FD008'),(
	'C013','BSc (Hons) in Data Science – (Plymouth University – United Kingdom)','3 Years (Full time)','FD008'),(
	'C014','BSc (Hons) Quantity Surveying – (Plymouth University – United Kingdom)','3 Years (Full time)','FD009'),(
	'C015','BSc (Hons) Biomedical Science – (Plymouth University – United Kingdom)','3 Years (Full time)','FD010'),(
	'C016','BSc (Hons) Nursing – Top up – (Plymouth University – United Kingdom)','1 Years (Part Time)','FD010'),(
	'C017','BSc (Hons) Psychology – (Plymouth University – United Kingdom)','3 Years (Full time)','FD010'
);

Select * from courses;

Create table modules(
	module_id varchar(25),
	module_name varchar(255),
	module_code varchar(25),
	CONSTRAINT pk_module_id PRIMARY KEY(module_id)
);

Select * from modules;

Create table exam(
	exam_id varchar(25),
	exam_name varchar(255),
	module_id varchar(25),
	exam_year int,
	CONSTRAINT pk_exam_id PRIMARY KEY(exam_id),
	CONSTRAINT fk_module_id FOREIGN KEY(module_id) REFERENCES modules(module_id) ON DELETE CASCADE
);

Select * from exam;

Insert into modules(
	module_id,module_name,module_code)values(
	'M001','Information and Management Retrieval','PUSL2019'),(
	'M002','Computing Group Project','PUSL2021'),(
	'M003','Introduction to IOT','PUSL2022'),(
	'M004','Software Engineering 02','PUSL2024'),(
	'M005','Data Programming in R','PUSL2076'
);

Select * from modules;

Insert into exam(
	exam_id,exam_name,module_id,exam_year)values(
	'E001','Semester End Exam','M001',2024),(
	'E002','Semester End Exam','M002',2024),(
	'E003','Semester End Exam','M003',2024),(
	'E004','Semester End Exam','M004',2024),(
	'E005','Semester End Exam','M005',2024
);

Select * from exam;

Create table access(
	access_id varchar(25),
	access_name varchar(255),
	CONSTRAINT pk_access_id PRIMARY KEY(access_id)
);

Insert into access(
	access_id,access_name)values(
	'A001','Gate'),(
	'A002','Library'
);

Select * from  access;

Create table student(
	student_id varchar(25),
	student_fname varchar(255),
	student_lname varchar(255),
	NIC varchar(10),
	email varchar(50),
	address varchar(100),
	DOB date,
	batch_id varchar(25),
	facult_department_id varchar(25),
	courses_id varchar(25),
	CONSTRAINT pk_student_id PRIMARY KEY(student_id),
	CONSTRAINT fk_batch_id FOREIGN KEY(batch_id) REFERENCES batch(batch_id) ON DELETE CASCADE,
	CONSTRAINT fk_faculy_department_id FOREIGN KEY(facult_department_id) REFERENCES facult_department(facult_department_id) ON DELETE CASCADE,
	CONSTRAINT fk_courses_id FOREIGN KEY(courses_id ) REFERENCES courses(courses_id) ON DELETE NO ACTION
);

Create table gate(
	student_id varchar(25),
	status bit
);

Create table library1(
	student_id varchar(25),
	status bit
);
Select * from library1;
Select * from gate;
drop table library1;

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S001','Kalani','Sathyangi','912345678V','kalani@gmail.com','Galle','1999-04-23','B001','FD008','C006'
);
Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S002','Sandali','Amasha','123456789V','sandali@gmail.com','Gampaha','2002-06-01','B002','FD005','C007'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S003','Ishini','Isalya','234567891V','ishini@gmail.com','Gampaha','2000-02-13','B003','FD006','C008'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S004','Nathasha','Fernando','345678912V','nathasha@gmail.com','Wennappuwa','2002-02-03','B004','FD007','C009'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S005','Buddika','Kariyawasam','456789123V','buddika@gmail.com','Avissawella','1998-02-03','B001','FD008','C010'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S006','Thenura','Dissanayake','567891234V','budvinthenura@gmail.com','Anuradhapura','2000-02-03','B002','FD005','C011'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S007','Yesith','Chandrasena','678912345V','yesithchan2@gmail.com','Kesbewa','2002-01-03','B003','FD006','C012'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S008','Pushpika','Chathuranga','789123456V','pushpika@gmail.com','Avissawella','2002-12-04','B004','FD007','C013'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S009','Ruchika','Perera','891234567V','ruchika@gmail.com','Avissawella','2000-12-06','B001','FD008','C006'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S010','Grace','Alliton','912345678V','grace@gmail.com','Homagama','2000-12-06','B002','FD005','C007'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S011','Meryem','Holyway','987654321V','meryem@gmail.com','Kottawa','2000-12-06','B003','FD006','C008'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S012','Tony','Montana','876543219V','toney@gmail.com','Kandy','2000-12-06','B004','FD007','C009'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S013','Kemi','Brown','765432198V','kemi@gmail.com','Kandy','2000-12-06','B001','FD008','C010'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S014','Peter','Parker','654321987V','peter@gmail.com','Kandy','2000-12-06','B002','FD005','C011'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S015','Sally','Peter','543219876V','sally@gmail.com','Kottawa','2000-12-06','B003','FD006','C012'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S016','Stella','Parker','432198765V','stella@gmail.com','Mathara','2000-12-06','B004','FD007','C013'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S017','Supun','Perera','321987654V','supun@gmail.com','Mathara','2000-12-06','B001','FD008','C006'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S018','Vishmi','Nimsara','219876543V','vishmi@gmail.com','Mathara','2000-12-06','B002','FD005','C007'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S019','Lihini','Sithra','198765432V','lihini@gmail.com','Homagama','2000-12-06','B003','FD006','C008'
);

Insert into student(
	student_id,student_fname,student_lname,NIC,email,address,DOB,batch_id,facult_department_id,courses_id)values(
	'S020','Ayomi','Thiwanka','147963258V','ayomi@gmail.com','Homagama','2000-12-06','B004','FD007','C009'
);



delete from student
where student_id  = 'S001'
Select * from student;

Select * from gate;
drop table gate;
drop table library1;

Create table student_facult(
	student_id varchar(25),
	facult_id varchar(25)
	CONSTRAINT pk_student_facult PRIMARY KEY (student_id,facult_id)
);

Insert into student_facult(
	student_id,facult_id)values(
	'S001','F002'),(
	'S002','F002'),(
	'S003','F002'),(
	'S004','F002'),(
	'S005','F002'),(
	'S006','F002'),(
	'S007','F002'),(
	'S008','F002'),(
	'S009','F002'),(
	'S010','F002'),(
	'S011','F002'),(
	'S012','F002'),(
	'S013','F002'),(
	'S014','F002'),(
	'S015','F002'),(
	'S016','F002'),(
	'S017','F002'),(
	'S018','F002'),(
	'S019','F002'),(
	'S020','F002'
);
select * from student_facult;

Create table facult_batch(
	facult_id varchar(25),
	batch_id varchar(25)
	CONSTRAINT pk_facult_batch PRIMARY KEY(facult_id,batch_id)
);
select * from facult_batch;

Insert into facult_batch(
	facult_id,batch_id)values(
	'F001','B001'),(
	'F001','B002'),(
	'F001','B003'),(
	'F001','B004'),(
	'F002','B001'),(
	'F002','B002'),(
	'F002','B003'),(
	'F002','B004'),(
	'F003','B001'),(
	'F003','B002'),(
	'F003','B003'),(
	'F003','B004'),(
	'F004','B001'),(
	'F004','B002'),(
	'F004','B003'),(
	'F004','B004'
);
select * from facult_batch;

Create table course_modules(
	courses_id varchar(25),
	modules_id varchar(25)
	CONSTRAINT pk_course_modules PRIMARY KEY(courses_id,modules_id)
);
select * from course_modules;

Insert into course_modules(
	courses_id,modules_id)values(
	'C006','M001'),(
	'C006','M002'),(
	'C006','M003'),(
	'C006','M004'),(
	'C006','M005'),(
	'C007','M001'),(
	'C007','M002'),(
	'C007','M003'),(
	'C007','M004'),(
	'C007','M005'
);
select * from course_modules;

Create table student_exam(
	student_id varchar(25),
	exam_id varchar(25),
	result varchar(2),
	CONSTRAINT pk_student_exam PRIMARY KEY(student_id,exam_id)
);

Insert into student_exam (
	student_id,exam_id,result)values(
	'S001','E001','A-'),(
	'S002','E001','A+'),(
	'S003','E001','A+'),(
	'S004','E001','A+'),(
	'S005','E001','A-'),(
	'S006','E001','A'),(
	'S007','E001','B'),(
	'S008','E001','B+'),(
	'S009','E001','B-'),(
	'S010','E001','A'),(
	'S011','E001','A+'),(
	'S012','E001','C-'),(
	'S013','E001','C-'),(
	'S014','E001','A'),(
	'S015','E001','D+'),(
	'S016','E001','C-'),(
	'S017','E001','A'),(
	'S018','E001','D-'),(
	'S019','E001','A'),(
	'S020','E001','D'
);

Select * from student_exam


delete from student 
where student_id ='S004'
delete from student 
where student_id ='S005'
Select * from gate;








SELECT * FROM find_facult_department


















