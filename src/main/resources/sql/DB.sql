DROP TABLE "CenterQuestion" CASCADE CONSTRAINTS;
DROP TABLE "BestVolunteer" CASCADE CONSTRAINTS;
DROP TABLE "Applicant" CASCADE CONSTRAINTS;
DROP TABLE "Notice" CASCADE CONSTRAINTS;
DROP TABLE "Question" CASCADE CONSTRAINTS;
DROP TABLE "Record" CASCADE CONSTRAINTS;
DROP TABLE "Talent" CASCADE CONSTRAINTS;
DROP TABLE "Volunteer" CASCADE CONSTRAINTS;
DROP TABLE "Usertb" CASCADE CONSTRAINTS;
DROP TABLE "Centertb" CASCADE CONSTRAINTS;


DROP TABLE centertb;

CREATE TABLE centertb (
   centerno   NUMBER      PRIMARY KEY,
   cname   VARCHAR2(100)      NULL,
   businessno   NUMBER      NULL,
   cpassword   VARCHAR2(100)      NULL,
   mgr   VARCHAR2(100)      NULL,
   memail   VARCHAR2(300)      NULL,
   mphone   NUMBER      NULL,
   founded   DATE      NULL,
   chk   NUMBER      NULL,
   address1   VARCHAR2(300)      NULL,
   address2   VARCHAR2(300)      NULL,
   address3   VARCHAR2(300)      NULL
);

DROP TABLE usertb;

CREATE TABLE usertb (
   userno   NUMBER   PRIMARY KEY,
   uname   VARCHAR2(100) ,
   uemail   VARCHAR2(100),
   upassword   VARCHAR2(100),
   uphone   VARCHAR2(100),
   gender   NUMBER ,
   uaddress1   VARCHAR2(300),
   uaddress2   VARCHAR2(300),
   uaddress3   VARCHAR2(300),
   ulogin NUMBER
);

DROP TABLE talent;

CREATE TABLE talent (
   talentno   NUMBER      PRIMARY KEY,
   userno   NUMBER      NULL,
   talent_period   VARCHAR2(300)      NULL,
   talent_area   VARCHAR2(300)      NULL,
   talent_cycle   VARCHAR2(300)      NULL,
   write_date   DATE      NULL,
   department   VARCHAR2(300)      NULL,
   talent_title   VARCHAR2(300)      NULL,
   talent_content   VARCHAR2(300)      NULL,
   talent_process   NUMBER      NULL
);

DROP TABLE volunteer;

CREATE TABLE volunteer (
   volunteerno   NUMBER      PRIMARY KEY,
   centerno   NUMBER      NULL,
   vol_process   NUMBER      NULL,
   vol_term   VARCHAR2(300)      NULL,
   stime   DATE      NULL,
   etime   DATE      NULL,
   department   NUMBER      NULL,
   vol_area   VARCHAR2(300)      NULL,
   vol_place   VARCHAR2(300)      NULL,
   receiver   VARCHAR2(300)      NULL,
   qualification   VARCHAR2(1000)      NULL,
   write_date   DATE      NULL,
   npeople   NUMBER      NULL,
   apeople   NUMBER      NULL
);

DROP TABLE notice;

CREATE TABLE notice (
   noticeno   NUMBER      PRIMARY KEY,
   notice_title   VARCHAR2(300)      NULL,
   notice_content   VARCHAR2(1000)      NULL,
   hit   NUMBER      NULL,
   write_date   DATE      NULL
);

DROP TABLE question;

CREATE TABLE question (
   questionno   NUMBER      PRIMARY KEY,
   userno   NUMBER      NULL,
   question_title   VARCHAR2(300)      NULL,
   question_content   VARCHAR2(1000)      NULL,
   pic   VARCHAR2(100)      NULL,
   answer   VARCHAR2(1000)      NULL
);

DROP TABLE bestvolunteer;

CREATE TABLE bestvolunteer (
   bestno   NUMBER      PRIMARY KEY,
   userno   NUMBER      NULL,
   write_date   DATE      NULL,
   hit   NUMBER      NULL,
   best_title   VARCHAR2(300)      NULL,
   best_content   VARCHAR2(1000)      NULL,
   pic   VARCHAR2(100)      NULL
);

DROP TABLE applicant;

CREATE TABLE applicant (
   applicantno   NUMBER      PRIMARY KEY,
   userno   NUMBER      NULL,
   volunteerno   NUMBER      NULL,
   aprocess   NUMBER      NULL,
   write_date   DATE      NULL
);


DROP TABLE centerquestion;

CREATE TABLE centerquestion (
   questionno   NUMBER      PRIMARY KEY,
   centerno   NUMBER      NULL,
   cquestion_title   VARCHAR2(300)      NULL,
   cquestion_content   VARCHAR2(1000)      NULL,
   pic   VARCHAR2(100)      NULL,
   answer   VARCHAR2(1000)      NULL
);

DROP TABLE volrecord;

CREATE TABLE volrecord (
   applicandtno   NUMBER      PRIMARY KEY,
   vol_time   NUMBER      NULL
);

DROP TABLE admin;

CREATE TABLE admin (
   adminno   NUMBER      PRIMARY KEY,
   admin_id   VARCHAR2(100)      NULL,
   admin_pw   VARCHAR2(100)      NULL
);

INSERT INTO admin 
VALUES (1, 'admin01', '1234');

INSERT INTO admin 
VALUES (2, 'admin02', '9876');

SELECT*FROM admin;

ALTER TABLE volunteer MODIFY(write_date DEFAULT sysdate);
ALTER TABLE notice MODIFY(write_date DEFAULT sysdate);
ALTER TABLE bestvolunteer MODIFY(write_date DEFAULT sysdate);
ALTER TABLE talent MODIFY(write_date DEFAULT sysdate);
ALTER TABLE applicant MODIFY(write_date DEFAULT sysdate);

ALTER TABLE volunteer MODIFY(vol_process DEFAULT 0);
ALTER TABLE volunteer MODIFY(apeople DEFAULT 0);
--날짜값 기본으로 주는 구문이랑 봉사활동에 기본값 추가한 구문입니다

ALTER TABLE volunteer ADD(vol_title VARCHAR2(300), vol_content VARCHAR2(1000));
--봉사활동에 제목하고 내용이 없네요 추가할게요
