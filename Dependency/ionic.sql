create database ionic;
use ionic;

create table Userid (users varchar(45) not null,id varchar(45) not null,is_leaf int not null);

create table Highest_privilages(admin varchar(45) not null,highest_level varchar(45) not null);

create table Parent_child(root_id varchar(45) not null,child_id varchar(45) not null);

create table Node_leaf(root_id varchar(45) not null,leaf_id varchar(45) not null);

create table Post_to(header varchar(45) not null,time TIMESTAMP not null DEFAULT CURRENT_TIMESTAMP,venue varchar(45) not null,posted_by varchar(45) not null, post_time varchar(45) not null, conducted_by varchar(45) not null, description TEXT, img_links varchar(45), links varchar(45));

create table Admin(name varchar(45) not null,uname varchar(45) not null,password varchar(45) not null,Designation varchar(45) not null,dept varchar(45) not null, level_id varchar(45) not null,email varchar(45) not null,rollno varchar(45) not null);


insert into    Userid values('ALL@NITC','1',0);
insert into    Userid values('cse','11',0);

insert into    Userid values('Faculty','112',0);
insert into    Userid values('Satff','113',0);


insert into    Userid values('Student','111',0);
insert into    Userid values('UG','1111',0);

insert into    Userid values('FirstYear','11111',0);
insert into    Userid values('A-Batch','111111',1);
insert into    Userid values('B-Batch','111112',1);

insert into    Userid values('SecondYear','11112',0);
insert into    Userid values('A-Batch','111121',1);
insert into    Userid values('B-Batch','111122',1);

insert into    Userid values('ThirdYear','11113',0);
insert into    Userid values('A-Batch','111131',1);
insert into    Userid values('B-Batch','111132',1);

insert into    Userid values('FourthYear','11114',0);
insert into    Userid values('A-Batch','111141',1);
insert into    Userid values('B-Batch','111142',1);


insert into    Userid values('PG','1112',0);
insert into    Userid values('FirstYear','11121',0);
insert into    Userid values('Computer Science Engineering','111211',1);
insert into    Userid values('Information security','111212',1);

insert into    Userid values('SecondYear','11122',0);
insert into    Userid values('Computer Science Engineering','111221',1);
insert into    Userid values('Information security','111222',1);	


insert into    Userid values('PHD','1113',1);

insert into    Userid values('MCA','1114',1);



insert into    Userid values('ECE','12',0);

insert into    Userid values('Faculty','122',0);
insert into    Userid values('Satff','123',0);


insert into    Userid values('Student','121',0);
insert into    Userid values('UG','1211',0);

insert into    Userid values('FirstYear','12111',0);
insert into    Userid values('A-Batch','121111',1);
insert into    Userid values('B-Batch','121112',1);

insert into    Userid values('SecondYear','12112',0);
insert into    Userid values('A-Batch','121121',1);
insert into    Userid values('B-Batch','121122',1);

insert into    Userid values('ThirdYear','12113',0);
insert into    Userid values('A-Batch','121131',1);
insert into    Userid values('B-Batch','121132',1);

insert into    Userid values('FourthYear','12114',0);
insert into    Userid values('A-Batch','121141',1);
insert into    Userid values('B-Batch','121142',1);


insert into    Userid values('PG','1212',0);
insert into    Userid values('FirstYear','12121',0);
insert into    Userid values('Microelectonics And VLSI Design','121211',1);
insert into    Userid values('Electronics Design & Technology','121212',1);
insert into    Userid values('Telecommunication','121213',1);
insert into    Userid values('Signal Processing','121214',1);

insert into    Userid values('SecondYear','12122',0);
insert into    Userid values('Microelectonics And VLSI Design','121221',1);
insert into    Userid values('Electronics Design & Technology','121222',1);
insert into    Userid values('Telecommunication','121223',1);
insert into    Userid values('Signal Processing','121224',1);


insert into    Userid values('PHD','1213',0);
insert into    Userid values('MCA','1214',0);



insert into    Userid values('EEE','13',0);

insert into    Userid values('Faculty','132',0);
insert into    Userid values('Satff','133',0);


insert into    Userid values('Student','131',0);
insert into    Userid values('UG','1311',0);

insert into    Userid values('FirstYear','13111',0);
insert into    Userid values('A-Batch','131111',1);
insert into    Userid values('B-Batch','131112',1);

insert into    Userid values('SecondYear','13112',0);
insert into    Userid values('A-Batch','131121',1);
insert into    Userid values('B-Batch','131122',1);

insert into    Userid values('ThirdYear','13113',0);
insert into    Userid values('A-Batch','131131',1);
insert into    Userid values('B-Batch','131132',1);

insert into    Userid values('FourthYear','13114',0);
insert into    Userid values('A-Batch','131141',1);
insert into    Userid values('B-Batch','131142',1);


insert into    Userid values('PG','1312',0);
insert into    Userid values('FirstYear','13121',1);
insert into    Userid values('Power Systems','131211',1);
insert into    Userid values('Instrumentation & Control Systems','131212',1);
insert into    Userid values('Power Electronics','131213',1);
insert into    Userid values('Industrial Power And Automation','131214',1);
insert into    Userid values('High Voltage Engineering','131225',1);

insert into    Userid values('SecondYear','13122',0);
insert into    Userid values('Power Systems','131221',1);
insert into    Userid values('Instrumentation & Control Systems','131222',1);
insert into    Userid values('Power Electronics','131223',1);
insert into    Userid values('Industrial Power And Automation','131224',1);
insert into    Userid values('High Voltage Engineering','131225',1);


insert into    Userid values('PHD','1313',1);
insert into    Userid values('MCA','1314',1);




insert into    Userid values('MECH','14',0);

insert into    Userid values('Faculty','142',0);
insert into    Userid values('Satff','143',0);


insert into    Userid values('Student','141',0);
insert into    Userid values('UG','1411',0);

insert into    Userid values('FirstYear','14111',0);
insert into    Userid values('A-Batch','141111',1);
insert into    Userid values('B-Batch','141112',1);

insert into    Userid values('SecondYear','14112',0);
insert into    Userid values('A-Batch','141121',1);
insert into    Userid values('B-Batch','141122',1);

insert into    Userid values('ThirdYear','14113',0);
insert into    Userid values('A-Batch','141131',1);
insert into    Userid values('B-Batch','141132',1);

insert into    Userid values('FourthYear','14114',0);
insert into    Userid values('A-Batch','141141',1);
insert into    Userid values('B-Batch','141142',1);


insert into    Userid values('PG','1412',0);
insert into    Userid values('FirstYear','14121',0);
insert into    Userid values('Industrial Engineering And Management','141211',1);
insert into    Userid values('Thermal Sciences','141212',1);
insert into    Userid values('Manufacturing Technology','141213',1);
insert into    Userid values('Energy Engineering & Management','141214',1);
insert into    Userid values('Material Science & Technology','141225',1);
insert into    Userid values('Nano Technology','141226',1);

insert into    Userid values('SecondYear','14122',0);
insert into    Userid values('Industrial Engineering And Management','141221',1);
insert into    Userid values('Thermal Sciences','141222',1);
insert into    Userid values('Manufacturing Technology','141223',1);
insert into    Userid values('Energy Engineering & Management','141224',1);
insert into    Userid values('Material Science & Technology','141225',1);
insert into    Userid values('Nano Technology','141226',1);


insert into    Userid values('PHD','1413',1);
insert into    Userid values('MCA','1414',1);


insert into    Userid values('CHEM','15',0);

insert into    Userid values('Faculty','152',0);
insert into    Userid values('Satff','153',0);


insert into    Userid values('Student','151',0);
insert into    Userid values('UG','1511',0);

insert into    Userid values('FirstYear','15111',0);
insert into    Userid values('A-Batch','151111',1);
insert into    Userid values('B-Batch','151112',1);

insert into    Userid values('SecondYear','15112',0);
insert into    Userid values('A-Batch','151121',1);
insert into    Userid values('B-Batch','151122',1);

insert into    Userid values('ThirdYear','15113',0);
insert into    Userid values('A-Batch','151131',1);
insert into    Userid values('B-Batch','151132',1);

insert into    Userid values('FourthYear','15114',0);
insert into    Userid values('A-Batch','151141',1);
insert into    Userid values('B-Batch','151142',1);


insert into    Userid values('PG','1512',0);
insert into    Userid values('FirstYear','15121',0);;

insert into    Userid values('SecondYear','15122',0);


insert into    Userid values('PHD','1513',1);
insert into    Userid values('MCA','1514',1);



insert into    Userid values('CIVIL','16',0);

insert into    Userid values('Faculty','162',0);
insert into    Userid values('Satff','163',0);


insert into    Userid values('Student','161',0);
insert into    Userid values('UG','1611',0);

insert into    Userid values('FirstYear','16111',0);
insert into    Userid values('A-Batch','161111',1);
insert into    Userid values('B-Batch','161112',1);

insert into    Userid values('SecondYear','16112',0);
insert into    Userid values('A-Batch','161121',1);
insert into    Userid values('B-Batch','161122',1);

insert into    Userid values('ThirdYear','16113',0);
insert into    Userid values('A-Batch','161131',1);
insert into    Userid values('B-Batch','161132',1);

insert into    Userid values('FourthYear','16114',0);
insert into    Userid values('A-Batch','161141',1);
insert into    Userid values('B-Batch','161142',1);


insert into    Userid values('PG','1612',0);
insert into    Userid values('FirstYear','16121',1);
insert into    Userid values('Structural Engineering','161211',1);
insert into    Userid values('Traffic and Transportation Planning','161212',1);
insert into    Userid values('Offshore Structures','161213',1);
insert into    Userid values('Environmental Geotechnology','161214',1);
insert into    Userid values('Water Resources Engineering','161225',1);


insert into    Userid values('SecondYear','16122',0);
insert into    Userid values('Structural Engineering','161221',1);
insert into    Userid values('Traffic and Transportation Planning','161222',1);
insert into    Userid values('Offshore Structures','161223',1);
insert into    Userid values('Environmental Geotechnology','161224',1);
insert into    Userid values('Water Resources Engineering','161225',1);



insert into    Userid values('PHD','1613',1);
insert into    Userid values('MCA','1614',1);


insert into    Userid values('PE','17',0);

insert into    Userid values('Faculty','172',0);
insert into    Userid values('Satff','173',0);


insert into    Userid values('Student','171',0);
insert into    Userid values('UG','1711',0);

insert into    Userid values('FirstYear','17111',0);
insert into    Userid values('A-Batch','171111',1);
insert into    Userid values('B-Batch','171112',1);

insert into    Userid values('SecondYear','17112',0);
insert into    Userid values('A-Batch','171121',1);
insert into    Userid values('B-Batch','171122',1);

insert into    Userid values('ThirdYear','17113',0);
insert into    Userid values('A-Batch','171131',1);
insert into    Userid values('B-Batch','171132',1);

insert into    Userid values('FourthYear','17114',0);
insert into    Userid values('A-Batch','171141',1);
insert into    Userid values('B-Batch','171142',1);


insert into    Userid values('PG','1712',0);
insert into    Userid values('FirstYear','17121',0);

insert into    Userid values('SecondYear','17122',0);


insert into    Userid values('PHD','1713',1);
insert into    Userid values('MCA','1714',1);

'INSERT INTO Post_to (header, venue, posted_by, post_time,conducted_by,description,img_links,links) values($1, $2, $3, $4, $5, $6, $7,$8);',[data.header,data.venue,data.posted_by,data.post_time,data.conducted_by,data.description,data.img_links,data.links]

'INSERT INTO website_users(firstname, lastname, emailid, hashpassword, creationdate,isEmailVerified) values($1, $2, $3, $4, $5,0);', [data.firstname, data.lastname, data.emailid, data.hashpassword, data.creationdate]

ALTER TABLE Post_to ADD COLUMN postid varchar(100) not null;

DELETE FROM Post_to WHERE TRUE;

ALTER TABLE Post_to ADD COLUMN highest_level varchar(100) not null;


insert into Parent_child values('1','11'); 
insert into Parent_child values('1','12'); 
insert into Parent_child values('1','13'); 
insert into Parent_child values('1','14'); 
insert into Parent_child values('1','15');
insert into Parent_child values('1','16');
insert into Parent_child values('1','17');
insert into Parent_child values('11','111'); /*cse->student*/ 
insert into Parent_child values('111','1111');  /*ug*/
insert into Parent_child values('111','1112');  /*pg*/
insert into Parent_child values('111','1113');  /*phd*/
insert into Parent_child values('111','1114'); /*mca*/

insert into Parent_child values('1111','11111'); /* ug 1st yr a,b*/
insert into Parent_child values('11111','111111');
insert into Parent_child values('11111','111112');

insert into Parent_child values('1111','11112');
insert into Parent_child values('11112','111121');
insert into Parent_child values('11112','111122');

insert into Parent_child values('1111','11113');
insert into Parent_child values('11113','111131');
insert into Parent_child values('11113','111132');

insert into Parent_child values('1111','11114');
insert into Parent_child values('11114','111141');
insert into Parent_child values('11114','111142');

insert into Parent_child values('11','112'); /*faculty*/
insert into Parent_child values('11','113'); /*staff*/


insert into Parent_child values('1112','11121'); /*pg 1st yr */
insert into Parent_child values('11121','111211');
insert into Parent_child values('11121','111212');

insert into Parent_child values('1112','11122'); /*pg 2nd yr */
insert into Parent_child values('11122','111221');
insert into Parent_child values('11122','111222');


SELECT Userid.users,Userid.id FROM Userid, Parent_child WHERE Parent_child.root_id = $1 and Parent_child.child_id =Userid.id;