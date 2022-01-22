DROP TABLE tblInquiryLog;
DROP TABLE tblUserInfo;
DROP TABLE tblfavorite;
DROP TABLE tblBlock;
DROP TABLE tblblocktype;
DROP TABLE tblwithdrawtype;
DROP TABLE tblWithdraw;
drop table tblQuestionAndAnswer;
DROP TABLE tblfaq;
drop table tblQuestionImg;
DROP TABLE tblQuestion;
drop table tblQuestionType;
drop table tblreview;
DROP TABLE tblComComment;
DROP TABLE tblCommunityImage;
DROP TABLE tblBid;
DROP table tblProductImage;
DROP table tblSearch;
DROP table tblMessage;
DROP table tblNoticeImg;
DROP table tblProductComment;
DROP TABLE tblvisit;
DROP TABLE tbluserprofile;
drop table tblNotice;
DROP TABLE tblDeal;
drop table tblCommunity;
DROP TABLE tblProduct;
DROP TABLE tblProductType;
DROP TABLE tblUser;
DROP TABLE tblAddress;

DROP SEQUENCE inquiry_log_seq;
DROP SEQUENCE address_seq;
DROP SEQUENCE product_type_seq;
DROP SEQUENCE product_seq;
DROP SEQUENCE favorite_seq;
DROP SEQUENCE blocktype_seq;
DROP SEQUENCE withdrawtype_seq;
DROP SEQUENCE question_seq;
drop sequence community_seq;
drop sequence question_type_seq;
drop sequence Notice_seq;
drop sequence questionImg_seq;
DROP SEQUENCE deal_seq;
DROP SEQUENCE comcomment_seq;
DROP SEQUENCE community_img_seq;
DROP SEQUENCE bid_seq;
DROP SEQUENCE product_img_seq;
DROP SEQUENCE search_seq;
DROP SEQUENCE message_seq;
DROP SEQUENCE notice_img_seq;
DROP SEQUENCE product_comment_seq;
DROP SEQUENCE faq_seq;


CREATE TABLE tblUser (
    id VARCHAR2(100) NOT NULL, -- 영소문자+숫자 4~12자 (user1)
    password VARCHAR2(100) NOT NULL, --영소문자+숫자 6~10자
    user_level NUMBER NOT NULL --회원,2-관리자
);

ALTER TABLE tblUser
    ADD CONSTRAINT tblU_id_pk PRIMARY KEY (id);

insert into tblUser (id, password, user_level) values ('user1', 'pw30271', 1);
insert into tblUser (id, password, user_level) values ('user2', 'pw56745', 1);
insert into tblUser (id, password, user_level) values ('user3', 'pw93487', 1);
insert into tblUser (id, password, user_level) values ('user4', 'pw60840', 1);
insert into tblUser (id, password, user_level) values ('user5', 'pw82798', 1);
insert into tblUser (id, password, user_level) values ('user6', 'pw54106', 1);
insert into tblUser (id, password, user_level) values ('user7', 'pw56697', 1);
insert into tblUser (id, password, user_level) values ('user8', 'pw67168', 1);
insert into tblUser (id, password, user_level) values ('user9', 'pw69524', 1);
insert into tblUser (id, password, user_level) values ('user10', 'pw4839', 1);
insert into tblUser (id, password, user_level) values ('user11', 'pw8796', 1);
insert into tblUser (id, password, user_level) values ('user12', 'pw57284', 1);
insert into tblUser (id, password, user_level) values ('user13', 'pw93646', 1);
insert into tblUser (id, password, user_level) values ('user14', 'pw31313', 1);
insert into tblUser (id, password, user_level) values ('user15', 'pw64763', 1);
insert into tblUser (id, password, user_level) values ('user16', 'pw48560', 1);
insert into tblUser (id, password, user_level) values ('user17', 'pw40273', 1);
insert into tblUser (id, password, user_level) values ('user18', 'pw23074', 1);
insert into tblUser (id, password, user_level) values ('user19', 'pw29614', 1);
insert into tblUser (id, password, user_level) values ('user20', 'pw9483', 1);
insert into tblUser (id, password, user_level) values ('user21', 'pw97196', 1);
insert into tblUser (id, password, user_level) values ('user22', 'pw77741', 1);
insert into tblUser (id, password, user_level) values ('user23', 'pw22476', 1);
insert into tblUser (id, password, user_level) values ('user24', 'pw92903', 1);
insert into tblUser (id, password, user_level) values ('user25', 'pw78696', 1);
insert into tblUser (id, password, user_level) values ('user26', 'pw71665', 1);
insert into tblUser (id, password, user_level) values ('user27', 'pw52673', 1);
insert into tblUser (id, password, user_level) values ('user28', 'pw22750', 1);
insert into tblUser (id, password, user_level) values ('user29', 'pw44074', 1);
insert into tblUser (id, password, user_level) values ('user30', 'pw63573', 1);
insert into tblUser (id, password, user_level) values ('user31', 'pw91959', 1);
insert into tblUser (id, password, user_level) values ('user32', 'pw97653', 1);
insert into tblUser (id, password, user_level) values ('user33', 'pw20430', 1);
insert into tblUser (id, password, user_level) values ('user34', 'pw67980', 1);
insert into tblUser (id, password, user_level) values ('user35', 'pw86768', 1);
insert into tblUser (id, password, user_level) values ('user36', 'pw72379', 1);
insert into tblUser (id, password, user_level) values ('user37', 'pw71180', 1);
insert into tblUser (id, password, user_level) values ('user38', 'pw87633', 1);
insert into tblUser (id, password, user_level) values ('user39', 'pw47881', 1);
insert into tblUser (id, password, user_level) values ('user40', 'pw99210', 1);
insert into tblUser (id, password, user_level) values ('user41', 'pw100950', 1);
insert into tblUser (id, password, user_level) values ('user42', 'pw5995', 1);
insert into tblUser (id, password, user_level) values ('user43', 'pw92311', 1);
insert into tblUser (id, password, user_level) values ('user44', 'pw51203', 1);
insert into tblUser (id, password, user_level) values ('user45', 'pw69014', 1);
insert into tblUser (id, password, user_level) values ('user46', 'pw59496', 1);
insert into tblUser (id, password, user_level) values ('user47', 'pw36396', 1);
insert into tblUser (id, password, user_level) values ('user48', 'pw83892', 1);
insert into tblUser (id, password, user_level) values ('user49', 'pw36914', 1);
insert into tblUser (id, password, user_level) values ('user50', 'pw45124', 1);
insert into tblUser (id, password, user_level) values ('user51', 'pw100913', 1);
insert into tblUser (id, password, user_level) values ('user52', 'pw28213', 1);
insert into tblUser (id, password, user_level) values ('user53', 'pw99402', 1);
insert into tblUser (id, password, user_level) values ('user54', 'pw70530', 1);
insert into tblUser (id, password, user_level) values ('user55', 'pw11851', 1);
insert into tblUser (id, password, user_level) values ('user56', 'pw42885', 1);
insert into tblUser (id, password, user_level) values ('user57', 'pw67256', 1);
insert into tblUser (id, password, user_level) values ('user58', 'pw57808', 1);
insert into tblUser (id, password, user_level) values ('user59', 'pw88089', 1);
insert into tblUser (id, password, user_level) values ('user60', 'pw9168', 1);
insert into tblUser (id, password, user_level) values ('user61', 'pw49262', 1);
insert into tblUser (id, password, user_level) values ('user62', 'pw65798', 1);
insert into tblUser (id, password, user_level) values ('user63', 'pw65140', 1);
insert into tblUser (id, password, user_level) values ('user64', 'pw59466', 1);
insert into tblUser (id, password, user_level) values ('user65', 'pw25722', 1);
insert into tblUser (id, password, user_level) values ('user66', 'pw83558', 1);
insert into tblUser (id, password, user_level) values ('user67', 'pw41196', 1);
insert into tblUser (id, password, user_level) values ('user68', 'pw81140', 1);
insert into tblUser (id, password, user_level) values ('user69', 'pw72515', 1);
insert into tblUser (id, password, user_level) values ('user70', 'pw87740', 1);
insert into tblUser (id, password, user_level) values ('user71', 'pw10256', 1);
insert into tblUser (id, password, user_level) values ('user72', 'pw16693', 1);
insert into tblUser (id, password, user_level) values ('user73', 'pw98187', 1);
insert into tblUser (id, password, user_level) values ('user74', 'pw30110', 1);
insert into tblUser (id, password, user_level) values ('user75', 'pw11717', 1);
insert into tblUser (id, password, user_level) values ('user76', 'pw20896', 1);
insert into tblUser (id, password, user_level) values ('user77', 'pw62094', 1);
insert into tblUser (id, password, user_level) values ('user78', 'pw10795', 1);
insert into tblUser (id, password, user_level) values ('user79', 'pw35723', 1);
insert into tblUser (id, password, user_level) values ('user80', 'pw39315', 1);
insert into tblUser (id, password, user_level) values ('user81', 'pw78272', 1);
insert into tblUser (id, password, user_level) values ('user82', 'pw91086', 1);
insert into tblUser (id, password, user_level) values ('user83', 'pw43390', 1);
insert into tblUser (id, password, user_level) values ('user84', 'pw58196', 1);
insert into tblUser (id, password, user_level) values ('user85', 'pw69874', 1);
insert into tblUser (id, password, user_level) values ('user86', 'pw92283', 1);
insert into tblUser (id, password, user_level) values ('user87', 'pw31154', 1);
insert into tblUser (id, password, user_level) values ('user88', 'pw45205', 1);
insert into tblUser (id, password, user_level) values ('user89', 'pw54764', 1);
insert into tblUser (id, password, user_level) values ('user90', 'pw97231', 1);
insert into tblUser (id, password, user_level) values ('user91', 'pw5236', 1);
insert into tblUser (id, password, user_level) values ('user92', 'pw81136', 1);
insert into tblUser (id, password, user_level) values ('user93', 'pw48850', 1);
insert into tblUser (id, password, user_level) values ('user94', 'pw22547', 1);
insert into tblUser (id, password, user_level) values ('user95', 'pw35534', 1);
insert into tblUser (id, password, user_level) values ('user96', 'pw12842', 1);
insert into tblUser (id, password, user_level) values ('user97', 'pw93122', 1);
insert into tblUser (id, password, user_level) values ('user98', 'pw57720', 1);
insert into tblUser (id, password, user_level) values ('user99', 'pw59011', 1);
insert into tblUser (id, password, user_level) values ('user100', 'pw67378', 1);


CREATE TABLE tblAddress (
	address_seq	NUMBER	NOT NULL,
	sido VARCHAR2(15)	NOT NULL,--팔도,서울시
	sgg	VARCHAR2(15)	NOT NULL,--
	emd	VARCHAR2(15)	NOT NULL
);

ALTER TABLE tblAddress ADD CONSTRAINT PK_TBLADDRESS PRIMARY KEY (address_seq);
CREATE SEQUENCE address_seq;

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (1, '서울', '송파구', '풍납동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (2, '서울', '송파구', '석촌동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (3, '서울', '송파구', '성내동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (4, '서울', '송파구', '삼전동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (5, '서울', '강서구', '화곡동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (6, '서울', '강서구', '오쇠동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (7, '서울', '강서구', '등촌동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (8, '서울', '강서구', '마곡동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (9, '서울', '강서구', '우장산동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (10, '서울', '강서구', '개화동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (11, '서울', '강서구', '방화동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (12, '서울', '강북구', '미아동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (13, '서울', '강북구', '수유동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (14, '서울', '강북구', '송천동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (15, '서울', '강북구', '번동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (16, '서울', '강북구', '인수동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (17, '서울', '서대문구', '홍제동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (18, '서울', '서대문구', '대신동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (19, '서울', '서대문구', '창천동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (20, '서울', '서대문구', '북가좌동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (21, '서울', '광진구', '중곡동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (22, '서울', '광진구', '능동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (23, '서울', '광진구', '구의동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (24, '서울', '광진구', '화양동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (25, '서울', '광진구', '군자동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (26, '서울', '마포구', '아현동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (27, '서울', '마포구', '공덕동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (28, '서울', '마포구', '신공덕동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (29, '서울', '마포구', '용강동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (30, '서울', '마포구', '토정동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (31, '서울', '마포구', '대흥동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (32, '서울', '마포구', '염리동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (33, '서울', '마포구', '노고산동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (34, '서울', '마포구', '신수동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (35, '서울', '마포구', '망원동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (36, '서울', '마포구', '당인동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (37, '서울', '마포구', '하중동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (38, '서울', '마포구', '구수동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (39, '서울', '종로구', '청운동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (40, '서울', '종로구', '궁정동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (41, '서울', '종로구', '효자동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (42, '서울', '종로구', '통의동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (43, '서울', '종로구', '누하동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (44, '서울', '종로구', '옥인동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (45, '서울', '종로구', '당주동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (46, '서울', '종로구', '서린동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (47, '서울', '종로구', '인사동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (48, '서울', '종로구', '원서동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (49, '서울', '종로구', '묘동');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (50, '서울', '종로구', '관수동');



CREATE TABLE tblUserInfo (
    id VARCHAR2(100) NOT NULL, 
    address_seq NUMBER NOT NULL, --fk 설정 
    name VARCHAR2(21) NOT NULL, --한글2~5자
    address VARCHAR2(100) NOT NULL, --상세주소, 랜덤 더미
    tel VARCHAR2(100) NOT NULL, --숫자만 11
    email VARCHAR2(90) NOT NULL, --@알아서
    birth DATE NOT NULL, --랜덤
    gender CHAR(1) NOT NULL, --F/M
    since DATE default sysdate NOT NULL --알아서
);

ALTER TABLE tblUserInfo
    ADD CONSTRAINT tblUI_id_pk PRIMARY KEY (id);
    
ALTER TABLE tblUserInfo
    ADD CONSTRAINT tblUI_id_fk FOREIGN KEY (id) REFERENCES tblUser(id);
    
ALTER TABLE tblUserInfo
    ADD CONSTRAINT tblUI_gender_ck CHECK (gender in ('f','m'));
    
ALTER TABLE tblUserInfo
    ADD CONSTRAINT tblUI_address_seq_fk FOREIGN KEY (address_seq) REFERENCES tblAddress(address_seq);

insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user1', 29, '임정희', '주공 포레나아파트 588동 512호', '01097244474', 'user1@daum.net', '84-08-25', 'm', '20-11-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user2', 16, '임정재', '호수마을 E편한세상아파트 407동 44호', '01081807781', 'user2@daum.net', '06-03-02', 'f', '21-08-12');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user3', 16, '한진연', '주공 자이아파트 608동 916호', '01058624356', 'user3@daum.net', '35-10-17', 'm', '21-09-20');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user4', 14, '임지하', '한빛마을 프루지오아파트 717동 142호', '01046246116', 'user4@daum.net', '34-03-14', 'f', '20-02-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user5', 29, '이진선', '호수마을 아이파크아파트 107동 72호', '01065939529', 'user5@daum.net', '50-07-21', 'm', '20-04-13');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user6', 5, '정재섭', '한빛마을 래미안아파트 629동 37호', '01036186804', 'user6@gmail.com', '89-02-02', 'f', '21-03-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user7', 6, '임진희', '신삼성아파트 205동 1414호', '01063052160', 'user7@gmail.com', '81-06-20', 'f', '20-01-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user8', 2, '주유희', '바람마을 더샵아파트 608동 1115호', '01019933591', 'user8@gmail.com', '13-07-05', 'm', '20-08-23');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user9', 12, '진지하', '한빛마을 힐스테이트아파트 548동 212호', '01025561040', 'user9@gmail.com', '51-05-23', 'f', '21-03-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user10', 6, '이민민', '예당마을 삼성아파트 732동 1115호', '01031786363', 'user10@daum.net', '81-09-07', 'f', '20-06-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user11', 14, '유민유', '한빛마을 포레나아파트 241동 55호', '01067926609', 'user11@naver.com', '67-09-12', 'f', '21-02-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user12', 20, '정재선', '주공 자이아파트 825동 715호', '01086031607', 'user12@daum.net', '70-09-24', 'm', '21-02-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user13', 27, '주수섭', '예당마을 포레나아파트 274동 913호', '01014421810', 'user13@daum.net', '73-01-07', 'f', '21-09-22');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user14', 30, '박연안', '행복마을 아이파크아파트 518동 1412호', '01068564300', 'user14@daum.net', '75-05-10', 'f', '21-01-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user15', 22, '안민하', '행복마을 현대아파트 360동 44호', '01067121548', 'user15@gmail.com', '33-08-28', 'f', '21-03-21');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user16', 4, '진섭진', '바람마을 아이파크아파트 180동 142호', '01094558032', 'user16@naver.com', '47-10-18', 'f', '21-05-03');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user17', 19, '임정영', '신더샵아파트 850동 416호', '01082638789', 'user17@daum.net', '78-11-02', 'f', '20-11-22');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user18', 2, '진유준', '한빛마을 포레나아파트 850동 134호', '01028556819', 'user18@gmail.com', '49-11-10', 'f', '21-01-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user19', 7, '한안미', '바람마을 포레나아파트 815동 45호', '01080922965', 'user19@daum.net', '24-04-01', 'f', '20-01-14');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user20', 25, '박지형', '예당마을 더샵아파트 846동 69호', '01058284478', 'user20@daum.net', '34-01-19', 'f', '20-02-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user21', 20, '진준영', '예당마을 포레나아파트 831동 59호', '01054069299', 'user21@gmail.com', '37-10-20', 'm', '20-03-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user22', 4, '강영영', '예당마을 삼성아파트 249동 1616호', '01023316038', 'user22@naver.com', '05-11-07', 'f', '21-06-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user23', 8, '박형미', '바람마을 힐스테이트아파트 129동 513호', '01088418368', 'user23@naver.com', '10-05-22', 'f', '21-11-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user24', 18, '박수하', '바람마을 래미안아파트 195동 131호', '01035881340', 'user24@gmail.com', '81-04-15', 'f', '21-06-03');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user25', 13, '최정영', '호수마을 힐스테이트아파트 341동 84호', '01091239810', 'user25@naver.com', '02-05-08', 'm', '20-04-08');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user26', 7, '주미희', '바람마을 현대아파트 633동 108호', '01094738336', 'user26@naver.com', '26-06-22', 'f', '20-03-04');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user27', 15, '한수진', '한빛마을 자이아파트 187동 94호', '01098343433', 'user27@gmail.com', '01-07-28', 'm', '20-09-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user28', 21, '안섭진', '바람마을 롯데캐슬아파트 685동 111호', '01059556232', 'user28@naver.com', '80-10-03', 'm', '20-01-06');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user29', 15, '유진연', '한빛마을 삼성아파트 401동 814호', '01029958412', 'user29@gmail.com', '62-08-22', 'f', '20-07-11');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user30', 6, '한안성', '행복마을 삼성아파트 302동 28호', '01095498133', 'user30@daum.net', '53-04-18', 'm', '21-04-22');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user31', 11, '이안영', '호수마을 E편한세상아파트 472동 65호', '01030285803', 'user31@gmail.com', '64-07-22', 'f', '20-08-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user32', 5, '주준성', '호수마을 포레나아파트 747동 1216호', '01085985885', 'user32@daum.net', '33-06-23', 'f', '20-06-23');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user33', 4, '정민영', '신아이파크아파트 206동 16호', '01035781022', 'user33@daum.net', '35-05-15', 'f', '21-08-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user34', 3, '한정진', '예당마을 자이아파트 275동 1615호', '01045303984', 'user34@gmail.com', '68-03-16', 'm', '21-03-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user35', 17, '진형민', '주공 아이파크아파트 596동 916호', '01067546812', 'user35@gmail.com', '23-03-28', 'f', '21-02-23');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user36', 9, '정정하', '주공 프루지오아파트 726동 118호', '01028722278', 'user36@daum.net', '53-01-22', 'm', '20-03-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user37', 29, '유하성', '바람마을 E편한세상아파트 617동 616호', '01030274868', 'user37@daum.net', '95-10-02', 'm', '21-06-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user38', 25, '안연진', '예당마을 자이아파트 644동 126호', '01015574583', 'user38@naver.com', '16-11-07', 'm', '20-05-06');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user39', 12, '이수하', '호수마을 힐스테이트아파트 140동 1014호', '01068733295', 'user39@daum.net', '62-05-19', 'f', '20-11-14');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user40', 13, '진성성', '신아이파크아파트 748동 117호', '01057509817', 'user40@daum.net', '93-09-28', 'f', '21-01-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user41', 19, '최준하', '호수마을 자이아파트 157동 1516호', '01068358234', 'user41@gmail.com', '04-03-15', 'f', '20-01-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user42', 17, '최정수', '신롯데캐슬아파트 350동 416호', '01061054540', 'user42@daum.net', '74-03-08', 'm', '20-02-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user43', 14, '진성하', '바람마을 더샵아파트 859동 141호', '01059973031', 'user43@gmail.com', '29-07-26', 'f', '21-07-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user44', 30, '임안유', '주공 포레나아파트 553동 1515호', '01031324560', 'user44@gmail.com', '99-09-26', 'f', '20-07-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user45', 20, '주안진', '호수마을 E편한세상아파트 518동 71호', '01030938436', 'user45@naver.com', '36-10-23', 'm', '21-10-11');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user46', 13, '정유수', '바람마을 힐스테이트아파트 636동 510호', '01087554076', 'user46@naver.com', '09-09-01', 'f', '20-04-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user47', 7, '정연정', '주공 포레나아파트 765동 97호', '01018498041', 'user47@daum.net', '69-02-18', 'm', '20-08-14');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user48', 3, '임지형', '바람마을 현대아파트 423동 812호', '01029578152', 'user48@naver.com', '09-04-27', 'f', '20-03-05');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user49', 13, '정하섭', '행복마을 자이아파트 769동 55호', '01062069926', 'user49@gmail.com', '14-02-17', 'f', '20-03-26');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user50', 18, '박유진', '한빛마을 자이아파트 186동 28호', '01047181675', 'user50@naver.com', '25-01-17', 'f', '20-06-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user51', 10, '이섭진', '행복마을 래미안아파트 879동 68호', '01054176986', 'user51@naver.com', '60-10-10', 'f', '21-06-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user52', 24, '안미유', '예당마을 현대아파트 453동 1411호', '01032936269', 'user52@naver.com', '22-03-07', 'm', '20-08-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user53', 25, '주성준', '한빛마을 롯데캐슬아파트 777동 810호', '01024818996', 'user53@gmail.com', '22-05-02', 'f', '21-02-06');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user54', 17, '김안섭', '주공 래미안아파트 277동 313호', '01032639461', 'user54@naver.com', '66-08-25', 'f', '20-07-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user55', 23, '유진정', '예당마을 아이파크아파트 493동 213호', '01030585236', 'user55@gmail.com', '12-09-26', 'f', '21-11-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user56', 14, '진영선', '바람마을 더샵아파트 444동 92호', '01019292299', 'user56@naver.com', '91-10-27', 'm', '20-03-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user57', 7, '김진안', '주공 아이파크아파트 186동 1113호', '01072434241', 'user57@gmail.com', '09-01-25', 'm', '20-05-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user58', 22, '한진재', '신포레나아파트 361동 1112호', '01063776598', 'user58@naver.com', '56-07-27', 'f', '21-02-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user59', 4, '이민섭', '바람마을 포레나아파트 466동 107호', '01044483700', 'user59@gmail.com', '24-04-15', 'm', '20-08-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user60', 26, '최정연', '주공 포레나아파트 810동 313호', '01098856654', 'user60@gmail.com', '70-06-02', 'f', '20-02-13');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user61', 4, '박재준', '바람마을 현대아파트 593동 84호', '01089914755', 'user61@naver.com', '77-04-27', 'm', '21-06-05');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user62', 8, '박섭선', '주공 삼성아파트 528동 1111호', '01016659130', 'user62@gmail.com', '72-11-07', 'f', '21-10-12');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user63', 11, '김재민', '바람마을 자이아파트 730동 55호', '01069663150', 'user63@gmail.com', '20-03-28', 'm', '21-01-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user64', 29, '이섭정', '바람마을 프루지오아파트 203동 55호', '01058369906', 'user64@naver.com', '12-01-05', 'm', '21-09-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user65', 20, '유성수', '행복마을 롯데캐슬아파트 746동 916호', '01017863188', 'user65@naver.com', '52-11-10', 'm', '21-03-08');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user66', 10, '한준수', '신현대아파트 841동 1216호', '01065548477', 'user66@daum.net', '24-04-24', 'f', '20-10-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user67', 7, '최준연', '신래미안아파트 417동 77호', '01083378638', 'user67@naver.com', '64-05-18', 'm', '20-01-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user68', 21, '이유준', '호수마을 현대아파트 729동 78호', '01061634851', 'user68@daum.net', '74-04-07', 'm', '21-09-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user69', 1, '최진안', '호수마을 삼성아파트 480동 116호', '01089768490', 'user69@naver.com', '17-06-01', 'm', '21-07-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user70', 11, '한성하', '예당마을 프루지오아파트 493동 119호', '01054978907', 'user70@naver.com', '26-01-18', 'f', '20-10-03');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user71', 23, '유정재', '한빛마을 롯데캐슬아파트 612동 122호', '01018682784', 'user71@gmail.com', '81-09-28', 'f', '21-06-22');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user72', 16, '유형미', '신힐스테이트아파트 467동 118호', '01086854564', 'user72@naver.com', '83-10-04', 'm', '20-05-19');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user73', 10, '이준미', '행복마을 아이파크아파트 143동 310호', '01013871159', 'user73@gmail.com', '24-04-13', 'f', '21-06-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user74', 23, '최연선', '바람마을 프루지오아파트 250동 1116호', '01062424607', 'user74@daum.net', '05-07-06', 'f', '21-07-04');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user75', 4, '최성민', '호수마을 포레나아파트 863동 169호', '01014282799', 'user75@naver.com', '41-05-02', 'f', '21-03-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user76', 18, '한섭섭', '바람마을 E편한세상아파트 754동 122호', '01059509867', 'user76@naver.com', '47-01-21', 'm', '21-11-20');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user77', 2, '유하성', '호수마을 프루지오아파트 884동 159호', '01059221640', 'user77@daum.net', '33-04-05', 'f', '21-08-17');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user78', 18, '김연하', '예당마을 자이아파트 811동 72호', '01081687551', 'user78@naver.com', '01-07-27', 'm', '20-07-05');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user79', 8, '유준하', '한빛마을 프루지오아파트 781동 1411호', '01056126425', 'user79@naver.com', '54-10-17', 'm', '20-11-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user80', 10, '박재선', '호수마을 자이아파트 532동 129호', '01024524538', 'user80@daum.net', '38-03-02', 'm', '21-11-04');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user81', 6, '진민연', '바람마을 더샵아파트 490동 810호', '01037753009', 'user81@daum.net', '72-08-22', 'm', '21-03-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user82', 10, '안재유', '신현대아파트 445동 124호', '01049751197', 'user82@naver.com', '78-11-17', 'f', '20-09-26');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user83', 16, '한미정', '신더샵아파트 330동 88호', '01022254152', 'user83@gmail.com', '31-02-04', 'f', '20-11-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user84', 22, '이진민', '호수마을 삼성아파트 565동 143호', '01039841591', 'user84@gmail.com', '08-01-17', 'f', '20-10-05');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user85', 8, '한지정', '주공 E편한세상아파트 301동 1212호', '01047823022', 'user85@naver.com', '22-06-10', 'm', '20-06-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user86', 12, '강준형', '신더샵아파트 811동 19호', '01042686935', 'user86@naver.com', '44-07-05', 'm', '21-08-23');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user87', 5, '박형준', '바람마을 롯데캐슬아파트 723동 138호', '01061901586', 'user87@gmail.com', '44-04-24', 'm', '21-06-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user88', 10, '안연형', '호수마을 프루지오아파트 752동 13호', '01093459292', 'user88@daum.net', '86-04-24', 'f', '20-10-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user89', 25, '주민성', '신프루지오아파트 506동 1216호', '01061572643', 'user89@gmail.com', '29-05-24', 'f', '21-06-19');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user90', 4, '정안영', '호수마을 삼성아파트 498동 1113호', '01052516471', 'user90@daum.net', '12-10-18', 'm', '20-02-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user91', 11, '박성지', '바람마을 E편한세상아파트 451동 18호', '01033123793', 'user91@daum.net', '29-11-04', 'f', '21-03-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user92', 11, '한지준', '호수마을 프루지오아파트 833동 166호', '01038176950', 'user92@naver.com', '02-08-07', 'f', '20-01-26');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user93', 2, '유영영', '주공 프루지오아파트 172동 132호', '01082134396', 'user93@daum.net', '87-07-17', 'm', '20-10-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user94', 30, '최안희', '행복마을 프루지오아파트 237동 816호', '01076156610', 'user94@daum.net', '97-06-25', 'm', '20-01-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user95', 29, '한성희', '행복마을 삼성아파트 566동 716호', '01015781330', 'user95@naver.com', '99-10-08', 'm', '20-01-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user96', 22, '정진섭', '호수마을 래미안아파트 517동 912호', '01074044041', 'user96@naver.com', '58-01-05', 'm', '21-09-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user97', 21, '강형희', '호수마을 현대아파트 800동 94호', '01018603676', 'user97@naver.com', '95-02-08', 'f', '21-06-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user98', 5, '진진유', '한빛마을 래미안아파트 600동 111호', '01034291276', 'user98@gmail.com', '14-01-25', 'f', '20-08-10');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user99', 20, '강진선', '신래미안아파트 457동 138호', '01047211370', 'user99@gmail.com', '76-06-05', 'f', '21-04-06');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user100', 18, '이재진', '신E편한세상아파트 375동 1010호', '01073351097', 'user100@naver.com', '49-03-26', 'm', '20-10-02');


-- 상품 유형
CREATE TABLE tblProductType (
	product_type_seq	NUMBER	NOT NULL,
	name	VARCHAR2(100)	NOT NULL
);

CREATE SEQUENCE product_type_seq;

ALTER TABLE tblProductType ADD CONSTRAINT tblPT_product_type_seq_pk PRIMARY KEY(product_type_seq);

insert into tblProductType (product_type_seq, name) values (1, '디지털기기');
insert into tblProductType (product_type_seq, name) values (2, '생활가전');
insert into tblProductType (product_type_seq, name) values (3, '가구/인테리어');
insert into tblProductType (product_type_seq, name) values (4, '유아동');
insert into tblProductType (product_type_seq, name) values (5, '생활/가공식품');
insert into tblProductType (product_type_seq, name) values (6, '유아도서');
insert into tblProductType (product_type_seq, name) values (7, '스포츠/레저');
insert into tblProductType (product_type_seq, name) values (8, '여성잡화');
insert into tblProductType (product_type_seq, name) values (9, '여성의류');
insert into tblProductType (product_type_seq, name) values (10, '남성패션/잡화');
insert into tblProductType (product_type_seq, name) values (11, '게임/취미');
insert into tblProductType (product_type_seq, name) values (12, '뷰티/미용');
insert into tblProductType (product_type_seq, name) values (13, '반려동물용품');
insert into tblProductType (product_type_seq, name) values (14, '도서/티켓/음반');
insert into tblProductType (product_type_seq, name) values (15, '식물');
insert into tblProductType (product_type_seq, name) values (16, '기타 중고물품');


-- 상품
CREATE TABLE tblProduct (
	product_seq	NUMBER	NOT NULL,               --상품번호(PK)
	id	VARCHAR2(100)	NOT NULL,               --판매자 아이디(FK). USER1~100
	address_seq	NUMBER	NOT NULL,               --지역번호(FK) 30개
	product_type_seq	NUMBER	NOT NULL,       --상품유형(FK) 알아서
	name	VARCHAR2(100)	NOT NULL,           --상품이름   수식어+명사
	price	NUMBER	NOT NULL,                   --상품가격 1000~1000000
	is_auction CHAR(1)	DEFAULT 'n' NOT NULL,   --경매여부 n/y
	content	VARCHAR2(4000)	NOT NULL,           --상세내용 수식어+이유+추천
	regdate DATE DEFAULT sysdate NOT NULL,      --작성날짜   알아서.. 
	is_completion CHAR(1) DEFAULT 'n' NOT NULL, --판매여부 n/y..
	readcount NUMBER DEFAULT 0 NOT NULL,        --조회수 랜덤…
	is_deletion CHAR(1) DEFAULT 'n' NOT NULL	--삭제여부
);

CREATE SEQUENCE product_seq;

ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_product_seq_pk PRIMARY KEY(product_seq);
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_seller_id_fk FOREIGN KEY(id) REFERENCES tblUser(id);
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_address_seq_fk FOREIGN KEY(address_seq) REFERENCES tblAddress(address_seq);
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_product_type_fk FOREIGN KEY(product_type_seq) REFERENCES tblProductType(product_type_seq);
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_is_auction_ck CHECK(is_auction IN ('n', 'y'));
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_is_completion_ck CHECK(is_completion IN ('n', 'y'));

insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (1, 'user61', 29, 6, '미개봉 수영복 새상품', 38000, 'n', '새제품입니다.', '2020-01-09', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (2, 'user100', 33, 10, '피아노장난감', 270000, 'y', '싸게 내놓습니다.', '2020-01-18', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (3, 'user43', 36, 7, '청바지', 727000, 'n', '택배거래 원해요', '2020-01-23', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (4, 'user10', 6, 2, '수영복', 454000, 'y', '택배거래 원해요', '2020-01-28', 'y', 21);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (5, 'user100', 37, 8, '선반 판매합니다', 11000, 'n', '싸게 내놓습니다.', '2020-02-04', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (6, 'user58', 28, 8, '미개봉 원피스 팝니다', 46000, 'y', '새제품입니다.', '2020-02-11', 'y', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (7, 'user71', 50, 10, '강아지옷 팔아요', 301000, 'n', '싸게 내놓습니다.', '2020-02-15', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (8, 'user66', 48, 14, '얼마 안 쓴 수영복', 798000, 'y', '택배거래 원해요', '2020-02-18', 'y', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (9, 'user75', 43, 10, '얼마 안 쓴 책상', 471000, 'n', '쿨거래 원합니다', '2020-02-22', 'y', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (10, 'user93', 16, 7, '미개봉 테이블 정리합니다', 298000, 'y', '싸게 내놓습니다.', '2020-02-24', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (11, 'user29', 18, 15, '피아노장난감', 373000, 'n', '직거래 원해요', '2020-02-28', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (12, 'user5', 28, 12, '의자', 299000, 'y', '택배거래 원해요', '2020-03-02', 'y', 6);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (13, 'user57', 20, 1, '미개봉 수세미', 574000, 'n', '정말 좋은 상품이에요~', '2020-03-06', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (14, 'user17', 36, 12, '미개봉 청바지 팔아요', 23000, 'y', '새제품입니다.', '2020-03-13', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (15, 'user56', 33, 8, '미개봉 벤토나이트 팝니다', 505000, 'n', '쿨거래 원합니다', '2020-03-19', 'y', 29);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (16, 'user14', 8, 4, '배드민턴라켓 판매합니다', 195000, 'y', '직거래 원해요', '2020-03-23', 'y', 12);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (17, 'user59', 15, 3, '피아노장난감', 564000, 'n', '쿨거래 원합니다', '2020-03-31', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (18, 'user89', 45, 13, '벤토나이트 팝니다', 87000, 'y', '택배거래 원해요', '2020-04-07', 'y', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (19, 'user13', 37, 5, '피아노장난감 판매', 335000, 'n', '새제품입니다.', '2020-04-08', 'y', 13);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (20, 'user90', 40, 9, '지갑 팔아요', 817000, 'y', '쿨거래 원합니다', '2020-04-13', 'y', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (21, 'user36', 10, 10, '미개봉 자전거', 966000, 'n', '택배거래 원해요', '2020-04-18', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (22, 'user42', 21, 5, '갤럭시탭', 495000, 'y', '정말 좋은 상품이에요~', '2020-04-25', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (23, 'user15', 30, 2, '에어컨 새상품', 785000, 'n', '쿨거래 원합니다', '2020-04-29', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (24, 'user97', 30, 12, '전자레인지', 825000, 'y', '쿨거래 원합니다', '2020-05-03', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (25, 'user57', 28, 7, '셔츠 판매합니다', 751000, 'n', '쿨거래 원합니다', '2020-05-10', 'y', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (26, 'user55', 36, 14, '중고 아이폰', 852000, 'y', '직거래 원해요', '2020-05-11', 'y', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (27, 'user95', 18, 14, '중고 수세미 팝니다', 357000, 'n', '쿨거래 원합니다', '2020-05-12', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (28, 'user86', 12, 8, '중고 에코백', 775000, 'y', '택배거래 원해요', '2020-05-15', 'y', 13);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (29, 'user97', 50, 12, '미개봉 벤토나이트 팝니다', 843000, 'n', '택배거래 원해요', '2020-05-23', 'y', 11);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (30, 'user45', 13, 3, '자기개발 도서 내놓습니다.', 89000, 'y', '직거래 원해요', '2020-05-29', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (31, 'user93', 7, 15, '아이패드 내놓습니다.', 830000, 'n', '쿨거래 원합니다', '2020-06-01', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (32, 'user37', 16, 14, '중고 에어컨', 808000, 'y', '정말 좋은 상품이에요~', '2020-06-02', 'y', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (33, 'user13', 22, 2, '얼마 안 쓴 청소기 새상품', 134000, 'n', '새제품입니다.', '2020-06-04', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (34, 'user91', 24, 8, '전자레인지', 506000, 'y', '정말 좋은 상품이에요~', '2020-06-13', 'y', 11);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (35, 'user44', 25, 5, '중고 의자 판매', 280000, 'n', '싸게 내놓습니다.', '2020-06-16', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (36, 'user7', 27, 2, '얼마 안 쓴 딥러닝의 기초 내놓습니다.', 94000, 'y', '좋은 거래 원해요^^', '2020-06-18', 'y', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (37, 'user24', 17, 8, '갤럭시탭', 596000, 'n', '정말 좋은 상품이에요~', '2020-06-23', 'y', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (38, 'user50', 49, 10, '수영복', 611000, 'y', '좋은 거래 원해요^^', '2020-07-01', 'y', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (39, 'user53', 41, 1, '피아노장난감 팔아요', 159000, 'n', '좋은 거래 원해요^^', '2020-07-06', 'y', 29);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (40, 'user16', 33, 8, '벤토나이트', 519000, 'y', '좋은 거래 원해요^^', '2020-07-07', 'y', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (41, 'user91', 49, 9, '중고 테이블', 905000, 'n', '싸게 내놓습니다.', '2020-07-13', 'y', 11);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (42, 'user73', 46, 10, '얼마 안 쓴 영어동화', 272000, 'y', '새제품입니다.', '2020-07-15', 'y', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (43, 'user91', 25, 9, '얼마 안 쓴 테이블', 96000, 'n', '정말 좋은 상품이에요~', '2020-07-16', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (44, 'user19', 38, 9, '과학동화전집', 582000, 'y', '정말 좋은 상품이에요~', '2020-07-17', 'y', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (45, 'user97', 41, 7, '미개봉 소파 새상품', 698000, 'n', '택배거래 원해요', '2020-07-22', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (46, 'user93', 25, 13, '중고 아이폰', 838000, 'y', '쿨거래 원합니다', '2020-07-27', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (47, 'user46', 27, 11, '미개봉 배드민턴라켓', 701000, 'n', '싸게 내놓습니다.', '2020-07-28', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (48, 'user41', 35, 4, '얼마 안 쓴 딥러닝의 기초 내놓습니다.', 663000, 'y', '좋은 거래 원해요^^', '2020-08-02', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (49, 'user67', 32, 3, '에코백', 209000, 'n', '좋은 거래 원해요^^', '2020-08-05', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (50, 'user98', 28, 3, '배드민턴라켓 판매', 695000, 'y', '직거래 원해요', '2020-08-13', 'y', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (51, 'user96', 23, 11, '자바의 정석 정리합니다', 156000, 'n', '싸게 내놓습니다.', '2020-08-16', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (52, 'user73', 23, 3, '얼마 안 쓴 아이비 판매', 510000, 'y', '택배거래 원해요', '2020-08-20', 'y', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (53, 'user44', 7, 7, '벤토나이트', 140000, 'n', '새제품입니다.', '2020-08-26', 'y', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (54, 'user71', 22, 9, '미개봉 수영복 판매합니다', 265000, 'y', '쿨거래 원합니다', '2020-08-27', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (55, 'user74', 27, 2, '미개봉 벤토나이트', 40000, 'n', '택배거래 원해요', '2020-09-03', 'y', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (56, 'user40', 8, 12, '미개봉 책상 새상품', 959000, 'y', '정말 좋은 상품이에요~', '2020-09-11', 'y', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (57, 'user17', 42, 11, '얼마 안 쓴 스타벅스 5만원 쿠폰', 86000, 'n', '쿨거래 원합니다', '2020-09-17', 'y', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (58, 'user40', 47, 7, '아이폰 내놓습니다.', 375000, 'y', '좋은 거래 원해요^^', '2020-09-19', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (59, 'user22', 50, 5, '지갑 정리합니다', 701000, 'n', '쿨거래 원합니다', '2020-09-23', 'y', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (60, 'user89', 11, 1, '아기자동차', 63000, 'y', '좋은 거래 원해요^^', '2020-09-29', 'y', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (61, 'user38', 2, 1, '아이폰', 715000, 'n', '정말 좋은 상품이에요~', '2020-10-01', 'y', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (62, 'user62', 9, 15, '원피스 내놓습니다.', 717000, 'y', '좋은 거래 원해요^^', '2020-10-07', 'y', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (63, 'user72', 2, 6, '미개봉 에코백 팝니다', 519000, 'n', '좋은 거래 원해요^^', '2020-10-11', 'y', 6);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (64, 'user93', 20, 5, '수영복', 800000, 'y', '쿨거래 원합니다', '2020-10-19', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (65, 'user38', 29, 1, '에코백 내놓습니다.', 808000, 'n', '새제품입니다.', '2020-10-21', 'y', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (66, 'user89', 2, 7, '중고 축구공', 151000, 'y', '좋은 거래 원해요^^', '2020-10-28', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (67, 'user76', 15, 8, '스투키', 947000, 'n', '정말 좋은 상품이에요~', '2020-10-31', 'y', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (68, 'user15', 20, 3, '니트 정리합니다', 792000, 'y', '싸게 내놓습니다.', '2020-11-07', 'y', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (69, 'user10', 43, 8, '수영복', 335000, 'n', '싸게 내놓습니다.', '2020-11-15', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (70, 'user8', 24, 13, '책상', 922000, 'y', '싸게 내놓습니다.', '2020-11-19', 'y', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (71, 'user4', 35, 5, '중고 수세미', 963000, 'n', '쿨거래 원합니다', '2020-11-22', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (72, 'user4', 45, 4, '전자레인지 내놓습니다.', 114000, 'y', '싸게 내놓습니다.', '2020-11-27', 'y', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (73, 'user9', 34, 15, '중고 스투키 판매합니다', 350000, 'n', '택배거래 원해요', '2020-12-06', 'y', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (74, 'user71', 48, 4, '틴트', 424000, 'y', '좋은 거래 원해요^^', '2020-12-09', 'y', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (75, 'user51', 20, 6, '영어동화 내놓습니다.', 437000, 'n', '정말 좋은 상품이에요~', '2020-12-16', 'y', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (76, 'user91', 46, 10, '테이블', 298000, 'y', '정말 좋은 상품이에요~', '2020-12-24', 'y', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (77, 'user39', 8, 15, '스타벅스 5만원 쿠폰 팔아요', 376000, 'n', '직거래 원해요', '2020-12-25', 'y', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (78, 'user52', 8, 8, '테이블', 647000, 'y', '정말 좋은 상품이에요~', '2020-12-26', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (79, 'user15', 42, 1, '미개봉 아이패드', 660000, 'n', '새제품입니다.', '2021-01-04', 'y', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (80, 'user65', 36, 1, '청바지 팝니다', 436000, 'y', '새제품입니다.', '2021-01-11', 'y', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (81, 'user89', 38, 10, '얼마 안 쓴 과학동화전집 새상품', 904000, 'n', '직거래 원해요', '2021-01-17', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (82, 'user16', 38, 9, '중고 영어동화 내놓습니다.', 106000, 'y', '새제품입니다.', '2021-01-21', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (83, 'user56', 34, 3, '미개봉 영어동화', 900000, 'n', '정말 좋은 상품이에요~', '2021-01-23', 'y', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (84, 'user17', 37, 4, '배드민턴라켓 정리합니다', 989000, 'y', '쿨거래 원합니다', '2021-01-29', 'y', 12);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (85, 'user83', 18, 15, '선인장', 581000, 'n', '택배거래 원해요', '2021-02-01', 'y', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (86, 'user53', 18, 1, '미개봉 에어컨', 749000, 'y', '싸게 내놓습니다.', '2021-02-06', 'y', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (87, 'user63', 16, 3, '미개봉 청바지', 201000, 'n', '좋은 거래 원해요^^', '2021-02-07', 'y', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (88, 'user40', 23, 14, '아이비', 359000, 'y', '새제품입니다.', '2021-02-10', 'y', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (89, 'user56', 50, 3, '미개봉 책꽂이', 768000, 'n', '싸게 내놓습니다.', '2021-02-12', 'y', 11);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (90, 'user51', 30, 13, '얼마 안 쓴 후드집업 내놓습니다.', 708000, 'y', '새제품입니다.', '2021-02-17', 'y', 10);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (91, 'user75', 48, 4, '아이패드', 127000, 'n', '직거래 원해요', '2021-02-18', 'y', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (92, 'user58', 3, 4, '중고 셔츠 팝니다', 456000, 'y', '직거래 원해요', '2021-02-19', 'y', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (93, 'user93', 6, 3, '미개봉 청바지', 526000, 'n', '싸게 내놓습니다.', '2021-02-25', 'y', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (94, 'user41', 20, 7, '중고 핸드크림 내놓습니다.', 779000, 'y', '좋은 거래 원해요^^', '2021-03-03', 'y', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (95, 'user34', 7, 11, '미개봉 피아노장난감 내놓습니다.', 291000, 'n', '쿨거래 원합니다', '2021-03-06', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (96, 'user14', 12, 8, '수영복', 19000, 'y', '싸게 내놓습니다.', '2021-03-08', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (97, 'user65', 30, 11, '중고 아이폰 판매합니다', 140000, 'n', '새제품입니다.', '2021-03-17', 'y', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (98, 'user36', 11, 6, '자바의 정석 새상품', 935000, 'y', '택배거래 원해요', '2021-03-23', 'y', 21);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (99, 'user17', 12, 12, '소파', 767000, 'n', '직거래 원해요', '2021-03-29', 'y', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (100, 'user33', 16, 8, '미개봉 의자 판매합니다', 356000, 'y', '좋은 거래 원해요^^', '2021-04-06', 'y', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (101, 'user65', 31, 2, '영어동화', 348000, 'n', '택배거래 원해요', '2021-04-08', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (102, 'user16', 39, 12, '자기개발 도서 팝니다', 618000, 'y', '정말 좋은 상품이에요~', '2021-04-14', 'n', 6);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (103, 'user54', 11, 1, '중고 과학동화전집 내놓습니다.', 113000, 'n', '택배거래 원해요', '2021-04-23', 'n', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (104, 'user98', 6, 11, '청소기 팔아요', 775000, 'y', '직거래 원해요', '2021-04-29', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (105, 'user84', 49, 15, '중고 자전거 새상품', 780000, 'n', '쿨거래 원합니다', '2021-05-02', 'n', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (106, 'user95', 26, 5, '이동장', 834000, 'y', '정말 좋은 상품이에요~', '2021-05-06', 'n', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (107, 'user5', 3, 8, '수영복 판매', 860000, 'n', '싸게 내놓습니다.', '2021-05-08', 'n', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (108, 'user89', 44, 13, '미개봉 딥러닝의 기초', 257000, 'y', '정말 좋은 상품이에요~', '2021-05-17', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (109, 'user87', 6, 5, '책상', 87000, 'n', '쿨거래 원합니다', '2021-05-19', 'n', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (110, 'user16', 30, 10, '틴트', 202000, 'y', '좋은 거래 원해요^^', '2021-05-23', 'n', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (111, 'user33', 2, 2, '중고 스타벅스 5만원 쿠폰 새상품', 964000, 'n', '정말 좋은 상품이에요~', '2021-05-30', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (112, 'user51', 31, 2, '자바의 정석 팔아요', 580000, 'y', '정말 좋은 상품이에요~', '2021-05-31', 'n', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (113, 'user10', 4, 15, '선인장', 282000, 'n', '쿨거래 원합니다', '2021-06-02', 'n', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (114, 'user21', 27, 13, '미개봉 틴트', 918000, 'y', '정말 좋은 상품이에요~', '2021-06-03', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (115, 'user55', 16, 12, '미개봉 냄비받침 정리합니다', 622000, 'n', '싸게 내놓습니다.', '2021-06-11', 'n', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (116, 'user72', 19, 12, '얼마 안 쓴 딥러닝의 기초', 990000, 'y', '정말 좋은 상품이에요~', '2021-06-18', 'n', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (117, 'user16', 45, 13, '중고 냄비받침', 535000, 'n', '직거래 원해요', '2021-06-23', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (118, 'user50', 40, 14, '테이블', 274000, 'y', '싸게 내놓습니다.', '2021-07-01', 'n', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (119, 'user90', 4, 8, '아이패드', 852000, 'n', '싸게 내놓습니다.', '2021-07-08', 'n', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (120, 'user71', 37, 1, '미개봉 벤토나이트', 666000, 'y', '정말 좋은 상품이에요~', '2021-07-10', 'n', 12);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (121, 'user85', 32, 9, '스투키 정리합니다', 307000, 'n', '싸게 내놓습니다.', '2021-07-19', 'n', 6);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (122, 'user80', 27, 14, '에어컨', 139000, 'y', '싸게 내놓습니다.', '2021-07-25', 'n', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (123, 'user35', 38, 9, '얼마 안 쓴 스투키', 748000, 'n', '정말 좋은 상품이에요~', '2021-07-27', 'n', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (124, 'user73', 12, 4, '얼마 안 쓴 핸드크림 내놓습니다.', 28000, 'y', '싸게 내놓습니다.', '2021-08-03', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (125, 'user34', 23, 13, '얼마 안 쓴 청바지 판매합니다', 107000, 'n', '직거래 원해요', '2021-08-09', 'n', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (126, 'user91', 16, 13, '중고 아이폰 판매', 347000, 'y', '정말 좋은 상품이에요~', '2021-08-13', 'n', 10);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (127, 'user33', 13, 8, '중고 후드집업', 488000, 'n', '직거래 원해요', '2021-08-19', 'n', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (128, 'user29', 36, 12, '얼마 안 쓴 모니터 새상품', 200000, 'y', '직거래 원해요', '2021-08-20', 'n', 10);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (129, 'user95', 3, 9, '중고 책상 정리합니다', 930000, 'n', '싸게 내놓습니다.', '2021-08-24', 'n', 29);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (130, 'user98', 21, 4, '얼마 안 쓴 책상 팝니다', 592000, 'y', '싸게 내놓습니다.', '2021-08-29', 'n', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (131, 'user69', 8, 9, '피아노장난감', 966000, 'n', '좋은 거래 원해요^^', '2021-09-06', 'n', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (132, 'user76', 15, 9, '냄비받침 판매', 714000, 'y', '새제품입니다.', '2021-09-07', 'n', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (133, 'user75', 31, 2, '틴트 내놓습니다.', 220000, 'n', '정말 좋은 상품이에요~', '2021-09-10', 'n', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (134, 'user77', 38, 4, '청바지 새상품', 981000, 'y', '직거래 원해요', '2021-09-14', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (135, 'user58', 20, 1, '얼마 안 쓴 테이블', 177000, 'n', '좋은 거래 원해요^^', '2021-09-21', 'n', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (136, 'user85', 36, 5, '자기개발 도서', 503000, 'y', '쿨거래 원합니다', '2021-09-26', 'n', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (137, 'user94', 18, 8, '중고 전자레인지 새상품', 805000, 'n', '싸게 내놓습니다.', '2021-10-02', 'n', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (138, 'user77', 20, 14, '후드집업', 502000, 'y', '택배거래 원해요', '2021-10-08', 'n', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (139, 'user25', 38, 8, '중고 압력밥솥 정리합니다', 981000, 'n', '좋은 거래 원해요^^', '2021-10-13', 'n', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (140, 'user69', 45, 11, '중고 숏패딩', 409000, 'y', '새제품입니다.', '2021-10-15', 'n', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (141, 'user90', 25, 1, '아이비 판매합니다', 577000, 'n', '쿨거래 원합니다', '2021-10-19', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (142, 'user42', 45, 15, '얼마 안 쓴 선반', 455000, 'y', '정말 좋은 상품이에요~', '2021-10-27', 'n', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (143, 'user53', 20, 2, '자바의 정석', 279000, 'n', '직거래 원해요', '2021-11-01', 'n', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (144, 'user8', 10, 1, '에코백', 766000, 'y', '싸게 내놓습니다.', '2021-11-05', 'n', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (145, 'user96', 34, 11, '얼마 안 쓴 스타벅스 5만원 쿠폰 내놓습니다.', 277000, 'n', '쿨거래 원합니다', '2021-11-10', 'n', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (146, 'user71', 48, 8, '얼마 안 쓴 수영복 팝니다', 212000, 'y', '새제품입니다.', '2021-11-11', 'n', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (147, 'user87', 31, 6, '원피스 팔아요', 89000, 'n', '싸게 내놓습니다.', '2021-11-13', 'n', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (148, 'user85', 41, 10, '중고 압력밥솥 내놓습니다.', 249000, 'y', '정말 좋은 상품이에요~', '2021-11-14', 'n', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (149, 'user50', 6, 13, '중고 압력밥솥 판매합니다', 427000, 'n', '쿨거래 원합니다', '2021-11-17', 'n', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (150, 'user21', 6, 12, '에코백 팔아요', 634000, 'y', '새제품입니다.', '2021-11-22', 'n', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (151, 'user15', 9, 5, '중고 위인전', 513000, 'n', '싸게 내놓습니다.', '2021-11-26', 'n', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (152, 'user8', 42, 8, '고양이간식 팔아요', 798000, 'y', '좋은 거래 원해요^^', '2021-12-05', 'n', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (153, 'user16', 13, 4, '얼마 안 쓴 에어컨 판매합니다', 377000, 'n', '정말 좋은 상품이에요~', '2021-12-06', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (154, 'user71', 40, 15, '청바지 팔아요', 348000, 'y', '새제품입니다.', '2021-12-10', 'n', 21);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (155, 'user28', 26, 14, '아이비 판매', 946000, 'n', '정말 좋은 상품이에요~', '2021-12-19', 'n', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (156, 'user26', 7, 12, '스투키 내놓습니다.', 113000, 'y', '쿨거래 원합니다', '2021-12-25', 'n', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (157, 'user41', 33, 6, '아이폰', 82000, 'n', '쿨거래 원합니다', '2021-12-29', 'n', 29);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (158, 'user26', 10, 7, '미개봉 피아노장난감', 869000, 'y', '싸게 내놓습니다.', '2022-01-04', 'n', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (159, 'user34', 22, 10, '얼마 안 쓴 강아지옷 판매', 64000, 'n', '쿨거래 원합니다', '2022-01-09', 'n', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (160, 'user87', 30, 4, '책상', 623000, 'y', '정말 좋은 상품이에요~', '2022-01-12', 'n', 15);



CREATE TABLE tblFavorite (
    favorite_seq NUMBER NOT NULL,
    id VARCHAR2(100) NOT NULL,
    product_seq NUMBER NOT NULL
); --100

CREATE SEQUENCE favorite_seq;

ALTER TABLE tblfavorite
    ADD CONSTRAINT tblF_favorite_seq_pk PRIMARY KEY (favorite_seq);

ALTER TABLE tblfavorite
    ADD CONSTRAINT tblF_product_seq_fk FOREIGN KEY (product_seq) REFERENCES tblProduct (product_seq);

ALTER TABLE tblfavorite
    ADD CONSTRAINT tblF_id_fk FOREIGN KEY (id) REFERENCES tblUser(id);

insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user1', 6);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user2', 49);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user3', 137);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user4', 128);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user5', 130);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user6', 92);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user7', 132);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user8', 114);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user9', 64);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user10', 64);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user11', 48);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user12', 84);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user13', 12);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user14', 7);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user15', 78);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user16', 93);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user17', 108);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user18', 100);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user19', 58);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user20', 13);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user21', 33);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user22', 147);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user23', 40);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user24', 46);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user25', 101);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user26', 123);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user27', 8);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user28', 147);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user29', 77);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user30', 46);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user31', 4);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user32', 27);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user33', 7);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user34', 101);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user35', 31);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user36', 77);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user37', 91);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user38', 8);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user39', 119);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user40', 92);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user41', 108);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user42', 67);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user43', 130);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user44', 67);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user45', 119);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user46', 80);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user47', 19);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user48', 72);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user49', 114);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user50', 51);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user51', 21);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user52', 28);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user53', 13);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user54', 55);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user55', 77);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user56', 56);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user57', 147);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user58', 148);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user59', 26);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user60', 64);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user61', 8);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user62', 43);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user63', 119);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user64', 130);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user65', 42);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user66', 71);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user67', 118);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user68', 150);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user69', 83);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user70', 29);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user71', 38);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user72', 62);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user73', 148);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user74', 139);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user75', 109);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user76', 5);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user77', 154);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user78', 91);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user79', 12);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user80', 99);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user81', 43);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user82', 127);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user83', 96);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user84', 54);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user85', 40);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user86', 85);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user87', 126);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user88', 73);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user89', 107);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user90', 131);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user91', 149);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user92', 48);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user93', 41);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user94', 59);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user95', 47);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user96', 40);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user97', 16);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user98', 86);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user99', 78);
insert into tblFavorite (favorite_seq, id, product_seq) values (favorite_seq.nextVal, 'user100', 90);



CREATE SEQUENCE blocktype_seq;

CREATE TABLE tblblocktype (
	block_type_seq	NUMBER NOT NULL,
	TYPE VARCHAR2(30) NOT NULL
);

ALTER TABLE tblblocktype ADD CONSTRAINT tblb_block_type_seq_pk PRIMARY KEY (block_type_seq);

insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'사기');
insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'잠수');
insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'욕설');
insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'타 사이트 광고');
insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'불법');

CREATE TABLE tblBlock (
    id	VARCHAR2(100)	NOT NULL,
    block_type_seq	NUMBER	NOT NULL, --5
    regdate	DATE default sysdate	NOT NULL
);

ALTER TABLE tblBlock
    ADD CONSTRAINT tblB_id_pk PRIMARY KEY (id);
    
ALTER TABLE tblBlock
    ADD CONSTRAINT tblB_id_fk FOREIGN KEY (id) REFERENCES tblUser(id);
    
ALTER TABLE tblBlock
    ADD CONSTRAINT tblB_block_type_seq_fk FOREIGN KEY (block_type_seq) REFERENCES tblBlockType(block_type_seq);

insert into tblBlock (id, block_type_seq, regdate) values ('user1', 1, '21-05-01');
insert into tblBlock (id, block_type_seq, regdate) values ('user2', 1, '20-07-04');
insert into tblBlock (id, block_type_seq, regdate) values ('user3', 5, '21-11-12');
insert into tblBlock (id, block_type_seq, regdate) values ('user4', 2, '21-11-08');
insert into tblBlock (id, block_type_seq, regdate) values ('user5', 2, '20-03-04');
insert into tblBlock (id, block_type_seq, regdate) values ('user6', 3, '20-05-04');
insert into tblBlock (id, block_type_seq, regdate) values ('user7', 2, '20-07-18');
insert into tblBlock (id, block_type_seq, regdate) values ('user8', 5, '21-01-11');
insert into tblBlock (id, block_type_seq, regdate) values ('user9', 5, '21-08-04');
insert into tblBlock (id, block_type_seq, regdate) values ('user10', 3, '21-09-26');
insert into tblBlock (id, block_type_seq, regdate) values ('user11', 3, '21-09-09');
insert into tblBlock (id, block_type_seq, regdate) values ('user12', 3, '21-06-15');
insert into tblBlock (id, block_type_seq, regdate) values ('user13', 3, '21-04-26');
insert into tblBlock (id, block_type_seq, regdate) values ('user14', 3, '21-09-10');
insert into tblBlock (id, block_type_seq, regdate) values ('user15', 5, '20-09-19');
insert into tblBlock (id, block_type_seq, regdate) values ('user16', 3, '21-08-02');
insert into tblBlock (id, block_type_seq, regdate) values ('user17', 2, '20-04-22');
insert into tblBlock (id, block_type_seq, regdate) values ('user18', 4, '20-09-08');
insert into tblBlock (id, block_type_seq, regdate) values ('user19', 4, '21-01-27');
insert into tblBlock (id, block_type_seq, regdate) values ('user20', 1, '21-09-16');


CREATE SEQUENCE withdrawtype_seq;

CREATE TABLE tblwithdrawtype (
	withdraw_type_seq NUMBER NOT NULL,
	TYPE VARCHAR2(30) NOT NULL
);
ALTER TABLE tblwithdrawtype ADD CONSTRAINT tblw_withdraw_type_seq_pk PRIMARY KEY (withdraw_type_seq);

insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'UI 불만');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'서버 불만');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'판매자가 너무 없어요.');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'타 사이트 이용');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'개인 사유');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'구매자가 너무 없어요.');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'기타');

CREATE TABLE tblWithdraw (
    id VARCHAR2(100) NOT NULL,
    withdraw_type_seq NUMBER NOT NULL,
    time DATE default sysdate NOT NULL
);--20명

ALTER TABLE tblWithdraw
    ADD CONSTRAINT tblW_id_pk PRIMARY KEY (id);
    
ALTER TABLE tblWithdraw
    ADD CONSTRAINT tblW_id_fk FOREIGN KEY (id) REFERENCES tblUser (id);

insert into tblWithdraw (id, withdraw_type_seq, time) values ('user21', 1, '20-10-03');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user22', 3, '21-07-05');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user23', 5, '20-07-02');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user24', 2, '20-04-13');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user25', 4, '20-03-23');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user26', 3, '21-07-03');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user27', 1, '21-03-23');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user28', 5, '21-01-08');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user29', 2, '20-08-06');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user30', 3, '20-08-04');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user31', 3, '21-10-05');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user32', 5, '21-11-03');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user33', 5, '21-04-01');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user34', 3, '20-04-05');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user35', 4, '20-06-18');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user36', 3, '21-05-13');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user37', 4, '21-11-14');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user38', 4, '21-02-20');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user39', 4, '21-02-10');
insert into tblWithdraw (id, withdraw_type_seq, time) values ('user40', 1, '20-07-07');


CREATE TABLE tblQuestionType (
	question_type_seq number not null,
	type varchar2(30) NOT NULL
);


create sequence question_type_seq start with 1;


ALTER TABLE tblQuestionType 
    ADD CONSTRAINT tblQ_question_seq_pk PRIMARY KEY (question_type_seq);


insert into tblquestiontype values (question_type_seq.nextVAL, '계정/인증');
insert into tblquestiontype values (question_type_seq.nextVAL, '구매/판매');
insert into tblquestiontype values (question_type_seq.nextVAL, '운영정책');
insert into tblquestiontype values (question_type_seq.nextVAL, '서비스이용');
insert into tblquestiontype values (question_type_seq.nextVAL, '기타');



CREATE TABLE tblQuestion (
    question_seq	number	NOT NULL, 
    id	VARCHAR2(100)	NULL,
    question_type_seq number	NULL,
    title	varchar2(100)	NOT NULL,
    content	varchar2(4000)	NOT NULL,
    regdate	date default sysdate NOT NULL
);

CREATE SEQUENCE question_seq;

ALTER TABLE tblQuestion 
    ADD CONSTRAINT tblQ_question_seq PRIMARY KEY (question_seq);

ALTER TABLE tblQuestion
    ADD CONSTRAINT tblQ_id_fk FOREIGN KEY (id) REFERENCES tblUser (id);

ALTER TABLE tblQuestion
    ADD CONSTRAINT tblQ_question_type_seq_fk FOREIGN KEY (question_type_seq) REFERENCES tblQuestionType (question_type_seq);

insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user1', 1, '새로운 판매자 수정이 뭐죠.', '새로운 판매자 수정이 뭐죠. 알아서 상황을 정정하겠어요??', '21-10-24');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user2', 3, '저 신뢰도 변경이 귀찮아요.', '저 신뢰도 변경이 귀찮아요. 빨리 상황을 정정하시죠..', '21-06-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user3', 1, '다음 게시글 변경이 귀찮아요.', '다음 게시글 변경이 귀찮아요. 서둘러 오류를 수정부탁드립니다.', '21-10-10');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user4', 1, '지난 사진 삭제가 뭐죠.', '지난 사진 삭제가 뭐죠. 알아서 오류를 확인해주세요.', '20-09-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user5', 2, '이번 닉네임 삭제가 이상해요.', '이번 닉네임 삭제가 이상해요. 서둘러 오류를 확인부탁드립니다.', '21-06-20');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user6', 3, '다음 닉네임 수정이 별로예요...', '다음 닉네임 수정이 별로예요... 당장 첨부 파일을 수정부탁드립니다?', '20-11-10');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user7', 3, '새로운 신뢰도 등록이 귀찮아요.', '새로운 신뢰도 등록이 귀찮아요. 당장 첨부 파일을 정정해주세요.', '21-05-24');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user8', 5, '다음 닉네임 삭제가 수상해요.', '다음 닉네임 삭제가 수상해요. 서둘러 오류를 수정부탁드립니다.', '20-08-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user9', 4, '저 사진 수정이 수상해요.', '저 사진 수정이 수상해요. 빨리 오류를 파악하겠어요?.', '20-06-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user10', 3, '지난 비밀번호 삭제가 수상해요.', '지난 비밀번호 삭제가 수상해요. 서둘러 오류를 정정하겠어요??', '20-05-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user11', 5, '다음 게시글 등록이 이상해요.', '다음 게시글 등록이 이상해요. 빨리 상황을 수정부탁드립니다..', '20-02-24');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user12', 3, '이번 닉네임 변경이 수상해요..', '이번 닉네임 변경이 수상해요.. 서둘러 오류를 수정부탁드립니다ㅡㅡ', '20-07-26');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user13', 3, '저 비밀번호 수정이 뭐죠.', '저 비밀번호 수정이 뭐죠. 빨리 상황을 정정해주세요.', '21-06-12');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user14', 1, '지난 신뢰도 수정이 뭐죠.', '지난 신뢰도 수정이 뭐죠. 빨리 첨부 파일을 정정부탁드립니다!', '21-06-05');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user15', 5, '이번 판매자 변경이 뭐죠.', '이번 판매자 변경이 뭐죠. 당장 오류를 파악해주세요?', '21-03-12');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user16', 3, '다음 닉네임 삭제가 별로예요.', '다음 닉네임 삭제가 별로예요. 서둘러 상황을 수정부탁드립니다..', '21-06-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user17', 4, '지난 신뢰도 등록이 뭐죠.', '지난 신뢰도 등록이 뭐죠. 빨리 첨부 파일을 확인부탁드립니다.', '20-03-07');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user18', 4, '이번 사진 삭제가 별로예요...', '이번 사진 삭제가 별로예요... 알아서 상황을 확인하겠어요?!', '21-01-06');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user19', 4, '이번 판매자 등록이 수상해요.', '이번 판매자 등록이 수상해요. 서둘러 첨부 파일을 정정부탁드립니다.', '20-07-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user20', 1, '지난 게시글 변경이 이상해요.', '지난 게시글 변경이 이상해요. 빨리 오류를 정정부탁드립니다ㅜㅜ', '20-01-27');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user21', 5, '저 게시글 변경이 이상해요.', '저 게시글 변경이 이상해요. 당장 오류를 수정하시죠.', '21-11-05');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user22', 3, '새로운 닉네임 등록이 별로예요.', '새로운 닉네임 등록이 별로예요. 빨리 오류를 정정해주세요.', '21-04-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user23', 1, '다음 구매자 수정이 수상해요.', '다음 구매자 수정이 수상해요. 알아서 첨부 파일을 확인하시죠?', '20-10-01');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user24', 4, '다음 비밀번호 변경이 별로예요.', '다음 비밀번호 변경이 별로예요. 빨리 상황을 정정하시죠...', '20-04-01');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user25', 5, '지난 게시글 수정이 별로예요.', '지난 게시글 수정이 별로예요. 당장 오류를 확인하시죠.', '20-09-04');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user26', 5, '새로운 비밀번호 변경이 이상해요.', '새로운 비밀번호 변경이 이상해요. 서둘러 오류를 정정하겠어요?.', '20-05-25');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user27', 5, '저 게시글 등록이 뭐죠.', '저 게시글 등록이 뭐죠. 빨리 첨부 파일을 수정해주세요.', '21-10-08');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user28', 4, '지난 닉네임 변경이 귀찮아요.', '지난 닉네임 변경이 귀찮아요. 알아서 첨부 파일을 확인해주세요ㅡㅡ', '20-11-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user29', 4, '저 게시글 변경이 이상해요.', '저 게시글 변경이 이상해요. 알아서 오류를 수정해주세요...', '20-08-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user30', 5, '새로운 판매자 등록이 귀찮아요.', '새로운 판매자 등록이 귀찮아요. 알아서 첨부 파일을 확인해주세요.', '20-08-04');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user31', 2, '이번 신뢰도 등록이 귀찮아요...', '이번 신뢰도 등록이 귀찮아요... 당장 오류를 파악하시죠ㅜㅜ', '20-10-27');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user32', 1, '새로운 비밀번호 수정이 뭐죠.', '새로운 비밀번호 수정이 뭐죠. 서둘러 오류를 수정하시죠ㅡㅡ', '20-11-24');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user33', 5, '지난 사진 등록이 이상해요.', '지난 사진 등록이 이상해요. 빨리 오류를 정정하겠어요??', '20-03-27');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user34', 5, '이번 게시글 등록이 별로예요..', '이번 게시글 등록이 별로예요.. 서둘러 첨부 파일을 수정해주세요?', '20-01-13');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user35', 4, '저 게시글 수정이 귀찮아요.', '저 게시글 수정이 귀찮아요. 알아서 상황을 파악하겠어요?.', '21-10-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user36', 4, '저 판매자 삭제가 이상해요.', '저 판매자 삭제가 이상해요. 빨리 오류를 파악하시죠.', '21-03-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user37', 2, '지난 사진 변경이 뭐죠.', '지난 사진 변경이 뭐죠. 빨리 오류를 수정하시죠.', '20-06-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user38', 1, '이번 비밀번호 등록이 별로예요.', '이번 비밀번호 등록이 별로예요. 알아서 첨부 파일을 확인하겠어요?!', '20-03-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user39', 4, '다음 신뢰도 등록이 귀찮아요.', '다음 신뢰도 등록이 귀찮아요. 빨리 상황을 파악부탁드립니다.', '20-04-07');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user40', 4, '저 사진 등록이 뭐죠.', '저 사진 등록이 뭐죠. 당장 첨부 파일을 확인하시죠.', '21-08-27');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user41', 2, '이번 사진 삭제가 이상해요...', '이번 사진 삭제가 이상해요... 서둘러 첨부 파일을 확인부탁드립니다..', '20-10-13');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user42', 1, '지난 판매자 삭제가 별로예요.', '지난 판매자 삭제가 별로예요. 알아서 첨부 파일을 수정하겠어요?ㅡㅡ', '21-05-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user43', 2, '저 사진 삭제가 이상해요.', '저 사진 삭제가 이상해요. 서둘러 상황을 확인부탁드립니다?', '21-04-08');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user44', 3, '저 비밀번호 삭제가 이상해요..', '저 비밀번호 삭제가 이상해요.. 당장 상황을 수정부탁드립니다.', '21-02-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user45', 3, '지난 비밀번호 변경이 별로예요.', '지난 비밀번호 변경이 별로예요. 알아서 오류를 정정부탁드립니다.', '21-08-26');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user46', 5, '저 비밀번호 변경이 귀찮아요.', '저 비밀번호 변경이 귀찮아요. 서둘러 오류를 확인부탁드립니다...', '20-11-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user47', 1, '다음 판매자 삭제가 뭐죠.', '다음 판매자 삭제가 뭐죠. 당장 첨부 파일을 파악하시죠.', '21-11-19');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user48', 2, '저 사진 변경이 뭐죠.', '저 사진 변경이 뭐죠. 빨리 첨부 파일을 정정하시죠...', '21-05-07');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user49', 2, '지난 비밀번호 수정이 뭐죠.', '지난 비밀번호 수정이 뭐죠. 알아서 오류를 확인하시죠?', '21-11-10');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user50', 4, '다음 사진 수정이 이상해요.', '다음 사진 수정이 이상해요. 당장 상황을 정정하시죠.', '20-11-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user51', 1, '새로운 사진 등록이 귀찮아요.', '새로운 사진 등록이 귀찮아요. 알아서 오류를 확인부탁드립니다.', '21-08-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user52', 5, '지난 사진 수정이 뭐죠.', '지난 사진 수정이 뭐죠. 서둘러 첨부 파일을 수정하시죠?', '21-07-03');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user53', 5, '새로운 판매자 등록이 수상해요.', '새로운 판매자 등록이 수상해요. 알아서 첨부 파일을 정정부탁드립니다.', '20-09-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user54', 5, '새로운 신뢰도 수정이 수상해요.', '새로운 신뢰도 수정이 수상해요. 서둘러 첨부 파일을 수정하시죠..', '20-05-12');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user55', 5, '이번 판매자 변경이 귀찮아요.', '이번 판매자 변경이 귀찮아요. 빨리 상황을 정정하시죠ㅜㅜ', '21-07-03');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user56', 4, '저 판매자 삭제가 귀찮아요.', '저 판매자 삭제가 귀찮아요. 알아서 첨부 파일을 수정하시죠!', '21-11-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user57', 5, '저 게시글 등록이 수상해요.', '저 게시글 등록이 수상해요. 알아서 첨부 파일을 수정하겠어요?.', '21-09-12');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user58', 2, '저 닉네임 변경이 수상해요.', '저 닉네임 변경이 수상해요. 알아서 첨부 파일을 확인하겠어요??', '21-10-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user59', 2, '이번 닉네임 수정이 귀찮아요.', '이번 닉네임 수정이 귀찮아요. 알아서 상황을 파악하겠어요?!', '21-04-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user60', 5, '저 신뢰도 등록이 뭐죠.', '저 신뢰도 등록이 뭐죠. 당장 첨부 파일을 수정하시죠.', '21-06-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user61', 1, '이번 신뢰도 등록이 뭐죠.', '이번 신뢰도 등록이 뭐죠. 서둘러 오류를 수정하시죠..', '20-04-13');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user62', 4, '새로운 닉네임 수정이 수상해요.', '새로운 닉네임 수정이 수상해요. 빨리 첨부 파일을 확인하겠어요??', '20-06-13');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user63', 4, '새로운 신뢰도 수정이 뭐죠.', '새로운 신뢰도 수정이 뭐죠. 빨리 첨부 파일을 수정해주세요ㅜㅜ', '21-06-05');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user64', 2, '이번 비밀번호 수정이 귀찮아요.', '이번 비밀번호 수정이 귀찮아요. 당장 상황을 확인하시죠ㅜㅜ', '21-11-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user65', 1, '새로운 판매자 변경이 귀찮아요.', '새로운 판매자 변경이 귀찮아요. 빨리 오류를 파악하겠어요?.', '20-05-20');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user66', 1, '저 신뢰도 등록이 귀찮아요...', '저 신뢰도 등록이 귀찮아요... 당장 상황을 수정하시죠?', '21-07-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user67', 4, '저 신뢰도 삭제가 별로예요.', '저 신뢰도 삭제가 별로예요. 서둘러 첨부 파일을 파악하겠어요?ㅜㅜ', '20-11-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user68', 4, '다음 신뢰도 등록이 이상해요.', '다음 신뢰도 등록이 이상해요. 당장 상황을 수정하시죠.', '20-05-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user69', 2, '이번 닉네임 등록이 별로예요.', '이번 닉네임 등록이 별로예요. 서둘러 상황을 확인부탁드립니다..', '20-11-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user70', 1, '지난 판매자 등록이 이상해요.', '지난 판매자 등록이 이상해요. 당장 상황을 정정부탁드립니다.', '21-10-07');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user71', 1, '다음 신뢰도 변경이 귀찮아요.', '다음 신뢰도 변경이 귀찮아요. 당장 오류를 수정해주세요.', '21-03-26');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user72', 1, '새로운 게시글 등록이 별로예요.', '새로운 게시글 등록이 별로예요. 당장 첨부 파일을 수정하시죠..', '21-03-09');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user73', 5, '저 사진 등록이 뭐죠.', '저 사진 등록이 뭐죠. 당장 첨부 파일을 수정해주세요ㅡㅡ', '21-07-01');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user74', 3, '저 사진 변경이 뭐죠...', '저 사진 변경이 뭐죠... 서둘러 첨부 파일을 파악하겠어요??', '21-11-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user75', 5, '다음 닉네임 등록이 이상해요.', '다음 닉네임 등록이 이상해요. 서둘러 첨부 파일을 확인하겠어요?.', '20-04-08');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user76', 2, '지난 게시글 등록이 수상해요.', '지난 게시글 등록이 수상해요. 서둘러 상황을 정정하시죠.', '21-04-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user77', 3, '저 판매자 수정이 수상해요...', '저 판매자 수정이 수상해요... 알아서 첨부 파일을 확인해주세요?', '20-06-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user78', 5, '새로운 사진 삭제가 수상해요..', '새로운 사진 삭제가 수상해요.. 당장 첨부 파일을 파악해주세요..', '21-07-03');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user79', 1, '이번 신뢰도 수정이 별로예요...', '이번 신뢰도 수정이 별로예요... 서둘러 첨부 파일을 파악해주세요?', '21-04-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user80', 2, '이번 신뢰도 수정이 별로예요.', '이번 신뢰도 수정이 별로예요. 빨리 오류를 수정부탁드립니다.', '20-09-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user81', 1, '다음 신뢰도 수정이 뭐죠.', '다음 신뢰도 수정이 뭐죠. 서둘러 상황을 확인하시죠.', '20-10-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user82', 4, '지난 닉네임 수정이 별로예요.', '지난 닉네임 수정이 별로예요. 당장 오류를 수정해주세요...', '21-06-10');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user83', 5, '다음 구매자 수정이 별로예요.', '다음 구매자 수정이 별로예요. 서둘러 상황을 파악하겠어요?...', '21-07-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user84', 1, '저 비밀번호 변경이 뭐죠.', '저 비밀번호 변경이 뭐죠. 알아서 첨부 파일을 파악하겠어요?.', '20-09-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user85', 1, '저 게시글 삭제가 수상해요.', '저 게시글 삭제가 수상해요. 서둘러 첨부 파일을 정정해주세요..', '21-11-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user86', 4, '저 게시글 변경이 이상해요...', '저 게시글 변경이 이상해요... 알아서 첨부 파일을 수정해주세요ㅡㅡ', '20-11-03');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user87', 3, '새로운 비밀번호 변경이 수상해요.', '새로운 비밀번호 변경이 수상해요. 빨리 첨부 파일을 확인부탁드립니다ㅜㅜ', '21-11-18');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user88', 2, '새로운 비밀번호 등록이 뭐죠.', '새로운 비밀번호 등록이 뭐죠. 당장 오류를 정정하겠어요?.', '20-11-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user89', 2, '이번 신뢰도 수정이 별로예요.', '이번 신뢰도 수정이 별로예요. 서둘러 오류를 파악하시죠?', '21-08-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user90', 1, '저 판매자 등록이 귀찮아요.', '저 판매자 등록이 귀찮아요. 알아서 상황을 파악하시죠?', '21-08-23');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user91', 3, '이번 사진 등록이 이상해요..', '이번 사진 등록이 이상해요.. 당장 오류를 수정해주세요ㅡㅡ', '20-03-04');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user92', 3, '새로운 판매자 수정이 귀찮아요.', '새로운 판매자 수정이 귀찮아요. 당장 첨부 파일을 확인부탁드립니다?', '20-04-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user93', 3, '저 게시글 등록이 이상해요.', '저 게시글 등록이 이상해요. 빨리 오류를 정정하겠어요?.', '21-03-09');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user94', 2, '저 신뢰도 등록이 뭐죠..', '저 신뢰도 등록이 뭐죠.. 서둘러 첨부 파일을 확인하겠어요?..', '20-06-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user95', 5, '새로운 판매자 변경이 뭐죠.', '새로운 판매자 변경이 뭐죠. 서둘러 첨부 파일을 파악하겠어요?ㅜㅜ', '21-05-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user96', 4, '다음 게시글 등록이 이상해요..', '다음 게시글 등록이 이상해요.. 서둘러 첨부 파일을 수정하겠어요?.', '20-02-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user97', 3, '새로운 게시글 수정이 귀찮아요.', '새로운 게시글 수정이 귀찮아요. 빨리 오류를 수정해주세요ㅡㅡ', '20-07-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user98', 5, '지난 게시글 변경이 수상해요.', '지난 게시글 변경이 수상해요. 서둘러 상황을 수정하시죠...', '20-06-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user99', 2, '새로운 구매자 등록이 귀찮아요.', '새로운 구매자 등록이 귀찮아요. 서둘러 상황을 정정부탁드립니다.', '21-01-16');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user100', 4, '저 사진 변경이 이상해요..', '저 사진 변경이 이상해요.. 서둘러 첨부 파일을 정정하겠어요?.', '20-06-04');


CREATE TABLE tblQuestionAndAnswer(
	question_seq NUMBER not null,
    regDate Date default sysdate not null,
	content varchar2(4000) NOT NULL
);



alter table tblQuestionAndAnswer 
    add constraint tblqaa_question_seq_pk primary key(question_seq);
alter table tblQuestionAndAnswer 
    add constraint tblqaa_question_seq_fk foreign key(question_seq) references tblQuestion(question_seq);



CREATE TABLE tblNotice (
	notice_seq number not null,
	title varchar2(100)	NOT NULL,
	content varchar2(4000) NOT NULL,
	regdate date default sysdate NOT NULL
);


create sequence Notice_seq start with 1;

alter table tblNotice 
    add constraint tbln_notice_type_pk primary key(notice_seq);

insert into tblNotice values (1,'1번 공지사항 제목  ','1번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-02-01');
insert into tblNotice values (2,'2번 공지사항 제목  ','2번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-02-08');
insert into tblNotice values (3,'3번 공지사항 제목  ','3번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-02-15');
insert into tblNotice values (4,'4번 공지사항 제목  ','4번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-02-22');
insert into tblNotice values (5,'5번 공지사항 제목  ','5번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-02-29');
insert into tblNotice values (6,'6번 공지사항 제목  ','6번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-03-07');
insert into tblNotice values (7,'7번 공지사항 제목  ','7번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-03-14');
insert into tblNotice values (8,'8번 공지사항 제목  ','8번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-03-21');
insert into tblNotice values (9,'9번 공지사항 제목  ','9번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-03-28');
insert into tblNotice values (10,'10번 공지사항 제목  ','10번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-04-04');
insert into tblNotice values (11,'11번 공지사항 제목  ','11번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-04-11');
insert into tblNotice values (12,'12번 공지사항 제목  ','12번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-04-18');
insert into tblNotice values (13,'13번 공지사항 제목  ','13번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-04-25');
insert into tblNotice values (14,'14번 공지사항 제목  ','14번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-05-02');
insert into tblNotice values (15,'15번 공지사항 제목  ','15번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-05-09');
insert into tblNotice values (16,'16번 공지사항 제목  ','16번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-05-16');
insert into tblNotice values (17,'17번 공지사항 제목  ','17번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-05-23');
insert into tblNotice values (18,'18번 공지사항 제목  ','18번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-05-30');
insert into tblNotice values (19,'19번 공지사항 제목  ','19번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-06-06');
insert into tblNotice values (20,'20번 공지사항 제목  ','20번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-06-13');
insert into tblNotice values (21,'21번 공지사항 제목  ','21번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-06-20');
insert into tblNotice values (22,'22번 공지사항 제목  ','22번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-06-27');
insert into tblNotice values (23,'23번 공지사항 제목  ','23번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-07-04');
insert into tblNotice values (24,'24번 공지사항 제목  ','24번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-07-11');
insert into tblNotice values (25,'25번 공지사항 제목  ','25번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-07-18');
insert into tblNotice values (26,'26번 공지사항 제목  ','26번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-07-25');
insert into tblNotice values (27,'27번 공지사항 제목  ','27번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-08-01');
insert into tblNotice values (28,'28번 공지사항 제목  ','28번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-08-08');
insert into tblNotice values (29,'29번 공지사항 제목  ','29번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-08-15');
insert into tblNotice values (30,'30번 공지사항 제목  ','30번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-08-22');
insert into tblNotice values (31,'31번 공지사항 제목  ','31번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-08-29');
insert into tblNotice values (32,'32번 공지사항 제목  ','32번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-09-05');
insert into tblNotice values (33,'33번 공지사항 제목  ','33번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-09-12');
insert into tblNotice values (34,'34번 공지사항 제목  ','34번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-09-19');
insert into tblNotice values (35,'35번 공지사항 제목  ','35번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-09-26');
insert into tblNotice values (36,'36번 공지사항 제목  ','36번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-10-03');
insert into tblNotice values (37,'37번 공지사항 제목  ','37번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-10-10');
insert into tblNotice values (38,'38번 공지사항 제목  ','38번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-10-17');
insert into tblNotice values (39,'39번 공지사항 제목  ','39번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-10-24');
insert into tblNotice values (40,'40번 공지사항 제목  ','40번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-10-31');
insert into tblNotice values (41,'41번 공지사항 제목  ','41번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-11-07');
insert into tblNotice values (42,'42번 공지사항 제목  ','42번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-11-14');
insert into tblNotice values (43,'43번 공지사항 제목  ','43번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-11-21');
insert into tblNotice values (44,'44번 공지사항 제목  ','44번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-11-28');
insert into tblNotice values (45,'45번 공지사항 제목  ','45번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-12-05');
insert into tblNotice values (46,'46번 공지사항 제목  ','46번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-12-12');
insert into tblNotice values (47,'47번 공지사항 제목  ','47번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-12-19');
insert into tblNotice values (48,'48번 공지사항 제목  ','48번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2020-12-26');
insert into tblNotice values (49,'49번 공지사항 제목  ','49번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-01-02');
insert into tblNotice values (50,'50번 공지사항 제목  ','50번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-01-09');
insert into tblNotice values (51,'51번 공지사항 제목  ','51번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-01-16');
insert into tblNotice values (52,'52번 공지사항 제목  ','52번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-01-23');
insert into tblNotice values (53,'53번 공지사항 제목  ','53번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-01-30');
insert into tblNotice values (54,'54번 공지사항 제목  ','54번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-02-06');
insert into tblNotice values (55,'55번 공지사항 제목  ','55번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-02-13');
insert into tblNotice values (56,'56번 공지사항 제목  ','56번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-02-20');
insert into tblNotice values (57,'57번 공지사항 제목  ','57번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-02-27');
insert into tblNotice values (58,'58번 공지사항 제목  ','58번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-03-06');
insert into tblNotice values (59,'59번 공지사항 제목  ','59번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-03-13');
insert into tblNotice values (60,'60번 공지사항 제목  ','60번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-03-20');
insert into tblNotice values (61,'61번 공지사항 제목  ','61번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-03-27');
insert into tblNotice values (62,'62번 공지사항 제목  ','62번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-04-03');
insert into tblNotice values (63,'63번 공지사항 제목  ','63번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-04-10');
insert into tblNotice values (64,'64번 공지사항 제목  ','64번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-04-17');
insert into tblNotice values (65,'65번 공지사항 제목  ','65번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-04-24');
insert into tblNotice values (66,'66번 공지사항 제목  ','66번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-05-01');
insert into tblNotice values (67,'67번 공지사항 제목  ','67번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-05-08');
insert into tblNotice values (68,'68번 공지사항 제목  ','68번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-05-15');
insert into tblNotice values (69,'69번 공지사항 제목  ','69번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-05-22');
insert into tblNotice values (70,'70번 공지사항 제목  ','70번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-05-29');
insert into tblNotice values (71,'71번 공지사항 제목  ','71번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-06-05');
insert into tblNotice values (72,'72번 공지사항 제목  ','72번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-06-12');
insert into tblNotice values (73,'73번 공지사항 제목  ','73번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-06-19');
insert into tblNotice values (74,'74번 공지사항 제목  ','74번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-06-26');
insert into tblNotice values (75,'75번 공지사항 제목  ','75번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-07-03');
insert into tblNotice values (76,'76번 공지사항 제목  ','76번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-07-10');
insert into tblNotice values (77,'77번 공지사항 제목  ','77번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-07-17');
insert into tblNotice values (78,'78번 공지사항 제목  ','78번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-07-24');
insert into tblNotice values (79,'79번 공지사항 제목  ','79번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-07-31');
insert into tblNotice values (80,'80번 공지사항 제목  ','80번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-08-07');
insert into tblNotice values (81,'81번 공지사항 제목  ','81번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-08-14');
insert into tblNotice values (82,'82번 공지사항 제목  ','82번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-08-21');
insert into tblNotice values (83,'83번 공지사항 제목  ','83번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-08-28');
insert into tblNotice values (84,'84번 공지사항 제목  ','84번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-09-04');
insert into tblNotice values (85,'85번 공지사항 제목  ','85번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-09-11');
insert into tblNotice values (86,'86번 공지사항 제목  ','86번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-09-18');
insert into tblNotice values (87,'87번 공지사항 제목  ','87번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-09-25');
insert into tblNotice values (88,'88번 공지사항 제목  ','88번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-10-02');
insert into tblNotice values (89,'89번 공지사항 제목  ','89번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-10-09');
insert into tblNotice values (90,'90번 공지사항 제목  ','90번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-10-16');
insert into tblNotice values (91,'91번 공지사항 제목  ','91번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-10-23');
insert into tblNotice values (92,'92번 공지사항 제목  ','92번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-10-30');
insert into tblNotice values (93,'93번 공지사항 제목  ','93번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-11-06');
insert into tblNotice values (94,'94번 공지사항 제목  ','94번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-11-13');
insert into tblNotice values (95,'95번 공지사항 제목  ','95번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-11-20');
insert into tblNotice values (96,'96번 공지사항 제목  ','96번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-11-27');
insert into tblNotice values (97,'97번 공지사항 제목  ','97번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-12-04');
insert into tblNotice values (98,'98번 공지사항 제목  ','98번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-12-11');
insert into tblNotice values (99,'99번 공지사항 제목  ','99번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-12-18');
insert into tblNotice values (100,'100번 공지사항 제목  ','100번 공지사항 내용  1번 공지사항 내용입니다. 감사합니다.','2021-12-25');



CREATE TABLE tblQuestionImg (
	questionImg_seq number not null, 
	question_seq number	NULL, 
	path varchar2(4000)	NOT NULL  
);


create sequence questionImg_seq start with 1;

alter table tblQuestionImg 
    add constraint tblqi_questionImg_seq_pk primary key(questionImg_seq);
alter table tblQuestionImg 
    add constraint tblqi_questionImg_seq_fk Foreign key(question_seq) references tblQuestion(question_seq);


insert into tblQuestionImg values (1, 1,'image1');
insert into tblQuestionImg values (2, 2,'image2');
insert into tblQuestionImg values (3, 3,'image3');
insert into tblQuestionImg values (4, 4,'image4');
insert into tblQuestionImg values (5, 5,'image5');
insert into tblQuestionImg values (6, 6,'image6');
insert into tblQuestionImg values (7, 7,'image7');
insert into tblQuestionImg values (8, 8,'image8');
insert into tblQuestionImg values (9, 9,'image9');
insert into tblQuestionImg values (10, 10,'image10');
insert into tblQuestionImg values (11, 11,'image11');
insert into tblQuestionImg values (12, 12,'image12');
insert into tblQuestionImg values (13, 13,'image13');
insert into tblQuestionImg values (14, 14,'image14');
insert into tblQuestionImg values (15, 15,'image15');
insert into tblQuestionImg values (16, 16,'image16');
insert into tblQuestionImg values (17, 17,'image17');
insert into tblQuestionImg values (18, 18,'image18');
insert into tblQuestionImg values (19, 19,'image19');
insert into tblQuestionImg values (20, 20,'image20');
insert into tblQuestionImg values (21, 21,'image21');
insert into tblQuestionImg values (22, 22,'image22');
insert into tblQuestionImg values (23, 23,'image23');
insert into tblQuestionImg values (24, 24,'image24');
insert into tblQuestionImg values (25, 25,'image25');
insert into tblQuestionImg values (26, 26,'image26');
insert into tblQuestionImg values (27, 27,'image27');
insert into tblQuestionImg values (28, 28,'image28');
insert into tblQuestionImg values (29, 29,'image29');
insert into tblQuestionImg values (30, 30,'image30');
insert into tblQuestionImg values (31, 31,'image31');
insert into tblQuestionImg values (32, 32,'image32');
insert into tblQuestionImg values (33, 33,'image33');
insert into tblQuestionImg values (34, 34,'image34');
insert into tblQuestionImg values (35, 35,'image35');
insert into tblQuestionImg values (36, 36,'image36');
insert into tblQuestionImg values (37, 37,'image37');
insert into tblQuestionImg values (38, 38,'image38');
insert into tblQuestionImg values (39, 39,'image39');
insert into tblQuestionImg values (40, 40,'image40');
insert into tblQuestionImg values (41, 41,'image41');
insert into tblQuestionImg values (42, 42,'image42');
insert into tblQuestionImg values (43, 43,'image43');
insert into tblQuestionImg values (44, 44,'image44');
insert into tblQuestionImg values (45, 45,'image45');
insert into tblQuestionImg values (46, 46,'image46');
insert into tblQuestionImg values (47, 47,'image47');
insert into tblQuestionImg values (48, 48,'image48');
insert into tblQuestionImg values (49, 49,'image49');
insert into tblQuestionImg values (50, 50,'image50');
insert into tblQuestionImg values (51, 51,'image51');
insert into tblQuestionImg values (52, 52,'image52');
insert into tblQuestionImg values (53, 53,'image53');
insert into tblQuestionImg values (54, 54,'image54');
insert into tblQuestionImg values (55, 55,'image55');
insert into tblQuestionImg values (56, 56,'image56');
insert into tblQuestionImg values (57, 57,'image57');
insert into tblQuestionImg values (58, 58,'image58');
insert into tblQuestionImg values (59, 59,'image59');
insert into tblQuestionImg values (60, 60,'image60');
insert into tblQuestionImg values (61, 61,'image61');
insert into tblQuestionImg values (62, 62,'image62');
insert into tblQuestionImg values (63, 63,'image63');
insert into tblQuestionImg values (64, 64,'image64');
insert into tblQuestionImg values (65, 65,'image65');
insert into tblQuestionImg values (66, 66,'image66');
insert into tblQuestionImg values (67, 67,'image67');
insert into tblQuestionImg values (68, 68,'image68');
insert into tblQuestionImg values (69, 69,'image69');
insert into tblQuestionImg values (70, 70,'image70');
insert into tblQuestionImg values (71, 71,'image71');
insert into tblQuestionImg values (72, 72,'image72');
insert into tblQuestionImg values (73, 73,'image73');
insert into tblQuestionImg values (74, 74,'image74');
insert into tblQuestionImg values (75, 75,'image75');
insert into tblQuestionImg values (76, 76,'image76');
insert into tblQuestionImg values (77, 77,'image77');
insert into tblQuestionImg values (78, 78,'image78');
insert into tblQuestionImg values (79, 79,'image79');
insert into tblQuestionImg values (80, 80,'image80');
insert into tblQuestionImg values (81, 81,'image81');
insert into tblQuestionImg values (82, 82,'image82');
insert into tblQuestionImg values (83, 83,'image83');
insert into tblQuestionImg values (84, 84,'image84');
insert into tblQuestionImg values (85, 85,'image85');
insert into tblQuestionImg values (86, 86,'image86');
insert into tblQuestionImg values (87, 87,'image87');
insert into tblQuestionImg values (88, 88,'image88');
insert into tblQuestionImg values (89, 89,'image89');
insert into tblQuestionImg values (90, 90,'image90');
insert into tblQuestionImg values (91, 91,'image91');
insert into tblQuestionImg values (92, 92,'image92');
insert into tblQuestionImg values (93, 93,'image93');
insert into tblQuestionImg values (94, 94,'image94');
insert into tblQuestionImg values (95, 95,'image95');
insert into tblQuestionImg values (96, 96,'image96');
insert into tblQuestionImg values (97, 97,'image97');
insert into tblQuestionImg values (98, 98,'image98');
insert into tblQuestionImg values (99, 99,'image99');
insert into tblQuestionImg values (100, 100,'image100');


-- 거래
CREATE TABLE tblDeal (
	deal_seq	NUMBER	NOT NULL,           
	id	VARCHAR2(100)	NOT NULL,           
	product_seq	NUMBER	NOT NULL,
	price	NUMBER	NOT NULL,
	regdate DATE DEFAULT sysdate NOT NULL
);

CREATE SEQUENCE deal_seq;

ALTER TABLE tblDeal ADD CONSTRAINT tblDeal_deal_seq_pk PRIMARY KEY(deal_seq);
ALTER TABLE tblDeal ADD CONSTRAINT tblDeal_id_fk FOREIGN KEY(id) REFERENCES tblUser(id);
ALTER TABLE tblDeal ADD CONSTRAINT tblDeal_product_seq_fk FOREIGN KEY(product_seq) REFERENCES tblProduct(product_seq);

insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (1, 'user18', 1, 38000, '2020-01-09');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (2, 'user11', 2, 270000, '2020-01-19');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (3, 'user74', 3, 727000, '2020-01-23');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (4, 'user29', 4, 454000, '2020-01-29');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (5, 'user36', 5, 11000, '2020-02-05');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (6, 'user71', 6, 46000, '2020-02-11');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (7, 'user85', 7, 301000, '2020-02-16');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (8, 'user52', 8, 798000, '2020-02-18');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (9, 'user45', 9, 471000, '2020-02-23');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (10, 'user60', 10, 298000, '2020-02-24');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (11, 'user18', 11, 373000, '2020-02-29');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (12, 'user48', 12, 299000, '2020-03-03');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (13, 'user65', 13, 574000, '2020-03-06');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (14, 'user85', 14, 23000, '2020-03-13');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (15, 'user52', 15, 505000, '2020-03-19');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (16, 'user32', 16, 195000, '2020-03-23');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (17, 'user98', 17, 564000, '2020-03-31');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (18, 'user94', 18, 87000, '2020-04-07');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (19, 'user49', 19, 335000, '2020-04-09');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (20, 'user50', 20, 817000, '2020-04-13');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (21, 'user1', 21, 966000, '2020-04-19');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (22, 'user56', 22, 495000, '2020-04-26');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (23, 'user58', 23, 785000, '2020-04-30');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (24, 'user95', 24, 825000, '2020-05-03');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (25, 'user21', 25, 751000, '2020-05-11');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (26, 'user71', 26, 852000, '2020-05-12');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (27, 'user89', 27, 357000, '2020-05-13');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (28, 'user23', 28, 775000, '2020-05-16');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (29, 'user45', 29, 843000, '2020-05-24');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (30, 'user73', 30, 89000, '2020-05-29');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (31, 'user33', 31, 830000, '2020-06-01');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (32, 'user84', 32, 808000, '2020-06-02');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (33, 'user34', 33, 134000, '2020-06-05');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (34, 'user77', 34, 506000, '2020-06-13');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (35, 'user64', 35, 280000, '2020-06-16');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (36, 'user84', 36, 94000, '2020-06-19');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (37, 'user42', 37, 596000, '2020-06-23');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (38, 'user69', 38, 611000, '2020-07-02');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (39, 'user73', 39, 159000, '2020-07-07');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (40, 'user97', 40, 519000, '2020-07-07');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (41, 'user9', 41, 905000, '2020-07-13');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (42, 'user2', 42, 272000, '2020-07-16');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (43, 'user86', 43, 96000, '2020-07-16');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (44, 'user16', 44, 582000, '2020-07-18');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (45, 'user20', 45, 698000, '2020-07-23');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (46, 'user31', 46, 838000, '2020-07-28');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (47, 'user90', 47, 701000, '2020-07-29');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (48, 'user2', 48, 663000, '2020-08-02');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (49, 'user5', 49, 209000, '2020-08-06');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (50, 'user90', 50, 695000, '2020-08-14');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (51, 'user71', 51, 156000, '2020-08-17');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (52, 'user100', 52, 510000, '2020-08-21');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (53, 'user60', 53, 140000, '2020-08-26');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (54, 'user37', 54, 265000, '2020-08-27');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (55, 'user17', 55, 40000, '2020-09-04');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (56, 'user56', 56, 959000, '2020-09-12');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (57, 'user44', 57, 86000, '2020-09-17');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (58, 'user98', 58, 375000, '2020-09-20');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (59, 'user48', 59, 701000, '2020-09-23');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (60, 'user29', 60, 63000, '2020-09-30');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (61, 'user54', 61, 715000, '2020-10-02');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (62, 'user67', 62, 717000, '2020-10-07');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (63, 'user18', 63, 519000, '2020-10-11');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (64, 'user79', 64, 800000, '2020-10-19');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (65, 'user27', 65, 808000, '2020-10-21');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (66, 'user38', 66, 151000, '2020-10-28');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (67, 'user18', 67, 947000, '2020-11-01');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (68, 'user80', 68, 792000, '2020-11-07');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (69, 'user42', 69, 335000, '2020-11-16');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (70, 'user34', 70, 922000, '2020-11-19');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (71, 'user98', 71, 963000, '2020-11-23');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (72, 'user39', 72, 114000, '2020-11-27');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (73, 'user20', 73, 350000, '2020-12-07');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (74, 'user51', 74, 424000, '2020-12-09');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (75, 'user57', 75, 437000, '2020-12-17');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (76, 'user20', 76, 298000, '2020-12-25');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (77, 'user10', 77, 376000, '2020-12-25');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (78, 'user5', 78, 647000, '2020-12-27');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (79, 'user57', 79, 660000, '2021-01-04');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (80, 'user2', 80, 436000, '2021-01-11');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (81, 'user98', 81, 904000, '2021-01-18');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (82, 'user41', 82, 106000, '2021-01-21');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (83, 'user73', 83, 900000, '2021-01-23');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (84, 'user67', 84, 989000, '2021-01-29');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (85, 'user13', 85, 581000, '2021-02-02');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (86, 'user50', 86, 749000, '2021-02-07');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (87, 'user8', 87, 201000, '2021-02-07');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (88, 'user43', 88, 359000, '2021-02-11');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (89, 'user33', 89, 768000, '2021-02-13');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (90, 'user73', 90, 708000, '2021-02-17');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (91, 'user72', 91, 127000, '2021-02-18');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (92, 'user4', 92, 456000, '2021-02-19');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (93, 'user92', 93, 526000, '2021-02-26');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (94, 'user61', 94, 779000, '2021-03-03');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (95, 'user51', 95, 291000, '2021-03-06');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (96, 'user3', 96, 19000, '2021-03-08');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (97, 'user79', 97, 140000, '2021-03-18');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (98, 'user39', 98, 935000, '2021-03-24');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (99, 'user64', 99, 767000, '2021-03-29');
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (100, 'user45', 100, 356000, '2021-04-06');


CREATE TABLE tblReview(
	type CHAR(1) NOT NULL,
	deal_seq NUMBER NOT NULL,
	score NUMBER NOT NULL, 
	content VARCHAR2(300) NOT NULL 
);


alter table tblReview 
    add constraint tblr_review_pk PRIMARY KEY(type, deal_seq);
alter table tblReview
    add constraint tblr_deal_seq_fk FOREIGN KEY(deal_seq) references tblDeal(deal_seq);
alter table tblReview
    add constraint tblr_type_ck check(type in ('S','B'));
    

insert into tblReview values ('S',1, 10,'1번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',1, 8,'1번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',2, 7,'2번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',2, 8,'2번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',3, 9,'3번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',3, 9,'3번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',4, 9,'4번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',4, 8,'4번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',5, 8,'5번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',5, 8,'5번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',6, 7,'6번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',6, 9,'6번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',7, 7,'7번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',7, 8,'7번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',8, 10,'8번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',8, 9,'8번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',9, 8,'9번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',9, 8,'9번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',10, 9,'10번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',10, 10,'10번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',11, 7,'11번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',11, 8,'11번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',12, 10,'12번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',12, 8,'12번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',13, 8,'13번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',13, 9,'13번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',14, 10,'14번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',14, 8,'14번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',15, 7,'15번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',15, 9,'15번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',16, 9,'16번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',16, 9,'16번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',17, 9,'17번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',17, 7,'17번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',18, 8,'18번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',18, 7,'18번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',19, 7,'19번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',19, 9,'19번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',20, 7,'20번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',20, 8,'20번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',21, 9,'21번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',21, 10,'21번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',22, 9,'22번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',22, 9,'22번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',23, 8,'23번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',23, 10,'23번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',24, 9,'24번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',24, 9,'24번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',25, 8,'25번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',25, 10,'25번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',26, 7,'26번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',26, 10,'26번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',27, 10,'27번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',27, 8,'27번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',28, 8,'28번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',28, 8,'28번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',29, 10,'29번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',29, 9,'29번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',30, 9,'30번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',30, 10,'30번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',31, 8,'31번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',31, 10,'31번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',32, 10,'32번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',32, 8,'32번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',33, 7,'33번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',33, 10,'33번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',34, 8,'34번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',34, 10,'34번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',35, 9,'35번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',35, 9,'35번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',36, 9,'36번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',36, 9,'36번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',37, 8,'37번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',37, 9,'37번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',38, 7,'38번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',38, 10,'38번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',39, 9,'39번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',39, 9,'39번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',40, 10,'40번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',40, 9,'40번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',41, 9,'41번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',41, 10,'41번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',42, 8,'42번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',42, 10,'42번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',43, 8,'43번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',43, 8,'43번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',44, 9,'44번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',44, 9,'44번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',45, 9,'45번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',45, 8,'45번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',46, 8,'46번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',46, 7,'46번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',47, 9,'47번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',47, 10,'47번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',48, 9,'48번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',48, 9,'48번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',49, 7,'49번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',49, 9,'49번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',50, 8,'50번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',50, 7,'50번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',51, 7,'51번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',51, 7,'51번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',52, 7,'52번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',52, 10,'52번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',53, 10,'53번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',53, 10,'53번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',54, 9,'54번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',54, 7,'54번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',55, 9,'55번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',55, 9,'55번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',56, 7,'56번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',56, 10,'56번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',57, 10,'57번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',57, 9,'57번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',58, 9,'58번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',58, 10,'58번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',59, 9,'59번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',59, 8,'59번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',60, 9,'60번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',60, 10,'60번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',61, 10,'61번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',61, 7,'61번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',62, 8,'62번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',62, 7,'62번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',63, 7,'63번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',63, 8,'63번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',64, 9,'64번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',64, 8,'64번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',65, 7,'65번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',65, 8,'65번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',66, 10,'66번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',66, 9,'66번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',67, 10,'67번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',67, 10,'67번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',68, 8,'68번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',68, 8,'68번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',69, 7,'69번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',69, 8,'69번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',70, 8,'70번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',70, 10,'70번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',71, 7,'71번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',71, 10,'71번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',72, 7,'72번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',72, 8,'72번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',73, 8,'73번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',73, 10,'73번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',74, 10,'74번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',74, 8,'74번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',75, 10,'75번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',75, 7,'75번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',76, 8,'76번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',76, 9,'76번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',77, 10,'77번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',77, 8,'77번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',78, 10,'78번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',78, 10,'78번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',79, 7,'79번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',79, 10,'79번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',80, 9,'80번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',80, 8,'80번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',81, 9,'81번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',81, 10,'81번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',82, 9,'82번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',82, 7,'82번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',83, 10,'83번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',83, 9,'83번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',84, 7,'84번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',84, 8,'84번 후기글  구매자 : 정말 친절하셨어요');
insert into tblReview values ('S',85, 10,'85번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',85, 8,'85번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',86, 8,'86번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',86, 8,'86번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',87, 10,'87번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',87, 7,'87번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',88, 7,'88번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',88, 10,'88번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',89, 9,'89번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',89, 7,'89번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',90, 8,'90번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',90, 8,'90번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',91, 10,'91번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',91, 10,'91번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',92, 9,'92번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',92, 8,'92번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',93, 7,'93번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',93, 10,'93번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',94, 10,'94번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',94, 7,'94번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');
insert into tblReview values ('S',95, 7,'95번 후기글  판매자 : 적당하게 팔수 있어서 좋았습니다.');
insert into tblReview values ('B',95, 9,'95번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',96, 8,'96번 후기글  판매자 : 친절하셨어요!');
insert into tblReview values ('B',96, 10,'96번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',97, 9,'97번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',97, 8,'97번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',98, 7,'98번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',98, 7,'98번 후기글  구매자 : 정말 좋아요!!');
insert into tblReview values ('S',99, 8,'99번 후기글  판매자 : 네고없는 쿨거래 감사합니다!');
insert into tblReview values ('B',99, 10,'99번 후기글  구매자 :  손상된곳없이 완벽해요!');
insert into tblReview values ('S',100, 9,'100번 후기글  판매자 : 거래지역 옮김없이 깔끔하게 거래했어요!!');
insert into tblReview values ('B',100, 8,'100번 후기글  구매자 : 싸게 살 수 있어서 좋았어요');


CREATE TABLE tblCommunity(
	community_seq NUMBER not null, 
	id VARCHAR2(100) NOT NULL,
	title VARCHAR2(100)	NOT NULL, --20자
    content VARCHAR2(4000) NOT NULL,--200자
	regDate DATE default sysdate NOT NULL,--랜덤 과거 28일 이전
    readcount NUMBER default 0 NOT NULL --0
); --100


create sequence community_seq start with 1;

alter table tblCommunity
    add constraint tblc_community_seq_pk primary key(community_seq);
alter table tblCommunity
    add constraint tblc_id_fk FOREIGN Key(id) references tblUser(id);
insert into tblCommunity values (community_seq.nextVal,'user83','1번 커뮤니티글 제목  ','1번 커뮤니티글 내용 ','2020-02-01',45);
insert into tblCommunity values (community_seq.nextVal,'user34','2번 커뮤니티글 제목  ','2번 커뮤니티글 내용 ','2020-02-06',64);
insert into tblCommunity values (community_seq.nextVal,'user70','3번 커뮤니티글 제목  ','3번 커뮤니티글 내용 ','2020-02-11',22);
insert into tblCommunity values (community_seq.nextVal,'user89','4번 커뮤니티글 제목  ','4번 커뮤니티글 내용 ','2020-02-16',28);
insert into tblCommunity values (community_seq.nextVal,'user54','5번 커뮤니티글 제목  ','5번 커뮤니티글 내용 ','2020-02-21',34);
insert into tblCommunity values (community_seq.nextVal,'user21','6번 커뮤니티글 제목  ','6번 커뮤니티글 내용 ','2020-02-26',89);
insert into tblCommunity values (community_seq.nextVal,'user27','7번 커뮤니티글 제목  ','7번 커뮤니티글 내용 ','2020-03-02',66);
insert into tblCommunity values (community_seq.nextVal,'user55','8번 커뮤니티글 제목  ','8번 커뮤니티글 내용 ','2020-03-07',79);
insert into tblCommunity values (community_seq.nextVal,'user23','9번 커뮤니티글 제목  ','9번 커뮤니티글 내용 ','2020-03-12',43);
insert into tblCommunity values (community_seq.nextVal,'user62','10번 커뮤니티글 제목  ','10번 커뮤니티글 내용 ','2020-03-17',49);
insert into tblCommunity values (community_seq.nextVal,'user39','11번 커뮤니티글 제목  ','11번 커뮤니티글 내용 ','2020-03-22',59);
insert into tblCommunity values (community_seq.nextVal,'user99','12번 커뮤니티글 제목  ','12번 커뮤니티글 내용 ','2020-03-27',3);
insert into tblCommunity values (community_seq.nextVal,'user47','13번 커뮤니티글 제목  ','13번 커뮤니티글 내용 ','2020-04-01',76);
insert into tblCommunity values (community_seq.nextVal,'user39','14번 커뮤니티글 제목  ','14번 커뮤니티글 내용 ','2020-04-06',80);
insert into tblCommunity values (community_seq.nextVal,'user43','15번 커뮤니티글 제목  ','15번 커뮤니티글 내용 ','2020-04-11',9);
insert into tblCommunity values (community_seq.nextVal,'user68','16번 커뮤니티글 제목  ','16번 커뮤니티글 내용 ','2020-04-16',20);
insert into tblCommunity values (community_seq.nextVal,'user83','17번 커뮤니티글 제목  ','17번 커뮤니티글 내용 ','2020-04-21',59);
insert into tblCommunity values (community_seq.nextVal,'user78','18번 커뮤니티글 제목  ','18번 커뮤니티글 내용 ','2020-04-26',6);
insert into tblCommunity values (community_seq.nextVal,'user4','19번 커뮤니티글 제목  ','19번 커뮤니티글 내용 ','2020-05-01',77);
insert into tblCommunity values (community_seq.nextVal,'user65','20번 커뮤니티글 제목  ','20번 커뮤니티글 내용 ','2020-05-06',11);
insert into tblCommunity values (community_seq.nextVal,'user6','21번 커뮤니티글 제목  ','21번 커뮤니티글 내용 ','2020-05-11',21);
insert into tblCommunity values (community_seq.nextVal,'user57','22번 커뮤니티글 제목  ','22번 커뮤니티글 내용 ','2020-05-16',55);
insert into tblCommunity values (community_seq.nextVal,'user50','23번 커뮤니티글 제목  ','23번 커뮤니티글 내용 ','2020-05-21',72);
insert into tblCommunity values (community_seq.nextVal,'user64','24번 커뮤니티글 제목  ','24번 커뮤니티글 내용 ','2020-05-26',69);
insert into tblCommunity values (community_seq.nextVal,'user21','25번 커뮤니티글 제목  ','25번 커뮤니티글 내용 ','2020-05-31',8);
insert into tblCommunity values (community_seq.nextVal,'user4','26번 커뮤니티글 제목  ','26번 커뮤니티글 내용 ','2020-06-05',83);
insert into tblCommunity values (community_seq.nextVal,'user40','27번 커뮤니티글 제목  ','27번 커뮤니티글 내용 ','2020-06-10',88);
insert into tblCommunity values (community_seq.nextVal,'user93','28번 커뮤니티글 제목  ','28번 커뮤니티글 내용 ','2020-06-15',16);
insert into tblCommunity values (community_seq.nextVal,'user46','29번 커뮤니티글 제목  ','29번 커뮤니티글 내용 ','2020-06-20',16);
insert into tblCommunity values (community_seq.nextVal,'user9','30번 커뮤니티글 제목  ','30번 커뮤니티글 내용 ','2020-06-25',37);
insert into tblCommunity values (community_seq.nextVal,'user37','31번 커뮤니티글 제목  ','31번 커뮤니티글 내용 ','2020-06-30',44);
insert into tblCommunity values (community_seq.nextVal,'user42','32번 커뮤니티글 제목  ','32번 커뮤니티글 내용 ','2020-07-05',65);
insert into tblCommunity values (community_seq.nextVal,'user80','33번 커뮤니티글 제목  ','33번 커뮤니티글 내용 ','2020-07-10',88);
insert into tblCommunity values (community_seq.nextVal,'user59','34번 커뮤니티글 제목  ','34번 커뮤니티글 내용 ','2020-07-15',13);
insert into tblCommunity values (community_seq.nextVal,'user26','35번 커뮤니티글 제목  ','35번 커뮤니티글 내용 ','2020-07-20',18);
insert into tblCommunity values (community_seq.nextVal,'user36','36번 커뮤니티글 제목  ','36번 커뮤니티글 내용 ','2020-07-25',70);
insert into tblCommunity values (community_seq.nextVal,'user81','37번 커뮤니티글 제목  ','37번 커뮤니티글 내용 ','2020-07-30',80);
insert into tblCommunity values (community_seq.nextVal,'user48','38번 커뮤니티글 제목  ','38번 커뮤니티글 내용 ','2020-08-04',12);
insert into tblCommunity values (community_seq.nextVal,'user26','39번 커뮤니티글 제목  ','39번 커뮤니티글 내용 ','2020-08-09',68);
insert into tblCommunity values (community_seq.nextVal,'user99','40번 커뮤니티글 제목  ','40번 커뮤니티글 내용 ','2020-08-14',59);
insert into tblCommunity values (community_seq.nextVal,'user64','41번 커뮤니티글 제목  ','41번 커뮤니티글 내용 ','2020-08-19',26);
insert into tblCommunity values (community_seq.nextVal,'user95','42번 커뮤니티글 제목  ','42번 커뮤니티글 내용 ','2020-08-24',8);
insert into tblCommunity values (community_seq.nextVal,'user18','43번 커뮤니티글 제목  ','43번 커뮤니티글 내용 ','2020-08-29',73);
insert into tblCommunity values (community_seq.nextVal,'user83','44번 커뮤니티글 제목  ','44번 커뮤니티글 내용 ','2020-09-03',85);
insert into tblCommunity values (community_seq.nextVal,'user2','45번 커뮤니티글 제목  ','45번 커뮤니티글 내용 ','2020-09-08',82);
insert into tblCommunity values (community_seq.nextVal,'user71','46번 커뮤니티글 제목  ','46번 커뮤니티글 내용 ','2020-09-13',86);
insert into tblCommunity values (community_seq.nextVal,'user70','47번 커뮤니티글 제목  ','47번 커뮤니티글 내용 ','2020-09-18',34);
insert into tblCommunity values (community_seq.nextVal,'user50','48번 커뮤니티글 제목  ','48번 커뮤니티글 내용 ','2020-09-23',29);
insert into tblCommunity values (community_seq.nextVal,'user48','49번 커뮤니티글 제목  ','49번 커뮤니티글 내용 ','2020-09-28',20);
insert into tblCommunity values (community_seq.nextVal,'user75','50번 커뮤니티글 제목  ','50번 커뮤니티글 내용 ','2020-10-03',53);
insert into tblCommunity values (community_seq.nextVal,'user47','51번 커뮤니티글 제목  ','51번 커뮤니티글 내용 ','2020-10-08',39);
insert into tblCommunity values (community_seq.nextVal,'user9','52번 커뮤니티글 제목  ','52번 커뮤니티글 내용 ','2020-10-13',15);
insert into tblCommunity values (community_seq.nextVal,'user81','53번 커뮤니티글 제목  ','53번 커뮤니티글 내용 ','2020-10-18',10);
insert into tblCommunity values (community_seq.nextVal,'user96','54번 커뮤니티글 제목  ','54번 커뮤니티글 내용 ','2020-10-23',18);
insert into tblCommunity values (community_seq.nextVal,'user12','55번 커뮤니티글 제목  ','55번 커뮤니티글 내용 ','2020-10-28',70);
insert into tblCommunity values (community_seq.nextVal,'user28','56번 커뮤니티글 제목  ','56번 커뮤니티글 내용 ','2020-11-02',14);
insert into tblCommunity values (community_seq.nextVal,'user79','57번 커뮤니티글 제목  ','57번 커뮤니티글 내용 ','2020-11-07',52);
insert into tblCommunity values (community_seq.nextVal,'user82','58번 커뮤니티글 제목  ','58번 커뮤니티글 내용 ','2020-11-12',91);
insert into tblCommunity values (community_seq.nextVal,'user1','59번 커뮤니티글 제목  ','59번 커뮤니티글 내용 ','2020-11-17',56);
insert into tblCommunity values (community_seq.nextVal,'user43','60번 커뮤니티글 제목  ','60번 커뮤니티글 내용 ','2020-11-22',44);
insert into tblCommunity values (community_seq.nextVal,'user84','61번 커뮤니티글 제목  ','61번 커뮤니티글 내용 ','2020-11-27',29);
insert into tblCommunity values (community_seq.nextVal,'user31','62번 커뮤니티글 제목  ','62번 커뮤니티글 내용 ','2020-12-02',94);
insert into tblCommunity values (community_seq.nextVal,'user50','63번 커뮤니티글 제목  ','63번 커뮤니티글 내용 ','2020-12-07',4);
insert into tblCommunity values (community_seq.nextVal,'user64','64번 커뮤니티글 제목  ','64번 커뮤니티글 내용 ','2020-12-12',91);
insert into tblCommunity values (community_seq.nextVal,'user17','65번 커뮤니티글 제목  ','65번 커뮤니티글 내용 ','2020-12-17',65);
insert into tblCommunity values (community_seq.nextVal,'user19','66번 커뮤니티글 제목  ','66번 커뮤니티글 내용 ','2020-12-22',38);
insert into tblCommunity values (community_seq.nextVal,'user27','67번 커뮤니티글 제목  ','67번 커뮤니티글 내용 ','2020-12-27',18);
insert into tblCommunity values (community_seq.nextVal,'user17','68번 커뮤니티글 제목  ','68번 커뮤니티글 내용 ','2021-01-01',4);
insert into tblCommunity values (community_seq.nextVal,'user22','69번 커뮤니티글 제목  ','69번 커뮤니티글 내용 ','2021-01-06',11);
insert into tblCommunity values (community_seq.nextVal,'user32','70번 커뮤니티글 제목  ','70번 커뮤니티글 내용 ','2021-01-11',50);
insert into tblCommunity values (community_seq.nextVal,'user20','71번 커뮤니티글 제목  ','71번 커뮤니티글 내용 ','2021-01-16',9);
insert into tblCommunity values (community_seq.nextVal,'user64','72번 커뮤니티글 제목  ','72번 커뮤니티글 내용 ','2021-01-21',8);
insert into tblCommunity values (community_seq.nextVal,'user36','73번 커뮤니티글 제목  ','73번 커뮤니티글 내용 ','2021-01-26',66);
insert into tblCommunity values (community_seq.nextVal,'user4','74번 커뮤니티글 제목  ','74번 커뮤니티글 내용 ','2021-01-31',70);
insert into tblCommunity values (community_seq.nextVal,'user63','75번 커뮤니티글 제목  ','75번 커뮤니티글 내용 ','2021-02-05',43);
insert into tblCommunity values (community_seq.nextVal,'user61','76번 커뮤니티글 제목  ','76번 커뮤니티글 내용 ','2021-02-10',91);
insert into tblCommunity values (community_seq.nextVal,'user58','77번 커뮤니티글 제목  ','77번 커뮤니티글 내용 ','2021-02-15',66);
insert into tblCommunity values (community_seq.nextVal,'user28','78번 커뮤니티글 제목  ','78번 커뮤니티글 내용 ','2021-02-20',14);
insert into tblCommunity values (community_seq.nextVal,'user41','79번 커뮤니티글 제목  ','79번 커뮤니티글 내용 ','2021-02-25',87);
insert into tblCommunity values (community_seq.nextVal,'user30','80번 커뮤니티글 제목  ','80번 커뮤니티글 내용 ','2021-03-02',31);
insert into tblCommunity values (community_seq.nextVal,'user94','81번 커뮤니티글 제목  ','81번 커뮤니티글 내용 ','2021-03-07',1);
insert into tblCommunity values (community_seq.nextVal,'user92','82번 커뮤니티글 제목  ','82번 커뮤니티글 내용 ','2021-03-12',55);
insert into tblCommunity values (community_seq.nextVal,'user8','83번 커뮤니티글 제목  ','83번 커뮤니티글 내용 ','2021-03-17',5);
insert into tblCommunity values (community_seq.nextVal,'user40','84번 커뮤니티글 제목  ','84번 커뮤니티글 내용 ','2021-03-22',56);
insert into tblCommunity values (community_seq.nextVal,'user17','85번 커뮤니티글 제목  ','85번 커뮤니티글 내용 ','2021-03-27',12);
insert into tblCommunity values (community_seq.nextVal,'user83','86번 커뮤니티글 제목  ','86번 커뮤니티글 내용 ','2021-04-01',47);
insert into tblCommunity values (community_seq.nextVal,'user67','87번 커뮤니티글 제목  ','87번 커뮤니티글 내용 ','2021-04-06',35);
insert into tblCommunity values (community_seq.nextVal,'user42','88번 커뮤니티글 제목  ','88번 커뮤니티글 내용 ','2021-04-11',79);
insert into tblCommunity values (community_seq.nextVal,'user37','89번 커뮤니티글 제목  ','89번 커뮤니티글 내용 ','2021-04-16',93);
insert into tblCommunity values (community_seq.nextVal,'user8','90번 커뮤니티글 제목  ','90번 커뮤니티글 내용 ','2021-04-21',31);
insert into tblCommunity values (community_seq.nextVal,'user33','91번 커뮤니티글 제목  ','91번 커뮤니티글 내용 ','2021-04-26',40);
insert into tblCommunity values (community_seq.nextVal,'user42','92번 커뮤니티글 제목  ','92번 커뮤니티글 내용 ','2021-05-01',32);
insert into tblCommunity values (community_seq.nextVal,'user70','93번 커뮤니티글 제목  ','93번 커뮤니티글 내용 ','2021-05-06',96);
insert into tblCommunity values (community_seq.nextVal,'user74','94번 커뮤니티글 제목  ','94번 커뮤니티글 내용 ','2021-05-11',98);
insert into tblCommunity values (community_seq.nextVal,'user60','95번 커뮤니티글 제목  ','95번 커뮤니티글 내용 ','2021-05-16',5);
insert into tblCommunity values (community_seq.nextVal,'user98','96번 커뮤니티글 제목  ','96번 커뮤니티글 내용 ','2021-05-21',90);
insert into tblCommunity values (community_seq.nextVal,'user51','97번 커뮤니티글 제목  ','97번 커뮤니티글 내용 ','2021-05-26',20);
insert into tblCommunity values (community_seq.nextVal,'user74','98번 커뮤니티글 제목  ','98번 커뮤니티글 내용 ','2021-05-31',0);
insert into tblCommunity values (community_seq.nextVal,'user56','99번 커뮤니티글 제목  ','99번 커뮤니티글 내용 ','2021-06-05',33);
insert into tblCommunity values (community_seq.nextVal,'user47','100번 커뮤니티글 제목  ','100번 커뮤니티글 내용 ','2021-06-10',47);




-- 커뮤니티 댓글
CREATE TABLE tblComComment (
	comcomment_seq	NUMBER	NOT NULL,       --댓글 번호(PK) 
	community_seq	NUMBER	NOT NULL,       --글 번호(FK) --100
	id	VARCHAR2(100)	NOT NULL,           --작성자 id(FK)
	content	VARCHAR2(4000)	NOT NULL,       --내용 20자
	regdate DATE DEFAULT sysdate NOT NULL   --작성날짜 28일 이전
); --100

CREATE SEQUENCE comcomment_seq;

ALTER TABLE tblComComment ADD CONSTRAINT tblCC_comcomment_seq_pk PRIMARY KEY(comcomment_seq);
ALTER TABLE tblComComment ADD CONSTRAINT tblCC_community_seq_fk FOREIGN KEY(community_seq) REFERENCES tblCommunity(community_seq);
ALTER TABLE tblComComment ADD CONSTRAINT tblCC_id_fk FOREIGN KEY(id) REFERENCES tblUser(id);

insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (1, 48, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (2, 100, 'user47', '잘 보고 갑니다~', '2021-01-04');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (3, 19, 'user2', '좋은 글이네요^^', '2021-01-06');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (4, 19, 'user55', '잘 보고 갑니다~', '2021-01-08');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (5, 74, 'user93', '좋은 글이네요^^', '2021-01-10');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (6, 13, 'user40', '화이팅합시다!!', '2021-01-11');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (7, 9, 'user47', '잘 보고 갑니다~', '2021-01-12');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (8, 100, 'user59', '좋은 글이네요^^', '2021-01-13');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (9, 6, 'user25', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-01-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (10, 84, 'user37', '좋은 글이네요^^', '2021-01-16');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (11, 23, 'user27', '좋은 글이네요^^', '2021-01-17');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (12, 21, 'user52', '잘 보고 갑니다~', '2021-01-19');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (13, 20, 'user7', '잘 보고 갑니다~', '2021-01-21');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (14, 81, 'user21', '좋은 글이네요^^', '2021-01-22');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (15, 84, 'user82', '좋은 글이네요^^', '2021-01-23');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (16, 79, 'user90', '화이팅합시다!!', '2021-01-24');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (17, 41, 'user40', '좋은 글이네요^^', '2021-01-25');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (18, 44, 'user3', '화이팅합시다!!', '2021-01-26');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (19, 94, 'user62', '화이팅합시다!!', '2021-01-27');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (20, 81, 'user82', '좋은 글이네요^^', '2021-01-29');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (21, 96, 'user92', '잘 보고 갑니다~', '2021-01-31');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (22, 26, 'user12', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-02-02');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (23, 18, 'user2', '잘 보고 갑니다~', '2021-02-04');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (24, 24, 'user19', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-02-05');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (25, 6, 'user64', '잘 보고 갑니다~', '2021-02-06');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (26, 51, 'user35', '잘 보고 갑니다~', '2021-02-07');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (27, 59, 'user72', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-02-08');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (28, 29, 'user64', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-02-10');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (29, 85, 'user36', '좋은 글이네요^^', '2021-02-12');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (30, 57, 'user72', '화이팅합시다!!', '2021-02-13');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (31, 74, 'user22', '화이팅합시다!!', '2021-02-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (32, 41, 'user22', '좋은 글이네요^^', '2021-02-16');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (33, 76, 'user53', '화이팅합시다!!', '2021-02-18');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (34, 3, 'user4', '화이팅합시다!!', '2021-02-19');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (35, 95, 'user75', '좋은 글이네요^^', '2021-02-20');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (36, 47, 'user38', '화이팅합시다!!', '2021-02-22');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (37, 83, 'user34', '화이팅합시다!!', '2021-02-23');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (38, 78, 'user57', '잘 보고 갑니다~', '2021-02-24');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (39, 36, 'user97', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-02-25');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (40, 76, 'user48', '좋은 글이네요^^', '2021-02-27');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (41, 13, 'user58', '화이팅합시다!!', '2021-03-01');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (42, 15, 'user59', '잘 보고 갑니다~', '2021-03-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (43, 21, 'user48', '좋은 글이네요^^', '2021-03-05');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (44, 49, 'user36', '화이팅합시다!!', '2021-03-07');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (45, 4, 'user32', '화이팅합시다!!', '2021-03-09');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (46, 26, 'user12', '화이팅합시다!!', '2021-03-10');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (47, 77, 'user24', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-03-12');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (48, 70, 'user4', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-03-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (49, 25, 'user49', '화이팅합시다!!', '2021-03-15');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (50, 3, 'user10', '잘 보고 갑니다~', '2021-03-17');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (51, 91, 'user42', '화이팅합시다!!', '2021-03-19');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (52, 73, 'user15', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-03-20');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (53, 41, 'user56', '잘 보고 갑니다~', '2021-03-21');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (54, 83, 'user36', '화이팅합시다!!', '2021-03-23');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (55, 65, 'user60', '화이팅합시다!!', '2021-03-25');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (56, 4, 'user27', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-03-26');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (57, 97, 'user84', '화이팅합시다!!', '2021-03-27');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (58, 39, 'user1', '좋은 글이네요^^', '2021-03-28');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (59, 77, 'user99', '좋은 글이네요^^', '2021-03-30');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (60, 69, 'user63', '화이팅합시다!!', '2021-04-01');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (61, 48, 'user80', '좋은 글이네요^^', '2021-04-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (62, 50, 'user90', '화이팅합시다!!', '2021-04-05');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (63, 67, 'user7', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-04-06');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (64, 84, 'user56', '좋은 글이네요^^', '2021-04-07');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (65, 72, 'user49', '잘 보고 갑니다~', '2021-04-09');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (66, 95, 'user70', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-04-11');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (67, 84, 'user30', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-04-12');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (68, 7, 'user22', '화이팅합시다!!', '2021-04-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (69, 41, 'user90', '잘 보고 갑니다~', '2021-04-16');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (70, 88, 'user57', '화이팅합시다!!', '2021-04-17');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (71, 88, 'user26', '좋은 글이네요^^', '2021-04-18');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (72, 40, 'user8', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-04-20');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (73, 99, 'user82', '잘 보고 갑니다~', '2021-04-22');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (74, 87, 'user24', '화이팅합시다!!', '2021-04-24');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (75, 91, 'user94', '잘 보고 갑니다~', '2021-04-25');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (76, 93, 'user63', '화이팅합시다!!', '2021-04-26');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (77, 67, 'user67', '잘 보고 갑니다~', '2021-04-28');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (78, 63, 'user21', '잘 보고 갑니다~', '2021-04-30');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (79, 59, 'user9', '좋은 글이네요^^', '2021-05-02');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (80, 91, 'user74', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-05-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (81, 58, 'user4', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-05-04');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (82, 79, 'user60', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-05-06');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (83, 27, 'user53', '잘 보고 갑니다~', '2021-05-07');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (84, 81, 'user79', '좋은 글이네요^^', '2021-05-08');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (85, 7, 'user35', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-05-09');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (86, 17, 'user79', '잘 보고 갑니다~', '2021-05-11');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (87, 65, 'user36', '좋은 글이네요^^', '2021-05-13');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (88, 84, 'user26', '화이팅합시다!!', '2021-05-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (89, 48, 'user3', '잘 보고 갑니다~', '2021-05-15');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (90, 83, 'user36', '잘 보고 갑니다~', '2021-05-17');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (91, 60, 'user1', '좋은 글이네요^^', '2021-05-18');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (92, 53, 'user16', '잘 보고 갑니다~', '2021-05-19');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (93, 60, 'user26', '화이팅합시다!!', '2021-05-21');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (94, 96, 'user26', '잘 보고 갑니다~', '2021-05-22');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (95, 9, 'user31', '좋은 글이네요^^', '2021-05-23');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (96, 9, 'user73', '잘 보고 갑니다~', '2021-05-24');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (97, 9, 'user63', '잘 보고 갑니다~', '2021-05-26');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (98, 59, 'user32', '화이팅합시다!!', '2021-05-28');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (99, 97, 'user35', '좋은 글이네요^^', '2021-05-30');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (100, 11, 'user70', '얼른 코로나가 사라졌으면 좋겠습니다', '2021-06-01');


-- 커뮤니티 이미지
CREATE TABLE tblCommunityImage (
	community_img_seq	NUMBER	NOT NULL,   --이미지번호(PK)
	community_seq	NUMBER	NOT NULL,       --글번호(FK)
	path	VARCHAR2(4000)	NOT NULL        --이미지경로
);

CREATE SEQUENCE community_img_seq;

ALTER TABLE tblCommunityImage ADD CONSTRAINT tblCI_community_img_seq_pk PRIMARY KEY(community_img_seq);
ALTER TABLE tblCommunityImage ADD CONSTRAINT tblCI_community_seq_fk FOREIGN KEY(community_seq) REFERENCES tblCommunity(community_seq);


insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,4,'img80.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,37,'img55.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,13,'img27.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,96,'img17.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,68,'img73.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,13,'img20.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,45,'img27.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,94,'img79.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,78,'img41.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,41,'img60.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,56,'img90.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,29,'img62.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,25,'img79.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,65,'img44.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,82,'img10.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,1,'img71.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,57,'img71.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,47,'img78.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,75,'img96.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,96,'img27.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,88,'img78.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,7,'img18.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,33,'img49.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,7,'img84.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,62,'img69.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,77,'img5.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,31,'img58.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,23,'img90.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,13,'img20.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,15,'img39.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,23,'img60.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,12,'img5.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,97,'img95.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,94,'img15.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,11,'img50.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,25,'img77.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,83,'img88.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,62,'img67.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,61,'img52.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,81,'img25.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,7,'img62.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,74,'img100.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,31,'img25.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,94,'img38.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,78,'img78.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,99,'img76.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,82,'img18.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,56,'img95.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,48,'img99.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,24,'img12.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,56,'img56.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,21,'img98.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,11,'img42.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,94,'img66.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,94,'img83.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,11,'img81.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,33,'img43.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,19,'img34.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,86,'img93.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,1,'img7.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,73,'img56.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,24,'img50.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,27,'img14.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,93,'img76.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,37,'img73.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,16,'img99.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,54,'img36.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,2,'img29.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,65,'img28.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,80,'img92.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,64,'img77.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,77,'img17.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,68,'img64.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,42,'img88.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,37,'img72.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,13,'img30.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,10,'img95.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,79,'img36.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,21,'img75.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,97,'img86.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,21,'img85.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,32,'img12.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,93,'img93.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,8,'img76.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,33,'img36.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,3,'img6.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,49,'img76.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,9,'img29.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,77,'img89.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,45,'img23.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,86,'img74.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,56,'img74.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,56,'img89.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,61,'img98.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,50,'img97.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,20,'img4.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,57,'img6.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,37,'img44.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,6,'img33.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,71,'img41.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,32,'img88.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,27,'img67.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,100,'img54.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,8,'img7.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,79,'img19.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,78,'img37.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,43,'img19.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,44,'img28.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,65,'img76.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,86,'img33.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,16,'img97.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,26,'img21.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,19,'img17.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,90,'img38.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,50,'img71.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,36,'img100.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,47,'img1.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,8,'img74.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,97,'img53.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,88,'img99.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,39,'img32.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,17,'img41.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,11,'img97.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,78,'img97.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,96,'img69.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,44,'img91.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,8,'img18.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,72,'img56.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,58,'img23.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,60,'img78.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,56,'img44.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,86,'img31.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,100,'img94.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,74,'img8.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,83,'img14.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,29,'img51.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,6,'img15.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,8,'img48.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,64,'img47.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,36,'img82.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,42,'img6.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,77,'img32.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,42,'img75.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,27,'img12.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,87,'img10.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,57,'img36.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,84,'img44.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,54,'img69.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,52,'img79.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,92,'img20.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,55,'img8.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,99,'img51.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,96,'img17.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,76,'img6.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,38,'img88.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,6,'img16.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,64,'img80.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,48,'img62.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,62,'img74.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,12,'img65.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,24,'img1.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,56,'img14.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,98,'img63.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,25,'img97.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,17,'img76.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,16,'img72.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,90,'img81.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,44,'img82.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,28,'img10.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,65,'img47.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,77,'img86.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,84,'img23.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,42,'img23.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,25,'img10.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,95,'img68.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,74,'img3.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,57,'img76.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,9,'img37.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,1,'img36.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,81,'img41.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,14,'img86.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,86,'img13.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,29,'img95.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,85,'img11.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,57,'img55.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,39,'img48.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,97,'img41.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,50,'img26.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,84,'img55.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,88,'img16.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,81,'img88.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,65,'img60.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,42,'img21.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,29,'img97.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,4,'img54.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,39,'img33.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,44,'img65.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,64,'img56.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,26,'img12.jpg');
insert into tblCommunityImage (community_img_seq,community_seq,path) values (community_img_seq.nextval,7,'img73.jpg');


-- 입찰
CREATE TABLE tblBid (
	bid_seq	NUMBER	NOT NULL,
	id	VARCHAR2(100)	NOT NULL,
	product_seq	NUMBER	NOT NULL, --160
	price	NUMBER	NOT NULL, -- 1000~100000
	time	DATE	DEFAULT sysdate NOT NULL
); --짝수 경매 , 홀수 일반

CREATE SEQUENCE bid_seq;

ALTER TABLE tblBid ADD CONSTRAINT tblBid_bid_seq_pk PRIMARY KEY(bid_seq);
ALTER TABLE tblBid ADD CONSTRAINT tblBid_id_fk FOREIGN KEY(id) REFERENCES tblUser(id);
ALTER TABLE tblBid ADD CONSTRAINT tblBid_product_seq_fk FOREIGN KEY(product_seq) REFERENCES tblProduct(product_seq);

insert into tblBid (bid_seq, id, product_seq, price, time) values (1, 'user94', 2, 355000, '2020-01-18');
insert into tblBid (bid_seq, id, product_seq, price, time) values (2, 'user67', 2, 368000, '2020-01-19');
insert into tblBid (bid_seq, id, product_seq, price, time) values (3, 'user23', 2, 176000, '2020-01-20');
insert into tblBid (bid_seq, id, product_seq, price, time) values (4, 'user22', 4, 594000, '2020-01-29');
insert into tblBid (bid_seq, id, product_seq, price, time) values (5, 'user82', 4, 693000, '2020-01-29');
insert into tblBid (bid_seq, id, product_seq, price, time) values (6, 'user100', 4, 568000, '2020-01-30');
insert into tblBid (bid_seq, id, product_seq, price, time) values (7, 'user26', 6, 43000, '2020-02-12');
insert into tblBid (bid_seq, id, product_seq, price, time) values (8, 'user43', 6, 36000, '2020-02-12');
insert into tblBid (bid_seq, id, product_seq, price, time) values (9, 'user92', 8, 307000, '2020-02-19');
insert into tblBid (bid_seq, id, product_seq, price, time) values (10, 'user63', 8, 58000, '2020-02-19');
insert into tblBid (bid_seq, id, product_seq, price, time) values (11, 'user20', 10, 104000, '2020-02-24');
insert into tblBid (bid_seq, id, product_seq, price, time) values (12, 'user48', 10, 141000, '2020-02-24');
insert into tblBid (bid_seq, id, product_seq, price, time) values (13, 'user93', 12, 190000, '2020-03-03');
insert into tblBid (bid_seq, id, product_seq, price, time) values (14, 'user41', 12, 123000, '2020-03-04');
insert into tblBid (bid_seq, id, product_seq, price, time) values (15, 'user14', 12, 137000, '2020-03-05');
insert into tblBid (bid_seq, id, product_seq, price, time) values (16, 'user77', 12, 20000, '2020-03-05');
insert into tblBid (bid_seq, id, product_seq, price, time) values (17, 'user93', 14, 30000, '2020-03-13');
insert into tblBid (bid_seq, id, product_seq, price, time) values (18, 'user16', 14, 10000, '2020-03-13');
insert into tblBid (bid_seq, id, product_seq, price, time) values (19, 'user49', 14, 11000, '2020-03-14');
insert into tblBid (bid_seq, id, product_seq, price, time) values (20, 'user25', 14, 2000, '2020-03-15');
insert into tblBid (bid_seq, id, product_seq, price, time) values (21, 'user52', 16, 98000, '2020-03-23');
insert into tblBid (bid_seq, id, product_seq, price, time) values (22, 'user5', 18, 86000, '2020-04-07');
insert into tblBid (bid_seq, id, product_seq, price, time) values (23, 'user65', 20, 1207000, '2020-04-13');
insert into tblBid (bid_seq, id, product_seq, price, time) values (24, 'user90', 20, 1652000, '2020-04-14');
insert into tblBid (bid_seq, id, product_seq, price, time) values (25, 'user70', 22, 3000, '2020-04-25');
insert into tblBid (bid_seq, id, product_seq, price, time) values (26, 'user5', 24, 586000, '2020-05-04');
insert into tblBid (bid_seq, id, product_seq, price, time) values (27, 'user5', 24, 112000, '2020-05-04');
insert into tblBid (bid_seq, id, product_seq, price, time) values (28, 'user27', 24, 130000, '2020-05-05');
insert into tblBid (bid_seq, id, product_seq, price, time) values (29, 'user15', 24, 103000, '2020-05-06');
insert into tblBid (bid_seq, id, product_seq, price, time) values (30, 'user70', 26, 34000, '2020-05-12');
insert into tblBid (bid_seq, id, product_seq, price, time) values (31, 'user53', 26, 33000, '2020-05-12');
insert into tblBid (bid_seq, id, product_seq, price, time) values (32, 'user56', 26, 19000, '2020-05-13');
insert into tblBid (bid_seq, id, product_seq, price, time) values (33, 'user90', 28, 905000, '2020-05-16');
insert into tblBid (bid_seq, id, product_seq, price, time) values (34, 'user14', 28, 182000, '2020-05-16');
insert into tblBid (bid_seq, id, product_seq, price, time) values (35, 'user42', 30, 77000, '2020-05-29');
insert into tblBid (bid_seq, id, product_seq, price, time) values (36, 'user81', 30, 97000, '2020-05-29');
insert into tblBid (bid_seq, id, product_seq, price, time) values (37, 'user25', 30, 25000, '2020-05-30');
insert into tblBid (bid_seq, id, product_seq, price, time) values (38, 'user26', 30, 8000, '2020-05-31');
insert into tblBid (bid_seq, id, product_seq, price, time) values (39, 'user48', 32, 1196000, '2020-06-02');
insert into tblBid (bid_seq, id, product_seq, price, time) values (40, 'user40', 32, 1202000, '2020-06-02');
insert into tblBid (bid_seq, id, product_seq, price, time) values (41, 'user96', 32, 1570000, '2020-06-02');
insert into tblBid (bid_seq, id, product_seq, price, time) values (42, 'user83', 32, 2170000, '2020-06-02');
insert into tblBid (bid_seq, id, product_seq, price, time) values (43, 'user91', 34, 165000, '2020-06-14');
insert into tblBid (bid_seq, id, product_seq, price, time) values (44, 'user98', 36, 117000, '2020-06-19');
insert into tblBid (bid_seq, id, product_seq, price, time) values (45, 'user55', 38, 13000, '2020-07-02');
insert into tblBid (bid_seq, id, product_seq, price, time) values (46, 'user53', 38, 9000, '2020-07-03');
insert into tblBid (bid_seq, id, product_seq, price, time) values (47, 'user27', 38, 10000, '2020-07-03');
insert into tblBid (bid_seq, id, product_seq, price, time) values (48, 'user82', 38, 9000, '2020-07-04');
insert into tblBid (bid_seq, id, product_seq, price, time) values (49, 'user14', 40, 449000, '2020-07-07');
insert into tblBid (bid_seq, id, product_seq, price, time) values (50, 'user56', 40, 7000, '2020-07-07');
insert into tblBid (bid_seq, id, product_seq, price, time) values (51, 'user91', 40, 10000, '2020-07-08');
insert into tblBid (bid_seq, id, product_seq, price, time) values (52, 'user64', 40, 4000, '2020-07-08');
insert into tblBid (bid_seq, id, product_seq, price, time) values (53, 'user27', 42, 108000, '2020-07-16');
insert into tblBid (bid_seq, id, product_seq, price, time) values (54, 'user58', 42, 123000, '2020-07-16');
insert into tblBid (bid_seq, id, product_seq, price, time) values (55, 'user55', 42, 28000, '2020-07-16');
insert into tblBid (bid_seq, id, product_seq, price, time) values (56, 'user9', 42, 7000, '2020-07-16');
insert into tblBid (bid_seq, id, product_seq, price, time) values (57, 'user82', 44, 817000, '2020-07-17');
insert into tblBid (bid_seq, id, product_seq, price, time) values (58, 'user95', 44, 67000, '2020-07-18');
insert into tblBid (bid_seq, id, product_seq, price, time) values (59, 'user81', 46, 29000, '2020-07-27');
insert into tblBid (bid_seq, id, product_seq, price, time) values (60, 'user63', 46, 27000, '2020-07-28');
insert into tblBid (bid_seq, id, product_seq, price, time) values (61, 'user51', 48, 896000, '2020-08-03');
insert into tblBid (bid_seq, id, product_seq, price, time) values (62, 'user60', 48, 450000, '2020-08-03');
insert into tblBid (bid_seq, id, product_seq, price, time) values (63, 'user20', 48, 24000, '2020-08-03');
insert into tblBid (bid_seq, id, product_seq, price, time) values (64, 'user45', 50, 489000, '2020-08-13');
insert into tblBid (bid_seq, id, product_seq, price, time) values (65, 'user57', 50, 172000, '2020-08-13');
insert into tblBid (bid_seq, id, product_seq, price, time) values (66, 'user75', 52, 335000, '2020-08-21');
insert into tblBid (bid_seq, id, product_seq, price, time) values (67, 'user88', 52, 370000, '2020-08-22');
insert into tblBid (bid_seq, id, product_seq, price, time) values (68, 'user21', 52, 366000, '2020-08-23');
insert into tblBid (bid_seq, id, product_seq, price, time) values (69, 'user79', 54, 378000, '2020-08-28');
insert into tblBid (bid_seq, id, product_seq, price, time) values (70, 'user12', 54, 277000, '2020-08-28');
insert into tblBid (bid_seq, id, product_seq, price, time) values (71, 'user17', 56, 370000, '2020-09-11');
insert into tblBid (bid_seq, id, product_seq, price, time) values (72, 'user23', 56, 161000, '2020-09-12');
insert into tblBid (bid_seq, id, product_seq, price, time) values (73, 'user6', 56, 203000, '2020-09-12');
insert into tblBid (bid_seq, id, product_seq, price, time) values (74, 'user22', 56, 51000, '2020-09-12');
insert into tblBid (bid_seq, id, product_seq, price, time) values (75, 'user30', 58, 46000, '2020-09-19');
insert into tblBid (bid_seq, id, product_seq, price, time) values (76, 'user35', 58, 63000, '2020-09-19');
insert into tblBid (bid_seq, id, product_seq, price, time) values (77, 'user84', 58, 0, '2020-09-19');
insert into tblBid (bid_seq, id, product_seq, price, time) values (78, 'user15', 58, 0, '2020-09-20');
insert into tblBid (bid_seq, id, product_seq, price, time) values (79, 'user12', 60, 92000, '2020-09-30');
insert into tblBid (bid_seq, id, product_seq, price, time) values (80, 'user53', 60, 20000, '2020-09-30');
insert into tblBid (bid_seq, id, product_seq, price, time) values (81, 'user82', 60, 19000, '2020-09-30');
insert into tblBid (bid_seq, id, product_seq, price, time) values (82, 'user3', 60, 20000, '2020-09-30');
insert into tblBid (bid_seq, id, product_seq, price, time) values (83, 'user27', 62, 660000, '2020-10-07');
insert into tblBid (bid_seq, id, product_seq, price, time) values (84, 'user92', 62, 47000, '2020-10-08');
insert into tblBid (bid_seq, id, product_seq, price, time) values (85, 'user21', 62, 66000, '2020-10-09');
insert into tblBid (bid_seq, id, product_seq, price, time) values (86, 'user56', 62, 52000, '2020-10-10');
insert into tblBid (bid_seq, id, product_seq, price, time) values (87, 'user51', 64, 749000, '2020-10-20');
insert into tblBid (bid_seq, id, product_seq, price, time) values (88, 'user60', 66, 190000, '2020-10-29');
insert into tblBid (bid_seq, id, product_seq, price, time) values (89, 'user21', 66, 60000, '2020-10-30');
insert into tblBid (bid_seq, id, product_seq, price, time) values (90, 'user39', 68, 46000, '2020-11-07');
insert into tblBid (bid_seq, id, product_seq, price, time) values (91, 'user72', 68, 42000, '2020-11-07');
insert into tblBid (bid_seq, id, product_seq, price, time) values (92, 'user31', 68, 12000, '2020-11-08');
insert into tblBid (bid_seq, id, product_seq, price, time) values (93, 'user60', 70, 1176000, '2020-11-19');
insert into tblBid (bid_seq, id, product_seq, price, time) values (94, 'user100', 72, 113000, '2020-11-27');
insert into tblBid (bid_seq, id, product_seq, price, time) values (95, 'user100', 72, 45000, '2020-11-27');
insert into tblBid (bid_seq, id, product_seq, price, time) values (96, 'user86', 74, 461000, '2020-12-09');
insert into tblBid (bid_seq, id, product_seq, price, time) values (97, 'user62', 74, 51000, '2020-12-09');
insert into tblBid (bid_seq, id, product_seq, price, time) values (98, 'user43', 74, 9000, '2020-12-09');
insert into tblBid (bid_seq, id, product_seq, price, time) values (99, 'user30', 74, 9000, '2020-12-10');
insert into tblBid (bid_seq, id, product_seq, price, time) values (100, 'user59', 76, 256000, '2020-12-25');
insert into tblBid (bid_seq, id, product_seq, price, time) values (101, 'user81', 78, 443000, '2020-12-27');
insert into tblBid (bid_seq, id, product_seq, price, time) values (102, 'user33', 78, 89000, '2020-12-27');
insert into tblBid (bid_seq, id, product_seq, price, time) values (103, 'user66', 78, 95000, '2020-12-27');
insert into tblBid (bid_seq, id, product_seq, price, time) values (104, 'user78', 80, 24000, '2021-01-11');
insert into tblBid (bid_seq, id, product_seq, price, time) values (105, 'user45', 80, 30000, '2021-01-12');
insert into tblBid (bid_seq, id, product_seq, price, time) values (106, 'user63', 80, 21000, '2021-01-13');
insert into tblBid (bid_seq, id, product_seq, price, time) values (107, 'user13', 80, 30000, '2021-01-13');
insert into tblBid (bid_seq, id, product_seq, price, time) values (108, 'user38', 82, 44000, '2021-01-21');
insert into tblBid (bid_seq, id, product_seq, price, time) values (109, 'user43', 82, 14000, '2021-01-22');
insert into tblBid (bid_seq, id, product_seq, price, time) values (110, 'user55', 84, 1090000, '2021-01-30');
insert into tblBid (bid_seq, id, product_seq, price, time) values (111, 'user77', 84, 578000, '2021-01-31');
insert into tblBid (bid_seq, id, product_seq, price, time) values (112, 'user53', 86, 862000, '2021-02-07');
insert into tblBid (bid_seq, id, product_seq, price, time) values (113, 'user27', 88, 404000, '2021-02-11');
insert into tblBid (bid_seq, id, product_seq, price, time) values (114, 'user21', 88, 555000, '2021-02-12');
insert into tblBid (bid_seq, id, product_seq, price, time) values (115, 'user72', 88, 637000, '2021-02-13');
insert into tblBid (bid_seq, id, product_seq, price, time) values (116, 'user40', 88, 820000, '2021-02-14');
insert into tblBid (bid_seq, id, product_seq, price, time) values (117, 'user95', 90, 916000, '2021-02-18');
insert into tblBid (bid_seq, id, product_seq, price, time) values (118, 'user65', 90, 457000, '2021-02-19');
insert into tblBid (bid_seq, id, product_seq, price, time) values (119, 'user25', 90, 616000, '2021-02-20');
insert into tblBid (bid_seq, id, product_seq, price, time) values (120, 'user21', 90, 893000, '2021-02-20');
insert into tblBid (bid_seq, id, product_seq, price, time) values (121, 'user53', 92, 614000, '2021-02-20');
insert into tblBid (bid_seq, id, product_seq, price, time) values (122, 'user48', 92, 808000, '2021-02-21');
insert into tblBid (bid_seq, id, product_seq, price, time) values (123, 'user71', 92, 411000, '2021-02-21');
insert into tblBid (bid_seq, id, product_seq, price, time) values (124, 'user32', 94, 930000, '2021-03-03');
insert into tblBid (bid_seq, id, product_seq, price, time) values (125, 'user22', 96, 27000, '2021-03-08');
insert into tblBid (bid_seq, id, product_seq, price, time) values (126, 'user6', 96, 16000, '2021-03-09');
insert into tblBid (bid_seq, id, product_seq, price, time) values (127, 'user33', 98, 16000, '2021-03-24');
insert into tblBid (bid_seq, id, product_seq, price, time) values (128, 'user91', 98, 9000, '2021-03-25');
insert into tblBid (bid_seq, id, product_seq, price, time) values (129, 'user97', 98, 4000, '2021-03-25');
insert into tblBid (bid_seq, id, product_seq, price, time) values (130, 'user41', 100, 332000, '2021-04-06');
insert into tblBid (bid_seq, id, product_seq, price, time) values (131, 'user22', 100, 37000, '2021-04-06');
insert into tblBid (bid_seq, id, product_seq, price, time) values (132, 'user59', 100, 2000, '2021-04-07');



--상품이미지
CREATE TABLE tblProductImage (
	product_img_seq	NUMBER	NOT NULL,
	product_seq	NUMBER	NOT NULL,
	path VARCHAR2(4000)	NOT NULL
);
CREATE SEQUENCE product_img_seq;


INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (1, 1, 'img1');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (2, 2, 'img2');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (3, 3, 'img3');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (4, 4, 'img4');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (5, 5, 'img5');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (6, 6, 'img6');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (7, 7, 'img7');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (8, 8, 'img8');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (9, 9, 'img9');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (10, 10, 'img10');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (11, 11, 'img11');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (12, 12, 'img12');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (13, 13, 'img13');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (14, 14, 'img14');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (15, 15, 'img15');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (16, 16, 'img16');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (17, 17, 'img17');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (18, 18, 'img18');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (19, 19, 'img19');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (20, 20, 'img20');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (21, 21, 'img21');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (22, 22, 'img22');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (23, 23, 'img23');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (24, 24, 'img24');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (25, 25, 'img25');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (26, 26, 'img26');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (27, 27, 'img27');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (28, 28, 'img28');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (29, 29, 'img29');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (30, 30, 'img30');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (31, 31, 'img31');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (32, 32, 'img32');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (33, 33, 'img33');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (34, 34, 'img34');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (35, 35, 'img35');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (36, 36, 'img36');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (37, 37, 'img37');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (38, 38, 'img38');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (39, 39, 'img39');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (40, 40, 'img40');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (41, 41, 'img41');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (42, 42, 'img42');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (43, 43, 'img43');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (44, 44, 'img44');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (45, 45, 'img45');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (46, 46, 'img46');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (47, 47, 'img47');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (48, 48, 'img48');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (49, 49, 'img49');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (50, 50, 'img50');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (51, 51, 'img51');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (52, 52, 'img52');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (53, 53, 'img53');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (54, 54, 'img54');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (55, 55, 'img55');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (56, 56, 'img56');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (57, 57, 'img57');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (58, 58, 'img58');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (59, 59, 'img59');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (60, 60, 'img60');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (61, 61, 'img61');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (62, 62, 'img62');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (63, 63, 'img63');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (64, 64, 'img64');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (65, 65, 'img65');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (66, 66, 'img66');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (67, 67, 'img67');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (68, 68, 'img68');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (69, 69, 'img69');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (70, 70, 'img70');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (71, 71, 'img71');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (72, 72, 'img72');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (73, 73, 'img73');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (74, 74, 'img74');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (75, 75, 'img75');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (76, 76, 'img76');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (77, 77, 'img77');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (78, 78, 'img78');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (79, 79, 'img79');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (80, 80, 'img80');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (81, 81, 'img81');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (82, 82, 'img82');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (83, 83, 'img83');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (84, 84, 'img84');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (85, 85, 'img85');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (86, 86, 'img86');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (87, 87, 'img87');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (88, 88, 'img88');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (89, 89, 'img89');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (90, 90, 'img90');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (91, 91, 'img91');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (92, 92, 'img92');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (93, 93, 'img93');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (94, 94, 'img94');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (95, 95, 'img95');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (96, 96, 'img96');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (97, 97, 'img97');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (98, 98, 'img98');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (99, 99, 'img99');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (100, 100, 'img100');



--상품검색
CREATE TABLE tblSearch (
	search_seq	number	NOT NULL,
	keyword	varchar2(90)	NOT NULL, --알아서
	time date DEFAULT sysdate	NOT NULL
);--100개
CREATE SEQUENCE search_seq;

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (1, '상의', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (2, '가전', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (3, '도서', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (4, '바지', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (5, '핸드폰', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (6, 'TV', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (7, '상의', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (8, '가전', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (9, '도서', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (10, '바지', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (11, '핸드폰', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (12, 'TV', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (13, '상의', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (14, '가전', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (15, '도서', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (16, '바지', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (17, '핸드폰', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (18, 'TV', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (19, '상의', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (20, '가전', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (21, '도서', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (22, '노트북', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (23, '책상', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (24, '바지', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (25, '핸드폰', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (26, 'TV', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (27, '상의', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (28, '가전', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (29, '도서', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (30, '바지', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (31, '가전', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (32, '도서', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (33, '노트북', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (34, '책상', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (35, '바지', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (36, '핸드폰', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (37, 'TV', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (38, '상의', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (39, '가전', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (40, '도서', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (41, '바지', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (42, '가전', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (43, '도서', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (44, '노트북', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (45, '책상', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (46, '바지', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (47, '핸드폰', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (48, '가전', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (49, '도서', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (50, '바지', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (51, '가전', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (52, '도서', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (53, '노트북', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (54, '책상', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (55, '바지', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (56, '핸드폰', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (57, 'TV', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (58, '상의', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (59, '가전', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (60, '도서', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (61, '바지', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (62, '가전', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (63, '도서', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (64, '노트북', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (65, '책상', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (66, '바지', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (67, '핸드폰', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (68, '가전', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (69, '도서', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (70, '바지', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (71, '가전', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (72, '도서', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (73, '노트북', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (74, '책상', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (75, '바지', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (76, '핸드폰', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (77, 'TV', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (78, '상의', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (79, '가전', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (80, '도서', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (81, '바지', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (82, '가전', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (83, '도서', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (84, '노트북', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (85, '책상', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (86, '바지', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (87, '핸드폰', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (88, '가전', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (89, '도서', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (90, '바지', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (91, '가전', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (92, '도서', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (93, '노트북', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (94, '책상', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (95, '바지', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (96, '핸드폰', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (97, 'TV', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (98, '상의', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (99, '가전', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (100, '도서', to_date('09/09/2021', 'MM/DD/RRRR'));



--메시지
CREATE TABLE tblMessage (
	message_seq	number NOT NULL,
	sender_id	VARCHAR2(100) NOT NULL, --fk
	receiver_id	VARCHAR2(100) NOT NULL, --fk
	content	varchar2(4000) NOT NULL, -- 10자
	sendtime DATE DEFAULT sysdate NOT NULL,
	is_check CHAR(1) NOT NULL --
); --100
CREATE SEQUENCE message_seq;


INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (1, 'user1', 'user2', '안녕하세요1', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (2, 'user2', 'user3', '안녕하세요2', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (3, 'user3', 'user4', '안녕하세요3', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (4, 'user4', 'user5', '안녕하세요4', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (5, 'user5', 'user6', '안녕하세요5', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (6, 'user6', 'user7', '안녕하세요6', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (7, 'user7', 'user8', '안녕하세요7', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (8, 'user8', 'user9', '안녕하세요8', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (9, 'user9', 'user10', '안녕하세요9', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (10, 'user10', 'user11', '안녕하세요10', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (11, 'user11', 'user12', '안녕하세요11', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (12, 'user12', 'user13', '안녕하세요12', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (13, 'user13', 'user14', '안녕하세요13', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (14, 'user14', 'user15', '안녕하세요14', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (15, 'user15', 'user16', '안녕하세요15', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (16, 'user16', 'user17', '안녕하세요16', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (17, 'user17', 'user18', '안녕하세요17', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (18, 'user18', 'user19', '안녕하세요18', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (19, 'user19', 'user20', '안녕하세요19', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (20, 'user20', 'user21', '안녕하세요20', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (21, 'user21', 'user22', '안녕하세요21', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (22, 'user22', 'user23', '안녕하세요22', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (23, 'user23', 'user24', '안녕하세요23', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (24, 'user24', 'user25', '안녕하세요24', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (25, 'user25', 'user26', '안녕하세요25', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (26, 'user26', 'user27', '안녕하세요26', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (27, 'user27', 'user28', '안녕하세요27', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (28, 'user28', 'user29', '안녕하세요28', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (29, 'user29', 'user30', '안녕하세요29', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (30, 'user30', 'user31', '안녕하세요30', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (31, 'user31', 'user32', '안녕하세요31', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (32, 'user32', 'user33', '안녕하세요32', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (33, 'user33', 'user34', '안녕하세요33', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (34, 'user34', 'user35', '안녕하세요34', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (35, 'user35', 'user36', '안녕하세요35', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (36, 'user36', 'user37', '안녕하세요36', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (37, 'user37', 'user38', '안녕하세요37', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (38, 'user38', 'user39', '안녕하세요38', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (39, 'user39', 'user40', '안녕하세요39', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (40, 'user40', 'user41', '안녕하세요40', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (41, 'user41', 'user42', '안녕하세요41', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (42, 'user42', 'user43', '안녕하세요42', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (43, 'user43', 'user44', '안녕하세요43', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (44, 'user44', 'user45', '안녕하세요44', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (45, 'user45', 'user46', '안녕하세요45', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (46, 'user46', 'user47', '안녕하세요46', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (47, 'user47', 'user48', '안녕하세요47', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (48, 'user48', 'user49', '안녕하세요48', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (49, 'user49', 'user50', '안녕하세요49', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (50, 'user50', 'user51', '안녕하세요50', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (51, 'user51', 'user52', '안녕하세요51', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (52, 'user52', 'user53', '안녕하세요52', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (53, 'user53', 'user54', '안녕하세요53', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (54, 'user54', 'user55', '안녕하세요54', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (55, 'user55', 'user56', '안녕하세요55', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (56, 'user56', 'user57', '안녕하세요56', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (57, 'user57', 'user58', '안녕하세요57', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (58, 'user58', 'user59', '안녕하세요58', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (59, 'user59', 'user60', '안녕하세요59', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (60, 'user60', 'user61', '안녕하세요60', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (61, 'user61', 'user62', '안녕하세요61', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (62, 'user62', 'user63', '안녕하세요62', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (63, 'user63', 'user64', '안녕하세요63', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (64, 'user64', 'user65', '안녕하세요64', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (65, 'user65', 'user66', '안녕하세요65', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (66, 'user66', 'user67', '안녕하세요66', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (67, 'user67', 'user68', '안녕하세요67', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (68, 'user68', 'user69', '안녕하세요68', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (69, 'user69', 'user70', '안녕하세요69', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (70, 'user70', 'user71', '안녕하세요70', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (71, 'user71', 'user72', '안녕하세요71', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (72, 'user72', 'user73', '안녕하세요72', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (73, 'user73', 'user74', '안녕하세요73', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (74, 'user74', 'user75', '안녕하세요74', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (75, 'user75', 'user76', '안녕하세요75', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (76, 'user76', 'user77', '안녕하세요76', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (77, 'user77', 'user78', '안녕하세요77', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (78, 'user78', 'user79', '안녕하세요78', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (79, 'user79', 'user80', '안녕하세요79', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (80, 'user80', 'user81', '안녕하세요80', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (81, 'user81', 'user82', '안녕하세요81', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (82, 'user82', 'user83', '안녕하세요82', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (83, 'user83', 'user84', '안녕하세요83', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (84, 'user84', 'user85', '안녕하세요84', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (85, 'user85', 'user86', '안녕하세요85', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (86, 'user86', 'user87', '안녕하세요86', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (87, 'user87', 'user88', '안녕하세요87', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (88, 'user88', 'user89', '안녕하세요88', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (89, 'user89', 'user90', '안녕하세요89', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (90, 'user90', 'user91', '안녕하세요90', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (91, 'user91', 'user92', '안녕하세요91', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (92, 'user92', 'user93', '안녕하세요92', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (93, 'user93', 'user94', '안녕하세요93', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (94, 'user94', 'user95', '안녕하세요94', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (95, 'user95', 'user96', '안녕하세요95', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (96, 'user96', 'user97', '안녕하세요96', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (97, 'user97', 'user98', '안녕하세요97', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (98, 'user98', 'user99', '안녕하세요98', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (99, 'user99', 'user100', '안녕하세요99', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (100, 'user100', 'user1', '안녕하세요100', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');



--공지사항이미지
CREATE TABLE tblNoticeImg (
	notice_img_seq	NUMBER	NOT NULL,
	notice_seq	number	NOT NULL,
	path varchar2(4000)	NOT NULL
); --나중에
CREATE SEQUENCE notice_img_seq;


INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (1, 1, 'img1');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (2, 2, 'img2');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (3, 3, 'img3');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (4, 4, 'img4');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (5, 5, 'img5');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (6, 6, 'img6');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (7, 7, 'img7');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (8, 8, 'img8');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (9, 9, 'img9');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (10, 10, 'img10');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (11, 11, 'img11');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (12, 12, 'img12');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (13, 13, 'img13');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (14, 14, 'img14');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (15, 15, 'img15');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (16, 16, 'img16');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (17, 17, 'img17');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (18, 18, 'img18');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (19, 19, 'img19');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (20, 20, 'img20');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (21, 21, 'img21');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (22, 22, 'img22');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (23, 23, 'img23');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (24, 24, 'img24');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (25, 25, 'img25');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (26, 26, 'img26');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (27, 27, 'img27');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (28, 28, 'img28');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (29, 29, 'img29');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (30, 30, 'img30');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (31, 31, 'img31');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (32, 32, 'img32');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (33, 33, 'img33');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (34, 34, 'img34');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (35, 35, 'img35');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (36, 36, 'img36');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (37, 37, 'img37');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (38, 38, 'img38');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (39, 39, 'img39');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (40, 40, 'img40');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (41, 41, 'img41');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (42, 42, 'img42');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (43, 43, 'img43');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (44, 44, 'img44');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (45, 45, 'img45');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (46, 46, 'img46');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (47, 47, 'img47');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (48, 48, 'img48');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (49, 49, 'img49');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (50, 50, 'img50');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (51, 51, 'img51');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (52, 52, 'img52');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (53, 53, 'img53');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (54, 54, 'img54');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (55, 55, 'img55');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (56, 56, 'img56');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (57, 57, 'img57');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (58, 58, 'img58');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (59, 59, 'img59');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (60, 60, 'img60');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (61, 61, 'img61');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (62, 62, 'img62');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (63, 63, 'img63');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (64, 64, 'img64');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (65, 65, 'img65');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (66, 66, 'img66');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (67, 67, 'img67');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (68, 68, 'img68');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (69, 69, 'img69');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (70, 70, 'img70');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (71, 71, 'img71');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (72, 72, 'img72');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (73, 73, 'img73');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (74, 74, 'img74');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (75, 75, 'img75');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (76, 76, 'img76');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (77, 77, 'img77');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (78, 78, 'img78');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (79, 79, 'img79');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (80, 80, 'img80');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (81, 81, 'img81');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (82, 82, 'img82');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (83, 83, 'img83');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (84, 84, 'img84');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (85, 85, 'img85');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (86, 86, 'img86');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (87, 87, 'img87');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (88, 88, 'img88');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (89, 89, 'img89');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (90, 90, 'img90');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (91, 91, 'img91');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (92, 92, 'img92');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (93, 93, 'img93');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (94, 94, 'img94');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (95, 95, 'img95');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (96, 96, 'img96');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (97, 97, 'img97');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (98, 98, 'img98');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (99, 99, 'img99');

INSERT INTO TBLNOTICEIMG (NOTICE_IMG_SEQ, NOTICE_SEQ, PATH) 
VALUES (100, 100, 'img100');



--상품댓글
CREATE TABLE tblProductComment (
	product_comment_seq	NUMBER NOT NULL,
	product_seq	NUMBER NOT NULL,
	id VARCHAR2(100) NOT NULL,
	comments VARCHAR2(4000) NOT NULL, --100자
	time DATE DEFAULT sysdate NOT NULL 
); --100개
CREATE SEQUENCE product_comment_seq;

ALTER TABLE tblProductImage ADD CONSTRAINT PK_TBLPRODUCTIMAGE PRIMARY KEY (product_img_seq);

ALTER TABLE tblSearch ADD CONSTRAINT PK_TBLSEARCH PRIMARY KEY (search_seq);

ALTER TABLE tblMessage ADD CONSTRAINT PK_TBLMESSAGE PRIMARY KEY (message_seq);

ALTER TABLE tblNoticeImg ADD CONSTRAINT PK_TBLNOTICEIMG PRIMARY KEY (notice_img_seq);

ALTER TABLE tblProductComment ADD CONSTRAINT PK_TBLPRODUCTCOMMENT PRIMARY KEY (product_comment_seq);

ALTER TABLE tblProductImage ADD CONSTRAINT FK_tblP_TO_tblPImage FOREIGN KEY (product_seq)
REFERENCES tblProduct (product_seq);

ALTER TABLE tblMessage ADD CONSTRAINT FK_send_id FOREIGN KEY (sender_id)
REFERENCES tblUser (id);

ALTER TABLE tblMessage ADD CONSTRAINT FK_receive_id FOREIGN KEY (receiver_id)
REFERENCES tblUser (id);

ALTER TABLE tblNoticeImg ADD CONSTRAINT FK_tblN_TO_tblNImg FOREIGN KEY (notice_seq)
REFERENCES tblNotice (notice_seq);

ALTER TABLE tblProductComment ADD CONSTRAINT FK_tblP_TO_tblPComment FOREIGN KEY (product_seq)
REFERENCES tblProduct (product_seq);

ALTER TABLE tblProductComment ADD CONSTRAINT FK_tblUser_TO_tblPComment FOREIGN KEY (id)
REFERENCES tblUser (id);

ALTER TABLE tblMessage ADD CONSTRAINT CK_tblMessage_check check(is_check in ('N','Y'));



INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (1, 1, 'user1', '감사합니다1', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (2, 2, 'user2', '감사합니다2', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (3, 3, 'user3', '감사합니다3', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (4, 4, 'user4', '감사합니다4', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (5, 5, 'user5', '감사합니다5', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (6, 6, 'user6', '감사합니다6', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (7, 7, 'user7', '감사합니다7', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (8, 8, 'user8', '감사합니다8', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (9, 9, 'user9', '감사합니다9', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (10, 10, 'user10', '감사합니다10', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (11, 11, 'user11', '감사합니다11', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (12, 12, 'user12', '감사합니다12', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (13, 13, 'user13', '감사합니다13', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (14, 14, 'user14', '감사합니다14', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (15, 15, 'user15', '감사합니다15', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (16, 16, 'user16', '감사합니다16', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (17, 17, 'user17', '감사합니다17', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (18, 18, 'user18', '감사합니다18', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (19, 19, 'user19', '감사합니다19', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (20, 20, 'user20', '감사합니다20', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (21, 21, 'user21', '감사합니다21', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (22, 22, 'user22', '감사합니다22', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (23, 23, 'user23', '감사합니다23', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (24, 24, 'user24', '감사합니다24', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (25, 25, 'user25', '감사합니다25', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (26, 26, 'user26', '감사합니다26', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (27, 27, 'user27', '감사합니다27', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (28, 28, 'user28', '감사합니다28', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (29, 29, 'user29', '감사합니다29', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (30, 30, 'user30', '감사합니다30', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (31, 31, 'user31', '감사합니다31', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (32, 32, 'user32', '감사합니다32', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (33, 33, 'user33', '감사합니다33', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (34, 34, 'user34', '감사합니다34', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (35, 35, 'user35', '감사합니다35', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (36, 36, 'user36', '감사합니다36', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (37, 37, 'user37', '감사합니다37', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (38, 38, 'user38', '감사합니다38', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (39, 39, 'user39', '감사합니다39', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (40, 40, 'user40', '감사합니다40', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (41, 41, 'user41', '감사합니다41', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (42, 42, 'user42', '감사합니다42', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (43, 43, 'user43', '감사합니다43', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (44, 44, 'user44', '감사합니다44', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (45, 45, 'user45', '감사합니다45', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (46, 46, 'user46', '감사합니다46', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (47, 47, 'user47', '감사합니다47', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (48, 48, 'user48', '감사합니다48', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (49, 49, 'user49', '감사합니다49', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (50, 50, 'user50', '감사합니다50', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (51, 51, 'user51', '감사합니다51', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (52, 52, 'user52', '감사합니다52', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (53, 53, 'user53', '감사합니다53', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (54, 54, 'user54', '감사합니다54', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (55, 55, 'user55', '감사합니다55', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (56, 56, 'user56', '감사합니다56', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (57, 57, 'user57', '감사합니다57', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (58, 58, 'user58', '감사합니다58', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (59, 59, 'user59', '감사합니다59', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (60, 60, 'user60', '감사합니다60', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (61, 61, 'user61', '감사합니다61', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (62, 62, 'user62', '감사합니다62', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (63, 63, 'user63', '감사합니다63', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (64, 64, 'user64', '감사합니다64', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (65, 65, 'user65', '감사합니다65', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (66, 66, 'user66', '감사합니다66', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (67, 67, 'user67', '감사합니다67', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (68, 68, 'user68', '감사합니다68', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (69, 69, 'user69', '감사합니다69', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (70, 70, 'user70', '감사합니다70', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (71, 71, 'user71', '감사합니다71', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (72, 72, 'user72', '감사합니다72', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (73, 73, 'user73', '감사합니다73', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (74, 74, 'user74', '감사합니다74', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (75, 75, 'user75', '감사합니다75', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (76, 76, 'user76', '감사합니다76', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (77, 77, 'user77', '감사합니다77', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (78, 78, 'user78', '감사합니다78', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (79, 79, 'user79', '감사합니다79', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (80, 80, 'user80', '감사합니다80', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (81, 81, 'user81', '감사합니다81', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (82, 82, 'user82', '감사합니다82', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (83, 83, 'user83', '감사합니다83', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (84, 84, 'user84', '감사합니다84', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (85, 85, 'user85', '감사합니다85', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (86, 86, 'user86', '감사합니다86', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (87, 87, 'user87', '감사합니다87', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (88, 88, 'user88', '감사합니다88', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (89, 89, 'user89', '감사합니다89', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (90, 90, 'user90', '감사합니다90', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (91, 91, 'user91', '감사합니다91', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (92, 92, 'user92', '감사합니다92', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (93, 93, 'user93', '감사합니다93', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (94, 94, 'user94', '감사합니다94', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (95, 95, 'user95', '감사합니다95', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (96, 96, 'user96', '감사합니다96', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (97, 97, 'user97', '감사합니다97', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (98, 98, 'user98', '감사합니다98', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (99, 99, 'user99', '감사합니다99', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (100, 100, 'user100', '감사합니다100', to_date('09/09/2021', 'MM/DD/RRRR'));




-- 접속 테이블
CREATE TABLE tblvisit (
	regdate	DATE DEFAULT sysdate NOT NULL,--2020~
	COUNT NUMBER DEFAULT 0 NOT NULL --1000~5000
); --100
ALTER TABLE tblvisit ADD CONSTRAINT tblv_regdate_pk PRIMARY KEY (regdate);
-- 접속 테이블

insert into tblvisit(regdate,count) values ('2020-01-01',1426);
insert into tblvisit(regdate,count) values ('2020-01-02',3589);
insert into tblvisit(regdate,count) values ('2020-01-03',1540);
insert into tblvisit(regdate,count) values ('2020-01-04',3791);
insert into tblvisit(regdate,count) values ('2020-01-05',4214);
insert into tblvisit(regdate,count) values ('2020-01-06',4791);
insert into tblvisit(regdate,count) values ('2020-01-07',4384);
insert into tblvisit(regdate,count) values ('2020-01-08',4391);
insert into tblvisit(regdate,count) values ('2020-01-09',2265);
insert into tblvisit(regdate,count) values ('2020-01-10',1417);
insert into tblvisit(regdate,count) values ('2020-01-11',3137);
insert into tblvisit(regdate,count) values ('2020-01-12',1799);
insert into tblvisit(regdate,count) values ('2020-01-13',3804);
insert into tblvisit(regdate,count) values ('2020-01-14',4991);
insert into tblvisit(regdate,count) values ('2020-01-15',1999);
insert into tblvisit(regdate,count) values ('2020-01-16',3247);
insert into tblvisit(regdate,count) values ('2020-01-17',3641);
insert into tblvisit(regdate,count) values ('2020-01-18',3619);
insert into tblvisit(regdate,count) values ('2020-01-19',4830);
insert into tblvisit(regdate,count) values ('2020-01-20',1993);
insert into tblvisit(regdate,count) values ('2020-01-21',1354);
insert into tblvisit(regdate,count) values ('2020-01-22',1869);
insert into tblvisit(regdate,count) values ('2020-01-23',4002);
insert into tblvisit(regdate,count) values ('2020-01-24',3704);
insert into tblvisit(regdate,count) values ('2020-01-25',2227);
insert into tblvisit(regdate,count) values ('2020-01-26',3667);
insert into tblvisit(regdate,count) values ('2020-01-27',4875);
insert into tblvisit(regdate,count) values ('2020-01-28',4918);
insert into tblvisit(regdate,count) values ('2020-01-29',2139);
insert into tblvisit(regdate,count) values ('2020-01-30',2282);
insert into tblvisit(regdate,count) values ('2020-01-31',1991);
insert into tblvisit(regdate,count) values ('2020-02-01',4729);
insert into tblvisit(regdate,count) values ('2020-02-02',3068);
insert into tblvisit(regdate,count) values ('2020-02-03',2271);
insert into tblvisit(regdate,count) values ('2020-02-04',4646);
insert into tblvisit(regdate,count) values ('2020-02-05',3667);
insert into tblvisit(regdate,count) values ('2020-02-06',4995);
insert into tblvisit(regdate,count) values ('2020-02-07',4503);
insert into tblvisit(regdate,count) values ('2020-02-08',2687);
insert into tblvisit(regdate,count) values ('2020-02-09',3476);
insert into tblvisit(regdate,count) values ('2020-02-10',1687);
insert into tblvisit(regdate,count) values ('2020-02-11',1938);
insert into tblvisit(regdate,count) values ('2020-02-12',3625);
insert into tblvisit(regdate,count) values ('2020-02-13',4083);
insert into tblvisit(regdate,count) values ('2020-02-14',2440);
insert into tblvisit(regdate,count) values ('2020-02-15',1532);
insert into tblvisit(regdate,count) values ('2020-02-16',3713);
insert into tblvisit(regdate,count) values ('2020-02-17',2359);
insert into tblvisit(regdate,count) values ('2020-02-18',4363);
insert into tblvisit(regdate,count) values ('2020-02-19',1733);
insert into tblvisit(regdate,count) values ('2020-02-20',4096);
insert into tblvisit(regdate,count) values ('2020-02-21',3109);
insert into tblvisit(regdate,count) values ('2020-02-22',3898);
insert into tblvisit(regdate,count) values ('2020-02-23',4121);
insert into tblvisit(regdate,count) values ('2020-02-24',1656);
insert into tblvisit(regdate,count) values ('2020-02-25',2967);
insert into tblvisit(regdate,count) values ('2020-02-26',1433);
insert into tblvisit(regdate,count) values ('2020-02-27',1561);
insert into tblvisit(regdate,count) values ('2020-02-28',4306);
insert into tblvisit(regdate,count) values ('2020-02-29',4586);
insert into tblvisit(regdate,count) values ('2020-03-01',4416);
insert into tblvisit(regdate,count) values ('2020-03-02',4154);
insert into tblvisit(regdate,count) values ('2020-03-03',2963);
insert into tblvisit(regdate,count) values ('2020-03-04',3690);
insert into tblvisit(regdate,count) values ('2020-03-05',4765);
insert into tblvisit(regdate,count) values ('2020-03-06',2370);
insert into tblvisit(regdate,count) values ('2020-03-07',1958);
insert into tblvisit(regdate,count) values ('2020-03-08',4495);
insert into tblvisit(regdate,count) values ('2020-03-09',4565);
insert into tblvisit(regdate,count) values ('2020-03-10',3347);
insert into tblvisit(regdate,count) values ('2020-03-11',2172);
insert into tblvisit(regdate,count) values ('2020-03-12',2506);
insert into tblvisit(regdate,count) values ('2020-03-13',4497);
insert into tblvisit(regdate,count) values ('2020-03-14',4339);
insert into tblvisit(regdate,count) values ('2020-03-15',3795);
insert into tblvisit(regdate,count) values ('2020-03-16',3716);
insert into tblvisit(regdate,count) values ('2020-03-17',4415);
insert into tblvisit(regdate,count) values ('2020-03-18',4151);
insert into tblvisit(regdate,count) values ('2020-03-19',1819);
insert into tblvisit(regdate,count) values ('2020-03-20',1817);
insert into tblvisit(regdate,count) values ('2020-03-21',1014);
insert into tblvisit(regdate,count) values ('2020-03-22',1623);
insert into tblvisit(regdate,count) values ('2020-03-23',1678);
insert into tblvisit(regdate,count) values ('2020-03-24',1124);
insert into tblvisit(regdate,count) values ('2020-03-25',4576);
insert into tblvisit(regdate,count) values ('2020-03-26',3504);
insert into tblvisit(regdate,count) values ('2020-03-27',4455);
insert into tblvisit(regdate,count) values ('2020-03-28',1338);
insert into tblvisit(regdate,count) values ('2020-03-29',1766);
insert into tblvisit(regdate,count) values ('2020-03-30',4270);
insert into tblvisit(regdate,count) values ('2020-03-31',4510);
insert into tblvisit(regdate,count) values ('2020-04-01',1420);
insert into tblvisit(regdate,count) values ('2020-04-02',3249);
insert into tblvisit(regdate,count) values ('2020-04-03',2247);
insert into tblvisit(regdate,count) values ('2020-04-04',4954);
insert into tblvisit(regdate,count) values ('2020-04-05',2503);
insert into tblvisit(regdate,count) values ('2020-04-06',4348);
insert into tblvisit(regdate,count) values ('2020-04-07',1986);
insert into tblvisit(regdate,count) values ('2020-04-08',1147);
insert into tblvisit(regdate,count) values ('2020-04-09',4660);
insert into tblvisit(regdate,count) values ('2020-04-10',3708);
insert into tblvisit(regdate,count) values ('2020-04-11',4944);
insert into tblvisit(regdate,count) values ('2020-04-12',2854);
insert into tblvisit(regdate,count) values ('2020-04-13',1164);
insert into tblvisit(regdate,count) values ('2020-04-14',3756);
insert into tblvisit(regdate,count) values ('2020-04-15',4026);
insert into tblvisit(regdate,count) values ('2020-04-16',2007);
insert into tblvisit(regdate,count) values ('2020-04-17',3655);
insert into tblvisit(regdate,count) values ('2020-04-18',3225);
insert into tblvisit(regdate,count) values ('2020-04-19',2597);
insert into tblvisit(regdate,count) values ('2020-04-20',2936);
insert into tblvisit(regdate,count) values ('2020-04-21',2011);
insert into tblvisit(regdate,count) values ('2020-04-22',3538);
insert into tblvisit(regdate,count) values ('2020-04-23',1295);
insert into tblvisit(regdate,count) values ('2020-04-24',1393);
insert into tblvisit(regdate,count) values ('2020-04-25',4265);
insert into tblvisit(regdate,count) values ('2020-04-26',1354);
insert into tblvisit(regdate,count) values ('2020-04-27',2734);
insert into tblvisit(regdate,count) values ('2020-04-28',2781);
insert into tblvisit(regdate,count) values ('2020-04-29',3025);
insert into tblvisit(regdate,count) values ('2020-04-30',1988);
insert into tblvisit(regdate,count) values ('2020-05-01',1020);
insert into tblvisit(regdate,count) values ('2020-05-02',3608);
insert into tblvisit(regdate,count) values ('2020-05-03',2598);
insert into tblvisit(regdate,count) values ('2020-05-04',4014);
insert into tblvisit(regdate,count) values ('2020-05-05',4791);
insert into tblvisit(regdate,count) values ('2020-05-06',4561);
insert into tblvisit(regdate,count) values ('2020-05-07',2099);
insert into tblvisit(regdate,count) values ('2020-05-08',1255);
insert into tblvisit(regdate,count) values ('2020-05-09',1552);
insert into tblvisit(regdate,count) values ('2020-05-10',4749);
insert into tblvisit(regdate,count) values ('2020-05-11',2648);
insert into tblvisit(regdate,count) values ('2020-05-12',2083);
insert into tblvisit(regdate,count) values ('2020-05-13',4375);
insert into tblvisit(regdate,count) values ('2020-05-14',2046);
insert into tblvisit(regdate,count) values ('2020-05-15',3173);
insert into tblvisit(regdate,count) values ('2020-05-16',2162);
insert into tblvisit(regdate,count) values ('2020-05-17',1998);
insert into tblvisit(regdate,count) values ('2020-05-18',4920);
insert into tblvisit(regdate,count) values ('2020-05-19',1072);
insert into tblvisit(regdate,count) values ('2020-05-20',3125);
insert into tblvisit(regdate,count) values ('2020-05-21',1157);
insert into tblvisit(regdate,count) values ('2020-05-22',2511);
insert into tblvisit(regdate,count) values ('2020-05-23',4126);
insert into tblvisit(regdate,count) values ('2020-05-24',3271);
insert into tblvisit(regdate,count) values ('2020-05-25',3177);
insert into tblvisit(regdate,count) values ('2020-05-26',4989);
insert into tblvisit(regdate,count) values ('2020-05-27',3245);
insert into tblvisit(regdate,count) values ('2020-05-28',1383);
insert into tblvisit(regdate,count) values ('2020-05-29',1764);
insert into tblvisit(regdate,count) values ('2020-05-30',3747);
insert into tblvisit(regdate,count) values ('2020-05-31',4844);
insert into tblvisit(regdate,count) values ('2020-06-01',2574);
insert into tblvisit(regdate,count) values ('2020-06-02',3952);
insert into tblvisit(regdate,count) values ('2020-06-03',1345);
insert into tblvisit(regdate,count) values ('2020-06-04',3695);
insert into tblvisit(regdate,count) values ('2020-06-05',1988);
insert into tblvisit(regdate,count) values ('2020-06-06',3321);
insert into tblvisit(regdate,count) values ('2020-06-07',2417);
insert into tblvisit(regdate,count) values ('2020-06-08',1554);
insert into tblvisit(regdate,count) values ('2020-06-09',4118);
insert into tblvisit(regdate,count) values ('2020-06-10',4640);
insert into tblvisit(regdate,count) values ('2020-06-11',1576);
insert into tblvisit(regdate,count) values ('2020-06-12',1412);
insert into tblvisit(regdate,count) values ('2020-06-13',1097);
insert into tblvisit(regdate,count) values ('2020-06-14',3359);
insert into tblvisit(regdate,count) values ('2020-06-15',4720);
insert into tblvisit(regdate,count) values ('2020-06-16',2509);
insert into tblvisit(regdate,count) values ('2020-06-17',4849);
insert into tblvisit(regdate,count) values ('2020-06-18',3568);
insert into tblvisit(regdate,count) values ('2020-06-19',3178);
insert into tblvisit(regdate,count) values ('2020-06-20',4215);
insert into tblvisit(regdate,count) values ('2020-06-21',1978);
insert into tblvisit(regdate,count) values ('2020-06-22',2245);
insert into tblvisit(regdate,count) values ('2020-06-23',4837);
insert into tblvisit(regdate,count) values ('2020-06-24',3617);
insert into tblvisit(regdate,count) values ('2020-06-25',3897);
insert into tblvisit(regdate,count) values ('2020-06-26',2547);
insert into tblvisit(regdate,count) values ('2020-06-27',4666);
insert into tblvisit(regdate,count) values ('2020-06-28',3143);
insert into tblvisit(regdate,count) values ('2020-06-29',4087);
insert into tblvisit(regdate,count) values ('2020-06-30',1969);
insert into tblvisit(regdate,count) values ('2020-07-01',2442);
insert into tblvisit(regdate,count) values ('2020-07-02',1069);
insert into tblvisit(regdate,count) values ('2020-07-03',4920);
insert into tblvisit(regdate,count) values ('2020-07-04',2173);
insert into tblvisit(regdate,count) values ('2020-07-05',3944);
insert into tblvisit(regdate,count) values ('2020-07-06',3535);
insert into tblvisit(regdate,count) values ('2020-07-07',2045);
insert into tblvisit(regdate,count) values ('2020-07-08',2019);
insert into tblvisit(regdate,count) values ('2020-07-09',3766);
insert into tblvisit(regdate,count) values ('2020-07-10',3270);
insert into tblvisit(regdate,count) values ('2020-07-11',2218);
insert into tblvisit(regdate,count) values ('2020-07-12',1984);
insert into tblvisit(regdate,count) values ('2020-07-13',4850);
insert into tblvisit(regdate,count) values ('2020-07-14',1678);
insert into tblvisit(regdate,count) values ('2020-07-15',3584);
insert into tblvisit(regdate,count) values ('2020-07-16',1183);
insert into tblvisit(regdate,count) values ('2020-07-17',4573);
insert into tblvisit(regdate,count) values ('2020-07-18',3519);
insert into tblvisit(regdate,count) values ('2020-07-19',4753);
insert into tblvisit(regdate,count) values ('2020-07-20',4335);
insert into tblvisit(regdate,count) values ('2020-07-21',3685);
insert into tblvisit(regdate,count) values ('2020-07-22',3093);
insert into tblvisit(regdate,count) values ('2020-07-23',3330);
insert into tblvisit(regdate,count) values ('2020-07-24',3742);
insert into tblvisit(regdate,count) values ('2020-07-25',3759);
insert into tblvisit(regdate,count) values ('2020-07-26',1440);
insert into tblvisit(regdate,count) values ('2020-07-27',4160);
insert into tblvisit(regdate,count) values ('2020-07-28',1410);
insert into tblvisit(regdate,count) values ('2020-07-29',4374);
insert into tblvisit(regdate,count) values ('2020-07-30',4180);
insert into tblvisit(regdate,count) values ('2020-07-31',3313);
insert into tblvisit(regdate,count) values ('2020-08-01',4391);
insert into tblvisit(regdate,count) values ('2020-08-02',1202);
insert into tblvisit(regdate,count) values ('2020-08-03',1505);
insert into tblvisit(regdate,count) values ('2020-08-04',4723);
insert into tblvisit(regdate,count) values ('2020-08-05',2901);
insert into tblvisit(regdate,count) values ('2020-08-06',3062);
insert into tblvisit(regdate,count) values ('2020-08-07',4249);
insert into tblvisit(regdate,count) values ('2020-08-08',2383);
insert into tblvisit(regdate,count) values ('2020-08-09',2910);
insert into tblvisit(regdate,count) values ('2020-08-10',4615);
insert into tblvisit(regdate,count) values ('2020-08-11',1903);
insert into tblvisit(regdate,count) values ('2020-08-12',4988);
insert into tblvisit(regdate,count) values ('2020-08-13',3277);
insert into tblvisit(regdate,count) values ('2020-08-14',1093);
insert into tblvisit(regdate,count) values ('2020-08-15',3669);
insert into tblvisit(regdate,count) values ('2020-08-16',1924);
insert into tblvisit(regdate,count) values ('2020-08-17',1679);
insert into tblvisit(regdate,count) values ('2020-08-18',4677);
insert into tblvisit(regdate,count) values ('2020-08-19',2321);
insert into tblvisit(regdate,count) values ('2020-08-20',4837);
insert into tblvisit(regdate,count) values ('2020-08-21',3888);
insert into tblvisit(regdate,count) values ('2020-08-22',2597);
insert into tblvisit(regdate,count) values ('2020-08-23',1590);
insert into tblvisit(regdate,count) values ('2020-08-24',2001);
insert into tblvisit(regdate,count) values ('2020-08-25',2519);
insert into tblvisit(regdate,count) values ('2020-08-26',1413);
insert into tblvisit(regdate,count) values ('2020-08-27',3196);
insert into tblvisit(regdate,count) values ('2020-08-28',3236);
insert into tblvisit(regdate,count) values ('2020-08-29',2372);
insert into tblvisit(regdate,count) values ('2020-08-30',3286);
insert into tblvisit(regdate,count) values ('2020-08-31',4087);
insert into tblvisit(regdate,count) values ('2020-09-01',3523);
insert into tblvisit(regdate,count) values ('2020-09-02',1999);
insert into tblvisit(regdate,count) values ('2020-09-03',4467);
insert into tblvisit(regdate,count) values ('2020-09-04',1238);
insert into tblvisit(regdate,count) values ('2020-09-05',3288);
insert into tblvisit(regdate,count) values ('2020-09-06',2208);
insert into tblvisit(regdate,count) values ('2020-09-07',2983);
insert into tblvisit(regdate,count) values ('2020-09-08',2075);
insert into tblvisit(regdate,count) values ('2020-09-09',4438);
insert into tblvisit(regdate,count) values ('2020-09-10',3584);
insert into tblvisit(regdate,count) values ('2020-09-11',4193);
insert into tblvisit(regdate,count) values ('2020-09-12',1455);
insert into tblvisit(regdate,count) values ('2020-09-13',1981);
insert into tblvisit(regdate,count) values ('2020-09-14',4178);
insert into tblvisit(regdate,count) values ('2020-09-15',2092);
insert into tblvisit(regdate,count) values ('2020-09-16',1767);
insert into tblvisit(regdate,count) values ('2020-09-17',3712);
insert into tblvisit(regdate,count) values ('2020-09-18',4011);
insert into tblvisit(regdate,count) values ('2020-09-19',2540);
insert into tblvisit(regdate,count) values ('2020-09-20',4922);
insert into tblvisit(regdate,count) values ('2020-09-21',1944);
insert into tblvisit(regdate,count) values ('2020-09-22',3599);
insert into tblvisit(regdate,count) values ('2020-09-23',3262);
insert into tblvisit(regdate,count) values ('2020-09-24',4108);
insert into tblvisit(regdate,count) values ('2020-09-25',2858);
insert into tblvisit(regdate,count) values ('2020-09-26',4964);
insert into tblvisit(regdate,count) values ('2020-09-27',1305);
insert into tblvisit(regdate,count) values ('2020-09-28',3650);
insert into tblvisit(regdate,count) values ('2020-09-29',3350);
insert into tblvisit(regdate,count) values ('2020-09-30',2467);
insert into tblvisit(regdate,count) values ('2020-10-01',3150);
insert into tblvisit(regdate,count) values ('2020-10-02',4663);
insert into tblvisit(regdate,count) values ('2020-10-03',2407);
insert into tblvisit(regdate,count) values ('2020-10-04',4843);
insert into tblvisit(regdate,count) values ('2020-10-05',4037);
insert into tblvisit(regdate,count) values ('2020-10-06',1864);
insert into tblvisit(regdate,count) values ('2020-10-07',2605);
insert into tblvisit(regdate,count) values ('2020-10-08',2593);
insert into tblvisit(regdate,count) values ('2020-10-09',4857);
insert into tblvisit(regdate,count) values ('2020-10-10',1811);
insert into tblvisit(regdate,count) values ('2020-10-11',3851);
insert into tblvisit(regdate,count) values ('2020-10-12',4258);
insert into tblvisit(regdate,count) values ('2020-10-13',3692);
insert into tblvisit(regdate,count) values ('2020-10-14',3122);
insert into tblvisit(regdate,count) values ('2020-10-15',3259);
insert into tblvisit(regdate,count) values ('2020-10-16',1351);
insert into tblvisit(regdate,count) values ('2020-10-17',2458);
insert into tblvisit(regdate,count) values ('2020-10-18',4256);
insert into tblvisit(regdate,count) values ('2020-10-19',1391);
insert into tblvisit(regdate,count) values ('2020-10-20',1636);
insert into tblvisit(regdate,count) values ('2020-10-21',2351);
insert into tblvisit(regdate,count) values ('2020-10-22',3000);
insert into tblvisit(regdate,count) values ('2020-10-23',2583);
insert into tblvisit(regdate,count) values ('2020-10-24',2328);
insert into tblvisit(regdate,count) values ('2020-10-25',2551);
insert into tblvisit(regdate,count) values ('2020-10-26',3367);
insert into tblvisit(regdate,count) values ('2020-10-27',2912);
insert into tblvisit(regdate,count) values ('2020-10-28',4432);
insert into tblvisit(regdate,count) values ('2020-10-29',4793);
insert into tblvisit(regdate,count) values ('2020-10-30',1303);
insert into tblvisit(regdate,count) values ('2020-10-31',3374);
insert into tblvisit(regdate,count) values ('2020-11-01',1982);
insert into tblvisit(regdate,count) values ('2020-11-02',2650);
insert into tblvisit(regdate,count) values ('2020-11-03',3627);
insert into tblvisit(regdate,count) values ('2020-11-04',3192);
insert into tblvisit(regdate,count) values ('2020-11-05',4136);
insert into tblvisit(regdate,count) values ('2020-11-06',4356);
insert into tblvisit(regdate,count) values ('2020-11-07',3745);
insert into tblvisit(regdate,count) values ('2020-11-08',4993);
insert into tblvisit(regdate,count) values ('2020-11-09',2590);
insert into tblvisit(regdate,count) values ('2020-11-10',4731);
insert into tblvisit(regdate,count) values ('2020-11-11',3668);
insert into tblvisit(regdate,count) values ('2020-11-12',2195);
insert into tblvisit(regdate,count) values ('2020-11-13',4972);
insert into tblvisit(regdate,count) values ('2020-11-14',1901);
insert into tblvisit(regdate,count) values ('2020-11-15',1481);
insert into tblvisit(regdate,count) values ('2020-11-16',3521);
insert into tblvisit(regdate,count) values ('2020-11-17',2716);
insert into tblvisit(regdate,count) values ('2020-11-18',3812);
insert into tblvisit(regdate,count) values ('2020-11-19',2031);
insert into tblvisit(regdate,count) values ('2020-11-20',4649);
insert into tblvisit(regdate,count) values ('2020-11-21',3733);
insert into tblvisit(regdate,count) values ('2020-11-22',2958);
insert into tblvisit(regdate,count) values ('2020-11-23',1123);
insert into tblvisit(regdate,count) values ('2020-11-24',1135);
insert into tblvisit(regdate,count) values ('2020-11-25',4707);
insert into tblvisit(regdate,count) values ('2020-11-26',1540);
insert into tblvisit(regdate,count) values ('2020-11-27',1124);
insert into tblvisit(regdate,count) values ('2020-11-28',2857);
insert into tblvisit(regdate,count) values ('2020-11-29',3896);
insert into tblvisit(regdate,count) values ('2020-11-30',3575);
insert into tblvisit(regdate,count) values ('2020-12-01',2286);
insert into tblvisit(regdate,count) values ('2020-12-02',4341);
insert into tblvisit(regdate,count) values ('2020-12-03',3736);
insert into tblvisit(regdate,count) values ('2020-12-04',3622);
insert into tblvisit(regdate,count) values ('2020-12-05',3059);
insert into tblvisit(regdate,count) values ('2020-12-06',4442);
insert into tblvisit(regdate,count) values ('2020-12-07',4987);
insert into tblvisit(regdate,count) values ('2020-12-08',1866);
insert into tblvisit(regdate,count) values ('2020-12-09',3359);
insert into tblvisit(regdate,count) values ('2020-12-10',1096);
insert into tblvisit(regdate,count) values ('2020-12-11',4506);
insert into tblvisit(regdate,count) values ('2020-12-12',4521);
insert into tblvisit(regdate,count) values ('2020-12-13',4259);
insert into tblvisit(regdate,count) values ('2020-12-14',3407);
insert into tblvisit(regdate,count) values ('2020-12-15',1024);
insert into tblvisit(regdate,count) values ('2020-12-16',4831);
insert into tblvisit(regdate,count) values ('2020-12-17',2925);
insert into tblvisit(regdate,count) values ('2020-12-18',1419);
insert into tblvisit(regdate,count) values ('2020-12-19',1501);
insert into tblvisit(regdate,count) values ('2020-12-20',3480);
insert into tblvisit(regdate,count) values ('2020-12-21',3439);
insert into tblvisit(regdate,count) values ('2020-12-22',2960);
insert into tblvisit(regdate,count) values ('2020-12-23',2225);
insert into tblvisit(regdate,count) values ('2020-12-24',2975);
insert into tblvisit(regdate,count) values ('2020-12-25',2295);
insert into tblvisit(regdate,count) values ('2020-12-26',4044);
insert into tblvisit(regdate,count) values ('2020-12-27',1466);
insert into tblvisit(regdate,count) values ('2020-12-28',2689);
insert into tblvisit(regdate,count) values ('2020-12-29',1344);
insert into tblvisit(regdate,count) values ('2020-12-30',1401);
insert into tblvisit(regdate,count) values ('2020-12-31',3641);
insert into tblvisit(regdate,count) values ('2021-01-01',2649);
insert into tblvisit(regdate,count) values ('2021-01-02',4561);
insert into tblvisit(regdate,count) values ('2021-01-03',1305);
insert into tblvisit(regdate,count) values ('2021-01-04',2147);
insert into tblvisit(regdate,count) values ('2021-01-05',2065);
insert into tblvisit(regdate,count) values ('2021-01-06',2661);
insert into tblvisit(regdate,count) values ('2021-01-07',1061);
insert into tblvisit(regdate,count) values ('2021-01-08',2617);
insert into tblvisit(regdate,count) values ('2021-01-09',3764);
insert into tblvisit(regdate,count) values ('2021-01-10',1023);
insert into tblvisit(regdate,count) values ('2021-01-11',4779);
insert into tblvisit(regdate,count) values ('2021-01-12',2375);
insert into tblvisit(regdate,count) values ('2021-01-13',2937);
insert into tblvisit(regdate,count) values ('2021-01-14',3779);
insert into tblvisit(regdate,count) values ('2021-01-15',1808);
insert into tblvisit(regdate,count) values ('2021-01-16',1378);
insert into tblvisit(regdate,count) values ('2021-01-17',2477);
insert into tblvisit(regdate,count) values ('2021-01-18',1977);
insert into tblvisit(regdate,count) values ('2021-01-19',3207);
insert into tblvisit(regdate,count) values ('2021-01-20',4570);
insert into tblvisit(regdate,count) values ('2021-01-21',3942);
insert into tblvisit(regdate,count) values ('2021-01-22',3910);
insert into tblvisit(regdate,count) values ('2021-01-23',3420);
insert into tblvisit(regdate,count) values ('2021-01-24',3794);
insert into tblvisit(regdate,count) values ('2021-01-25',4657);
insert into tblvisit(regdate,count) values ('2021-01-26',4911);
insert into tblvisit(regdate,count) values ('2021-01-27',3537);
insert into tblvisit(regdate,count) values ('2021-01-28',4661);
insert into tblvisit(regdate,count) values ('2021-01-29',1010);
insert into tblvisit(regdate,count) values ('2021-01-30',4650);
insert into tblvisit(regdate,count) values ('2021-01-31',4958);
insert into tblvisit(regdate,count) values ('2021-02-01',4664);
insert into tblvisit(regdate,count) values ('2021-02-02',1106);
insert into tblvisit(regdate,count) values ('2021-02-03',2893);
insert into tblvisit(regdate,count) values ('2021-02-04',1052);
insert into tblvisit(regdate,count) values ('2021-02-05',4496);
insert into tblvisit(regdate,count) values ('2021-02-06',3625);
insert into tblvisit(regdate,count) values ('2021-02-07',1605);
insert into tblvisit(regdate,count) values ('2021-02-08',3311);
insert into tblvisit(regdate,count) values ('2021-02-09',3498);
insert into tblvisit(regdate,count) values ('2021-02-10',2502);
insert into tblvisit(regdate,count) values ('2021-02-11',1629);
insert into tblvisit(regdate,count) values ('2021-02-12',2058);
insert into tblvisit(regdate,count) values ('2021-02-13',2607);
insert into tblvisit(regdate,count) values ('2021-02-14',2459);
insert into tblvisit(regdate,count) values ('2021-02-15',3050);
insert into tblvisit(regdate,count) values ('2021-02-16',4144);
insert into tblvisit(regdate,count) values ('2021-02-17',1652);
insert into tblvisit(regdate,count) values ('2021-02-18',4785);
insert into tblvisit(regdate,count) values ('2021-02-19',2328);
insert into tblvisit(regdate,count) values ('2021-02-20',4927);
insert into tblvisit(regdate,count) values ('2021-02-21',4675);
insert into tblvisit(regdate,count) values ('2021-02-22',3401);
insert into tblvisit(regdate,count) values ('2021-02-23',4766);
insert into tblvisit(regdate,count) values ('2021-02-24',1902);
insert into tblvisit(regdate,count) values ('2021-02-25',2527);
insert into tblvisit(regdate,count) values ('2021-02-26',4664);
insert into tblvisit(regdate,count) values ('2021-02-27',1404);
insert into tblvisit(regdate,count) values ('2021-02-28',4223);
insert into tblvisit(regdate,count) values ('2021-03-01',2481);
insert into tblvisit(regdate,count) values ('2021-03-02',1510);
insert into tblvisit(regdate,count) values ('2021-03-03',2626);
insert into tblvisit(regdate,count) values ('2021-03-04',3701);
insert into tblvisit(regdate,count) values ('2021-03-05',2555);
insert into tblvisit(regdate,count) values ('2021-03-06',4930);
insert into tblvisit(regdate,count) values ('2021-03-07',1067);
insert into tblvisit(regdate,count) values ('2021-03-08',4826);
insert into tblvisit(regdate,count) values ('2021-03-09',3826);
insert into tblvisit(regdate,count) values ('2021-03-10',1412);
insert into tblvisit(regdate,count) values ('2021-03-11',3747);
insert into tblvisit(regdate,count) values ('2021-03-12',4240);
insert into tblvisit(regdate,count) values ('2021-03-13',3185);
insert into tblvisit(regdate,count) values ('2021-03-14',3069);
insert into tblvisit(regdate,count) values ('2021-03-15',1807);
insert into tblvisit(regdate,count) values ('2021-03-16',4758);
insert into tblvisit(regdate,count) values ('2021-03-17',3317);
insert into tblvisit(regdate,count) values ('2021-03-18',4115);
insert into tblvisit(regdate,count) values ('2021-03-19',2321);
insert into tblvisit(regdate,count) values ('2021-03-20',4159);
insert into tblvisit(regdate,count) values ('2021-03-21',3292);
insert into tblvisit(regdate,count) values ('2021-03-22',2974);
insert into tblvisit(regdate,count) values ('2021-03-23',3558);
insert into tblvisit(regdate,count) values ('2021-03-24',4241);
insert into tblvisit(regdate,count) values ('2021-03-25',2334);
insert into tblvisit(regdate,count) values ('2021-03-26',3440);
insert into tblvisit(regdate,count) values ('2021-03-27',1627);
insert into tblvisit(regdate,count) values ('2021-03-28',3011);
insert into tblvisit(regdate,count) values ('2021-03-29',4258);
insert into tblvisit(regdate,count) values ('2021-03-30',4532);
insert into tblvisit(regdate,count) values ('2021-03-31',3229);
insert into tblvisit(regdate,count) values ('2021-04-01',3687);
insert into tblvisit(regdate,count) values ('2021-04-02',4176);
insert into tblvisit(regdate,count) values ('2021-04-03',4670);
insert into tblvisit(regdate,count) values ('2021-04-04',1001);
insert into tblvisit(regdate,count) values ('2021-04-05',4037);
insert into tblvisit(regdate,count) values ('2021-04-06',1126);
insert into tblvisit(regdate,count) values ('2021-04-07',2186);
insert into tblvisit(regdate,count) values ('2021-04-08',4551);
insert into tblvisit(regdate,count) values ('2021-04-09',2364);
insert into tblvisit(regdate,count) values ('2021-04-10',2619);
insert into tblvisit(regdate,count) values ('2021-04-11',4899);
insert into tblvisit(regdate,count) values ('2021-04-12',4686);
insert into tblvisit(regdate,count) values ('2021-04-13',1729);
insert into tblvisit(regdate,count) values ('2021-04-14',2259);
insert into tblvisit(regdate,count) values ('2021-04-15',4622);
insert into tblvisit(regdate,count) values ('2021-04-16',3622);
insert into tblvisit(regdate,count) values ('2021-04-17',3697);
insert into tblvisit(regdate,count) values ('2021-04-18',3655);
insert into tblvisit(regdate,count) values ('2021-04-19',4952);
insert into tblvisit(regdate,count) values ('2021-04-20',2553);
insert into tblvisit(regdate,count) values ('2021-04-21',3495);
insert into tblvisit(regdate,count) values ('2021-04-22',2574);
insert into tblvisit(regdate,count) values ('2021-04-23',3172);
insert into tblvisit(regdate,count) values ('2021-04-24',4383);
insert into tblvisit(regdate,count) values ('2021-04-25',3269);
insert into tblvisit(regdate,count) values ('2021-04-26',4867);
insert into tblvisit(regdate,count) values ('2021-04-27',2944);
insert into tblvisit(regdate,count) values ('2021-04-28',4355);
insert into tblvisit(regdate,count) values ('2021-04-29',1161);
insert into tblvisit(regdate,count) values ('2021-04-30',4365);
insert into tblvisit(regdate,count) values ('2021-05-01',1910);
insert into tblvisit(regdate,count) values ('2021-05-02',3256);
insert into tblvisit(regdate,count) values ('2021-05-03',2541);
insert into tblvisit(regdate,count) values ('2021-05-04',2476);
insert into tblvisit(regdate,count) values ('2021-05-05',3560);
insert into tblvisit(regdate,count) values ('2021-05-06',1675);
insert into tblvisit(regdate,count) values ('2021-05-07',3462);
insert into tblvisit(regdate,count) values ('2021-05-08',3918);
insert into tblvisit(regdate,count) values ('2021-05-09',4656);
insert into tblvisit(regdate,count) values ('2021-05-10',3568);
insert into tblvisit(regdate,count) values ('2021-05-11',1896);
insert into tblvisit(regdate,count) values ('2021-05-12',1703);
insert into tblvisit(regdate,count) values ('2021-05-13',1832);
insert into tblvisit(regdate,count) values ('2021-05-14',2572);
insert into tblvisit(regdate,count) values ('2021-05-15',1224);
insert into tblvisit(regdate,count) values ('2021-05-16',4435);
insert into tblvisit(regdate,count) values ('2021-05-17',4561);
insert into tblvisit(regdate,count) values ('2021-05-18',1047);
insert into tblvisit(regdate,count) values ('2021-05-19',4705);
insert into tblvisit(regdate,count) values ('2021-05-20',3942);
insert into tblvisit(regdate,count) values ('2021-05-21',3034);
insert into tblvisit(regdate,count) values ('2021-05-22',4949);
insert into tblvisit(regdate,count) values ('2021-05-23',2880);
insert into tblvisit(regdate,count) values ('2021-05-24',3106);
insert into tblvisit(regdate,count) values ('2021-05-25',4329);
insert into tblvisit(regdate,count) values ('2021-05-26',3476);
insert into tblvisit(regdate,count) values ('2021-05-27',1342);
insert into tblvisit(regdate,count) values ('2021-05-28',4905);
insert into tblvisit(regdate,count) values ('2021-05-29',2578);
insert into tblvisit(regdate,count) values ('2021-05-30',4253);
insert into tblvisit(regdate,count) values ('2021-05-31',3177);
insert into tblvisit(regdate,count) values ('2021-06-01',1067);
insert into tblvisit(regdate,count) values ('2021-06-02',1754);
insert into tblvisit(regdate,count) values ('2021-06-03',2803);
insert into tblvisit(regdate,count) values ('2021-06-04',3289);
insert into tblvisit(regdate,count) values ('2021-06-05',4549);
insert into tblvisit(regdate,count) values ('2021-06-06',2756);
insert into tblvisit(regdate,count) values ('2021-06-07',2282);
insert into tblvisit(regdate,count) values ('2021-06-08',2203);
insert into tblvisit(regdate,count) values ('2021-06-09',1624);
insert into tblvisit(regdate,count) values ('2021-06-10',1735);
insert into tblvisit(regdate,count) values ('2021-06-11',4155);
insert into tblvisit(regdate,count) values ('2021-06-12',2159);
insert into tblvisit(regdate,count) values ('2021-06-13',4301);
insert into tblvisit(regdate,count) values ('2021-06-14',4895);
insert into tblvisit(regdate,count) values ('2021-06-15',4616);
insert into tblvisit(regdate,count) values ('2021-06-16',2346);
insert into tblvisit(regdate,count) values ('2021-06-17',1819);
insert into tblvisit(regdate,count) values ('2021-06-18',2982);
insert into tblvisit(regdate,count) values ('2021-06-19',3184);
insert into tblvisit(regdate,count) values ('2021-06-20',4002);
insert into tblvisit(regdate,count) values ('2021-06-21',2035);
insert into tblvisit(regdate,count) values ('2021-06-22',4853);
insert into tblvisit(regdate,count) values ('2021-06-23',3743);
insert into tblvisit(regdate,count) values ('2021-06-24',2226);
insert into tblvisit(regdate,count) values ('2021-06-25',4916);
insert into tblvisit(regdate,count) values ('2021-06-26',3633);
insert into tblvisit(regdate,count) values ('2021-06-27',4759);
insert into tblvisit(regdate,count) values ('2021-06-28',4120);
insert into tblvisit(regdate,count) values ('2021-06-29',1196);
insert into tblvisit(regdate,count) values ('2021-06-30',3984);
insert into tblvisit(regdate,count) values ('2021-07-01',1519);
insert into tblvisit(regdate,count) values ('2021-07-02',1017);
insert into tblvisit(regdate,count) values ('2021-07-03',3269);
insert into tblvisit(regdate,count) values ('2021-07-04',2111);
insert into tblvisit(regdate,count) values ('2021-07-05',4769);
insert into tblvisit(regdate,count) values ('2021-07-06',1312);
insert into tblvisit(regdate,count) values ('2021-07-07',1927);
insert into tblvisit(regdate,count) values ('2021-07-08',1370);
insert into tblvisit(regdate,count) values ('2021-07-09',4833);
insert into tblvisit(regdate,count) values ('2021-07-10',4447);
insert into tblvisit(regdate,count) values ('2021-07-11',4250);
insert into tblvisit(regdate,count) values ('2021-07-12',2003);
insert into tblvisit(regdate,count) values ('2021-07-13',2602);
insert into tblvisit(regdate,count) values ('2021-07-14',1227);
insert into tblvisit(regdate,count) values ('2021-07-15',3465);
insert into tblvisit(regdate,count) values ('2021-07-16',3633);
insert into tblvisit(regdate,count) values ('2021-07-17',4869);
insert into tblvisit(regdate,count) values ('2021-07-18',3291);
insert into tblvisit(regdate,count) values ('2021-07-19',4329);
insert into tblvisit(regdate,count) values ('2021-07-20',1770);
insert into tblvisit(regdate,count) values ('2021-07-21',1175);
insert into tblvisit(regdate,count) values ('2021-07-22',3752);
insert into tblvisit(regdate,count) values ('2021-07-23',3999);
insert into tblvisit(regdate,count) values ('2021-07-24',1598);
insert into tblvisit(regdate,count) values ('2021-07-25',2740);
insert into tblvisit(regdate,count) values ('2021-07-26',3847);
insert into tblvisit(regdate,count) values ('2021-07-27',3216);
insert into tblvisit(regdate,count) values ('2021-07-28',3411);
insert into tblvisit(regdate,count) values ('2021-07-29',1760);
insert into tblvisit(regdate,count) values ('2021-07-30',2626);
insert into tblvisit(regdate,count) values ('2021-07-31',3925);
insert into tblvisit(regdate,count) values ('2021-08-01',3346);
insert into tblvisit(regdate,count) values ('2021-08-02',2447);
insert into tblvisit(regdate,count) values ('2021-08-03',2613);
insert into tblvisit(regdate,count) values ('2021-08-04',1665);
insert into tblvisit(regdate,count) values ('2021-08-05',3187);
insert into tblvisit(regdate,count) values ('2021-08-06',2069);
insert into tblvisit(regdate,count) values ('2021-08-07',2213);
insert into tblvisit(regdate,count) values ('2021-08-08',1749);
insert into tblvisit(regdate,count) values ('2021-08-09',2954);
insert into tblvisit(regdate,count) values ('2021-08-10',3387);
insert into tblvisit(regdate,count) values ('2021-08-11',4056);
insert into tblvisit(regdate,count) values ('2021-08-12',1310);
insert into tblvisit(regdate,count) values ('2021-08-13',1175);
insert into tblvisit(regdate,count) values ('2021-08-14',3137);
insert into tblvisit(regdate,count) values ('2021-08-15',2382);
insert into tblvisit(regdate,count) values ('2021-08-16',1439);
insert into tblvisit(regdate,count) values ('2021-08-17',2301);
insert into tblvisit(regdate,count) values ('2021-08-18',3008);
insert into tblvisit(regdate,count) values ('2021-08-19',2277);
insert into tblvisit(regdate,count) values ('2021-08-20',4186);
insert into tblvisit(regdate,count) values ('2021-08-21',2721);
insert into tblvisit(regdate,count) values ('2021-08-22',1755);
insert into tblvisit(regdate,count) values ('2021-08-23',4096);
insert into tblvisit(regdate,count) values ('2021-08-24',4699);
insert into tblvisit(regdate,count) values ('2021-08-25',3001);
insert into tblvisit(regdate,count) values ('2021-08-26',2043);
insert into tblvisit(regdate,count) values ('2021-08-27',1211);
insert into tblvisit(regdate,count) values ('2021-08-28',3373);
insert into tblvisit(regdate,count) values ('2021-08-29',1047);
insert into tblvisit(regdate,count) values ('2021-08-30',4660);
insert into tblvisit(regdate,count) values ('2021-08-31',4202);
insert into tblvisit(regdate,count) values ('2021-09-01',1268);
insert into tblvisit(regdate,count) values ('2021-09-02',2989);
insert into tblvisit(regdate,count) values ('2021-09-03',2282);
insert into tblvisit(regdate,count) values ('2021-09-04',2964);
insert into tblvisit(regdate,count) values ('2021-09-05',1120);
insert into tblvisit(regdate,count) values ('2021-09-06',4813);
insert into tblvisit(regdate,count) values ('2021-09-07',4358);
insert into tblvisit(regdate,count) values ('2021-09-08',1270);
insert into tblvisit(regdate,count) values ('2021-09-09',3597);
insert into tblvisit(regdate,count) values ('2021-09-10',1641);
insert into tblvisit(regdate,count) values ('2021-09-11',3755);
insert into tblvisit(regdate,count) values ('2021-09-12',4287);
insert into tblvisit(regdate,count) values ('2021-09-13',2327);
insert into tblvisit(regdate,count) values ('2021-09-14',3915);
insert into tblvisit(regdate,count) values ('2021-09-15',2319);
insert into tblvisit(regdate,count) values ('2021-09-16',4437);
insert into tblvisit(regdate,count) values ('2021-09-17',3359);
insert into tblvisit(regdate,count) values ('2021-09-18',4972);
insert into tblvisit(regdate,count) values ('2021-09-19',4738);
insert into tblvisit(regdate,count) values ('2021-09-20',4692);
insert into tblvisit(regdate,count) values ('2021-09-21',3293);
insert into tblvisit(regdate,count) values ('2021-09-22',4835);
insert into tblvisit(regdate,count) values ('2021-09-23',2331);
insert into tblvisit(regdate,count) values ('2021-09-24',3638);
insert into tblvisit(regdate,count) values ('2021-09-25',2604);
insert into tblvisit(regdate,count) values ('2021-09-26',4622);
insert into tblvisit(regdate,count) values ('2021-09-27',1411);
insert into tblvisit(regdate,count) values ('2021-09-28',3948);
insert into tblvisit(regdate,count) values ('2021-09-29',4749);
insert into tblvisit(regdate,count) values ('2021-09-30',1713);
insert into tblvisit(regdate,count) values ('2021-10-01',1987);
insert into tblvisit(regdate,count) values ('2021-10-02',1724);
insert into tblvisit(regdate,count) values ('2021-10-03',1062);
insert into tblvisit(regdate,count) values ('2021-10-04',3286);
insert into tblvisit(regdate,count) values ('2021-10-05',4662);
insert into tblvisit(regdate,count) values ('2021-10-06',2299);
insert into tblvisit(regdate,count) values ('2021-10-07',4513);
insert into tblvisit(regdate,count) values ('2021-10-08',3775);
insert into tblvisit(regdate,count) values ('2021-10-09',1947);
insert into tblvisit(regdate,count) values ('2021-10-10',2770);
insert into tblvisit(regdate,count) values ('2021-10-11',3958);
insert into tblvisit(regdate,count) values ('2021-10-12',3230);
insert into tblvisit(regdate,count) values ('2021-10-13',3519);
insert into tblvisit(regdate,count) values ('2021-10-14',1851);
insert into tblvisit(regdate,count) values ('2021-10-15',4722);
insert into tblvisit(regdate,count) values ('2021-10-16',1738);
insert into tblvisit(regdate,count) values ('2021-10-17',4471);
insert into tblvisit(regdate,count) values ('2021-10-18',2511);
insert into tblvisit(regdate,count) values ('2021-10-19',2598);
insert into tblvisit(regdate,count) values ('2021-10-20',1370);
insert into tblvisit(regdate,count) values ('2021-10-21',2911);
insert into tblvisit(regdate,count) values ('2021-10-22',2852);
insert into tblvisit(regdate,count) values ('2021-10-23',1723);
insert into tblvisit(regdate,count) values ('2021-10-24',3278);
insert into tblvisit(regdate,count) values ('2021-10-25',2832);
insert into tblvisit(regdate,count) values ('2021-10-26',3088);
insert into tblvisit(regdate,count) values ('2021-10-27',3937);
insert into tblvisit(regdate,count) values ('2021-10-28',1937);
insert into tblvisit(regdate,count) values ('2021-10-29',2631);
insert into tblvisit(regdate,count) values ('2021-10-30',1938);
insert into tblvisit(regdate,count) values ('2021-10-31',1615);
insert into tblvisit(regdate,count) values ('2021-11-01',1490);
insert into tblvisit(regdate,count) values ('2021-11-02',3179);
insert into tblvisit(regdate,count) values ('2021-11-03',4087);
insert into tblvisit(regdate,count) values ('2021-11-04',3592);
insert into tblvisit(regdate,count) values ('2021-11-05',4257);
insert into tblvisit(regdate,count) values ('2021-11-06',3007);
insert into tblvisit(regdate,count) values ('2021-11-07',4727);
insert into tblvisit(regdate,count) values ('2021-11-08',2859);
insert into tblvisit(regdate,count) values ('2021-11-09',4462);
insert into tblvisit(regdate,count) values ('2021-11-10',3062);
insert into tblvisit(regdate,count) values ('2021-11-11',4650);
insert into tblvisit(regdate,count) values ('2021-11-12',1889);
insert into tblvisit(regdate,count) values ('2021-11-13',3150);
insert into tblvisit(regdate,count) values ('2021-11-14',4354);
insert into tblvisit(regdate,count) values ('2021-11-15',1218);
insert into tblvisit(regdate,count) values ('2021-11-16',3005);
insert into tblvisit(regdate,count) values ('2021-11-17',1101);
insert into tblvisit(regdate,count) values ('2021-11-18',1073);
insert into tblvisit(regdate,count) values ('2021-11-19',3240);
insert into tblvisit(regdate,count) values ('2021-11-20',2918);
insert into tblvisit(regdate,count) values ('2021-11-21',2184);
insert into tblvisit(regdate,count) values ('2021-11-22',1149);
insert into tblvisit(regdate,count) values ('2021-11-23',3271);
insert into tblvisit(regdate,count) values ('2021-11-24',3728);
insert into tblvisit(regdate,count) values ('2021-11-25',1881);
insert into tblvisit(regdate,count) values ('2021-11-26',2830);
insert into tblvisit(regdate,count) values ('2021-11-27',1107);
insert into tblvisit(regdate,count) values ('2021-11-28',2896);
insert into tblvisit(regdate,count) values ('2021-11-29',1973);
insert into tblvisit(regdate,count) values ('2021-11-30',1259);
insert into tblvisit(regdate,count) values ('2021-12-01',2340);
insert into tblvisit(regdate,count) values ('2021-12-02',4747);
insert into tblvisit(regdate,count) values ('2021-12-03',1813);
insert into tblvisit(regdate,count) values ('2021-12-04',1370);
insert into tblvisit(regdate,count) values ('2021-12-05',4300);
insert into tblvisit(regdate,count) values ('2021-12-06',2244);
insert into tblvisit(regdate,count) values ('2021-12-07',2557);
insert into tblvisit(regdate,count) values ('2021-12-08',3591);
insert into tblvisit(regdate,count) values ('2021-12-09',1350);
insert into tblvisit(regdate,count) values ('2021-12-10',4044);
insert into tblvisit(regdate,count) values ('2021-12-11',1394);
insert into tblvisit(regdate,count) values ('2021-12-12',3414);
insert into tblvisit(regdate,count) values ('2021-12-13',1885);
insert into tblvisit(regdate,count) values ('2021-12-14',2887);
insert into tblvisit(regdate,count) values ('2021-12-15',2970);
insert into tblvisit(regdate,count) values ('2021-12-16',4808);
insert into tblvisit(regdate,count) values ('2021-12-17',3765);
insert into tblvisit(regdate,count) values ('2021-12-18',4857);
insert into tblvisit(regdate,count) values ('2021-12-19',4196);
insert into tblvisit(regdate,count) values ('2021-12-20',4765);
insert into tblvisit(regdate,count) values ('2021-12-21',2339);
insert into tblvisit(regdate,count) values ('2021-12-22',4867);
insert into tblvisit(regdate,count) values ('2021-12-23',3495);
insert into tblvisit(regdate,count) values ('2021-12-24',3644);
insert into tblvisit(regdate,count) values ('2021-12-25',1010);
insert into tblvisit(regdate,count) values ('2021-12-26',3581);
insert into tblvisit(regdate,count) values ('2021-12-27',2714);
insert into tblvisit(regdate,count) values ('2021-12-28',2019);
insert into tblvisit(regdate,count) values ('2021-12-29',4213);
insert into tblvisit(regdate,count) values ('2021-12-30',1953);
insert into tblvisit(regdate,count) values ('2021-12-31',2761);
insert into tblvisit(regdate,count) values ('2022-01-01',2025);
insert into tblvisit(regdate,count) values ('2022-01-02',4234);
insert into tblvisit(regdate,count) values ('2022-01-03',1828);
insert into tblvisit(regdate,count) values ('2022-01-04',1641);
insert into tblvisit(regdate,count) values ('2022-01-05',3313);
insert into tblvisit(regdate,count) values ('2022-01-06',1450);
insert into tblvisit(regdate,count) values ('2022-01-07',4150);
insert into tblvisit(regdate,count) values ('2022-01-08',2264);
insert into tblvisit(regdate,count) values ('2022-01-09',3341);
insert into tblvisit(regdate,count) values ('2022-01-10',3780);
insert into tblvisit(regdate,count) values ('2022-01-11',4793);
insert into tblvisit(regdate,count) values ('2022-01-12',3443);
insert into tblvisit(regdate,count) values ('2022-01-13',3024);
insert into tblvisit(regdate,count) values ('2022-01-14',2308);


--자주묻는질문
CREATE SEQUENCE faq_seq;
CREATE TABLE tblfaq (
	faq_seq	NUMBER NOT NULL,
	question_type_seq NUMBER NOT NULL, --5
	title VARCHAR2(100) NOT NULL, --20자
	CONTENTS VARCHAR2(4000)	NOT NULL --200자
);  --100개
ALTER TABLE tblfaq ADD CONSTRAINT tblf_faq_seq_pk PRIMARY KEY (faq_seq);
ALTER TABLE tblfaq ADD CONSTRAINT tblf_question_type_seq_fk FOREIGN KEY (question_type_seq)
    REFERENCES tblquestiontype (question_type_seq);
--자주묻는질문
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[주문] 긴급재난지원금을 쿠팡에서 사용 가능한가요?','로그인 시 본인인증을 하면 새로운 환경에서 로그인 한 것을 알 수 있어 고객님의 정보를 보호할 수 있습니다.



인증 시 인증번호는 문자 또는 이메일로 전송됩니다.

만약 이메일로 요청한 후 인증 번호를 받지 못하셨다면

메일함의 스팸 폴더에서 아래 이메일 주소로 받은 이메일이 있는 지 확인해 주십시오.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.','	
본인인증 시도 시 "회원님 명의로 인증된 아이디가 이미 존재합니다."로 안내되는 경우, 
고객님의 정보로 이미 가입된 다른 아이디가 존재하는 것이기 때문에 새로 본인인증을 받을 수 없습니다. 
이미 가입된 아이디를 사용해주시고, 비밀번호를 모르시는 경우 로그인 창에서 비밀번호 찾기 를 이용해주세요.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.','마이쿠팡에서 쉽고 빠르게 배송 현황 확인이 가능합니다. 

배송예정일, 배송시작 메세지는 문자 및 알림내역(App push)에서 확인하실 수 있습니다');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[분쟁처리] 분쟁처리절차는 어떻게 되나요?','고객님 본인 명의의 계좌로만 환불이 가능합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[이중인증] 본인확인을 하는데 인증번호가 오지 않습니다.',' ① 쿠팡은 고객이 정당한 의견이나 불만을 제기하는 경우 그 신청을 받은 날로부터 고객의 불만 원인 등을 조사하여 평일(영업일) 기준 3일 이내에 진행 결과를 고객에게 전달하여야 하고, 평일(영업일) 기준 10일 이내에 조사 결과 또는 처리 방안을 고객에게 알려야 합니다.

  ② 고객은 제1항의 분쟁처리 결과에 대하여 이의가 있을 때에는 쿠팡의 처리센터를 통하여 이의를 제기할 수 있으며, 그 이의가 받아들여지지 않을 때에는 소비자분쟁조정위원회에 분쟁조정 신청을 할 수 있습니다.

  ③ 쿠팡은 고객으로부터 전화, FAX, E-mail, 사이트 게시판, 앱 등을 통해 정당한 의견이나 불만을 받을 수 있으며, 이와 같은 절차는 신청에서부터 조사, 처리 결과까지 고객이 원하는 방식으로 이루어져야 합니다.

  ④ 쿠팡은 제3항의 수단으로 불만 등을 접수 받은 경우 접수사실을 접수 받은 방법으로 통지하고 지체없이 사실관계를 파악하여 고객에게 손해가 발생하였는지 여부 등을 확인한 뒤에 처리 방안을 마련합니다.

  ⑤ 쿠팡은 고객문의에 대하여 쿠팡 사이트, 정책, 서비스 등을 개선하도록 노력합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[이중인증] 로그인 시 왜 휴대폰/이메일 본인 인증을 해야 하나요?','쿠팡은 고객님의 개인정보를 [개인정보 취급방침] 에서 고지한 범위 내에서 사용하며 고지한 범위를 초과하여 이용하거나, 타인 또는 타기업, 기관에 제공하지 않습니다.

※ 만일 회원 아이디와 비밀번호의 불법 도용 등 회원정보와 관련한 피해가 발생한 경우에는 바로 쿠팡 고객센터(☎1577-7011) 또는 모바일 앱 [고객센터> 채팅문의]를 통해 피해 내용을 알려주시기 바랍니다. 

※ 개인정보와 관련하여 분쟁이 있는 경우에는 2차 민원처리 기관인 개인정보보호진흥원(KISA)의 개인정보분쟁조정위원회로 개인정보 민원신청을 하실 수 있습니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[주문] 긴급재난지원금을 쿠팡에서 사용 가능한가요?','각 메일 서비스에 따라 메일 도착 시간이 조금 지연될 수 있습니다.
메일이 도착하지 않을 경우 스팸메일함을 확인해 보시거나 쿠팡의 메일 주소가 수신 차단되어 있지 않은 지 확인해 주시기 바랍니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[주문] 긴급재난지원금을 쿠팡에서 사용 가능한가요?','마이쿠팡에서 쉽고 빠르게 배송 현황 확인이 가능합니다. 

배송예정일, 배송시작 메세지는 문자 및 알림내역(App push)에서 확인하실 수 있습니다');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[회원정보] 개인정보와 관련된 피해를 입은 경우 어떻게 하나요?','	
본인인증 시도 시 "회원님 명의로 인증된 아이디가 이미 존재합니다."로 안내되는 경우, 
고객님의 정보로 이미 가입된 다른 아이디가 존재하는 것이기 때문에 새로 본인인증을 받을 수 없습니다. 
이미 가입된 아이디를 사용해주시고, 비밀번호를 모르시는 경우 로그인 창에서 비밀번호 찾기 를 이용해주세요.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[배송일정] 배송중인 상품의 위치를 알고 싶어요.','주문하신 상품은 결제완료 후 안내된 배송예정일까지 배송됩니다. 
배송예정일은 판매자 및 배송지에 따라 차이가 있을 수 있습니다.
또한, 도서산간 지역 배송 혹은 천재지변으로 인해 배송일정이 변동될 수 있습니다.

■ 배송예정일 확인하기 (주문 전)
1. 상품페이지: 상품명과 가격 하단에 표시
2. 장바구니: 상품이미지 우측
3. 주문/결제 페이지: 상품정보에 표시');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.','마이쿠팡에서 쉽고 빠르게 배송 현황 확인이 가능합니다. 

배송예정일, 배송시작 메세지는 문자 및 알림내역(App push)에서 확인하실 수 있습니다');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[주문] 긴급재난지원금을 쿠팡에서 사용 가능한가요?','각 메일 서비스에 따라 메일 도착 시간이 조금 지연될 수 있습니다.
메일이 도착하지 않을 경우 스팸메일함을 확인해 보시거나 쿠팡의 메일 주소가 수신 차단되어 있지 않은 지 확인해 주시기 바랍니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[분쟁처리] 분쟁처리절차는 어떻게 되나요?','기존에 쿠팡에 등록한 휴대폰 번호가 현재 사용하시는 휴대폰 번호와 다를 경우 인증번호를 받지 못할 수 있습니다.

쿠팡 고객센터(1577-7011)로 문의하여 번호변경을 요청해주시기 바랍니다.



또는 쿠팡 고객센터 번호(1577-7011)가 수신거부 되어있는지 확인해 주십시오.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[환불] 다른 사람 명의의 계좌로 환불받을 수 있나요?','아니오, 긴급재난지원금은 온라인 상거래에서 사용할 수 없으며, 쿠팡에서도 사용이 가능하지 않습니다,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[주문] 긴급재난지원금을 쿠팡에서 사용 가능한가요?','주문하신 상품은 결제완료 후 안내된 배송예정일까지 배송됩니다. 
배송예정일은 판매자 및 배송지에 따라 차이가 있을 수 있습니다.
또한, 도서산간 지역 배송 혹은 천재지변으로 인해 배송일정이 변동될 수 있습니다.

■ 배송예정일 확인하기 (주문 전)
1. 상품페이지: 상품명과 가격 하단에 표시
2. 장바구니: 상품이미지 우측
3. 주문/결제 페이지: 상품정보에 표시');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[배송일정] 배송중인 상품의 위치를 알고 싶어요.','	
본인인증 시도 시 "회원님 명의로 인증된 아이디가 이미 존재합니다."로 안내되는 경우, 
고객님의 정보로 이미 가입된 다른 아이디가 존재하는 것이기 때문에 새로 본인인증을 받을 수 없습니다. 
이미 가입된 아이디를 사용해주시고, 비밀번호를 모르시는 경우 로그인 창에서 비밀번호 찾기 를 이용해주세요.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[회원정보] 개인정보와 관련된 피해를 입은 경우 어떻게 하나요?','	
본인인증 시도 시 "회원님 명의로 인증된 아이디가 이미 존재합니다."로 안내되는 경우, 
고객님의 정보로 이미 가입된 다른 아이디가 존재하는 것이기 때문에 새로 본인인증을 받을 수 없습니다. 
이미 가입된 아이디를 사용해주시고, 비밀번호를 모르시는 경우 로그인 창에서 비밀번호 찾기 를 이용해주세요.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[환불] 다른 사람 명의의 계좌로 환불받을 수 있나요?','쿠팡은 고객님의 개인정보를 [개인정보 취급방침] 에서 고지한 범위 내에서 사용하며 고지한 범위를 초과하여 이용하거나, 타인 또는 타기업, 기관에 제공하지 않습니다.

※ 만일 회원 아이디와 비밀번호의 불법 도용 등 회원정보와 관련한 피해가 발생한 경우에는 바로 쿠팡 고객센터(☎1577-7011) 또는 모바일 앱 [고객센터> 채팅문의]를 통해 피해 내용을 알려주시기 바랍니다. 

※ 개인정보와 관련하여 분쟁이 있는 경우에는 2차 민원처리 기관인 개인정보보호진흥원(KISA)의 개인정보분쟁조정위원회로 개인정보 민원신청을 하실 수 있습니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[이중인증] 로그인 시 왜 휴대폰/이메일 본인 인증을 해야 하나요?','주문하신 상품은 결제완료 후 안내된 배송예정일까지 배송됩니다. 
배송예정일은 판매자 및 배송지에 따라 차이가 있을 수 있습니다.
또한, 도서산간 지역 배송 혹은 천재지변으로 인해 배송일정이 변동될 수 있습니다.

■ 배송예정일 확인하기 (주문 전)
1. 상품페이지: 상품명과 가격 하단에 표시
2. 장바구니: 상품이미지 우측
3. 주문/결제 페이지: 상품정보에 표시');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.','기존에 쿠팡에 등록한 휴대폰 번호가 현재 사용하시는 휴대폰 번호와 다를 경우 인증번호를 받지 못할 수 있습니다.

쿠팡 고객센터(1577-7011)로 문의하여 번호변경을 요청해주시기 바랍니다.



또는 쿠팡 고객센터 번호(1577-7011)가 수신거부 되어있는지 확인해 주십시오.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[주문] 긴급재난지원금을 쿠팡에서 사용 가능한가요?','로그인 시 본인인증을 하면 새로운 환경에서 로그인 한 것을 알 수 있어 고객님의 정보를 보호할 수 있습니다.



인증 시 인증번호는 문자 또는 이메일로 전송됩니다.

만약 이메일로 요청한 후 인증 번호를 받지 못하셨다면

메일함의 스팸 폴더에서 아래 이메일 주소로 받은 이메일이 있는 지 확인해 주십시오.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[이중인증] 로그인 시 왜 휴대폰/이메일 본인 인증을 해야 하나요?','마이쿠팡에서 쉽고 빠르게 배송 현황 확인이 가능합니다. 

배송예정일, 배송시작 메세지는 문자 및 알림내역(App push)에서 확인하실 수 있습니다');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[이중인증] 로그인 시 왜 휴대폰/이메일 본인 인증을 해야 하나요?','	
본인인증 시도 시 "회원님 명의로 인증된 아이디가 이미 존재합니다."로 안내되는 경우, 
고객님의 정보로 이미 가입된 다른 아이디가 존재하는 것이기 때문에 새로 본인인증을 받을 수 없습니다. 
이미 가입된 아이디를 사용해주시고, 비밀번호를 모르시는 경우 로그인 창에서 비밀번호 찾기 를 이용해주세요.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[환불] 다른 사람 명의의 계좌로 환불받을 수 있나요?',' ① 쿠팡은 고객이 정당한 의견이나 불만을 제기하는 경우 그 신청을 받은 날로부터 고객의 불만 원인 등을 조사하여 평일(영업일) 기준 3일 이내에 진행 결과를 고객에게 전달하여야 하고, 평일(영업일) 기준 10일 이내에 조사 결과 또는 처리 방안을 고객에게 알려야 합니다.

  ② 고객은 제1항의 분쟁처리 결과에 대하여 이의가 있을 때에는 쿠팡의 처리센터를 통하여 이의를 제기할 수 있으며, 그 이의가 받아들여지지 않을 때에는 소비자분쟁조정위원회에 분쟁조정 신청을 할 수 있습니다.

  ③ 쿠팡은 고객으로부터 전화, FAX, E-mail, 사이트 게시판, 앱 등을 통해 정당한 의견이나 불만을 받을 수 있으며, 이와 같은 절차는 신청에서부터 조사, 처리 결과까지 고객이 원하는 방식으로 이루어져야 합니다.

  ④ 쿠팡은 제3항의 수단으로 불만 등을 접수 받은 경우 접수사실을 접수 받은 방법으로 통지하고 지체없이 사실관계를 파악하여 고객에게 손해가 발생하였는지 여부 등을 확인한 뒤에 처리 방안을 마련합니다.

  ⑤ 쿠팡은 고객문의에 대하여 쿠팡 사이트, 정책, 서비스 등을 개선하도록 노력합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.','주문하신 상품은 결제완료 후 안내된 배송예정일까지 배송됩니다. 
배송예정일은 판매자 및 배송지에 따라 차이가 있을 수 있습니다.
또한, 도서산간 지역 배송 혹은 천재지변으로 인해 배송일정이 변동될 수 있습니다.

■ 배송예정일 확인하기 (주문 전)
1. 상품페이지: 상품명과 가격 하단에 표시
2. 장바구니: 상품이미지 우측
3. 주문/결제 페이지: 상품정보에 표시');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[회원가입] 인증된 아이디가 이미 존재한다고 나옵니다.','고객님 본인 명의의 계좌로만 환불이 가능합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[이중인증] 본인확인을 하는데 인증번호가 오지 않습니다.','쿠팡은 고객님의 개인정보를 [개인정보 취급방침] 에서 고지한 범위 내에서 사용하며 고지한 범위를 초과하여 이용하거나, 타인 또는 타기업, 기관에 제공하지 않습니다.

※ 만일 회원 아이디와 비밀번호의 불법 도용 등 회원정보와 관련한 피해가 발생한 경우에는 바로 쿠팡 고객센터(☎1577-7011) 또는 모바일 앱 [고객센터> 채팅문의]를 통해 피해 내용을 알려주시기 바랍니다. 

※ 개인정보와 관련하여 분쟁이 있는 경우에는 2차 민원처리 기관인 개인정보보호진흥원(KISA)의 개인정보분쟁조정위원회로 개인정보 민원신청을 하실 수 있습니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[배송일정] 주문한 상품은 언제 배송되나요 ?','아니오, 긴급재난지원금은 온라인 상거래에서 사용할 수 없으며, 쿠팡에서도 사용이 가능하지 않습니다,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[환불] 다른 사람 명의의 계좌로 환불받을 수 있나요?','	
본인인증 시도 시 "회원님 명의로 인증된 아이디가 이미 존재합니다."로 안내되는 경우, 
고객님의 정보로 이미 가입된 다른 아이디가 존재하는 것이기 때문에 새로 본인인증을 받을 수 없습니다. 
이미 가입된 아이디를 사용해주시고, 비밀번호를 모르시는 경우 로그인 창에서 비밀번호 찾기 를 이용해주세요.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[환불] 다른 사람 명의의 계좌로 환불받을 수 있나요?','기존에 쿠팡에 등록한 휴대폰 번호가 현재 사용하시는 휴대폰 번호와 다를 경우 인증번호를 받지 못할 수 있습니다.

쿠팡 고객센터(1577-7011)로 문의하여 번호변경을 요청해주시기 바랍니다.



또는 쿠팡 고객센터 번호(1577-7011)가 수신거부 되어있는지 확인해 주십시오.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[배송일정] 배송중인 상품의 위치를 알고 싶어요.','각 메일 서비스에 따라 메일 도착 시간이 조금 지연될 수 있습니다.
메일이 도착하지 않을 경우 스팸메일함을 확인해 보시거나 쿠팡의 메일 주소가 수신 차단되어 있지 않은 지 확인해 주시기 바랍니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[배송일정] 주문한 상품은 언제 배송되나요 ?','아니오, 긴급재난지원금은 온라인 상거래에서 사용할 수 없으며, 쿠팡에서도 사용이 가능하지 않습니다,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[주문] 긴급재난지원금을 쿠팡에서 사용 가능한가요?','고객님 본인 명의의 계좌로만 환불이 가능합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[배송일정] 배송중인 상품의 위치를 알고 싶어요.','로그인 시 본인인증을 하면 새로운 환경에서 로그인 한 것을 알 수 있어 고객님의 정보를 보호할 수 있습니다.



인증 시 인증번호는 문자 또는 이메일로 전송됩니다.

만약 이메일로 요청한 후 인증 번호를 받지 못하셨다면

메일함의 스팸 폴더에서 아래 이메일 주소로 받은 이메일이 있는 지 확인해 주십시오.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.','각 메일 서비스에 따라 메일 도착 시간이 조금 지연될 수 있습니다.
메일이 도착하지 않을 경우 스팸메일함을 확인해 보시거나 쿠팡의 메일 주소가 수신 차단되어 있지 않은 지 확인해 주시기 바랍니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.','쿠팡은 고객님의 개인정보를 [개인정보 취급방침] 에서 고지한 범위 내에서 사용하며 고지한 범위를 초과하여 이용하거나, 타인 또는 타기업, 기관에 제공하지 않습니다.

※ 만일 회원 아이디와 비밀번호의 불법 도용 등 회원정보와 관련한 피해가 발생한 경우에는 바로 쿠팡 고객센터(☎1577-7011) 또는 모바일 앱 [고객센터> 채팅문의]를 통해 피해 내용을 알려주시기 바랍니다. 

※ 개인정보와 관련하여 분쟁이 있는 경우에는 2차 민원처리 기관인 개인정보보호진흥원(KISA)의 개인정보분쟁조정위원회로 개인정보 민원신청을 하실 수 있습니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[배송일정] 주문한 상품은 언제 배송되나요 ?','각 메일 서비스에 따라 메일 도착 시간이 조금 지연될 수 있습니다.
메일이 도착하지 않을 경우 스팸메일함을 확인해 보시거나 쿠팡의 메일 주소가 수신 차단되어 있지 않은 지 확인해 주시기 바랍니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[주문] 긴급재난지원금을 쿠팡에서 사용 가능한가요?','쿠팡은 고객님의 개인정보를 [개인정보 취급방침] 에서 고지한 범위 내에서 사용하며 고지한 범위를 초과하여 이용하거나, 타인 또는 타기업, 기관에 제공하지 않습니다.

※ 만일 회원 아이디와 비밀번호의 불법 도용 등 회원정보와 관련한 피해가 발생한 경우에는 바로 쿠팡 고객센터(☎1577-7011) 또는 모바일 앱 [고객센터> 채팅문의]를 통해 피해 내용을 알려주시기 바랍니다. 

※ 개인정보와 관련하여 분쟁이 있는 경우에는 2차 민원처리 기관인 개인정보보호진흥원(KISA)의 개인정보분쟁조정위원회로 개인정보 민원신청을 하실 수 있습니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[주문] 긴급재난지원금을 쿠팡에서 사용 가능한가요?','각 메일 서비스에 따라 메일 도착 시간이 조금 지연될 수 있습니다.
메일이 도착하지 않을 경우 스팸메일함을 확인해 보시거나 쿠팡의 메일 주소가 수신 차단되어 있지 않은 지 확인해 주시기 바랍니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[회원가입] 인증된 아이디가 이미 존재한다고 나옵니다.','로그인 시 본인인증을 하면 새로운 환경에서 로그인 한 것을 알 수 있어 고객님의 정보를 보호할 수 있습니다.



인증 시 인증번호는 문자 또는 이메일로 전송됩니다.

만약 이메일로 요청한 후 인증 번호를 받지 못하셨다면

메일함의 스팸 폴더에서 아래 이메일 주소로 받은 이메일이 있는 지 확인해 주십시오.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[분쟁처리] 분쟁처리절차는 어떻게 되나요?','고객님 본인 명의의 계좌로만 환불이 가능합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[회원정보] 개인정보와 관련된 피해를 입은 경우 어떻게 하나요?','아니오, 긴급재난지원금은 온라인 상거래에서 사용할 수 없으며, 쿠팡에서도 사용이 가능하지 않습니다,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[분쟁처리] 분쟁처리절차는 어떻게 되나요?','로그인 시 본인인증을 하면 새로운 환경에서 로그인 한 것을 알 수 있어 고객님의 정보를 보호할 수 있습니다.



인증 시 인증번호는 문자 또는 이메일로 전송됩니다.

만약 이메일로 요청한 후 인증 번호를 받지 못하셨다면

메일함의 스팸 폴더에서 아래 이메일 주소로 받은 이메일이 있는 지 확인해 주십시오.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.','각 메일 서비스에 따라 메일 도착 시간이 조금 지연될 수 있습니다.
메일이 도착하지 않을 경우 스팸메일함을 확인해 보시거나 쿠팡의 메일 주소가 수신 차단되어 있지 않은 지 확인해 주시기 바랍니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[회원정보] 개인정보와 관련된 피해를 입은 경우 어떻게 하나요?','고객님 본인 명의의 계좌로만 환불이 가능합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[회원정보] 개인정보와 관련된 피해를 입은 경우 어떻게 하나요?',' ① 쿠팡은 고객이 정당한 의견이나 불만을 제기하는 경우 그 신청을 받은 날로부터 고객의 불만 원인 등을 조사하여 평일(영업일) 기준 3일 이내에 진행 결과를 고객에게 전달하여야 하고, 평일(영업일) 기준 10일 이내에 조사 결과 또는 처리 방안을 고객에게 알려야 합니다.

  ② 고객은 제1항의 분쟁처리 결과에 대하여 이의가 있을 때에는 쿠팡의 처리센터를 통하여 이의를 제기할 수 있으며, 그 이의가 받아들여지지 않을 때에는 소비자분쟁조정위원회에 분쟁조정 신청을 할 수 있습니다.

  ③ 쿠팡은 고객으로부터 전화, FAX, E-mail, 사이트 게시판, 앱 등을 통해 정당한 의견이나 불만을 받을 수 있으며, 이와 같은 절차는 신청에서부터 조사, 처리 결과까지 고객이 원하는 방식으로 이루어져야 합니다.

  ④ 쿠팡은 제3항의 수단으로 불만 등을 접수 받은 경우 접수사실을 접수 받은 방법으로 통지하고 지체없이 사실관계를 파악하여 고객에게 손해가 발생하였는지 여부 등을 확인한 뒤에 처리 방안을 마련합니다.

  ⑤ 쿠팡은 고객문의에 대하여 쿠팡 사이트, 정책, 서비스 등을 개선하도록 노력합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[배송일정] 주문한 상품은 언제 배송되나요 ?','마이쿠팡에서 쉽고 빠르게 배송 현황 확인이 가능합니다. 

배송예정일, 배송시작 메세지는 문자 및 알림내역(App push)에서 확인하실 수 있습니다');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[분쟁처리] 분쟁처리절차는 어떻게 되나요?','마이쿠팡에서 쉽고 빠르게 배송 현황 확인이 가능합니다. 

배송예정일, 배송시작 메세지는 문자 및 알림내역(App push)에서 확인하실 수 있습니다');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[배송일정] 배송중인 상품의 위치를 알고 싶어요.','주문하신 상품은 결제완료 후 안내된 배송예정일까지 배송됩니다. 
배송예정일은 판매자 및 배송지에 따라 차이가 있을 수 있습니다.
또한, 도서산간 지역 배송 혹은 천재지변으로 인해 배송일정이 변동될 수 있습니다.

■ 배송예정일 확인하기 (주문 전)
1. 상품페이지: 상품명과 가격 하단에 표시
2. 장바구니: 상품이미지 우측
3. 주문/결제 페이지: 상품정보에 표시');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[주문] 긴급재난지원금을 쿠팡에서 사용 가능한가요?','마이쿠팡에서 쉽고 빠르게 배송 현황 확인이 가능합니다. 

배송예정일, 배송시작 메세지는 문자 및 알림내역(App push)에서 확인하실 수 있습니다');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[이중인증] 본인확인을 하는데 인증번호가 오지 않습니다.','로그인 시 본인인증을 하면 새로운 환경에서 로그인 한 것을 알 수 있어 고객님의 정보를 보호할 수 있습니다.



인증 시 인증번호는 문자 또는 이메일로 전송됩니다.

만약 이메일로 요청한 후 인증 번호를 받지 못하셨다면

메일함의 스팸 폴더에서 아래 이메일 주소로 받은 이메일이 있는 지 확인해 주십시오.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[이중인증] 로그인 시 왜 휴대폰/이메일 본인 인증을 해야 하나요?','고객님 본인 명의의 계좌로만 환불이 가능합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[이중인증] 로그인 시 왜 휴대폰/이메일 본인 인증을 해야 하나요?','로그인 시 본인인증을 하면 새로운 환경에서 로그인 한 것을 알 수 있어 고객님의 정보를 보호할 수 있습니다.



인증 시 인증번호는 문자 또는 이메일로 전송됩니다.

만약 이메일로 요청한 후 인증 번호를 받지 못하셨다면

메일함의 스팸 폴더에서 아래 이메일 주소로 받은 이메일이 있는 지 확인해 주십시오.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[배송일정] 주문한 상품은 언제 배송되나요 ?','마이쿠팡에서 쉽고 빠르게 배송 현황 확인이 가능합니다. 

배송예정일, 배송시작 메세지는 문자 및 알림내역(App push)에서 확인하실 수 있습니다');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[이중인증] 로그인 시 왜 휴대폰/이메일 본인 인증을 해야 하나요?','쿠팡은 고객님의 개인정보를 [개인정보 취급방침] 에서 고지한 범위 내에서 사용하며 고지한 범위를 초과하여 이용하거나, 타인 또는 타기업, 기관에 제공하지 않습니다.

※ 만일 회원 아이디와 비밀번호의 불법 도용 등 회원정보와 관련한 피해가 발생한 경우에는 바로 쿠팡 고객센터(☎1577-7011) 또는 모바일 앱 [고객센터> 채팅문의]를 통해 피해 내용을 알려주시기 바랍니다. 

※ 개인정보와 관련하여 분쟁이 있는 경우에는 2차 민원처리 기관인 개인정보보호진흥원(KISA)의 개인정보분쟁조정위원회로 개인정보 민원신청을 하실 수 있습니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[배송일정] 배송중인 상품의 위치를 알고 싶어요.','각 메일 서비스에 따라 메일 도착 시간이 조금 지연될 수 있습니다.
메일이 도착하지 않을 경우 스팸메일함을 확인해 보시거나 쿠팡의 메일 주소가 수신 차단되어 있지 않은 지 확인해 주시기 바랍니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[주문] 긴급재난지원금을 쿠팡에서 사용 가능한가요?','	
본인인증 시도 시 "회원님 명의로 인증된 아이디가 이미 존재합니다."로 안내되는 경우, 
고객님의 정보로 이미 가입된 다른 아이디가 존재하는 것이기 때문에 새로 본인인증을 받을 수 없습니다. 
이미 가입된 아이디를 사용해주시고, 비밀번호를 모르시는 경우 로그인 창에서 비밀번호 찾기 를 이용해주세요.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[배송일정] 배송중인 상품의 위치를 알고 싶어요.',' ① 쿠팡은 고객이 정당한 의견이나 불만을 제기하는 경우 그 신청을 받은 날로부터 고객의 불만 원인 등을 조사하여 평일(영업일) 기준 3일 이내에 진행 결과를 고객에게 전달하여야 하고, 평일(영업일) 기준 10일 이내에 조사 결과 또는 처리 방안을 고객에게 알려야 합니다.

  ② 고객은 제1항의 분쟁처리 결과에 대하여 이의가 있을 때에는 쿠팡의 처리센터를 통하여 이의를 제기할 수 있으며, 그 이의가 받아들여지지 않을 때에는 소비자분쟁조정위원회에 분쟁조정 신청을 할 수 있습니다.

  ③ 쿠팡은 고객으로부터 전화, FAX, E-mail, 사이트 게시판, 앱 등을 통해 정당한 의견이나 불만을 받을 수 있으며, 이와 같은 절차는 신청에서부터 조사, 처리 결과까지 고객이 원하는 방식으로 이루어져야 합니다.

  ④ 쿠팡은 제3항의 수단으로 불만 등을 접수 받은 경우 접수사실을 접수 받은 방법으로 통지하고 지체없이 사실관계를 파악하여 고객에게 손해가 발생하였는지 여부 등을 확인한 뒤에 처리 방안을 마련합니다.

  ⑤ 쿠팡은 고객문의에 대하여 쿠팡 사이트, 정책, 서비스 등을 개선하도록 노력합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[배송일정] 배송중인 상품의 위치를 알고 싶어요.','고객님 본인 명의의 계좌로만 환불이 가능합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[이중인증] 본인확인을 하는데 인증번호가 오지 않습니다.','로그인 시 본인인증을 하면 새로운 환경에서 로그인 한 것을 알 수 있어 고객님의 정보를 보호할 수 있습니다.



인증 시 인증번호는 문자 또는 이메일로 전송됩니다.

만약 이메일로 요청한 후 인증 번호를 받지 못하셨다면

메일함의 스팸 폴더에서 아래 이메일 주소로 받은 이메일이 있는 지 확인해 주십시오.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[환불] 다른 사람 명의의 계좌로 환불받을 수 있나요?','각 메일 서비스에 따라 메일 도착 시간이 조금 지연될 수 있습니다.
메일이 도착하지 않을 경우 스팸메일함을 확인해 보시거나 쿠팡의 메일 주소가 수신 차단되어 있지 않은 지 확인해 주시기 바랍니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[환불] 다른 사람 명의의 계좌로 환불받을 수 있나요?','쿠팡은 고객님의 개인정보를 [개인정보 취급방침] 에서 고지한 범위 내에서 사용하며 고지한 범위를 초과하여 이용하거나, 타인 또는 타기업, 기관에 제공하지 않습니다.

※ 만일 회원 아이디와 비밀번호의 불법 도용 등 회원정보와 관련한 피해가 발생한 경우에는 바로 쿠팡 고객센터(☎1577-7011) 또는 모바일 앱 [고객센터> 채팅문의]를 통해 피해 내용을 알려주시기 바랍니다. 

※ 개인정보와 관련하여 분쟁이 있는 경우에는 2차 민원처리 기관인 개인정보보호진흥원(KISA)의 개인정보분쟁조정위원회로 개인정보 민원신청을 하실 수 있습니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[회원가입] 인증된 아이디가 이미 존재한다고 나옵니다.','마이쿠팡에서 쉽고 빠르게 배송 현황 확인이 가능합니다. 

배송예정일, 배송시작 메세지는 문자 및 알림내역(App push)에서 확인하실 수 있습니다');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[분쟁처리] 분쟁처리절차는 어떻게 되나요?','	
본인인증 시도 시 "회원님 명의로 인증된 아이디가 이미 존재합니다."로 안내되는 경우, 
고객님의 정보로 이미 가입된 다른 아이디가 존재하는 것이기 때문에 새로 본인인증을 받을 수 없습니다. 
이미 가입된 아이디를 사용해주시고, 비밀번호를 모르시는 경우 로그인 창에서 비밀번호 찾기 를 이용해주세요.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[이중인증] 본인확인을 하는데 인증번호가 오지 않습니다.','쿠팡은 고객님의 개인정보를 [개인정보 취급방침] 에서 고지한 범위 내에서 사용하며 고지한 범위를 초과하여 이용하거나, 타인 또는 타기업, 기관에 제공하지 않습니다.

※ 만일 회원 아이디와 비밀번호의 불법 도용 등 회원정보와 관련한 피해가 발생한 경우에는 바로 쿠팡 고객센터(☎1577-7011) 또는 모바일 앱 [고객센터> 채팅문의]를 통해 피해 내용을 알려주시기 바랍니다. 

※ 개인정보와 관련하여 분쟁이 있는 경우에는 2차 민원처리 기관인 개인정보보호진흥원(KISA)의 개인정보분쟁조정위원회로 개인정보 민원신청을 하실 수 있습니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[배송일정] 배송중인 상품의 위치를 알고 싶어요.','마이쿠팡에서 쉽고 빠르게 배송 현황 확인이 가능합니다. 

배송예정일, 배송시작 메세지는 문자 및 알림내역(App push)에서 확인하실 수 있습니다');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[배송일정] 주문한 상품은 언제 배송되나요 ?','쿠팡은 고객님의 개인정보를 [개인정보 취급방침] 에서 고지한 범위 내에서 사용하며 고지한 범위를 초과하여 이용하거나, 타인 또는 타기업, 기관에 제공하지 않습니다.

※ 만일 회원 아이디와 비밀번호의 불법 도용 등 회원정보와 관련한 피해가 발생한 경우에는 바로 쿠팡 고객센터(☎1577-7011) 또는 모바일 앱 [고객센터> 채팅문의]를 통해 피해 내용을 알려주시기 바랍니다. 

※ 개인정보와 관련하여 분쟁이 있는 경우에는 2차 민원처리 기관인 개인정보보호진흥원(KISA)의 개인정보분쟁조정위원회로 개인정보 민원신청을 하실 수 있습니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[회원가입] 인증된 아이디가 이미 존재한다고 나옵니다.','기존에 쿠팡에 등록한 휴대폰 번호가 현재 사용하시는 휴대폰 번호와 다를 경우 인증번호를 받지 못할 수 있습니다.

쿠팡 고객센터(1577-7011)로 문의하여 번호변경을 요청해주시기 바랍니다.



또는 쿠팡 고객센터 번호(1577-7011)가 수신거부 되어있는지 확인해 주십시오.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[이중인증] 본인확인을 하는데 인증번호가 오지 않습니다.','기존에 쿠팡에 등록한 휴대폰 번호가 현재 사용하시는 휴대폰 번호와 다를 경우 인증번호를 받지 못할 수 있습니다.

쿠팡 고객센터(1577-7011)로 문의하여 번호변경을 요청해주시기 바랍니다.



또는 쿠팡 고객센터 번호(1577-7011)가 수신거부 되어있는지 확인해 주십시오.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.','각 메일 서비스에 따라 메일 도착 시간이 조금 지연될 수 있습니다.
메일이 도착하지 않을 경우 스팸메일함을 확인해 보시거나 쿠팡의 메일 주소가 수신 차단되어 있지 않은 지 확인해 주시기 바랍니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[이중인증] 로그인 시 왜 휴대폰/이메일 본인 인증을 해야 하나요?','고객님 본인 명의의 계좌로만 환불이 가능합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.',' ① 쿠팡은 고객이 정당한 의견이나 불만을 제기하는 경우 그 신청을 받은 날로부터 고객의 불만 원인 등을 조사하여 평일(영업일) 기준 3일 이내에 진행 결과를 고객에게 전달하여야 하고, 평일(영업일) 기준 10일 이내에 조사 결과 또는 처리 방안을 고객에게 알려야 합니다.

  ② 고객은 제1항의 분쟁처리 결과에 대하여 이의가 있을 때에는 쿠팡의 처리센터를 통하여 이의를 제기할 수 있으며, 그 이의가 받아들여지지 않을 때에는 소비자분쟁조정위원회에 분쟁조정 신청을 할 수 있습니다.

  ③ 쿠팡은 고객으로부터 전화, FAX, E-mail, 사이트 게시판, 앱 등을 통해 정당한 의견이나 불만을 받을 수 있으며, 이와 같은 절차는 신청에서부터 조사, 처리 결과까지 고객이 원하는 방식으로 이루어져야 합니다.

  ④ 쿠팡은 제3항의 수단으로 불만 등을 접수 받은 경우 접수사실을 접수 받은 방법으로 통지하고 지체없이 사실관계를 파악하여 고객에게 손해가 발생하였는지 여부 등을 확인한 뒤에 처리 방안을 마련합니다.

  ⑤ 쿠팡은 고객문의에 대하여 쿠팡 사이트, 정책, 서비스 등을 개선하도록 노력합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[이중인증] 로그인 시 왜 휴대폰/이메일 본인 인증을 해야 하나요?','고객님 본인 명의의 계좌로만 환불이 가능합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[이중인증] 본인확인을 하는데 인증번호가 오지 않습니다.','각 메일 서비스에 따라 메일 도착 시간이 조금 지연될 수 있습니다.
메일이 도착하지 않을 경우 스팸메일함을 확인해 보시거나 쿠팡의 메일 주소가 수신 차단되어 있지 않은 지 확인해 주시기 바랍니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[회원가입] 인증된 아이디가 이미 존재한다고 나옵니다.','	
본인인증 시도 시 "회원님 명의로 인증된 아이디가 이미 존재합니다."로 안내되는 경우, 
고객님의 정보로 이미 가입된 다른 아이디가 존재하는 것이기 때문에 새로 본인인증을 받을 수 없습니다. 
이미 가입된 아이디를 사용해주시고, 비밀번호를 모르시는 경우 로그인 창에서 비밀번호 찾기 를 이용해주세요.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[주문] 긴급재난지원금을 쿠팡에서 사용 가능한가요?','로그인 시 본인인증을 하면 새로운 환경에서 로그인 한 것을 알 수 있어 고객님의 정보를 보호할 수 있습니다.



인증 시 인증번호는 문자 또는 이메일로 전송됩니다.

만약 이메일로 요청한 후 인증 번호를 받지 못하셨다면

메일함의 스팸 폴더에서 아래 이메일 주소로 받은 이메일이 있는 지 확인해 주십시오.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[환불] 다른 사람 명의의 계좌로 환불받을 수 있나요?',' ① 쿠팡은 고객이 정당한 의견이나 불만을 제기하는 경우 그 신청을 받은 날로부터 고객의 불만 원인 등을 조사하여 평일(영업일) 기준 3일 이내에 진행 결과를 고객에게 전달하여야 하고, 평일(영업일) 기준 10일 이내에 조사 결과 또는 처리 방안을 고객에게 알려야 합니다.

  ② 고객은 제1항의 분쟁처리 결과에 대하여 이의가 있을 때에는 쿠팡의 처리센터를 통하여 이의를 제기할 수 있으며, 그 이의가 받아들여지지 않을 때에는 소비자분쟁조정위원회에 분쟁조정 신청을 할 수 있습니다.

  ③ 쿠팡은 고객으로부터 전화, FAX, E-mail, 사이트 게시판, 앱 등을 통해 정당한 의견이나 불만을 받을 수 있으며, 이와 같은 절차는 신청에서부터 조사, 처리 결과까지 고객이 원하는 방식으로 이루어져야 합니다.

  ④ 쿠팡은 제3항의 수단으로 불만 등을 접수 받은 경우 접수사실을 접수 받은 방법으로 통지하고 지체없이 사실관계를 파악하여 고객에게 손해가 발생하였는지 여부 등을 확인한 뒤에 처리 방안을 마련합니다.

  ⑤ 쿠팡은 고객문의에 대하여 쿠팡 사이트, 정책, 서비스 등을 개선하도록 노력합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[회원정보] 개인정보와 관련된 피해를 입은 경우 어떻게 하나요?','아니오, 긴급재난지원금은 온라인 상거래에서 사용할 수 없으며, 쿠팡에서도 사용이 가능하지 않습니다,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.','고객님 본인 명의의 계좌로만 환불이 가능합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[배송일정] 주문한 상품은 언제 배송되나요 ?','아니오, 긴급재난지원금은 온라인 상거래에서 사용할 수 없으며, 쿠팡에서도 사용이 가능하지 않습니다,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[분쟁처리] 분쟁처리절차는 어떻게 되나요?','쿠팡은 고객님의 개인정보를 [개인정보 취급방침] 에서 고지한 범위 내에서 사용하며 고지한 범위를 초과하여 이용하거나, 타인 또는 타기업, 기관에 제공하지 않습니다.

※ 만일 회원 아이디와 비밀번호의 불법 도용 등 회원정보와 관련한 피해가 발생한 경우에는 바로 쿠팡 고객센터(☎1577-7011) 또는 모바일 앱 [고객센터> 채팅문의]를 통해 피해 내용을 알려주시기 바랍니다. 

※ 개인정보와 관련하여 분쟁이 있는 경우에는 2차 민원처리 기관인 개인정보보호진흥원(KISA)의 개인정보분쟁조정위원회로 개인정보 민원신청을 하실 수 있습니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[회원가입] 인증된 아이디가 이미 존재한다고 나옵니다.','기존에 쿠팡에 등록한 휴대폰 번호가 현재 사용하시는 휴대폰 번호와 다를 경우 인증번호를 받지 못할 수 있습니다.

쿠팡 고객센터(1577-7011)로 문의하여 번호변경을 요청해주시기 바랍니다.



또는 쿠팡 고객센터 번호(1577-7011)가 수신거부 되어있는지 확인해 주십시오.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[주문] 긴급재난지원금을 쿠팡에서 사용 가능한가요?',' ① 쿠팡은 고객이 정당한 의견이나 불만을 제기하는 경우 그 신청을 받은 날로부터 고객의 불만 원인 등을 조사하여 평일(영업일) 기준 3일 이내에 진행 결과를 고객에게 전달하여야 하고, 평일(영업일) 기준 10일 이내에 조사 결과 또는 처리 방안을 고객에게 알려야 합니다.

  ② 고객은 제1항의 분쟁처리 결과에 대하여 이의가 있을 때에는 쿠팡의 처리센터를 통하여 이의를 제기할 수 있으며, 그 이의가 받아들여지지 않을 때에는 소비자분쟁조정위원회에 분쟁조정 신청을 할 수 있습니다.

  ③ 쿠팡은 고객으로부터 전화, FAX, E-mail, 사이트 게시판, 앱 등을 통해 정당한 의견이나 불만을 받을 수 있으며, 이와 같은 절차는 신청에서부터 조사, 처리 결과까지 고객이 원하는 방식으로 이루어져야 합니다.

  ④ 쿠팡은 제3항의 수단으로 불만 등을 접수 받은 경우 접수사실을 접수 받은 방법으로 통지하고 지체없이 사실관계를 파악하여 고객에게 손해가 발생하였는지 여부 등을 확인한 뒤에 처리 방안을 마련합니다.

  ⑤ 쿠팡은 고객문의에 대하여 쿠팡 사이트, 정책, 서비스 등을 개선하도록 노력합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[이중인증] 로그인 시 왜 휴대폰/이메일 본인 인증을 해야 하나요?','주문하신 상품은 결제완료 후 안내된 배송예정일까지 배송됩니다. 
배송예정일은 판매자 및 배송지에 따라 차이가 있을 수 있습니다.
또한, 도서산간 지역 배송 혹은 천재지변으로 인해 배송일정이 변동될 수 있습니다.

■ 배송예정일 확인하기 (주문 전)
1. 상품페이지: 상품명과 가격 하단에 표시
2. 장바구니: 상품이미지 우측
3. 주문/결제 페이지: 상품정보에 표시');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[이중인증] 로그인 시 왜 휴대폰/이메일 본인 인증을 해야 하나요?','기존에 쿠팡에 등록한 휴대폰 번호가 현재 사용하시는 휴대폰 번호와 다를 경우 인증번호를 받지 못할 수 있습니다.

쿠팡 고객센터(1577-7011)로 문의하여 번호변경을 요청해주시기 바랍니다.



또는 쿠팡 고객센터 번호(1577-7011)가 수신거부 되어있는지 확인해 주십시오.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[이중인증] 로그인 시 왜 휴대폰/이메일 본인 인증을 해야 하나요?','아니오, 긴급재난지원금은 온라인 상거래에서 사용할 수 없으며, 쿠팡에서도 사용이 가능하지 않습니다,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.',' ① 쿠팡은 고객이 정당한 의견이나 불만을 제기하는 경우 그 신청을 받은 날로부터 고객의 불만 원인 등을 조사하여 평일(영업일) 기준 3일 이내에 진행 결과를 고객에게 전달하여야 하고, 평일(영업일) 기준 10일 이내에 조사 결과 또는 처리 방안을 고객에게 알려야 합니다.

  ② 고객은 제1항의 분쟁처리 결과에 대하여 이의가 있을 때에는 쿠팡의 처리센터를 통하여 이의를 제기할 수 있으며, 그 이의가 받아들여지지 않을 때에는 소비자분쟁조정위원회에 분쟁조정 신청을 할 수 있습니다.

  ③ 쿠팡은 고객으로부터 전화, FAX, E-mail, 사이트 게시판, 앱 등을 통해 정당한 의견이나 불만을 받을 수 있으며, 이와 같은 절차는 신청에서부터 조사, 처리 결과까지 고객이 원하는 방식으로 이루어져야 합니다.

  ④ 쿠팡은 제3항의 수단으로 불만 등을 접수 받은 경우 접수사실을 접수 받은 방법으로 통지하고 지체없이 사실관계를 파악하여 고객에게 손해가 발생하였는지 여부 등을 확인한 뒤에 처리 방안을 마련합니다.

  ⑤ 쿠팡은 고객문의에 대하여 쿠팡 사이트, 정책, 서비스 등을 개선하도록 노력합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.','고객님 본인 명의의 계좌로만 환불이 가능합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[배송일정] 주문한 상품은 언제 배송되나요 ?','마이쿠팡에서 쉽고 빠르게 배송 현황 확인이 가능합니다. 

배송예정일, 배송시작 메세지는 문자 및 알림내역(App push)에서 확인하실 수 있습니다');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[배송일정] 배송중인 상품의 위치를 알고 싶어요.','각 메일 서비스에 따라 메일 도착 시간이 조금 지연될 수 있습니다.
메일이 도착하지 않을 경우 스팸메일함을 확인해 보시거나 쿠팡의 메일 주소가 수신 차단되어 있지 않은 지 확인해 주시기 바랍니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[배송일정] 배송중인 상품의 위치를 알고 싶어요.','로그인 시 본인인증을 하면 새로운 환경에서 로그인 한 것을 알 수 있어 고객님의 정보를 보호할 수 있습니다.



인증 시 인증번호는 문자 또는 이메일로 전송됩니다.

만약 이메일로 요청한 후 인증 번호를 받지 못하셨다면

메일함의 스팸 폴더에서 아래 이메일 주소로 받은 이메일이 있는 지 확인해 주십시오.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[분쟁처리] 분쟁처리절차는 어떻게 되나요?','마이쿠팡에서 쉽고 빠르게 배송 현황 확인이 가능합니다. 

배송예정일, 배송시작 메세지는 문자 및 알림내역(App push)에서 확인하실 수 있습니다');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[회원정보] 개인정보와 관련된 피해를 입은 경우 어떻게 하나요?','각 메일 서비스에 따라 메일 도착 시간이 조금 지연될 수 있습니다.
메일이 도착하지 않을 경우 스팸메일함을 확인해 보시거나 쿠팡의 메일 주소가 수신 차단되어 있지 않은 지 확인해 주시기 바랍니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[환불] 다른 사람 명의의 계좌로 환불받을 수 있나요?','기존에 쿠팡에 등록한 휴대폰 번호가 현재 사용하시는 휴대폰 번호와 다를 경우 인증번호를 받지 못할 수 있습니다.

쿠팡 고객센터(1577-7011)로 문의하여 번호변경을 요청해주시기 바랍니다.



또는 쿠팡 고객센터 번호(1577-7011)가 수신거부 되어있는지 확인해 주십시오.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.','쿠팡은 고객님의 개인정보를 [개인정보 취급방침] 에서 고지한 범위 내에서 사용하며 고지한 범위를 초과하여 이용하거나, 타인 또는 타기업, 기관에 제공하지 않습니다.

※ 만일 회원 아이디와 비밀번호의 불법 도용 등 회원정보와 관련한 피해가 발생한 경우에는 바로 쿠팡 고객센터(☎1577-7011) 또는 모바일 앱 [고객센터> 채팅문의]를 통해 피해 내용을 알려주시기 바랍니다. 

※ 개인정보와 관련하여 분쟁이 있는 경우에는 2차 민원처리 기관인 개인정보보호진흥원(KISA)의 개인정보분쟁조정위원회로 개인정보 민원신청을 하실 수 있습니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[회원정보] 개인정보와 관련된 피해를 입은 경우 어떻게 하나요?','기존에 쿠팡에 등록한 휴대폰 번호가 현재 사용하시는 휴대폰 번호와 다를 경우 인증번호를 받지 못할 수 있습니다.

쿠팡 고객센터(1577-7011)로 문의하여 번호변경을 요청해주시기 바랍니다.



또는 쿠팡 고객센터 번호(1577-7011)가 수신거부 되어있는지 확인해 주십시오.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[이중인증] 본인확인을 하는데 인증번호가 오지 않습니다.',' ① 쿠팡은 고객이 정당한 의견이나 불만을 제기하는 경우 그 신청을 받은 날로부터 고객의 불만 원인 등을 조사하여 평일(영업일) 기준 3일 이내에 진행 결과를 고객에게 전달하여야 하고, 평일(영업일) 기준 10일 이내에 조사 결과 또는 처리 방안을 고객에게 알려야 합니다.

  ② 고객은 제1항의 분쟁처리 결과에 대하여 이의가 있을 때에는 쿠팡의 처리센터를 통하여 이의를 제기할 수 있으며, 그 이의가 받아들여지지 않을 때에는 소비자분쟁조정위원회에 분쟁조정 신청을 할 수 있습니다.

  ③ 쿠팡은 고객으로부터 전화, FAX, E-mail, 사이트 게시판, 앱 등을 통해 정당한 의견이나 불만을 받을 수 있으며, 이와 같은 절차는 신청에서부터 조사, 처리 결과까지 고객이 원하는 방식으로 이루어져야 합니다.

  ④ 쿠팡은 제3항의 수단으로 불만 등을 접수 받은 경우 접수사실을 접수 받은 방법으로 통지하고 지체없이 사실관계를 파악하여 고객에게 손해가 발생하였는지 여부 등을 확인한 뒤에 처리 방안을 마련합니다.

  ⑤ 쿠팡은 고객문의에 대하여 쿠팡 사이트, 정책, 서비스 등을 개선하도록 노력합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[환불] 다른 사람 명의의 계좌로 환불받을 수 있나요?','주문하신 상품은 결제완료 후 안내된 배송예정일까지 배송됩니다. 
배송예정일은 판매자 및 배송지에 따라 차이가 있을 수 있습니다.
또한, 도서산간 지역 배송 혹은 천재지변으로 인해 배송일정이 변동될 수 있습니다.

■ 배송예정일 확인하기 (주문 전)
1. 상품페이지: 상품명과 가격 하단에 표시
2. 장바구니: 상품이미지 우측
3. 주문/결제 페이지: 상품정보에 표시');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[비밀번호] 비밀번호 재설정 메일이 오지 않았어요.',' ① 쿠팡은 고객이 정당한 의견이나 불만을 제기하는 경우 그 신청을 받은 날로부터 고객의 불만 원인 등을 조사하여 평일(영업일) 기준 3일 이내에 진행 결과를 고객에게 전달하여야 하고, 평일(영업일) 기준 10일 이내에 조사 결과 또는 처리 방안을 고객에게 알려야 합니다.

  ② 고객은 제1항의 분쟁처리 결과에 대하여 이의가 있을 때에는 쿠팡의 처리센터를 통하여 이의를 제기할 수 있으며, 그 이의가 받아들여지지 않을 때에는 소비자분쟁조정위원회에 분쟁조정 신청을 할 수 있습니다.

  ③ 쿠팡은 고객으로부터 전화, FAX, E-mail, 사이트 게시판, 앱 등을 통해 정당한 의견이나 불만을 받을 수 있으며, 이와 같은 절차는 신청에서부터 조사, 처리 결과까지 고객이 원하는 방식으로 이루어져야 합니다.

  ④ 쿠팡은 제3항의 수단으로 불만 등을 접수 받은 경우 접수사실을 접수 받은 방법으로 통지하고 지체없이 사실관계를 파악하여 고객에게 손해가 발생하였는지 여부 등을 확인한 뒤에 처리 방안을 마련합니다.

  ⑤ 쿠팡은 고객문의에 대하여 쿠팡 사이트, 정책, 서비스 등을 개선하도록 노력합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[분쟁처리] 분쟁처리절차는 어떻게 되나요?','고객님 본인 명의의 계좌로만 환불이 가능합니다.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[이중인증] 로그인 시 왜 휴대폰/이메일 본인 인증을 해야 하나요?','	
본인인증 시도 시 "회원님 명의로 인증된 아이디가 이미 존재합니다."로 안내되는 경우, 
고객님의 정보로 이미 가입된 다른 아이디가 존재하는 것이기 때문에 새로 본인인증을 받을 수 없습니다. 
이미 가입된 아이디를 사용해주시고, 비밀번호를 모르시는 경우 로그인 창에서 비밀번호 찾기 를 이용해주세요.
');



--회원 프로필
CREATE TABLE tbluserprofile (
	ID VARCHAR2(100) NOT NULL,-- 식별 
	nickname VARCHAR2(45) NOT NULL, --한글 15자, 영어 45자
	intro VARCHAR2(300) NOT NULL, --30
	PATH VARCHAR2(4000) NOT NULL --profileimg1~100?
); --100개 나중에
ALTER TABLE tbluserprofile ADD CONSTRAINT tblup_id_pk PRIMARY KEY (ID);
ALTER TABLE tbluserprofile ADD CONSTRAINT tblup_nickname_unique UNIQUE(nickname);
ALTER TABLE tbluserprofile ADD CONSTRAINT tblup_id_fk FOREIGN KEY (ID)
    REFERENCES tbluser (ID);

insert into tblUserProfile(id,nickname,intro,path) values ('user1','nickname1','목표를 달성하기 위해 실행한 3단계 실행 계획','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user2','nickname2','안녕하세요.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user3','nickname3','저는 누구누구 입니다.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user4','nickname4','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user5','nickname5','6개월간 팔로워 500명 상승, 아이디어의 승리','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user6','nickname6','2년간 20억 매출에 기여한 마케터','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user7','nickname7','저는 엄청 많이 살 거예요','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user8','nickname8','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user9','nickname9','6개월간 팔로워 500명 상승, 아이디어의 승리','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user10','nickname10','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user11','nickname11','저는 판매 물건이 많아요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user12','nickname12','6개월간 팔로워 500명 상승, 아이디어의 승리','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user13','nickname13','2년간 20억 매출에 기여한 마케터','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user14','nickname14','새로운 관리 방안 모색으로 고객만족도 1위 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user15','nickname15','목표를 달성하기 위해 실행한 3단계 실행 계획','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user16','nickname16','안녕하세요.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user17','nickname17','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user18','nickname18','새로운 관리 방안 모색으로 고객만족도 1위 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user19','nickname19','저는 엄청 많이 살 거예요','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user20','nickname20','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user21','nickname21','6개월간 팔로워 500명 상승, 아이디어의 승리','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user22','nickname22','저는 판매 물건이 많아요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user23','nickname23','2년간 20억 매출에 기여한 마케터','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user24','nickname24','저는 판매 물건이 많아요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user25','nickname25','저는 판매 물건이 많아요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user26','nickname26','새로운 관리 방안 모색으로 고객만족도 1위 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user27','nickname27','2년간 20억 매출에 기여한 마케터','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user28','nickname28','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user29','nickname29','저는 엄청 많이 살 거예요','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user30','nickname30','저는 엄청 많이 살 거예요','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user31','nickname31','6개월간 팔로워 500명 상승, 아이디어의 승리','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user32','nickname32','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user33','nickname33','목표를 달성하기 위해 실행한 3단계 실행 계획','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user34','nickname34','저는 엄청 많이 살 거예요','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user35','nickname35','새로운 관리 방안 모색으로 고객만족도 1위 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user36','nickname36','저는 누구누구 입니다.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user37','nickname37','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user38','nickname38','반가워요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user39','nickname39','목표를 달성하기 위해 실행한 3단계 실행 계획','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user40','nickname40','고객 컴플레인 50건에 대처하며 키운 위기관리 능력','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user41','nickname41','저는 엄청 많이 살 거예요','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user42','nickname42','목표를 달성하기 위해 실행한 3단계 실행 계획','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user43','nickname43','6개월간 팔로워 500명 상승, 아이디어의 승리','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user44','nickname44','고객 컴플레인 50건에 대처하며 키운 위기관리 능력','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user45','nickname45','2년간 20억 매출에 기여한 마케터','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user46','nickname46','새로운 관리 방안 모색으로 고객만족도 1위 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user47','nickname47','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user48','nickname48','고객 컴플레인 50건에 대처하며 키운 위기관리 능력','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user49','nickname49','고객 컴플레인 50건에 대처하며 키운 위기관리 능력','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user50','nickname50','안녕하세요.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user51','nickname51','새로운 관리 방안 모색으로 고객만족도 1위 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user52','nickname52','6개월간 팔로워 500명 상승, 아이디어의 승리','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user53','nickname53','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user54','nickname54','고객 컴플레인 50건에 대처하며 키운 위기관리 능력','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user55','nickname55','반가워요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user56','nickname56','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user57','nickname57','목표를 달성하기 위해 실행한 3단계 실행 계획','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user58','nickname58','6개월간 팔로워 500명 상승, 아이디어의 승리','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user59','nickname59','새로운 관리 방안 모색으로 고객만족도 1위 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user60','nickname60','안녕하세요.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user61','nickname61','6개월간 팔로워 500명 상승, 아이디어의 승리','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user62','nickname62','고객 컴플레인 50건에 대처하며 키운 위기관리 능력','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user63','nickname63','목표를 달성하기 위해 실행한 3단계 실행 계획','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user64','nickname64','안녕하세요.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user65','nickname65','저는 판매 물건이 많아요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user66','nickname66','반가워요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user67','nickname67','저는 누구누구 입니다.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user68','nickname68','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user69','nickname69','반가워요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user70','nickname70','저는 엄청 많이 살 거예요','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user71','nickname71','저는 판매 물건이 많아요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user72','nickname72','목표를 달성하기 위해 실행한 3단계 실행 계획','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user73','nickname73','새로운 관리 방안 모색으로 고객만족도 1위 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user74','nickname74','반가워요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user75','nickname75','저는 누구누구 입니다.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user76','nickname76','저는 판매 물건이 많아요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user77','nickname77','저는 판매 물건이 많아요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user78','nickname78','저는 엄청 많이 살 거예요','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user79','nickname79','2년간 20억 매출에 기여한 마케터','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user80','nickname80','목표를 달성하기 위해 실행한 3단계 실행 계획','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user81','nickname81','목표를 달성하기 위해 실행한 3단계 실행 계획','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user82','nickname82','저는 누구누구 입니다.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user83','nickname83','저는 판매 물건이 많아요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user84','nickname84','반가워요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user85','nickname85','저는 누구누구 입니다.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user86','nickname86','6개월간 팔로워 500명 상승, 아이디어의 승리','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user87','nickname87','저는 판매 물건이 많아요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user88','nickname88','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user89','nickname89','저는 판매 물건이 많아요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user90','nickname90','고객 컴플레인 50건에 대처하며 키운 위기관리 능력','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user91','nickname91','안녕하세요.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user92','nickname92','2년간 20억 매출에 기여한 마케터','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user93','nickname93','새로운 관리 방안 모색으로 고객만족도 1위 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user94','nickname94','저는 판매 물건이 많아요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user95','nickname95','고객 컴플레인 50건에 대처하며 키운 위기관리 능력','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user96','nickname96','2년간 20억 매출에 기여한 마케터','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user97','nickname97','목표를 달성하기 위해 실행한 3단계 실행 계획','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user98','nickname98','저는 판매 물건이 많아요!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user99','nickname99','한 번의 성공을 위한 네 번의 끈기 있는 도전','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user100','nickname100','2년간 20억 매출에 기여한 마케터','default image.jpg');


-- 거래 문의

CREATE TABLE tblInquiryLog (
	inquiry_log_seq number not null, 
    product_seq number not null,
    id varchar2(100) not null

);

CREATE SEQUENCE inquiry_log_seq;

alter table tblInquiryLog 
    add constraint inquiry_log_seq_pk primary key(inquiry_log_seq);
    
alter table tblInquiryLog 
    add constraint product_seq_fk Foreign key(product_seq) references tblProduct(product_seq);
    
alter table tblInquiryLog 
    add constraint id_fk Foreign key(id) references tblUser(id);
    
    
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 45,'user70');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 159,'user57');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 139,'user96');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 80,'user8');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 113,'user69');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 90,'user9');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 99,'user3');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 99,'user96');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 93,'user51');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 71,'user24');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 129,'user26');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 117,'user95');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 30,'user16');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 52,'user85');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 86,'user12');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 40,'user9');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 82,'user45');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 108,'user48');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 23,'user64');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 157,'user57');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 10,'user92');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 79,'user88');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 142,'user86');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 18,'user4');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 53,'user38');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 6,'user79');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 147,'user67');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 35,'user30');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 32,'user60');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 99,'user34');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 113,'user96');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 78,'user22');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 61,'user75');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 4,'user22');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 62,'user16');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 24,'user42');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 70,'user64');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 58,'user46');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 23,'user90');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 124,'user76');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 85,'user25');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 148,'user26');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 115,'user56');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 61,'user87');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 22,'user89');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 30,'user36');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 95,'user72');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 59,'user7');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 103,'user41');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 30,'user80');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 47,'user10');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 101,'user75');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 70,'user66');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 54,'user37');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 75,'user8');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 131,'user93');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 110,'user39');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 51,'user7');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 5,'user55');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 47,'user8');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 80,'user66');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 82,'user86');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 127,'user46');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 28,'user52');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 81,'user2');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 101,'user65');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 79,'user5');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 139,'user41');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 48,'user69');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 36,'user81');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 137,'user35');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 104,'user45');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 50,'user82');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 31,'user1');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 130,'user46');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 159,'user47');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 121,'user42');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 135,'user75');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 98,'user65');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 11,'user75');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 75,'user42');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 125,'user29');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 87,'user20');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 23,'user82');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 38,'user37');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 105,'user79');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 117,'user72');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 101,'user17');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 14,'user91');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 117,'user10');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 20,'user40');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 38,'user28');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 128,'user89');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 89,'user80');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 52,'user76');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 154,'user47');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 76,'user64');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 148,'user65');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 77,'user2');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 108,'user49');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 101,'user98');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 33,'user3');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 114,'user48');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 99,'user48');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 94,'user84');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 53,'user47');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 147,'user8');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 96,'user100');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 91,'user7');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 108,'user67');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 157,'user24');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 54,'user7');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 132,'user89');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 144,'user51');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 75,'user35');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 58,'user70');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 108,'user16');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 156,'user17');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 159,'user8');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 125,'user31');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 2,'user19');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 100,'user48');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 27,'user92');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 78,'user38');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 44,'user86');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 8,'user38');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 19,'user40');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 98,'user49');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 51,'user94');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 20,'user53');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 7,'user67');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 103,'user94');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 137,'user35');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 3,'user69');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 1,'user15');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 11,'user86');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 67,'user27');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 14,'user82');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 128,'user48');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 69,'user33');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 129,'user31');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 123,'user82');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 150,'user75');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 69,'user5');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 36,'user55');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 62,'user47');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 62,'user77');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 149,'user44');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 139,'user16');
insert into tblInquiryLog values (inquiry_log_seq.nextVal, 58,'user34');

commit;