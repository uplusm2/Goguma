<<<<<<< HEAD
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
    id VARCHAR2(100) NOT NULL, -- ���ҹ���+���� 4~12�� (user1)
    password VARCHAR2(100) NOT NULL, --���ҹ���+���� 6~10��
    user_level NUMBER NOT NULL --ȸ��,2-������
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
	sido VARCHAR2(15)	NOT NULL,--�ȵ�,�����
	sgg	VARCHAR2(15)	NOT NULL,--
	emd	VARCHAR2(15)	NOT NULL
);

ALTER TABLE tblAddress ADD CONSTRAINT PK_TBLADDRESS PRIMARY KEY (address_seq);
CREATE SEQUENCE address_seq;

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (1, '����', '���ı�', 'ǳ����');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (2, '����', '���ı�', '���̵�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (3, '����', '���ı�', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (4, '����', '���ı�', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (5, '����', '������', 'ȭ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (6, '����', '������', '���赿');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (7, '����', '������', '���̵�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (8, '����', '������', '���');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (9, '����', '������', '����굿');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (10, '����', '������', '��ȭ��');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (11, '����', '������', '��ȭ��');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (12, '����', '���ϱ�', '�̾Ƶ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (13, '����', '���ϱ�', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (14, '����', '���ϱ�', '��õ��');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (15, '����', '���ϱ�', '����');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (16, '����', '���ϱ�', '�μ���');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (17, '����', '���빮��', 'ȫ����');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (18, '����', '���빮��', '��ŵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (19, '����', '���빮��', 'âõ��');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (20, '����', '���빮��', '�ϰ��µ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (21, '����', '������', '�߰');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (22, '����', '������', '�ɵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (23, '����', '������', '���ǵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (24, '����', '������', 'ȭ�絿');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (25, '����', '������', '���ڵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (26, '����', '������', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (27, '����', '������', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (28, '����', '������', '�Ű�����');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (29, '����', '������', '�밭��');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (30, '����', '������', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (31, '����', '������', '���ﵿ');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (32, '����', '������', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (33, '����', '������', '���굿');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (34, '����', '������', '�ż���');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (35, '����', '������', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (36, '����', '������', '���ε�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (37, '����', '������', '���ߵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (38, '����', '������', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (39, '����', '���α�', 'û�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (40, '����', '���α�', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (41, '����', '���α�', 'ȿ�ڵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (42, '����', '���α�', '���ǵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (43, '����', '���α�', '���ϵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (44, '����', '���α�', '���ε�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (45, '����', '���α�', '���ֵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (46, '����', '���α�', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (47, '����', '���α�', '�λ絿');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (48, '����', '���α�', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (49, '����', '���α�', '����');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (50, '����', '���α�', '������');



CREATE TABLE tblUserInfo (
    id VARCHAR2(100) NOT NULL, 
    address_seq NUMBER NOT NULL, --fk ���� 
    name VARCHAR2(21) NOT NULL, --�ѱ�2~5��
    address VARCHAR2(100) NOT NULL, --���ּ�, ���� ����
    tel VARCHAR2(100) NOT NULL, --���ڸ� 11
    email VARCHAR2(90) NOT NULL, --@�˾Ƽ�
    birth DATE NOT NULL, --����
    gender CHAR(1) NOT NULL, --F/M
    since DATE default sysdate NOT NULL --�˾Ƽ�
);

ALTER TABLE tblUserInfo
    ADD CONSTRAINT tblUI_id_pk PRIMARY KEY (id);
    
ALTER TABLE tblUserInfo
    ADD CONSTRAINT tblUI_id_fk FOREIGN KEY (id) REFERENCES tblUser(id);
    
ALTER TABLE tblUserInfo
    ADD CONSTRAINT tblUI_gender_ck CHECK (gender in ('f','m'));
    
ALTER TABLE tblUserInfo
    ADD CONSTRAINT tblUI_address_seq_fk FOREIGN KEY (address_seq) REFERENCES tblAddress(address_seq);

insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user1', 29, '������', '�ְ� ����������Ʈ 588�� 512ȣ', '01097244474', 'user1@daum.net', '84-08-25', 'm', '20-11-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user2', 16, '������', 'ȣ������ E���Ѽ������Ʈ 407�� 44ȣ', '01081807781', 'user2@daum.net', '06-03-02', 'f', '21-08-12');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user3', 16, '������', '�ְ� ���̾���Ʈ 608�� 916ȣ', '01058624356', 'user3@daum.net', '35-10-17', 'm', '21-09-20');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user4', 14, '������', '�Ѻ����� ������������Ʈ 717�� 142ȣ', '01046246116', 'user4@daum.net', '34-03-14', 'f', '20-02-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user5', 29, '������', 'ȣ������ ������ũ����Ʈ 107�� 72ȣ', '01065939529', 'user5@daum.net', '50-07-21', 'm', '20-04-13');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user6', 5, '���缷', '�Ѻ����� ���̾Ⱦ���Ʈ 629�� 37ȣ', '01036186804', 'user6@gmail.com', '89-02-02', 'f', '21-03-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user7', 6, '������', '�ŻＺ����Ʈ 205�� 1414ȣ', '01063052160', 'user7@gmail.com', '81-06-20', 'f', '20-01-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user8', 2, '������', '�ٶ����� ��������Ʈ 608�� 1115ȣ', '01019933591', 'user8@gmail.com', '13-07-05', 'm', '20-08-23');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user9', 12, '������', '�Ѻ����� ��������Ʈ����Ʈ 548�� 212ȣ', '01025561040', 'user9@gmail.com', '51-05-23', 'f', '21-03-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user10', 6, '�̹ι�', '���縶�� �Ｚ����Ʈ 732�� 1115ȣ', '01031786363', 'user10@daum.net', '81-09-07', 'f', '20-06-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user11', 14, '������', '�Ѻ����� ����������Ʈ 241�� 55ȣ', '01067926609', 'user11@naver.com', '67-09-12', 'f', '21-02-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user12', 20, '���缱', '�ְ� ���̾���Ʈ 825�� 715ȣ', '01086031607', 'user12@daum.net', '70-09-24', 'm', '21-02-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user13', 27, '�ּ���', '���縶�� ����������Ʈ 274�� 913ȣ', '01014421810', 'user13@daum.net', '73-01-07', 'f', '21-09-22');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user14', 30, '�ڿ���', '�ູ���� ������ũ����Ʈ 518�� 1412ȣ', '01068564300', 'user14@daum.net', '75-05-10', 'f', '21-01-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user15', 22, '�ȹ���', '�ູ���� �������Ʈ 360�� 44ȣ', '01067121548', 'user15@gmail.com', '33-08-28', 'f', '21-03-21');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user16', 4, '������', '�ٶ����� ������ũ����Ʈ 180�� 142ȣ', '01094558032', 'user16@naver.com', '47-10-18', 'f', '21-05-03');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user17', 19, '������', '�Ŵ�������Ʈ 850�� 416ȣ', '01082638789', 'user17@daum.net', '78-11-02', 'f', '20-11-22');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user18', 2, '������', '�Ѻ����� ����������Ʈ 850�� 134ȣ', '01028556819', 'user18@gmail.com', '49-11-10', 'f', '21-01-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user19', 7, '�Ѿȹ�', '�ٶ����� ����������Ʈ 815�� 45ȣ', '01080922965', 'user19@daum.net', '24-04-01', 'f', '20-01-14');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user20', 25, '������', '���縶�� ��������Ʈ 846�� 69ȣ', '01058284478', 'user20@daum.net', '34-01-19', 'f', '20-02-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user21', 20, '���ؿ�', '���縶�� ����������Ʈ 831�� 59ȣ', '01054069299', 'user21@gmail.com', '37-10-20', 'm', '20-03-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user22', 4, '������', '���縶�� �Ｚ����Ʈ 249�� 1616ȣ', '01023316038', 'user22@naver.com', '05-11-07', 'f', '21-06-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user23', 8, '������', '�ٶ����� ��������Ʈ����Ʈ 129�� 513ȣ', '01088418368', 'user23@naver.com', '10-05-22', 'f', '21-11-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user24', 18, '�ڼ���', '�ٶ����� ���̾Ⱦ���Ʈ 195�� 131ȣ', '01035881340', 'user24@gmail.com', '81-04-15', 'f', '21-06-03');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user25', 13, '������', 'ȣ������ ��������Ʈ����Ʈ 341�� 84ȣ', '01091239810', 'user25@naver.com', '02-05-08', 'm', '20-04-08');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user26', 7, '�ֹ���', '�ٶ����� �������Ʈ 633�� 108ȣ', '01094738336', 'user26@naver.com', '26-06-22', 'f', '20-03-04');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user27', 15, '�Ѽ���', '�Ѻ����� ���̾���Ʈ 187�� 94ȣ', '01098343433', 'user27@gmail.com', '01-07-28', 'm', '20-09-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user28', 21, '�ȼ���', '�ٶ����� �Ե�ĳ������Ʈ 685�� 111ȣ', '01059556232', 'user28@naver.com', '80-10-03', 'm', '20-01-06');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user29', 15, '������', '�Ѻ����� �Ｚ����Ʈ 401�� 814ȣ', '01029958412', 'user29@gmail.com', '62-08-22', 'f', '20-07-11');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user30', 6, '�Ѿȼ�', '�ູ���� �Ｚ����Ʈ 302�� 28ȣ', '01095498133', 'user30@daum.net', '53-04-18', 'm', '21-04-22');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user31', 11, '�̾ȿ�', 'ȣ������ E���Ѽ������Ʈ 472�� 65ȣ', '01030285803', 'user31@gmail.com', '64-07-22', 'f', '20-08-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user32', 5, '���ؼ�', 'ȣ������ ����������Ʈ 747�� 1216ȣ', '01085985885', 'user32@daum.net', '33-06-23', 'f', '20-06-23');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user33', 4, '���ο�', '�ž�����ũ����Ʈ 206�� 16ȣ', '01035781022', 'user33@daum.net', '35-05-15', 'f', '21-08-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user34', 3, '������', '���縶�� ���̾���Ʈ 275�� 1615ȣ', '01045303984', 'user34@gmail.com', '68-03-16', 'm', '21-03-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user35', 17, '������', '�ְ� ������ũ����Ʈ 596�� 916ȣ', '01067546812', 'user35@gmail.com', '23-03-28', 'f', '21-02-23');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user36', 9, '������', '�ְ� ������������Ʈ 726�� 118ȣ', '01028722278', 'user36@daum.net', '53-01-22', 'm', '20-03-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user37', 29, '���ϼ�', '�ٶ����� E���Ѽ������Ʈ 617�� 616ȣ', '01030274868', 'user37@daum.net', '95-10-02', 'm', '21-06-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user38', 25, '�ȿ���', '���縶�� ���̾���Ʈ 644�� 126ȣ', '01015574583', 'user38@naver.com', '16-11-07', 'm', '20-05-06');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user39', 12, '�̼���', 'ȣ������ ��������Ʈ����Ʈ 140�� 1014ȣ', '01068733295', 'user39@daum.net', '62-05-19', 'f', '20-11-14');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user40', 13, '������', '�ž�����ũ����Ʈ 748�� 117ȣ', '01057509817', 'user40@daum.net', '93-09-28', 'f', '21-01-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user41', 19, '������', 'ȣ������ ���̾���Ʈ 157�� 1516ȣ', '01068358234', 'user41@gmail.com', '04-03-15', 'f', '20-01-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user42', 17, '������', '�ŷԵ�ĳ������Ʈ 350�� 416ȣ', '01061054540', 'user42@daum.net', '74-03-08', 'm', '20-02-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user43', 14, '������', '�ٶ����� ��������Ʈ 859�� 141ȣ', '01059973031', 'user43@gmail.com', '29-07-26', 'f', '21-07-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user44', 30, '�Ӿ���', '�ְ� ����������Ʈ 553�� 1515ȣ', '01031324560', 'user44@gmail.com', '99-09-26', 'f', '20-07-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user45', 20, '�־���', 'ȣ������ E���Ѽ������Ʈ 518�� 71ȣ', '01030938436', 'user45@naver.com', '36-10-23', 'm', '21-10-11');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user46', 13, '������', '�ٶ����� ��������Ʈ����Ʈ 636�� 510ȣ', '01087554076', 'user46@naver.com', '09-09-01', 'f', '20-04-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user47', 7, '������', '�ְ� ����������Ʈ 765�� 97ȣ', '01018498041', 'user47@daum.net', '69-02-18', 'm', '20-08-14');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user48', 3, '������', '�ٶ����� �������Ʈ 423�� 812ȣ', '01029578152', 'user48@naver.com', '09-04-27', 'f', '20-03-05');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user49', 13, '���ϼ�', '�ູ���� ���̾���Ʈ 769�� 55ȣ', '01062069926', 'user49@gmail.com', '14-02-17', 'f', '20-03-26');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user50', 18, '������', '�Ѻ����� ���̾���Ʈ 186�� 28ȣ', '01047181675', 'user50@naver.com', '25-01-17', 'f', '20-06-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user51', 10, '�̼���', '�ູ���� ���̾Ⱦ���Ʈ 879�� 68ȣ', '01054176986', 'user51@naver.com', '60-10-10', 'f', '21-06-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user52', 24, '�ȹ���', '���縶�� �������Ʈ 453�� 1411ȣ', '01032936269', 'user52@naver.com', '22-03-07', 'm', '20-08-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user53', 25, '�ּ���', '�Ѻ����� �Ե�ĳ������Ʈ 777�� 810ȣ', '01024818996', 'user53@gmail.com', '22-05-02', 'f', '21-02-06');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user54', 17, '��ȼ�', '�ְ� ���̾Ⱦ���Ʈ 277�� 313ȣ', '01032639461', 'user54@naver.com', '66-08-25', 'f', '20-07-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user55', 23, '������', '���縶�� ������ũ����Ʈ 493�� 213ȣ', '01030585236', 'user55@gmail.com', '12-09-26', 'f', '21-11-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user56', 14, '������', '�ٶ����� ��������Ʈ 444�� 92ȣ', '01019292299', 'user56@naver.com', '91-10-27', 'm', '20-03-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user57', 7, '������', '�ְ� ������ũ����Ʈ 186�� 1113ȣ', '01072434241', 'user57@gmail.com', '09-01-25', 'm', '20-05-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user58', 22, '������', '������������Ʈ 361�� 1112ȣ', '01063776598', 'user58@naver.com', '56-07-27', 'f', '21-02-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user59', 4, '�̹μ�', '�ٶ����� ����������Ʈ 466�� 107ȣ', '01044483700', 'user59@gmail.com', '24-04-15', 'm', '20-08-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user60', 26, '������', '�ְ� ����������Ʈ 810�� 313ȣ', '01098856654', 'user60@gmail.com', '70-06-02', 'f', '20-02-13');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user61', 4, '������', '�ٶ����� �������Ʈ 593�� 84ȣ', '01089914755', 'user61@naver.com', '77-04-27', 'm', '21-06-05');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user62', 8, '�ڼ���', '�ְ� �Ｚ����Ʈ 528�� 1111ȣ', '01016659130', 'user62@gmail.com', '72-11-07', 'f', '21-10-12');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user63', 11, '�����', '�ٶ����� ���̾���Ʈ 730�� 55ȣ', '01069663150', 'user63@gmail.com', '20-03-28', 'm', '21-01-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user64', 29, '�̼���', '�ٶ����� ������������Ʈ 203�� 55ȣ', '01058369906', 'user64@naver.com', '12-01-05', 'm', '21-09-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user65', 20, '������', '�ູ���� �Ե�ĳ������Ʈ 746�� 916ȣ', '01017863188', 'user65@naver.com', '52-11-10', 'm', '21-03-08');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user66', 10, '���ؼ�', '���������Ʈ 841�� 1216ȣ', '01065548477', 'user66@daum.net', '24-04-24', 'f', '20-10-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user67', 7, '���ؿ�', '�ŷ��̾Ⱦ���Ʈ 417�� 77ȣ', '01083378638', 'user67@naver.com', '64-05-18', 'm', '20-01-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user68', 21, '������', 'ȣ������ �������Ʈ 729�� 78ȣ', '01061634851', 'user68@daum.net', '74-04-07', 'm', '21-09-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user69', 1, '������', 'ȣ������ �Ｚ����Ʈ 480�� 116ȣ', '01089768490', 'user69@naver.com', '17-06-01', 'm', '21-07-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user70', 11, '�Ѽ���', '���縶�� ������������Ʈ 493�� 119ȣ', '01054978907', 'user70@naver.com', '26-01-18', 'f', '20-10-03');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user71', 23, '������', '�Ѻ����� �Ե�ĳ������Ʈ 612�� 122ȣ', '01018682784', 'user71@gmail.com', '81-09-28', 'f', '21-06-22');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user72', 16, '������', '����������Ʈ����Ʈ 467�� 118ȣ', '01086854564', 'user72@naver.com', '83-10-04', 'm', '20-05-19');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user73', 10, '���ع�', '�ູ���� ������ũ����Ʈ 143�� 310ȣ', '01013871159', 'user73@gmail.com', '24-04-13', 'f', '21-06-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user74', 23, '�ֿ���', '�ٶ����� ������������Ʈ 250�� 1116ȣ', '01062424607', 'user74@daum.net', '05-07-06', 'f', '21-07-04');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user75', 4, '�ּ���', 'ȣ������ ����������Ʈ 863�� 169ȣ', '01014282799', 'user75@naver.com', '41-05-02', 'f', '21-03-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user76', 18, '�Ѽ���', '�ٶ����� E���Ѽ������Ʈ 754�� 122ȣ', '01059509867', 'user76@naver.com', '47-01-21', 'm', '21-11-20');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user77', 2, '���ϼ�', 'ȣ������ ������������Ʈ 884�� 159ȣ', '01059221640', 'user77@daum.net', '33-04-05', 'f', '21-08-17');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user78', 18, '�迬��', '���縶�� ���̾���Ʈ 811�� 72ȣ', '01081687551', 'user78@naver.com', '01-07-27', 'm', '20-07-05');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user79', 8, '������', '�Ѻ����� ������������Ʈ 781�� 1411ȣ', '01056126425', 'user79@naver.com', '54-10-17', 'm', '20-11-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user80', 10, '���缱', 'ȣ������ ���̾���Ʈ 532�� 129ȣ', '01024524538', 'user80@daum.net', '38-03-02', 'm', '21-11-04');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user81', 6, '���ο�', '�ٶ����� ��������Ʈ 490�� 810ȣ', '01037753009', 'user81@daum.net', '72-08-22', 'm', '21-03-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user82', 10, '������', '���������Ʈ 445�� 124ȣ', '01049751197', 'user82@naver.com', '78-11-17', 'f', '20-09-26');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user83', 16, '�ѹ���', '�Ŵ�������Ʈ 330�� 88ȣ', '01022254152', 'user83@gmail.com', '31-02-04', 'f', '20-11-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user84', 22, '������', 'ȣ������ �Ｚ����Ʈ 565�� 143ȣ', '01039841591', 'user84@gmail.com', '08-01-17', 'f', '20-10-05');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user85', 8, '������', '�ְ� E���Ѽ������Ʈ 301�� 1212ȣ', '01047823022', 'user85@naver.com', '22-06-10', 'm', '20-06-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user86', 12, '������', '�Ŵ�������Ʈ 811�� 19ȣ', '01042686935', 'user86@naver.com', '44-07-05', 'm', '21-08-23');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user87', 5, '������', '�ٶ����� �Ե�ĳ������Ʈ 723�� 138ȣ', '01061901586', 'user87@gmail.com', '44-04-24', 'm', '21-06-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user88', 10, '�ȿ���', 'ȣ������ ������������Ʈ 752�� 13ȣ', '01093459292', 'user88@daum.net', '86-04-24', 'f', '20-10-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user89', 25, '�ֹμ�', '��������������Ʈ 506�� 1216ȣ', '01061572643', 'user89@gmail.com', '29-05-24', 'f', '21-06-19');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user90', 4, '���ȿ�', 'ȣ������ �Ｚ����Ʈ 498�� 1113ȣ', '01052516471', 'user90@daum.net', '12-10-18', 'm', '20-02-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user91', 11, '�ڼ���', '�ٶ����� E���Ѽ������Ʈ 451�� 18ȣ', '01033123793', 'user91@daum.net', '29-11-04', 'f', '21-03-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user92', 11, '������', 'ȣ������ ������������Ʈ 833�� 166ȣ', '01038176950', 'user92@naver.com', '02-08-07', 'f', '20-01-26');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user93', 2, '������', '�ְ� ������������Ʈ 172�� 132ȣ', '01082134396', 'user93@daum.net', '87-07-17', 'm', '20-10-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user94', 30, '�־���', '�ູ���� ������������Ʈ 237�� 816ȣ', '01076156610', 'user94@daum.net', '97-06-25', 'm', '20-01-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user95', 29, '�Ѽ���', '�ູ���� �Ｚ����Ʈ 566�� 716ȣ', '01015781330', 'user95@naver.com', '99-10-08', 'm', '20-01-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user96', 22, '������', 'ȣ������ ���̾Ⱦ���Ʈ 517�� 912ȣ', '01074044041', 'user96@naver.com', '58-01-05', 'm', '21-09-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user97', 21, '������', 'ȣ������ �������Ʈ 800�� 94ȣ', '01018603676', 'user97@naver.com', '95-02-08', 'f', '21-06-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user98', 5, '������', '�Ѻ����� ���̾Ⱦ���Ʈ 600�� 111ȣ', '01034291276', 'user98@gmail.com', '14-01-25', 'f', '20-08-10');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user99', 20, '������', '�ŷ��̾Ⱦ���Ʈ 457�� 138ȣ', '01047211370', 'user99@gmail.com', '76-06-05', 'f', '21-04-06');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user100', 18, '������', '��E���Ѽ������Ʈ 375�� 1010ȣ', '01073351097', 'user100@naver.com', '49-03-26', 'm', '20-10-02');


-- ��ǰ ����
CREATE TABLE tblProductType (
	product_type_seq	NUMBER	NOT NULL,
	name	VARCHAR2(100)	NOT NULL
);

CREATE SEQUENCE product_type_seq;

ALTER TABLE tblProductType ADD CONSTRAINT tblPT_product_type_seq_pk PRIMARY KEY(product_type_seq);

insert into tblProductType (product_type_seq, name) values (1, '�����б��');
insert into tblProductType (product_type_seq, name) values (2, '��Ȱ����');
insert into tblProductType (product_type_seq, name) values (3, '����/���׸���');
insert into tblProductType (product_type_seq, name) values (4, '���Ƶ�');
insert into tblProductType (product_type_seq, name) values (5, '��Ȱ/������ǰ');
insert into tblProductType (product_type_seq, name) values (6, '���Ƶ���');
insert into tblProductType (product_type_seq, name) values (7, '������/����');
insert into tblProductType (product_type_seq, name) values (8, '������ȭ');
insert into tblProductType (product_type_seq, name) values (9, '�����Ƿ�');
insert into tblProductType (product_type_seq, name) values (10, '�����м�/��ȭ');
insert into tblProductType (product_type_seq, name) values (11, '����/���');
insert into tblProductType (product_type_seq, name) values (12, '��Ƽ/�̿�');
insert into tblProductType (product_type_seq, name) values (13, '�ݷ�������ǰ');
insert into tblProductType (product_type_seq, name) values (14, '����/Ƽ��/����');
insert into tblProductType (product_type_seq, name) values (15, '�Ĺ�');
insert into tblProductType (product_type_seq, name) values (16, '��Ÿ �߰�ǰ');


-- ��ǰ
CREATE TABLE tblProduct (
	product_seq	NUMBER	NOT NULL,               --��ǰ��ȣ(PK)
	id	VARCHAR2(100)	NOT NULL,               --�Ǹ��� ���̵�(FK). USER1~100
	address_seq	NUMBER	NOT NULL,               --������ȣ(FK) 30��
	product_type_seq	NUMBER	NOT NULL,       --��ǰ����(FK) �˾Ƽ�
	name	VARCHAR2(100)	NOT NULL,           --��ǰ�̸�   ���ľ�+���
	price	NUMBER	NOT NULL,                   --��ǰ���� 1000~1000000
	is_auction CHAR(1)	DEFAULT 'n' NOT NULL,   --��ſ��� n/y
	content	VARCHAR2(4000)	NOT NULL,           --�󼼳��� ���ľ�+����+��õ
	regdate DATE DEFAULT sysdate NOT NULL,      --�ۼ���¥   �˾Ƽ�.. 
	is_completion CHAR(1) DEFAULT 'n' NOT NULL, --�Ǹſ��� n/y..
	readcount NUMBER DEFAULT 0 NOT NULL,        --��ȸ�� ������
	is_deletion CHAR(1) DEFAULT 'n' NOT NULL	--��������
);

CREATE SEQUENCE product_seq;

ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_product_seq_pk PRIMARY KEY(product_seq);
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_seller_id_fk FOREIGN KEY(id) REFERENCES tblUser(id);
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_address_seq_fk FOREIGN KEY(address_seq) REFERENCES tblAddress(address_seq);
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_product_type_fk FOREIGN KEY(product_type_seq) REFERENCES tblProductType(product_type_seq);
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_is_auction_ck CHECK(is_auction IN ('n', 'y'));
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_is_completion_ck CHECK(is_completion IN ('n', 'y'));

insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (1, 'user61', 29, 6, '�̰��� ������ ����ǰ', 38000, 'n', '����ǰ�Դϴ�.', '2020-01-09', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (2, 'user100', 33, 10, '�ǾƳ��峭��', 270000, 'y', '�ΰ� �������ϴ�.', '2020-01-18', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (3, 'user43', 36, 7, 'û����', 727000, 'n', '�ù�ŷ� ���ؿ�', '2020-01-23', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (4, 'user10', 6, 2, '������', 454000, 'y', '�ù�ŷ� ���ؿ�', '2020-01-28', 'y', 21);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (5, 'user100', 37, 8, '���� �Ǹ��մϴ�', 11000, 'n', '�ΰ� �������ϴ�.', '2020-02-04', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (6, 'user58', 28, 8, '�̰��� ���ǽ� �˴ϴ�', 46000, 'y', '����ǰ�Դϴ�.', '2020-02-11', 'y', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (7, 'user71', 50, 10, '�������� �Ⱦƿ�', 301000, 'n', '�ΰ� �������ϴ�.', '2020-02-15', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (8, 'user66', 48, 14, '�� �� �� ������', 798000, 'y', '�ù�ŷ� ���ؿ�', '2020-02-18', 'y', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (9, 'user75', 43, 10, '�� �� �� å��', 471000, 'n', '��ŷ� ���մϴ�', '2020-02-22', 'y', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (10, 'user93', 16, 7, '�̰��� ���̺� �����մϴ�', 298000, 'y', '�ΰ� �������ϴ�.', '2020-02-24', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (11, 'user29', 18, 15, '�ǾƳ��峭��', 373000, 'n', '���ŷ� ���ؿ�', '2020-02-28', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (12, 'user5', 28, 12, '����', 299000, 'y', '�ù�ŷ� ���ؿ�', '2020-03-02', 'y', 6);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (13, 'user57', 20, 1, '�̰��� ������', 574000, 'n', '���� ���� ��ǰ�̿���~', '2020-03-06', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (14, 'user17', 36, 12, '�̰��� û���� �Ⱦƿ�', 23000, 'y', '����ǰ�Դϴ�.', '2020-03-13', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (15, 'user56', 33, 8, '�̰��� ���䳪��Ʈ �˴ϴ�', 505000, 'n', '��ŷ� ���մϴ�', '2020-03-19', 'y', 29);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (16, 'user14', 8, 4, '�����϶��� �Ǹ��մϴ�', 195000, 'y', '���ŷ� ���ؿ�', '2020-03-23', 'y', 12);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (17, 'user59', 15, 3, '�ǾƳ��峭��', 564000, 'n', '��ŷ� ���մϴ�', '2020-03-31', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (18, 'user89', 45, 13, '���䳪��Ʈ �˴ϴ�', 87000, 'y', '�ù�ŷ� ���ؿ�', '2020-04-07', 'y', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (19, 'user13', 37, 5, '�ǾƳ��峭�� �Ǹ�', 335000, 'n', '����ǰ�Դϴ�.', '2020-04-08', 'y', 13);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (20, 'user90', 40, 9, '���� �Ⱦƿ�', 817000, 'y', '��ŷ� ���մϴ�', '2020-04-13', 'y', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (21, 'user36', 10, 10, '�̰��� ������', 966000, 'n', '�ù�ŷ� ���ؿ�', '2020-04-18', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (22, 'user42', 21, 5, '��������', 495000, 'y', '���� ���� ��ǰ�̿���~', '2020-04-25', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (23, 'user15', 30, 2, '������ ����ǰ', 785000, 'n', '��ŷ� ���մϴ�', '2020-04-29', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (24, 'user97', 30, 12, '���ڷ�����', 825000, 'y', '��ŷ� ���մϴ�', '2020-05-03', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (25, 'user57', 28, 7, '���� �Ǹ��մϴ�', 751000, 'n', '��ŷ� ���մϴ�', '2020-05-10', 'y', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (26, 'user55', 36, 14, '�߰� ������', 852000, 'y', '���ŷ� ���ؿ�', '2020-05-11', 'y', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (27, 'user95', 18, 14, '�߰� ������ �˴ϴ�', 357000, 'n', '��ŷ� ���մϴ�', '2020-05-12', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (28, 'user86', 12, 8, '�߰� ���ڹ�', 775000, 'y', '�ù�ŷ� ���ؿ�', '2020-05-15', 'y', 13);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (29, 'user97', 50, 12, '�̰��� ���䳪��Ʈ �˴ϴ�', 843000, 'n', '�ù�ŷ� ���ؿ�', '2020-05-23', 'y', 11);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (30, 'user45', 13, 3, '�ڱⰳ�� ���� �������ϴ�.', 89000, 'y', '���ŷ� ���ؿ�', '2020-05-29', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (31, 'user93', 7, 15, '�����е� �������ϴ�.', 830000, 'n', '��ŷ� ���մϴ�', '2020-06-01', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (32, 'user37', 16, 14, '�߰� ������', 808000, 'y', '���� ���� ��ǰ�̿���~', '2020-06-02', 'y', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (33, 'user13', 22, 2, '�� �� �� û�ұ� ����ǰ', 134000, 'n', '����ǰ�Դϴ�.', '2020-06-04', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (34, 'user91', 24, 8, '���ڷ�����', 506000, 'y', '���� ���� ��ǰ�̿���~', '2020-06-13', 'y', 11);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (35, 'user44', 25, 5, '�߰� ���� �Ǹ�', 280000, 'n', '�ΰ� �������ϴ�.', '2020-06-16', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (36, 'user7', 27, 2, '�� �� �� �������� ���� �������ϴ�.', 94000, 'y', '���� �ŷ� ���ؿ�^^', '2020-06-18', 'y', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (37, 'user24', 17, 8, '��������', 596000, 'n', '���� ���� ��ǰ�̿���~', '2020-06-23', 'y', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (38, 'user50', 49, 10, '������', 611000, 'y', '���� �ŷ� ���ؿ�^^', '2020-07-01', 'y', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (39, 'user53', 41, 1, '�ǾƳ��峭�� �Ⱦƿ�', 159000, 'n', '���� �ŷ� ���ؿ�^^', '2020-07-06', 'y', 29);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (40, 'user16', 33, 8, '���䳪��Ʈ', 519000, 'y', '���� �ŷ� ���ؿ�^^', '2020-07-07', 'y', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (41, 'user91', 49, 9, '�߰� ���̺�', 905000, 'n', '�ΰ� �������ϴ�.', '2020-07-13', 'y', 11);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (42, 'user73', 46, 10, '�� �� �� ���ȭ', 272000, 'y', '����ǰ�Դϴ�.', '2020-07-15', 'y', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (43, 'user91', 25, 9, '�� �� �� ���̺�', 96000, 'n', '���� ���� ��ǰ�̿���~', '2020-07-16', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (44, 'user19', 38, 9, '���е�ȭ����', 582000, 'y', '���� ���� ��ǰ�̿���~', '2020-07-17', 'y', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (45, 'user97', 41, 7, '�̰��� ���� ����ǰ', 698000, 'n', '�ù�ŷ� ���ؿ�', '2020-07-22', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (46, 'user93', 25, 13, '�߰� ������', 838000, 'y', '��ŷ� ���մϴ�', '2020-07-27', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (47, 'user46', 27, 11, '�̰��� �����϶���', 701000, 'n', '�ΰ� �������ϴ�.', '2020-07-28', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (48, 'user41', 35, 4, '�� �� �� �������� ���� �������ϴ�.', 663000, 'y', '���� �ŷ� ���ؿ�^^', '2020-08-02', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (49, 'user67', 32, 3, '���ڹ�', 209000, 'n', '���� �ŷ� ���ؿ�^^', '2020-08-05', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (50, 'user98', 28, 3, '�����϶��� �Ǹ�', 695000, 'y', '���ŷ� ���ؿ�', '2020-08-13', 'y', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (51, 'user96', 23, 11, '�ڹ��� ���� �����մϴ�', 156000, 'n', '�ΰ� �������ϴ�.', '2020-08-16', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (52, 'user73', 23, 3, '�� �� �� ���̺� �Ǹ�', 510000, 'y', '�ù�ŷ� ���ؿ�', '2020-08-20', 'y', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (53, 'user44', 7, 7, '���䳪��Ʈ', 140000, 'n', '����ǰ�Դϴ�.', '2020-08-26', 'y', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (54, 'user71', 22, 9, '�̰��� ������ �Ǹ��մϴ�', 265000, 'y', '��ŷ� ���մϴ�', '2020-08-27', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (55, 'user74', 27, 2, '�̰��� ���䳪��Ʈ', 40000, 'n', '�ù�ŷ� ���ؿ�', '2020-09-03', 'y', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (56, 'user40', 8, 12, '�̰��� å�� ����ǰ', 959000, 'y', '���� ���� ��ǰ�̿���~', '2020-09-11', 'y', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (57, 'user17', 42, 11, '�� �� �� ��Ÿ���� 5���� ����', 86000, 'n', '��ŷ� ���մϴ�', '2020-09-17', 'y', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (58, 'user40', 47, 7, '������ �������ϴ�.', 375000, 'y', '���� �ŷ� ���ؿ�^^', '2020-09-19', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (59, 'user22', 50, 5, '���� �����մϴ�', 701000, 'n', '��ŷ� ���մϴ�', '2020-09-23', 'y', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (60, 'user89', 11, 1, '�Ʊ��ڵ���', 63000, 'y', '���� �ŷ� ���ؿ�^^', '2020-09-29', 'y', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (61, 'user38', 2, 1, '������', 715000, 'n', '���� ���� ��ǰ�̿���~', '2020-10-01', 'y', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (62, 'user62', 9, 15, '���ǽ� �������ϴ�.', 717000, 'y', '���� �ŷ� ���ؿ�^^', '2020-10-07', 'y', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (63, 'user72', 2, 6, '�̰��� ���ڹ� �˴ϴ�', 519000, 'n', '���� �ŷ� ���ؿ�^^', '2020-10-11', 'y', 6);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (64, 'user93', 20, 5, '������', 800000, 'y', '��ŷ� ���մϴ�', '2020-10-19', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (65, 'user38', 29, 1, '���ڹ� �������ϴ�.', 808000, 'n', '����ǰ�Դϴ�.', '2020-10-21', 'y', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (66, 'user89', 2, 7, '�߰� �౸��', 151000, 'y', '���� �ŷ� ���ؿ�^^', '2020-10-28', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (67, 'user76', 15, 8, '����Ű', 947000, 'n', '���� ���� ��ǰ�̿���~', '2020-10-31', 'y', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (68, 'user15', 20, 3, '��Ʈ �����մϴ�', 792000, 'y', '�ΰ� �������ϴ�.', '2020-11-07', 'y', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (69, 'user10', 43, 8, '������', 335000, 'n', '�ΰ� �������ϴ�.', '2020-11-15', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (70, 'user8', 24, 13, 'å��', 922000, 'y', '�ΰ� �������ϴ�.', '2020-11-19', 'y', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (71, 'user4', 35, 5, '�߰� ������', 963000, 'n', '��ŷ� ���մϴ�', '2020-11-22', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (72, 'user4', 45, 4, '���ڷ����� �������ϴ�.', 114000, 'y', '�ΰ� �������ϴ�.', '2020-11-27', 'y', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (73, 'user9', 34, 15, '�߰� ����Ű �Ǹ��մϴ�', 350000, 'n', '�ù�ŷ� ���ؿ�', '2020-12-06', 'y', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (74, 'user71', 48, 4, 'ƾƮ', 424000, 'y', '���� �ŷ� ���ؿ�^^', '2020-12-09', 'y', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (75, 'user51', 20, 6, '���ȭ �������ϴ�.', 437000, 'n', '���� ���� ��ǰ�̿���~', '2020-12-16', 'y', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (76, 'user91', 46, 10, '���̺�', 298000, 'y', '���� ���� ��ǰ�̿���~', '2020-12-24', 'y', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (77, 'user39', 8, 15, '��Ÿ���� 5���� ���� �Ⱦƿ�', 376000, 'n', '���ŷ� ���ؿ�', '2020-12-25', 'y', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (78, 'user52', 8, 8, '���̺�', 647000, 'y', '���� ���� ��ǰ�̿���~', '2020-12-26', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (79, 'user15', 42, 1, '�̰��� �����е�', 660000, 'n', '����ǰ�Դϴ�.', '2021-01-04', 'y', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (80, 'user65', 36, 1, 'û���� �˴ϴ�', 436000, 'y', '����ǰ�Դϴ�.', '2021-01-11', 'y', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (81, 'user89', 38, 10, '�� �� �� ���е�ȭ���� ����ǰ', 904000, 'n', '���ŷ� ���ؿ�', '2021-01-17', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (82, 'user16', 38, 9, '�߰� ���ȭ �������ϴ�.', 106000, 'y', '����ǰ�Դϴ�.', '2021-01-21', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (83, 'user56', 34, 3, '�̰��� ���ȭ', 900000, 'n', '���� ���� ��ǰ�̿���~', '2021-01-23', 'y', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (84, 'user17', 37, 4, '�����϶��� �����մϴ�', 989000, 'y', '��ŷ� ���մϴ�', '2021-01-29', 'y', 12);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (85, 'user83', 18, 15, '������', 581000, 'n', '�ù�ŷ� ���ؿ�', '2021-02-01', 'y', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (86, 'user53', 18, 1, '�̰��� ������', 749000, 'y', '�ΰ� �������ϴ�.', '2021-02-06', 'y', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (87, 'user63', 16, 3, '�̰��� û����', 201000, 'n', '���� �ŷ� ���ؿ�^^', '2021-02-07', 'y', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (88, 'user40', 23, 14, '���̺�', 359000, 'y', '����ǰ�Դϴ�.', '2021-02-10', 'y', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (89, 'user56', 50, 3, '�̰��� å����', 768000, 'n', '�ΰ� �������ϴ�.', '2021-02-12', 'y', 11);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (90, 'user51', 30, 13, '�� �� �� �ĵ����� �������ϴ�.', 708000, 'y', '����ǰ�Դϴ�.', '2021-02-17', 'y', 10);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (91, 'user75', 48, 4, '�����е�', 127000, 'n', '���ŷ� ���ؿ�', '2021-02-18', 'y', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (92, 'user58', 3, 4, '�߰� ���� �˴ϴ�', 456000, 'y', '���ŷ� ���ؿ�', '2021-02-19', 'y', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (93, 'user93', 6, 3, '�̰��� û����', 526000, 'n', '�ΰ� �������ϴ�.', '2021-02-25', 'y', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (94, 'user41', 20, 7, '�߰� �ڵ�ũ�� �������ϴ�.', 779000, 'y', '���� �ŷ� ���ؿ�^^', '2021-03-03', 'y', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (95, 'user34', 7, 11, '�̰��� �ǾƳ��峭�� �������ϴ�.', 291000, 'n', '��ŷ� ���մϴ�', '2021-03-06', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (96, 'user14', 12, 8, '������', 19000, 'y', '�ΰ� �������ϴ�.', '2021-03-08', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (97, 'user65', 30, 11, '�߰� ������ �Ǹ��մϴ�', 140000, 'n', '����ǰ�Դϴ�.', '2021-03-17', 'y', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (98, 'user36', 11, 6, '�ڹ��� ���� ����ǰ', 935000, 'y', '�ù�ŷ� ���ؿ�', '2021-03-23', 'y', 21);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (99, 'user17', 12, 12, '����', 767000, 'n', '���ŷ� ���ؿ�', '2021-03-29', 'y', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (100, 'user33', 16, 8, '�̰��� ���� �Ǹ��մϴ�', 356000, 'y', '���� �ŷ� ���ؿ�^^', '2021-04-06', 'y', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (101, 'user65', 31, 2, '���ȭ', 348000, 'n', '�ù�ŷ� ���ؿ�', '2021-04-08', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (102, 'user16', 39, 12, '�ڱⰳ�� ���� �˴ϴ�', 618000, 'y', '���� ���� ��ǰ�̿���~', '2021-04-14', 'n', 6);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (103, 'user54', 11, 1, '�߰� ���е�ȭ���� �������ϴ�.', 113000, 'n', '�ù�ŷ� ���ؿ�', '2021-04-23', 'n', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (104, 'user98', 6, 11, 'û�ұ� �Ⱦƿ�', 775000, 'y', '���ŷ� ���ؿ�', '2021-04-29', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (105, 'user84', 49, 15, '�߰� ������ ����ǰ', 780000, 'n', '��ŷ� ���մϴ�', '2021-05-02', 'n', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (106, 'user95', 26, 5, '�̵���', 834000, 'y', '���� ���� ��ǰ�̿���~', '2021-05-06', 'n', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (107, 'user5', 3, 8, '������ �Ǹ�', 860000, 'n', '�ΰ� �������ϴ�.', '2021-05-08', 'n', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (108, 'user89', 44, 13, '�̰��� �������� ����', 257000, 'y', '���� ���� ��ǰ�̿���~', '2021-05-17', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (109, 'user87', 6, 5, 'å��', 87000, 'n', '��ŷ� ���մϴ�', '2021-05-19', 'n', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (110, 'user16', 30, 10, 'ƾƮ', 202000, 'y', '���� �ŷ� ���ؿ�^^', '2021-05-23', 'n', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (111, 'user33', 2, 2, '�߰� ��Ÿ���� 5���� ���� ����ǰ', 964000, 'n', '���� ���� ��ǰ�̿���~', '2021-05-30', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (112, 'user51', 31, 2, '�ڹ��� ���� �Ⱦƿ�', 580000, 'y', '���� ���� ��ǰ�̿���~', '2021-05-31', 'n', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (113, 'user10', 4, 15, '������', 282000, 'n', '��ŷ� ���մϴ�', '2021-06-02', 'n', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (114, 'user21', 27, 13, '�̰��� ƾƮ', 918000, 'y', '���� ���� ��ǰ�̿���~', '2021-06-03', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (115, 'user55', 16, 12, '�̰��� �����ħ �����մϴ�', 622000, 'n', '�ΰ� �������ϴ�.', '2021-06-11', 'n', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (116, 'user72', 19, 12, '�� �� �� �������� ����', 990000, 'y', '���� ���� ��ǰ�̿���~', '2021-06-18', 'n', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (117, 'user16', 45, 13, '�߰� �����ħ', 535000, 'n', '���ŷ� ���ؿ�', '2021-06-23', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (118, 'user50', 40, 14, '���̺�', 274000, 'y', '�ΰ� �������ϴ�.', '2021-07-01', 'n', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (119, 'user90', 4, 8, '�����е�', 852000, 'n', '�ΰ� �������ϴ�.', '2021-07-08', 'n', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (120, 'user71', 37, 1, '�̰��� ���䳪��Ʈ', 666000, 'y', '���� ���� ��ǰ�̿���~', '2021-07-10', 'n', 12);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (121, 'user85', 32, 9, '����Ű �����մϴ�', 307000, 'n', '�ΰ� �������ϴ�.', '2021-07-19', 'n', 6);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (122, 'user80', 27, 14, '������', 139000, 'y', '�ΰ� �������ϴ�.', '2021-07-25', 'n', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (123, 'user35', 38, 9, '�� �� �� ����Ű', 748000, 'n', '���� ���� ��ǰ�̿���~', '2021-07-27', 'n', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (124, 'user73', 12, 4, '�� �� �� �ڵ�ũ�� �������ϴ�.', 28000, 'y', '�ΰ� �������ϴ�.', '2021-08-03', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (125, 'user34', 23, 13, '�� �� �� û���� �Ǹ��մϴ�', 107000, 'n', '���ŷ� ���ؿ�', '2021-08-09', 'n', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (126, 'user91', 16, 13, '�߰� ������ �Ǹ�', 347000, 'y', '���� ���� ��ǰ�̿���~', '2021-08-13', 'n', 10);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (127, 'user33', 13, 8, '�߰� �ĵ�����', 488000, 'n', '���ŷ� ���ؿ�', '2021-08-19', 'n', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (128, 'user29', 36, 12, '�� �� �� ����� ����ǰ', 200000, 'y', '���ŷ� ���ؿ�', '2021-08-20', 'n', 10);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (129, 'user95', 3, 9, '�߰� å�� �����մϴ�', 930000, 'n', '�ΰ� �������ϴ�.', '2021-08-24', 'n', 29);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (130, 'user98', 21, 4, '�� �� �� å�� �˴ϴ�', 592000, 'y', '�ΰ� �������ϴ�.', '2021-08-29', 'n', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (131, 'user69', 8, 9, '�ǾƳ��峭��', 966000, 'n', '���� �ŷ� ���ؿ�^^', '2021-09-06', 'n', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (132, 'user76', 15, 9, '�����ħ �Ǹ�', 714000, 'y', '����ǰ�Դϴ�.', '2021-09-07', 'n', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (133, 'user75', 31, 2, 'ƾƮ �������ϴ�.', 220000, 'n', '���� ���� ��ǰ�̿���~', '2021-09-10', 'n', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (134, 'user77', 38, 4, 'û���� ����ǰ', 981000, 'y', '���ŷ� ���ؿ�', '2021-09-14', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (135, 'user58', 20, 1, '�� �� �� ���̺�', 177000, 'n', '���� �ŷ� ���ؿ�^^', '2021-09-21', 'n', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (136, 'user85', 36, 5, '�ڱⰳ�� ����', 503000, 'y', '��ŷ� ���մϴ�', '2021-09-26', 'n', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (137, 'user94', 18, 8, '�߰� ���ڷ����� ����ǰ', 805000, 'n', '�ΰ� �������ϴ�.', '2021-10-02', 'n', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (138, 'user77', 20, 14, '�ĵ�����', 502000, 'y', '�ù�ŷ� ���ؿ�', '2021-10-08', 'n', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (139, 'user25', 38, 8, '�߰� �з¹�� �����մϴ�', 981000, 'n', '���� �ŷ� ���ؿ�^^', '2021-10-13', 'n', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (140, 'user69', 45, 11, '�߰� ���е�', 409000, 'y', '����ǰ�Դϴ�.', '2021-10-15', 'n', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (141, 'user90', 25, 1, '���̺� �Ǹ��մϴ�', 577000, 'n', '��ŷ� ���մϴ�', '2021-10-19', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (142, 'user42', 45, 15, '�� �� �� ����', 455000, 'y', '���� ���� ��ǰ�̿���~', '2021-10-27', 'n', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (143, 'user53', 20, 2, '�ڹ��� ����', 279000, 'n', '���ŷ� ���ؿ�', '2021-11-01', 'n', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (144, 'user8', 10, 1, '���ڹ�', 766000, 'y', '�ΰ� �������ϴ�.', '2021-11-05', 'n', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (145, 'user96', 34, 11, '�� �� �� ��Ÿ���� 5���� ���� �������ϴ�.', 277000, 'n', '��ŷ� ���մϴ�', '2021-11-10', 'n', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (146, 'user71', 48, 8, '�� �� �� ������ �˴ϴ�', 212000, 'y', '����ǰ�Դϴ�.', '2021-11-11', 'n', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (147, 'user87', 31, 6, '���ǽ� �Ⱦƿ�', 89000, 'n', '�ΰ� �������ϴ�.', '2021-11-13', 'n', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (148, 'user85', 41, 10, '�߰� �з¹�� �������ϴ�.', 249000, 'y', '���� ���� ��ǰ�̿���~', '2021-11-14', 'n', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (149, 'user50', 6, 13, '�߰� �з¹�� �Ǹ��մϴ�', 427000, 'n', '��ŷ� ���մϴ�', '2021-11-17', 'n', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (150, 'user21', 6, 12, '���ڹ� �Ⱦƿ�', 634000, 'y', '����ǰ�Դϴ�.', '2021-11-22', 'n', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (151, 'user15', 9, 5, '�߰� ������', 513000, 'n', '�ΰ� �������ϴ�.', '2021-11-26', 'n', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (152, 'user8', 42, 8, '����̰��� �Ⱦƿ�', 798000, 'y', '���� �ŷ� ���ؿ�^^', '2021-12-05', 'n', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (153, 'user16', 13, 4, '�� �� �� ������ �Ǹ��մϴ�', 377000, 'n', '���� ���� ��ǰ�̿���~', '2021-12-06', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (154, 'user71', 40, 15, 'û���� �Ⱦƿ�', 348000, 'y', '����ǰ�Դϴ�.', '2021-12-10', 'n', 21);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (155, 'user28', 26, 14, '���̺� �Ǹ�', 946000, 'n', '���� ���� ��ǰ�̿���~', '2021-12-19', 'n', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (156, 'user26', 7, 12, '����Ű �������ϴ�.', 113000, 'y', '��ŷ� ���մϴ�', '2021-12-25', 'n', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (157, 'user41', 33, 6, '������', 82000, 'n', '��ŷ� ���մϴ�', '2021-12-29', 'n', 29);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (158, 'user26', 10, 7, '�̰��� �ǾƳ��峭��', 869000, 'y', '�ΰ� �������ϴ�.', '2022-01-04', 'n', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (159, 'user34', 22, 10, '�� �� �� �������� �Ǹ�', 64000, 'n', '��ŷ� ���մϴ�', '2022-01-09', 'n', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (160, 'user87', 30, 4, 'å��', 623000, 'y', '���� ���� ��ǰ�̿���~', '2022-01-12', 'n', 15);



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

insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'���');
insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'���');
insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'�弳');
insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'Ÿ ����Ʈ ����');
insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'�ҹ�');

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

insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'UI �Ҹ�');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'���� �Ҹ�');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'�Ǹ��ڰ� �ʹ� �����.');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'Ÿ ����Ʈ �̿�');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'���� ����');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'�����ڰ� �ʹ� �����.');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'��Ÿ');

CREATE TABLE tblWithdraw (
    id VARCHAR2(100) NOT NULL,
    withdraw_type_seq NUMBER NOT NULL,
    time DATE default sysdate NOT NULL
);--20��

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


insert into tblquestiontype values (question_type_seq.nextVAL, '����/����');
insert into tblquestiontype values (question_type_seq.nextVAL, '����/�Ǹ�');
insert into tblquestiontype values (question_type_seq.nextVAL, '���å');
insert into tblquestiontype values (question_type_seq.nextVAL, '�����̿�');
insert into tblquestiontype values (question_type_seq.nextVAL, '��Ÿ');



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

insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user1', 1, '���ο� �Ǹ��� ������ ����.', '���ο� �Ǹ��� ������ ����. �˾Ƽ� ��Ȳ�� �����ϰھ��??', '21-10-24');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user2', 3, '�� �ŷڵ� ������ �����ƿ�.', '�� �ŷڵ� ������ �����ƿ�. ���� ��Ȳ�� �����Ͻ���..', '21-06-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user3', 1, '���� �Խñ� ������ �����ƿ�.', '���� �Խñ� ������ �����ƿ�. ���ѷ� ������ ������Ź�帳�ϴ�.', '21-10-10');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user4', 1, '���� ���� ������ ����.', '���� ���� ������ ����. �˾Ƽ� ������ Ȯ�����ּ���.', '20-09-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user5', 2, '�̹� �г��� ������ �̻��ؿ�.', '�̹� �г��� ������ �̻��ؿ�. ���ѷ� ������ Ȯ�κ�Ź�帳�ϴ�.', '21-06-20');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user6', 3, '���� �г��� ������ ���ο���...', '���� �г��� ������ ���ο���... ���� ÷�� ������ ������Ź�帳�ϴ�?', '20-11-10');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user7', 3, '���ο� �ŷڵ� ����� �����ƿ�.', '���ο� �ŷڵ� ����� �����ƿ�. ���� ÷�� ������ �������ּ���.', '21-05-24');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user8', 5, '���� �г��� ������ �����ؿ�.', '���� �г��� ������ �����ؿ�. ���ѷ� ������ ������Ź�帳�ϴ�.', '20-08-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user9', 4, '�� ���� ������ �����ؿ�.', '�� ���� ������ �����ؿ�. ���� ������ �ľ��ϰھ��?.', '20-06-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user10', 3, '���� ��й�ȣ ������ �����ؿ�.', '���� ��й�ȣ ������ �����ؿ�. ���ѷ� ������ �����ϰھ��??', '20-05-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user11', 5, '���� �Խñ� ����� �̻��ؿ�.', '���� �Խñ� ����� �̻��ؿ�. ���� ��Ȳ�� ������Ź�帳�ϴ�..', '20-02-24');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user12', 3, '�̹� �г��� ������ �����ؿ�..', '�̹� �г��� ������ �����ؿ�.. ���ѷ� ������ ������Ź�帳�ϴ٤Ѥ�', '20-07-26');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user13', 3, '�� ��й�ȣ ������ ����.', '�� ��й�ȣ ������ ����. ���� ��Ȳ�� �������ּ���.', '21-06-12');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user14', 1, '���� �ŷڵ� ������ ����.', '���� �ŷڵ� ������ ����. ���� ÷�� ������ ������Ź�帳�ϴ�!', '21-06-05');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user15', 5, '�̹� �Ǹ��� ������ ����.', '�̹� �Ǹ��� ������ ����. ���� ������ �ľ����ּ���?', '21-03-12');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user16', 3, '���� �г��� ������ ���ο���.', '���� �г��� ������ ���ο���. ���ѷ� ��Ȳ�� ������Ź�帳�ϴ�..', '21-06-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user17', 4, '���� �ŷڵ� ����� ����.', '���� �ŷڵ� ����� ����. ���� ÷�� ������ Ȯ�κ�Ź�帳�ϴ�.', '20-03-07');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user18', 4, '�̹� ���� ������ ���ο���...', '�̹� ���� ������ ���ο���... �˾Ƽ� ��Ȳ�� Ȯ���ϰھ��?!', '21-01-06');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user19', 4, '�̹� �Ǹ��� ����� �����ؿ�.', '�̹� �Ǹ��� ����� �����ؿ�. ���ѷ� ÷�� ������ ������Ź�帳�ϴ�.', '20-07-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user20', 1, '���� �Խñ� ������ �̻��ؿ�.', '���� �Խñ� ������ �̻��ؿ�. ���� ������ ������Ź�帳�ϴ٤̤�', '20-01-27');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user21', 5, '�� �Խñ� ������ �̻��ؿ�.', '�� �Խñ� ������ �̻��ؿ�. ���� ������ �����Ͻ���.', '21-11-05');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user22', 3, '���ο� �г��� ����� ���ο���.', '���ο� �г��� ����� ���ο���. ���� ������ �������ּ���.', '21-04-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user23', 1, '���� ������ ������ �����ؿ�.', '���� ������ ������ �����ؿ�. �˾Ƽ� ÷�� ������ Ȯ���Ͻ���?', '20-10-01');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user24', 4, '���� ��й�ȣ ������ ���ο���.', '���� ��й�ȣ ������ ���ο���. ���� ��Ȳ�� �����Ͻ���...', '20-04-01');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user25', 5, '���� �Խñ� ������ ���ο���.', '���� �Խñ� ������ ���ο���. ���� ������ Ȯ���Ͻ���.', '20-09-04');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user26', 5, '���ο� ��й�ȣ ������ �̻��ؿ�.', '���ο� ��й�ȣ ������ �̻��ؿ�. ���ѷ� ������ �����ϰھ��?.', '20-05-25');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user27', 5, '�� �Խñ� ����� ����.', '�� �Խñ� ����� ����. ���� ÷�� ������ �������ּ���.', '21-10-08');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user28', 4, '���� �г��� ������ �����ƿ�.', '���� �г��� ������ �����ƿ�. �˾Ƽ� ÷�� ������ Ȯ�����ּ���Ѥ�', '20-11-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user29', 4, '�� �Խñ� ������ �̻��ؿ�.', '�� �Խñ� ������ �̻��ؿ�. �˾Ƽ� ������ �������ּ���...', '20-08-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user30', 5, '���ο� �Ǹ��� ����� �����ƿ�.', '���ο� �Ǹ��� ����� �����ƿ�. �˾Ƽ� ÷�� ������ Ȯ�����ּ���.', '20-08-04');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user31', 2, '�̹� �ŷڵ� ����� �����ƿ�...', '�̹� �ŷڵ� ����� �����ƿ�... ���� ������ �ľ��Ͻ��Ҥ̤�', '20-10-27');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user32', 1, '���ο� ��й�ȣ ������ ����.', '���ο� ��й�ȣ ������ ����. ���ѷ� ������ �����Ͻ��ҤѤ�', '20-11-24');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user33', 5, '���� ���� ����� �̻��ؿ�.', '���� ���� ����� �̻��ؿ�. ���� ������ �����ϰھ��??', '20-03-27');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user34', 5, '�̹� �Խñ� ����� ���ο���..', '�̹� �Խñ� ����� ���ο���.. ���ѷ� ÷�� ������ �������ּ���?', '20-01-13');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user35', 4, '�� �Խñ� ������ �����ƿ�.', '�� �Խñ� ������ �����ƿ�. �˾Ƽ� ��Ȳ�� �ľ��ϰھ��?.', '21-10-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user36', 4, '�� �Ǹ��� ������ �̻��ؿ�.', '�� �Ǹ��� ������ �̻��ؿ�. ���� ������ �ľ��Ͻ���.', '21-03-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user37', 2, '���� ���� ������ ����.', '���� ���� ������ ����. ���� ������ �����Ͻ���.', '20-06-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user38', 1, '�̹� ��й�ȣ ����� ���ο���.', '�̹� ��й�ȣ ����� ���ο���. �˾Ƽ� ÷�� ������ Ȯ���ϰھ��?!', '20-03-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user39', 4, '���� �ŷڵ� ����� �����ƿ�.', '���� �ŷڵ� ����� �����ƿ�. ���� ��Ȳ�� �ľǺ�Ź�帳�ϴ�.', '20-04-07');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user40', 4, '�� ���� ����� ����.', '�� ���� ����� ����. ���� ÷�� ������ Ȯ���Ͻ���.', '21-08-27');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user41', 2, '�̹� ���� ������ �̻��ؿ�...', '�̹� ���� ������ �̻��ؿ�... ���ѷ� ÷�� ������ Ȯ�κ�Ź�帳�ϴ�..', '20-10-13');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user42', 1, '���� �Ǹ��� ������ ���ο���.', '���� �Ǹ��� ������ ���ο���. �˾Ƽ� ÷�� ������ �����ϰھ��?�Ѥ�', '21-05-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user43', 2, '�� ���� ������ �̻��ؿ�.', '�� ���� ������ �̻��ؿ�. ���ѷ� ��Ȳ�� Ȯ�κ�Ź�帳�ϴ�?', '21-04-08');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user44', 3, '�� ��й�ȣ ������ �̻��ؿ�..', '�� ��й�ȣ ������ �̻��ؿ�.. ���� ��Ȳ�� ������Ź�帳�ϴ�.', '21-02-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user45', 3, '���� ��й�ȣ ������ ���ο���.', '���� ��й�ȣ ������ ���ο���. �˾Ƽ� ������ ������Ź�帳�ϴ�.', '21-08-26');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user46', 5, '�� ��й�ȣ ������ �����ƿ�.', '�� ��й�ȣ ������ �����ƿ�. ���ѷ� ������ Ȯ�κ�Ź�帳�ϴ�...', '20-11-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user47', 1, '���� �Ǹ��� ������ ����.', '���� �Ǹ��� ������ ����. ���� ÷�� ������ �ľ��Ͻ���.', '21-11-19');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user48', 2, '�� ���� ������ ����.', '�� ���� ������ ����. ���� ÷�� ������ �����Ͻ���...', '21-05-07');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user49', 2, '���� ��й�ȣ ������ ����.', '���� ��й�ȣ ������ ����. �˾Ƽ� ������ Ȯ���Ͻ���?', '21-11-10');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user50', 4, '���� ���� ������ �̻��ؿ�.', '���� ���� ������ �̻��ؿ�. ���� ��Ȳ�� �����Ͻ���.', '20-11-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user51', 1, '���ο� ���� ����� �����ƿ�.', '���ο� ���� ����� �����ƿ�. �˾Ƽ� ������ Ȯ�κ�Ź�帳�ϴ�.', '21-08-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user52', 5, '���� ���� ������ ����.', '���� ���� ������ ����. ���ѷ� ÷�� ������ �����Ͻ���?', '21-07-03');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user53', 5, '���ο� �Ǹ��� ����� �����ؿ�.', '���ο� �Ǹ��� ����� �����ؿ�. �˾Ƽ� ÷�� ������ ������Ź�帳�ϴ�.', '20-09-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user54', 5, '���ο� �ŷڵ� ������ �����ؿ�.', '���ο� �ŷڵ� ������ �����ؿ�. ���ѷ� ÷�� ������ �����Ͻ���..', '20-05-12');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user55', 5, '�̹� �Ǹ��� ������ �����ƿ�.', '�̹� �Ǹ��� ������ �����ƿ�. ���� ��Ȳ�� �����Ͻ��Ҥ̤�', '21-07-03');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user56', 4, '�� �Ǹ��� ������ �����ƿ�.', '�� �Ǹ��� ������ �����ƿ�. �˾Ƽ� ÷�� ������ �����Ͻ���!', '21-11-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user57', 5, '�� �Խñ� ����� �����ؿ�.', '�� �Խñ� ����� �����ؿ�. �˾Ƽ� ÷�� ������ �����ϰھ��?.', '21-09-12');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user58', 2, '�� �г��� ������ �����ؿ�.', '�� �г��� ������ �����ؿ�. �˾Ƽ� ÷�� ������ Ȯ���ϰھ��??', '21-10-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user59', 2, '�̹� �г��� ������ �����ƿ�.', '�̹� �г��� ������ �����ƿ�. �˾Ƽ� ��Ȳ�� �ľ��ϰھ��?!', '21-04-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user60', 5, '�� �ŷڵ� ����� ����.', '�� �ŷڵ� ����� ����. ���� ÷�� ������ �����Ͻ���.', '21-06-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user61', 1, '�̹� �ŷڵ� ����� ����.', '�̹� �ŷڵ� ����� ����. ���ѷ� ������ �����Ͻ���..', '20-04-13');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user62', 4, '���ο� �г��� ������ �����ؿ�.', '���ο� �г��� ������ �����ؿ�. ���� ÷�� ������ Ȯ���ϰھ��??', '20-06-13');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user63', 4, '���ο� �ŷڵ� ������ ����.', '���ο� �ŷڵ� ������ ����. ���� ÷�� ������ �������ּ���̤�', '21-06-05');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user64', 2, '�̹� ��й�ȣ ������ �����ƿ�.', '�̹� ��й�ȣ ������ �����ƿ�. ���� ��Ȳ�� Ȯ���Ͻ��Ҥ̤�', '21-11-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user65', 1, '���ο� �Ǹ��� ������ �����ƿ�.', '���ο� �Ǹ��� ������ �����ƿ�. ���� ������ �ľ��ϰھ��?.', '20-05-20');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user66', 1, '�� �ŷڵ� ����� �����ƿ�...', '�� �ŷڵ� ����� �����ƿ�... ���� ��Ȳ�� �����Ͻ���?', '21-07-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user67', 4, '�� �ŷڵ� ������ ���ο���.', '�� �ŷڵ� ������ ���ο���. ���ѷ� ÷�� ������ �ľ��ϰھ��?�̤�', '20-11-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user68', 4, '���� �ŷڵ� ����� �̻��ؿ�.', '���� �ŷڵ� ����� �̻��ؿ�. ���� ��Ȳ�� �����Ͻ���.', '20-05-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user69', 2, '�̹� �г��� ����� ���ο���.', '�̹� �г��� ����� ���ο���. ���ѷ� ��Ȳ�� Ȯ�κ�Ź�帳�ϴ�..', '20-11-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user70', 1, '���� �Ǹ��� ����� �̻��ؿ�.', '���� �Ǹ��� ����� �̻��ؿ�. ���� ��Ȳ�� ������Ź�帳�ϴ�.', '21-10-07');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user71', 1, '���� �ŷڵ� ������ �����ƿ�.', '���� �ŷڵ� ������ �����ƿ�. ���� ������ �������ּ���.', '21-03-26');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user72', 1, '���ο� �Խñ� ����� ���ο���.', '���ο� �Խñ� ����� ���ο���. ���� ÷�� ������ �����Ͻ���..', '21-03-09');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user73', 5, '�� ���� ����� ����.', '�� ���� ����� ����. ���� ÷�� ������ �������ּ���Ѥ�', '21-07-01');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user74', 3, '�� ���� ������ ����...', '�� ���� ������ ����... ���ѷ� ÷�� ������ �ľ��ϰھ��??', '21-11-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user75', 5, '���� �г��� ����� �̻��ؿ�.', '���� �г��� ����� �̻��ؿ�. ���ѷ� ÷�� ������ Ȯ���ϰھ��?.', '20-04-08');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user76', 2, '���� �Խñ� ����� �����ؿ�.', '���� �Խñ� ����� �����ؿ�. ���ѷ� ��Ȳ�� �����Ͻ���.', '21-04-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user77', 3, '�� �Ǹ��� ������ �����ؿ�...', '�� �Ǹ��� ������ �����ؿ�... �˾Ƽ� ÷�� ������ Ȯ�����ּ���?', '20-06-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user78', 5, '���ο� ���� ������ �����ؿ�..', '���ο� ���� ������ �����ؿ�.. ���� ÷�� ������ �ľ����ּ���..', '21-07-03');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user79', 1, '�̹� �ŷڵ� ������ ���ο���...', '�̹� �ŷڵ� ������ ���ο���... ���ѷ� ÷�� ������ �ľ����ּ���?', '21-04-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user80', 2, '�̹� �ŷڵ� ������ ���ο���.', '�̹� �ŷڵ� ������ ���ο���. ���� ������ ������Ź�帳�ϴ�.', '20-09-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user81', 1, '���� �ŷڵ� ������ ����.', '���� �ŷڵ� ������ ����. ���ѷ� ��Ȳ�� Ȯ���Ͻ���.', '20-10-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user82', 4, '���� �г��� ������ ���ο���.', '���� �г��� ������ ���ο���. ���� ������ �������ּ���...', '21-06-10');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user83', 5, '���� ������ ������ ���ο���.', '���� ������ ������ ���ο���. ���ѷ� ��Ȳ�� �ľ��ϰھ��?...', '21-07-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user84', 1, '�� ��й�ȣ ������ ����.', '�� ��й�ȣ ������ ����. �˾Ƽ� ÷�� ������ �ľ��ϰھ��?.', '20-09-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user85', 1, '�� �Խñ� ������ �����ؿ�.', '�� �Խñ� ������ �����ؿ�. ���ѷ� ÷�� ������ �������ּ���..', '21-11-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user86', 4, '�� �Խñ� ������ �̻��ؿ�...', '�� �Խñ� ������ �̻��ؿ�... �˾Ƽ� ÷�� ������ �������ּ���Ѥ�', '20-11-03');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user87', 3, '���ο� ��й�ȣ ������ �����ؿ�.', '���ο� ��й�ȣ ������ �����ؿ�. ���� ÷�� ������ Ȯ�κ�Ź�帳�ϴ٤̤�', '21-11-18');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user88', 2, '���ο� ��й�ȣ ����� ����.', '���ο� ��й�ȣ ����� ����. ���� ������ �����ϰھ��?.', '20-11-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user89', 2, '�̹� �ŷڵ� ������ ���ο���.', '�̹� �ŷڵ� ������ ���ο���. ���ѷ� ������ �ľ��Ͻ���?', '21-08-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user90', 1, '�� �Ǹ��� ����� �����ƿ�.', '�� �Ǹ��� ����� �����ƿ�. �˾Ƽ� ��Ȳ�� �ľ��Ͻ���?', '21-08-23');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user91', 3, '�̹� ���� ����� �̻��ؿ�..', '�̹� ���� ����� �̻��ؿ�.. ���� ������ �������ּ���Ѥ�', '20-03-04');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user92', 3, '���ο� �Ǹ��� ������ �����ƿ�.', '���ο� �Ǹ��� ������ �����ƿ�. ���� ÷�� ������ Ȯ�κ�Ź�帳�ϴ�?', '20-04-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user93', 3, '�� �Խñ� ����� �̻��ؿ�.', '�� �Խñ� ����� �̻��ؿ�. ���� ������ �����ϰھ��?.', '21-03-09');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user94', 2, '�� �ŷڵ� ����� ����..', '�� �ŷڵ� ����� ����.. ���ѷ� ÷�� ������ Ȯ���ϰھ��?..', '20-06-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user95', 5, '���ο� �Ǹ��� ������ ����.', '���ο� �Ǹ��� ������ ����. ���ѷ� ÷�� ������ �ľ��ϰھ��?�̤�', '21-05-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user96', 4, '���� �Խñ� ����� �̻��ؿ�..', '���� �Խñ� ����� �̻��ؿ�.. ���ѷ� ÷�� ������ �����ϰھ��?.', '20-02-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user97', 3, '���ο� �Խñ� ������ �����ƿ�.', '���ο� �Խñ� ������ �����ƿ�. ���� ������ �������ּ���Ѥ�', '20-07-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user98', 5, '���� �Խñ� ������ �����ؿ�.', '���� �Խñ� ������ �����ؿ�. ���ѷ� ��Ȳ�� �����Ͻ���...', '20-06-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user99', 2, '���ο� ������ ����� �����ƿ�.', '���ο� ������ ����� �����ƿ�. ���ѷ� ��Ȳ�� ������Ź�帳�ϴ�.', '21-01-16');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user100', 4, '�� ���� ������ �̻��ؿ�..', '�� ���� ������ �̻��ؿ�.. ���ѷ� ÷�� ������ �����ϰھ��?.', '20-06-04');


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

insert into tblNotice values (1,'1�� �������� ����  ','1�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-02-01');
insert into tblNotice values (2,'2�� �������� ����  ','2�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-02-08');
insert into tblNotice values (3,'3�� �������� ����  ','3�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-02-15');
insert into tblNotice values (4,'4�� �������� ����  ','4�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-02-22');
insert into tblNotice values (5,'5�� �������� ����  ','5�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-02-29');
insert into tblNotice values (6,'6�� �������� ����  ','6�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-03-07');
insert into tblNotice values (7,'7�� �������� ����  ','7�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-03-14');
insert into tblNotice values (8,'8�� �������� ����  ','8�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-03-21');
insert into tblNotice values (9,'9�� �������� ����  ','9�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-03-28');
insert into tblNotice values (10,'10�� �������� ����  ','10�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-04-04');
insert into tblNotice values (11,'11�� �������� ����  ','11�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-04-11');
insert into tblNotice values (12,'12�� �������� ����  ','12�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-04-18');
insert into tblNotice values (13,'13�� �������� ����  ','13�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-04-25');
insert into tblNotice values (14,'14�� �������� ����  ','14�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-05-02');
insert into tblNotice values (15,'15�� �������� ����  ','15�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-05-09');
insert into tblNotice values (16,'16�� �������� ����  ','16�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-05-16');
insert into tblNotice values (17,'17�� �������� ����  ','17�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-05-23');
insert into tblNotice values (18,'18�� �������� ����  ','18�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-05-30');
insert into tblNotice values (19,'19�� �������� ����  ','19�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-06-06');
insert into tblNotice values (20,'20�� �������� ����  ','20�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-06-13');
insert into tblNotice values (21,'21�� �������� ����  ','21�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-06-20');
insert into tblNotice values (22,'22�� �������� ����  ','22�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-06-27');
insert into tblNotice values (23,'23�� �������� ����  ','23�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-07-04');
insert into tblNotice values (24,'24�� �������� ����  ','24�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-07-11');
insert into tblNotice values (25,'25�� �������� ����  ','25�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-07-18');
insert into tblNotice values (26,'26�� �������� ����  ','26�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-07-25');
insert into tblNotice values (27,'27�� �������� ����  ','27�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-08-01');
insert into tblNotice values (28,'28�� �������� ����  ','28�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-08-08');
insert into tblNotice values (29,'29�� �������� ����  ','29�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-08-15');
insert into tblNotice values (30,'30�� �������� ����  ','30�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-08-22');
insert into tblNotice values (31,'31�� �������� ����  ','31�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-08-29');
insert into tblNotice values (32,'32�� �������� ����  ','32�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-09-05');
insert into tblNotice values (33,'33�� �������� ����  ','33�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-09-12');
insert into tblNotice values (34,'34�� �������� ����  ','34�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-09-19');
insert into tblNotice values (35,'35�� �������� ����  ','35�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-09-26');
insert into tblNotice values (36,'36�� �������� ����  ','36�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-10-03');
insert into tblNotice values (37,'37�� �������� ����  ','37�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-10-10');
insert into tblNotice values (38,'38�� �������� ����  ','38�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-10-17');
insert into tblNotice values (39,'39�� �������� ����  ','39�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-10-24');
insert into tblNotice values (40,'40�� �������� ����  ','40�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-10-31');
insert into tblNotice values (41,'41�� �������� ����  ','41�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-11-07');
insert into tblNotice values (42,'42�� �������� ����  ','42�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-11-14');
insert into tblNotice values (43,'43�� �������� ����  ','43�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-11-21');
insert into tblNotice values (44,'44�� �������� ����  ','44�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-11-28');
insert into tblNotice values (45,'45�� �������� ����  ','45�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-12-05');
insert into tblNotice values (46,'46�� �������� ����  ','46�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-12-12');
insert into tblNotice values (47,'47�� �������� ����  ','47�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-12-19');
insert into tblNotice values (48,'48�� �������� ����  ','48�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-12-26');
insert into tblNotice values (49,'49�� �������� ����  ','49�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-01-02');
insert into tblNotice values (50,'50�� �������� ����  ','50�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-01-09');
insert into tblNotice values (51,'51�� �������� ����  ','51�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-01-16');
insert into tblNotice values (52,'52�� �������� ����  ','52�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-01-23');
insert into tblNotice values (53,'53�� �������� ����  ','53�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-01-30');
insert into tblNotice values (54,'54�� �������� ����  ','54�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-02-06');
insert into tblNotice values (55,'55�� �������� ����  ','55�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-02-13');
insert into tblNotice values (56,'56�� �������� ����  ','56�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-02-20');
insert into tblNotice values (57,'57�� �������� ����  ','57�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-02-27');
insert into tblNotice values (58,'58�� �������� ����  ','58�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-03-06');
insert into tblNotice values (59,'59�� �������� ����  ','59�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-03-13');
insert into tblNotice values (60,'60�� �������� ����  ','60�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-03-20');
insert into tblNotice values (61,'61�� �������� ����  ','61�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-03-27');
insert into tblNotice values (62,'62�� �������� ����  ','62�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-04-03');
insert into tblNotice values (63,'63�� �������� ����  ','63�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-04-10');
insert into tblNotice values (64,'64�� �������� ����  ','64�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-04-17');
insert into tblNotice values (65,'65�� �������� ����  ','65�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-04-24');
insert into tblNotice values (66,'66�� �������� ����  ','66�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-05-01');
insert into tblNotice values (67,'67�� �������� ����  ','67�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-05-08');
insert into tblNotice values (68,'68�� �������� ����  ','68�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-05-15');
insert into tblNotice values (69,'69�� �������� ����  ','69�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-05-22');
insert into tblNotice values (70,'70�� �������� ����  ','70�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-05-29');
insert into tblNotice values (71,'71�� �������� ����  ','71�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-06-05');
insert into tblNotice values (72,'72�� �������� ����  ','72�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-06-12');
insert into tblNotice values (73,'73�� �������� ����  ','73�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-06-19');
insert into tblNotice values (74,'74�� �������� ����  ','74�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-06-26');
insert into tblNotice values (75,'75�� �������� ����  ','75�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-07-03');
insert into tblNotice values (76,'76�� �������� ����  ','76�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-07-10');
insert into tblNotice values (77,'77�� �������� ����  ','77�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-07-17');
insert into tblNotice values (78,'78�� �������� ����  ','78�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-07-24');
insert into tblNotice values (79,'79�� �������� ����  ','79�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-07-31');
insert into tblNotice values (80,'80�� �������� ����  ','80�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-08-07');
insert into tblNotice values (81,'81�� �������� ����  ','81�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-08-14');
insert into tblNotice values (82,'82�� �������� ����  ','82�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-08-21');
insert into tblNotice values (83,'83�� �������� ����  ','83�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-08-28');
insert into tblNotice values (84,'84�� �������� ����  ','84�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-09-04');
insert into tblNotice values (85,'85�� �������� ����  ','85�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-09-11');
insert into tblNotice values (86,'86�� �������� ����  ','86�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-09-18');
insert into tblNotice values (87,'87�� �������� ����  ','87�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-09-25');
insert into tblNotice values (88,'88�� �������� ����  ','88�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-10-02');
insert into tblNotice values (89,'89�� �������� ����  ','89�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-10-09');
insert into tblNotice values (90,'90�� �������� ����  ','90�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-10-16');
insert into tblNotice values (91,'91�� �������� ����  ','91�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-10-23');
insert into tblNotice values (92,'92�� �������� ����  ','92�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-10-30');
insert into tblNotice values (93,'93�� �������� ����  ','93�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-11-06');
insert into tblNotice values (94,'94�� �������� ����  ','94�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-11-13');
insert into tblNotice values (95,'95�� �������� ����  ','95�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-11-20');
insert into tblNotice values (96,'96�� �������� ����  ','96�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-11-27');
insert into tblNotice values (97,'97�� �������� ����  ','97�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-12-04');
insert into tblNotice values (98,'98�� �������� ����  ','98�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-12-11');
insert into tblNotice values (99,'99�� �������� ����  ','99�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-12-18');
insert into tblNotice values (100,'100�� �������� ����  ','100�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-12-25');



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


-- �ŷ�
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
    

insert into tblReview values ('S',1, 10,'1�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',1, 8,'1�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',2, 7,'2�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',2, 8,'2�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',3, 9,'3�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',3, 9,'3�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',4, 9,'4�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',4, 8,'4�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',5, 8,'5�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',5, 8,'5�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',6, 7,'6�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',6, 9,'6�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',7, 7,'7�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',7, 8,'7�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',8, 10,'8�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',8, 9,'8�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',9, 8,'9�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',9, 8,'9�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',10, 9,'10�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',10, 10,'10�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',11, 7,'11�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',11, 8,'11�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',12, 10,'12�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',12, 8,'12�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',13, 8,'13�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',13, 9,'13�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',14, 10,'14�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',14, 8,'14�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',15, 7,'15�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',15, 9,'15�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',16, 9,'16�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',16, 9,'16�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',17, 9,'17�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',17, 7,'17�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',18, 8,'18�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',18, 7,'18�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',19, 7,'19�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',19, 9,'19�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',20, 7,'20�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',20, 8,'20�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',21, 9,'21�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',21, 10,'21�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',22, 9,'22�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',22, 9,'22�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',23, 8,'23�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',23, 10,'23�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',24, 9,'24�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',24, 9,'24�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',25, 8,'25�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',25, 10,'25�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',26, 7,'26�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',26, 10,'26�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',27, 10,'27�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',27, 8,'27�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',28, 8,'28�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',28, 8,'28�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',29, 10,'29�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',29, 9,'29�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',30, 9,'30�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',30, 10,'30�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',31, 8,'31�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',31, 10,'31�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',32, 10,'32�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',32, 8,'32�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',33, 7,'33�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',33, 10,'33�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',34, 8,'34�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',34, 10,'34�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',35, 9,'35�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',35, 9,'35�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',36, 9,'36�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',36, 9,'36�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',37, 8,'37�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',37, 9,'37�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',38, 7,'38�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',38, 10,'38�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',39, 9,'39�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',39, 9,'39�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',40, 10,'40�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',40, 9,'40�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',41, 9,'41�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',41, 10,'41�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',42, 8,'42�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',42, 10,'42�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',43, 8,'43�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',43, 8,'43�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',44, 9,'44�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',44, 9,'44�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',45, 9,'45�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',45, 8,'45�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',46, 8,'46�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',46, 7,'46�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',47, 9,'47�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',47, 10,'47�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',48, 9,'48�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',48, 9,'48�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',49, 7,'49�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',49, 9,'49�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',50, 8,'50�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',50, 7,'50�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',51, 7,'51�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',51, 7,'51�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',52, 7,'52�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',52, 10,'52�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',53, 10,'53�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',53, 10,'53�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',54, 9,'54�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',54, 7,'54�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',55, 9,'55�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',55, 9,'55�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',56, 7,'56�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',56, 10,'56�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',57, 10,'57�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',57, 9,'57�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',58, 9,'58�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',58, 10,'58�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',59, 9,'59�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',59, 8,'59�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',60, 9,'60�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',60, 10,'60�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',61, 10,'61�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',61, 7,'61�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',62, 8,'62�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',62, 7,'62�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',63, 7,'63�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',63, 8,'63�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',64, 9,'64�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',64, 8,'64�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',65, 7,'65�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',65, 8,'65�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',66, 10,'66�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',66, 9,'66�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',67, 10,'67�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',67, 10,'67�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',68, 8,'68�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',68, 8,'68�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',69, 7,'69�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',69, 8,'69�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',70, 8,'70�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',70, 10,'70�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',71, 7,'71�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',71, 10,'71�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',72, 7,'72�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',72, 8,'72�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',73, 8,'73�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',73, 10,'73�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',74, 10,'74�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',74, 8,'74�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',75, 10,'75�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',75, 7,'75�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',76, 8,'76�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',76, 9,'76�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',77, 10,'77�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',77, 8,'77�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',78, 10,'78�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',78, 10,'78�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',79, 7,'79�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',79, 10,'79�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',80, 9,'80�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',80, 8,'80�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',81, 9,'81�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',81, 10,'81�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',82, 9,'82�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',82, 7,'82�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',83, 10,'83�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',83, 9,'83�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',84, 7,'84�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',84, 8,'84�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',85, 10,'85�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',85, 8,'85�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',86, 8,'86�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',86, 8,'86�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',87, 10,'87�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',87, 7,'87�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',88, 7,'88�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',88, 10,'88�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',89, 9,'89�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',89, 7,'89�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',90, 8,'90�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',90, 8,'90�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',91, 10,'91�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',91, 10,'91�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',92, 9,'92�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',92, 8,'92�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',93, 7,'93�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',93, 10,'93�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',94, 10,'94�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',94, 7,'94�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',95, 7,'95�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',95, 9,'95�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',96, 8,'96�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',96, 10,'96�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',97, 9,'97�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',97, 8,'97�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',98, 7,'98�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',98, 7,'98�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',99, 8,'99�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',99, 10,'99�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',100, 9,'100�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',100, 8,'100�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');


CREATE TABLE tblCommunity(
	community_seq NUMBER not null, 
	id VARCHAR2(100) NOT NULL,
	title VARCHAR2(100)	NOT NULL, --20��
    content VARCHAR2(4000) NOT NULL,--200��
	regDate DATE default sysdate NOT NULL,--���� ���� 28�� ����
    readcount NUMBER default 0 NOT NULL --0
); --100


create sequence community_seq start with 1;

alter table tblCommunity
    add constraint tblc_community_seq_pk primary key(community_seq);
alter table tblCommunity
    add constraint tblc_id_fk FOREIGN Key(id) references tblUser(id);


insert into tblCommunity values (1,'user65','1�� Ŀ�´�Ƽ�� ����  ','1�� Ŀ�´�Ƽ�� ���� ','2020-02-01',66);
insert into tblCommunity values (2,'user78','2�� Ŀ�´�Ƽ�� ����  ','2�� Ŀ�´�Ƽ�� ���� ','2020-02-06',75);
insert into tblCommunity values (3,'user18','3�� Ŀ�´�Ƽ�� ����  ','3�� Ŀ�´�Ƽ�� ���� ','2020-02-11',53);
insert into tblCommunity values (4,'user76','4�� Ŀ�´�Ƽ�� ����  ','4�� Ŀ�´�Ƽ�� ���� ','2020-02-16',71);
insert into tblCommunity values (5,'user55','5�� Ŀ�´�Ƽ�� ����  ','5�� Ŀ�´�Ƽ�� ���� ','2020-02-21',71);
insert into tblCommunity values (6,'user93','6�� Ŀ�´�Ƽ�� ����  ','6�� Ŀ�´�Ƽ�� ���� ','2020-02-26',31);
insert into tblCommunity values (7,'user91','7�� Ŀ�´�Ƽ�� ����  ','7�� Ŀ�´�Ƽ�� ���� ','2020-03-02',0);
insert into tblCommunity values (8,'user78','8�� Ŀ�´�Ƽ�� ����  ','8�� Ŀ�´�Ƽ�� ���� ','2020-03-07',11);
insert into tblCommunity values (9,'user88','9�� Ŀ�´�Ƽ�� ����  ','9�� Ŀ�´�Ƽ�� ���� ','2020-03-12',76);
insert into tblCommunity values (10,'user52','10�� Ŀ�´�Ƽ�� ����  ','10�� Ŀ�´�Ƽ�� ���� ','2020-03-17',55);
insert into tblCommunity values (11,'user12','11�� Ŀ�´�Ƽ�� ����  ','11�� Ŀ�´�Ƽ�� ���� ','2020-03-22',80);
insert into tblCommunity values (12,'user52','12�� Ŀ�´�Ƽ�� ����  ','12�� Ŀ�´�Ƽ�� ���� ','2020-03-27',45);
insert into tblCommunity values (13,'user39','13�� Ŀ�´�Ƽ�� ����  ','13�� Ŀ�´�Ƽ�� ���� ','2020-04-01',8);
insert into tblCommunity values (14,'user16','14�� Ŀ�´�Ƽ�� ����  ','14�� Ŀ�´�Ƽ�� ���� ','2020-04-06',90);
insert into tblCommunity values (15,'user45','15�� Ŀ�´�Ƽ�� ����  ','15�� Ŀ�´�Ƽ�� ���� ','2020-04-11',20);
insert into tblCommunity values (16,'user1','16�� Ŀ�´�Ƽ�� ����  ','16�� Ŀ�´�Ƽ�� ���� ','2020-04-16',79);
insert into tblCommunity values (17,'user92','17�� Ŀ�´�Ƽ�� ����  ','17�� Ŀ�´�Ƽ�� ���� ','2020-04-21',37);
insert into tblCommunity values (18,'user8','18�� Ŀ�´�Ƽ�� ����  ','18�� Ŀ�´�Ƽ�� ���� ','2020-04-26',6);
insert into tblCommunity values (19,'user59','19�� Ŀ�´�Ƽ�� ����  ','19�� Ŀ�´�Ƽ�� ���� ','2020-05-01',30);
insert into tblCommunity values (20,'user92','20�� Ŀ�´�Ƽ�� ����  ','20�� Ŀ�´�Ƽ�� ���� ','2020-05-06',2);
insert into tblCommunity values (21,'user7','21�� Ŀ�´�Ƽ�� ����  ','21�� Ŀ�´�Ƽ�� ���� ','2020-05-11',93);
insert into tblCommunity values (22,'user63','22�� Ŀ�´�Ƽ�� ����  ','22�� Ŀ�´�Ƽ�� ���� ','2020-05-16',84);
insert into tblCommunity values (23,'user51','23�� Ŀ�´�Ƽ�� ����  ','23�� Ŀ�´�Ƽ�� ���� ','2020-05-21',88);
insert into tblCommunity values (24,'user13','24�� Ŀ�´�Ƽ�� ����  ','24�� Ŀ�´�Ƽ�� ���� ','2020-05-26',72);
insert into tblCommunity values (25,'user51','25�� Ŀ�´�Ƽ�� ����  ','25�� Ŀ�´�Ƽ�� ���� ','2020-05-31',49);
insert into tblCommunity values (26,'user77','26�� Ŀ�´�Ƽ�� ����  ','26�� Ŀ�´�Ƽ�� ���� ','2020-06-05',0);
insert into tblCommunity values (27,'user17','27�� Ŀ�´�Ƽ�� ����  ','27�� Ŀ�´�Ƽ�� ���� ','2020-06-10',47);
insert into tblCommunity values (28,'user86','28�� Ŀ�´�Ƽ�� ����  ','28�� Ŀ�´�Ƽ�� ���� ','2020-06-15',91);
insert into tblCommunity values (29,'user87','29�� Ŀ�´�Ƽ�� ����  ','29�� Ŀ�´�Ƽ�� ���� ','2020-06-20',62);
insert into tblCommunity values (30,'user41','30�� Ŀ�´�Ƽ�� ����  ','30�� Ŀ�´�Ƽ�� ���� ','2020-06-25',34);
insert into tblCommunity values (31,'user73','31�� Ŀ�´�Ƽ�� ����  ','31�� Ŀ�´�Ƽ�� ���� ','2020-06-30',3);
insert into tblCommunity values (32,'user54','32�� Ŀ�´�Ƽ�� ����  ','32�� Ŀ�´�Ƽ�� ���� ','2020-07-05',13);
insert into tblCommunity values (33,'user56','33�� Ŀ�´�Ƽ�� ����  ','33�� Ŀ�´�Ƽ�� ���� ','2020-07-10',69);
insert into tblCommunity values (34,'user18','34�� Ŀ�´�Ƽ�� ����  ','34�� Ŀ�´�Ƽ�� ���� ','2020-07-15',94);
insert into tblCommunity values (35,'user21','35�� Ŀ�´�Ƽ�� ����  ','35�� Ŀ�´�Ƽ�� ���� ','2020-07-20',32);
insert into tblCommunity values (36,'user65','36�� Ŀ�´�Ƽ�� ����  ','36�� Ŀ�´�Ƽ�� ���� ','2020-07-25',44);
insert into tblCommunity values (37,'user52','37�� Ŀ�´�Ƽ�� ����  ','37�� Ŀ�´�Ƽ�� ���� ','2020-07-30',85);
insert into tblCommunity values (38,'user21','38�� Ŀ�´�Ƽ�� ����  ','38�� Ŀ�´�Ƽ�� ���� ','2020-08-04',65);
insert into tblCommunity values (39,'user69','39�� Ŀ�´�Ƽ�� ����  ','39�� Ŀ�´�Ƽ�� ���� ','2020-08-09',93);
insert into tblCommunity values (40,'user41','40�� Ŀ�´�Ƽ�� ����  ','40�� Ŀ�´�Ƽ�� ���� ','2020-08-14',56);
insert into tblCommunity values (41,'user60','41�� Ŀ�´�Ƽ�� ����  ','41�� Ŀ�´�Ƽ�� ���� ','2020-08-19',74);
insert into tblCommunity values (42,'user28','42�� Ŀ�´�Ƽ�� ����  ','42�� Ŀ�´�Ƽ�� ���� ','2020-08-24',47);
insert into tblCommunity values (43,'user53','43�� Ŀ�´�Ƽ�� ����  ','43�� Ŀ�´�Ƽ�� ���� ','2020-08-29',84);
insert into tblCommunity values (44,'user34','44�� Ŀ�´�Ƽ�� ����  ','44�� Ŀ�´�Ƽ�� ���� ','2020-09-03',50);
insert into tblCommunity values (45,'user67','45�� Ŀ�´�Ƽ�� ����  ','45�� Ŀ�´�Ƽ�� ���� ','2020-09-08',53);
insert into tblCommunity values (46,'user46','46�� Ŀ�´�Ƽ�� ����  ','46�� Ŀ�´�Ƽ�� ���� ','2020-09-13',66);
insert into tblCommunity values (47,'user14','47�� Ŀ�´�Ƽ�� ����  ','47�� Ŀ�´�Ƽ�� ���� ','2020-09-18',42);
insert into tblCommunity values (48,'user66','48�� Ŀ�´�Ƽ�� ����  ','48�� Ŀ�´�Ƽ�� ���� ','2020-09-23',49);
insert into tblCommunity values (49,'user68','49�� Ŀ�´�Ƽ�� ����  ','49�� Ŀ�´�Ƽ�� ���� ','2020-09-28',3);
insert into tblCommunity values (50,'user96','50�� Ŀ�´�Ƽ�� ����  ','50�� Ŀ�´�Ƽ�� ���� ','2020-10-03',1);
insert into tblCommunity values (51,'user29','51�� Ŀ�´�Ƽ�� ����  ','51�� Ŀ�´�Ƽ�� ���� ','2020-10-08',90);
insert into tblCommunity values (52,'user66','52�� Ŀ�´�Ƽ�� ����  ','52�� Ŀ�´�Ƽ�� ���� ','2020-10-13',72);
insert into tblCommunity values (53,'user47','53�� Ŀ�´�Ƽ�� ����  ','53�� Ŀ�´�Ƽ�� ���� ','2020-10-18',39);
insert into tblCommunity values (54,'user16','54�� Ŀ�´�Ƽ�� ����  ','54�� Ŀ�´�Ƽ�� ���� ','2020-10-23',64);
insert into tblCommunity values (55,'user53','55�� Ŀ�´�Ƽ�� ����  ','55�� Ŀ�´�Ƽ�� ���� ','2020-10-28',67);
insert into tblCommunity values (56,'user3','56�� Ŀ�´�Ƽ�� ����  ','56�� Ŀ�´�Ƽ�� ���� ','2020-11-02',41);
insert into tblCommunity values (57,'user76','57�� Ŀ�´�Ƽ�� ����  ','57�� Ŀ�´�Ƽ�� ���� ','2020-11-07',87);
insert into tblCommunity values (58,'user61','58�� Ŀ�´�Ƽ�� ����  ','58�� Ŀ�´�Ƽ�� ���� ','2020-11-12',88);
insert into tblCommunity values (59,'user41','59�� Ŀ�´�Ƽ�� ����  ','59�� Ŀ�´�Ƽ�� ���� ','2020-11-17',56);
insert into tblCommunity values (60,'user77','60�� Ŀ�´�Ƽ�� ����  ','60�� Ŀ�´�Ƽ�� ���� ','2020-11-22',89);
insert into tblCommunity values (61,'user86','61�� Ŀ�´�Ƽ�� ����  ','61�� Ŀ�´�Ƽ�� ���� ','2020-11-27',57);
insert into tblCommunity values (62,'user29','62�� Ŀ�´�Ƽ�� ����  ','62�� Ŀ�´�Ƽ�� ���� ','2020-12-02',69);
insert into tblCommunity values (63,'user75','63�� Ŀ�´�Ƽ�� ����  ','63�� Ŀ�´�Ƽ�� ���� ','2020-12-07',45);
insert into tblCommunity values (64,'user98','64�� Ŀ�´�Ƽ�� ����  ','64�� Ŀ�´�Ƽ�� ���� ','2020-12-12',74);
insert into tblCommunity values (65,'user17','65�� Ŀ�´�Ƽ�� ����  ','65�� Ŀ�´�Ƽ�� ���� ','2020-12-17',76);
insert into tblCommunity values (66,'user25','66�� Ŀ�´�Ƽ�� ����  ','66�� Ŀ�´�Ƽ�� ���� ','2020-12-22',53);
insert into tblCommunity values (67,'user65','67�� Ŀ�´�Ƽ�� ����  ','67�� Ŀ�´�Ƽ�� ���� ','2020-12-27',84);
insert into tblCommunity values (68,'user51','68�� Ŀ�´�Ƽ�� ����  ','68�� Ŀ�´�Ƽ�� ���� ','2021-01-01',87);
insert into tblCommunity values (69,'user48','69�� Ŀ�´�Ƽ�� ����  ','69�� Ŀ�´�Ƽ�� ���� ','2021-01-06',45);
insert into tblCommunity values (70,'user80','70�� Ŀ�´�Ƽ�� ����  ','70�� Ŀ�´�Ƽ�� ���� ','2021-01-11',16);
insert into tblCommunity values (71,'user79','71�� Ŀ�´�Ƽ�� ����  ','71�� Ŀ�´�Ƽ�� ���� ','2021-01-16',14);
insert into tblCommunity values (72,'user65','72�� Ŀ�´�Ƽ�� ����  ','72�� Ŀ�´�Ƽ�� ���� ','2021-01-21',48);
insert into tblCommunity values (73,'user83','73�� Ŀ�´�Ƽ�� ����  ','73�� Ŀ�´�Ƽ�� ���� ','2021-01-26',68);
insert into tblCommunity values (74,'user12','74�� Ŀ�´�Ƽ�� ����  ','74�� Ŀ�´�Ƽ�� ���� ','2021-01-31',75);
insert into tblCommunity values (75,'user71','75�� Ŀ�´�Ƽ�� ����  ','75�� Ŀ�´�Ƽ�� ���� ','2021-02-05',14);
insert into tblCommunity values (76,'user73','76�� Ŀ�´�Ƽ�� ����  ','76�� Ŀ�´�Ƽ�� ���� ','2021-02-10',57);
insert into tblCommunity values (77,'user21','77�� Ŀ�´�Ƽ�� ����  ','77�� Ŀ�´�Ƽ�� ���� ','2021-02-15',26);
insert into tblCommunity values (78,'user15','78�� Ŀ�´�Ƽ�� ����  ','78�� Ŀ�´�Ƽ�� ���� ','2021-02-20',71);
insert into tblCommunity values (79,'user8','79�� Ŀ�´�Ƽ�� ����  ','79�� Ŀ�´�Ƽ�� ���� ','2021-02-25',86);
insert into tblCommunity values (80,'user65','80�� Ŀ�´�Ƽ�� ����  ','80�� Ŀ�´�Ƽ�� ���� ','2021-03-02',89);
insert into tblCommunity values (81,'user98','81�� Ŀ�´�Ƽ�� ����  ','81�� Ŀ�´�Ƽ�� ���� ','2021-03-07',90);
insert into tblCommunity values (82,'user79','82�� Ŀ�´�Ƽ�� ����  ','82�� Ŀ�´�Ƽ�� ���� ','2021-03-12',9);
insert into tblCommunity values (83,'user39','83�� Ŀ�´�Ƽ�� ����  ','83�� Ŀ�´�Ƽ�� ���� ','2021-03-17',27);
insert into tblCommunity values (84,'user8','84�� Ŀ�´�Ƽ�� ����  ','84�� Ŀ�´�Ƽ�� ���� ','2021-03-22',85);
insert into tblCommunity values (85,'user54','85�� Ŀ�´�Ƽ�� ����  ','85�� Ŀ�´�Ƽ�� ���� ','2021-03-27',2);
insert into tblCommunity values (86,'user41','86�� Ŀ�´�Ƽ�� ����  ','86�� Ŀ�´�Ƽ�� ���� ','2021-04-01',33);
insert into tblCommunity values (87,'user88','87�� Ŀ�´�Ƽ�� ����  ','87�� Ŀ�´�Ƽ�� ���� ','2021-04-06',23);
insert into tblCommunity values (88,'user78','88�� Ŀ�´�Ƽ�� ����  ','88�� Ŀ�´�Ƽ�� ���� ','2021-04-11',12);
insert into tblCommunity values (89,'user96','89�� Ŀ�´�Ƽ�� ����  ','89�� Ŀ�´�Ƽ�� ���� ','2021-04-16',4);
insert into tblCommunity values (90,'user57','90�� Ŀ�´�Ƽ�� ����  ','90�� Ŀ�´�Ƽ�� ���� ','2021-04-21',69);
insert into tblCommunity values (91,'user60','91�� Ŀ�´�Ƽ�� ����  ','91�� Ŀ�´�Ƽ�� ���� ','2021-04-26',6);
insert into tblCommunity values (92,'user21','92�� Ŀ�´�Ƽ�� ����  ','92�� Ŀ�´�Ƽ�� ���� ','2021-05-01',25);
insert into tblCommunity values (93,'user83','93�� Ŀ�´�Ƽ�� ����  ','93�� Ŀ�´�Ƽ�� ���� ','2021-05-06',56);
insert into tblCommunity values (94,'user3','94�� Ŀ�´�Ƽ�� ����  ','94�� Ŀ�´�Ƽ�� ���� ','2021-05-11',48);
insert into tblCommunity values (95,'user88','95�� Ŀ�´�Ƽ�� ����  ','95�� Ŀ�´�Ƽ�� ���� ','2021-05-16',0);
insert into tblCommunity values (96,'user47','96�� Ŀ�´�Ƽ�� ����  ','96�� Ŀ�´�Ƽ�� ���� ','2021-05-21',86);
insert into tblCommunity values (97,'user48','97�� Ŀ�´�Ƽ�� ����  ','97�� Ŀ�´�Ƽ�� ���� ','2021-05-26',34);
insert into tblCommunity values (98,'user72','98�� Ŀ�´�Ƽ�� ����  ','98�� Ŀ�´�Ƽ�� ���� ','2021-05-31',9);
insert into tblCommunity values (99,'user21','99�� Ŀ�´�Ƽ�� ����  ','99�� Ŀ�´�Ƽ�� ���� ','2021-06-05',82);
insert into tblCommunity values (100,'user66','100�� Ŀ�´�Ƽ�� ����  ','100�� Ŀ�´�Ƽ�� ���� ','2021-06-10',85);


-- Ŀ�´�Ƽ ���
CREATE TABLE tblComComment (
	comcomment_seq	NUMBER	NOT NULL,       --��� ��ȣ(PK) 
	community_seq	NUMBER	NOT NULL,       --�� ��ȣ(FK) --100
	id	VARCHAR2(100)	NOT NULL,           --�ۼ��� id(FK)
	content	VARCHAR2(4000)	NOT NULL,       --���� 20��
	regdate DATE DEFAULT sysdate NOT NULL   --�ۼ���¥ 28�� ����
); --100

CREATE SEQUENCE comcomment_seq;

ALTER TABLE tblComComment ADD CONSTRAINT tblCC_comcomment_seq_pk PRIMARY KEY(comcomment_seq);
ALTER TABLE tblComComment ADD CONSTRAINT tblCC_community_seq_fk FOREIGN KEY(community_seq) REFERENCES tblCommunity(community_seq);
ALTER TABLE tblComComment ADD CONSTRAINT tblCC_id_fk FOREIGN KEY(id) REFERENCES tblUser(id);

insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (1, 48, 'user68', '�� ���� ���ϴ�~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (2, 100, 'user47', '�� ���� ���ϴ�~', '2021-01-04');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (3, 19, 'user2', '���� ���̳׿�^^', '2021-01-06');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (4, 19, 'user55', '�� ���� ���ϴ�~', '2021-01-08');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (5, 74, 'user93', '���� ���̳׿�^^', '2021-01-10');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (6, 13, 'user40', 'ȭ�����սô�!!', '2021-01-11');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (7, 9, 'user47', '�� ���� ���ϴ�~', '2021-01-12');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (8, 100, 'user59', '���� ���̳׿�^^', '2021-01-13');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (9, 6, 'user25', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-01-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (10, 84, 'user37', '���� ���̳׿�^^', '2021-01-16');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (11, 23, 'user27', '���� ���̳׿�^^', '2021-01-17');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (12, 21, 'user52', '�� ���� ���ϴ�~', '2021-01-19');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (13, 20, 'user7', '�� ���� ���ϴ�~', '2021-01-21');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (14, 81, 'user21', '���� ���̳׿�^^', '2021-01-22');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (15, 84, 'user82', '���� ���̳׿�^^', '2021-01-23');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (16, 79, 'user90', 'ȭ�����սô�!!', '2021-01-24');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (17, 41, 'user40', '���� ���̳׿�^^', '2021-01-25');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (18, 44, 'user3', 'ȭ�����սô�!!', '2021-01-26');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (19, 94, 'user62', 'ȭ�����սô�!!', '2021-01-27');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (20, 81, 'user82', '���� ���̳׿�^^', '2021-01-29');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (21, 96, 'user92', '�� ���� ���ϴ�~', '2021-01-31');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (22, 26, 'user12', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-02-02');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (23, 18, 'user2', '�� ���� ���ϴ�~', '2021-02-04');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (24, 24, 'user19', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-02-05');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (25, 6, 'user64', '�� ���� ���ϴ�~', '2021-02-06');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (26, 51, 'user35', '�� ���� ���ϴ�~', '2021-02-07');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (27, 59, 'user72', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-02-08');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (28, 29, 'user64', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-02-10');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (29, 85, 'user36', '���� ���̳׿�^^', '2021-02-12');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (30, 57, 'user72', 'ȭ�����սô�!!', '2021-02-13');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (31, 74, 'user22', 'ȭ�����սô�!!', '2021-02-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (32, 41, 'user22', '���� ���̳׿�^^', '2021-02-16');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (33, 76, 'user53', 'ȭ�����սô�!!', '2021-02-18');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (34, 3, 'user4', 'ȭ�����սô�!!', '2021-02-19');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (35, 95, 'user75', '���� ���̳׿�^^', '2021-02-20');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (36, 47, 'user38', 'ȭ�����սô�!!', '2021-02-22');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (37, 83, 'user34', 'ȭ�����սô�!!', '2021-02-23');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (38, 78, 'user57', '�� ���� ���ϴ�~', '2021-02-24');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (39, 36, 'user97', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-02-25');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (40, 76, 'user48', '���� ���̳׿�^^', '2021-02-27');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (41, 13, 'user58', 'ȭ�����սô�!!', '2021-03-01');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (42, 15, 'user59', '�� ���� ���ϴ�~', '2021-03-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (43, 21, 'user48', '���� ���̳׿�^^', '2021-03-05');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (44, 49, 'user36', 'ȭ�����սô�!!', '2021-03-07');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (45, 4, 'user32', 'ȭ�����սô�!!', '2021-03-09');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (46, 26, 'user12', 'ȭ�����սô�!!', '2021-03-10');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (47, 77, 'user24', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-03-12');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (48, 70, 'user4', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-03-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (49, 25, 'user49', 'ȭ�����սô�!!', '2021-03-15');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (50, 3, 'user10', '�� ���� ���ϴ�~', '2021-03-17');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (51, 91, 'user42', 'ȭ�����սô�!!', '2021-03-19');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (52, 73, 'user15', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-03-20');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (53, 41, 'user56', '�� ���� ���ϴ�~', '2021-03-21');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (54, 83, 'user36', 'ȭ�����սô�!!', '2021-03-23');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (55, 65, 'user60', 'ȭ�����սô�!!', '2021-03-25');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (56, 4, 'user27', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-03-26');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (57, 97, 'user84', 'ȭ�����սô�!!', '2021-03-27');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (58, 39, 'user1', '���� ���̳׿�^^', '2021-03-28');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (59, 77, 'user99', '���� ���̳׿�^^', '2021-03-30');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (60, 69, 'user63', 'ȭ�����սô�!!', '2021-04-01');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (61, 48, 'user80', '���� ���̳׿�^^', '2021-04-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (62, 50, 'user90', 'ȭ�����սô�!!', '2021-04-05');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (63, 67, 'user7', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-04-06');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (64, 84, 'user56', '���� ���̳׿�^^', '2021-04-07');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (65, 72, 'user49', '�� ���� ���ϴ�~', '2021-04-09');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (66, 95, 'user70', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-04-11');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (67, 84, 'user30', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-04-12');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (68, 7, 'user22', 'ȭ�����սô�!!', '2021-04-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (69, 41, 'user90', '�� ���� ���ϴ�~', '2021-04-16');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (70, 88, 'user57', 'ȭ�����սô�!!', '2021-04-17');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (71, 88, 'user26', '���� ���̳׿�^^', '2021-04-18');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (72, 40, 'user8', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-04-20');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (73, 99, 'user82', '�� ���� ���ϴ�~', '2021-04-22');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (74, 87, 'user24', 'ȭ�����սô�!!', '2021-04-24');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (75, 91, 'user94', '�� ���� ���ϴ�~', '2021-04-25');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (76, 93, 'user63', 'ȭ�����սô�!!', '2021-04-26');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (77, 67, 'user67', '�� ���� ���ϴ�~', '2021-04-28');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (78, 63, 'user21', '�� ���� ���ϴ�~', '2021-04-30');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (79, 59, 'user9', '���� ���̳׿�^^', '2021-05-02');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (80, 91, 'user74', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-05-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (81, 58, 'user4', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-05-04');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (82, 79, 'user60', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-05-06');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (83, 27, 'user53', '�� ���� ���ϴ�~', '2021-05-07');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (84, 81, 'user79', '���� ���̳׿�^^', '2021-05-08');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (85, 7, 'user35', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-05-09');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (86, 17, 'user79', '�� ���� ���ϴ�~', '2021-05-11');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (87, 65, 'user36', '���� ���̳׿�^^', '2021-05-13');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (88, 84, 'user26', 'ȭ�����սô�!!', '2021-05-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (89, 48, 'user3', '�� ���� ���ϴ�~', '2021-05-15');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (90, 83, 'user36', '�� ���� ���ϴ�~', '2021-05-17');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (91, 60, 'user1', '���� ���̳׿�^^', '2021-05-18');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (92, 53, 'user16', '�� ���� ���ϴ�~', '2021-05-19');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (93, 60, 'user26', 'ȭ�����սô�!!', '2021-05-21');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (94, 96, 'user26', '�� ���� ���ϴ�~', '2021-05-22');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (95, 9, 'user31', '���� ���̳׿�^^', '2021-05-23');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (96, 9, 'user73', '�� ���� ���ϴ�~', '2021-05-24');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (97, 9, 'user63', '�� ���� ���ϴ�~', '2021-05-26');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (98, 59, 'user32', 'ȭ�����սô�!!', '2021-05-28');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (99, 97, 'user35', '���� ���̳׿�^^', '2021-05-30');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (100, 11, 'user70', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-06-01');


-- Ŀ�´�Ƽ �̹���
CREATE TABLE tblCommunityImage (
	community_img_seq	NUMBER	NOT NULL,   --�̹�����ȣ(PK)
	community_seq	NUMBER	NOT NULL,       --�۹�ȣ(FK)
	path	VARCHAR2(4000)	NOT NULL        --�̹������
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


-- ����
CREATE TABLE tblBid (
	bid_seq	NUMBER	NOT NULL,
	id	VARCHAR2(100)	NOT NULL,
	product_seq	NUMBER	NOT NULL, --160
	price	NUMBER	NOT NULL, -- 1000~100000
	time	DATE	DEFAULT sysdate NOT NULL
); --¦�� ��� , Ȧ�� �Ϲ�

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



--��ǰ�̹���
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



--��ǰ�˻�
CREATE TABLE tblSearch (
	search_seq	number	NOT NULL,
	keyword	varchar2(90)	NOT NULL, --�˾Ƽ�
	time date DEFAULT sysdate	NOT NULL
);--100��
CREATE SEQUENCE search_seq;

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (1, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (2, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (3, '����', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (4, '����', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (5, '�ڵ���', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (6, 'TV', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (7, '����', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (8, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (9, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (10, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (11, '�ڵ���', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (12, 'TV', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (13, '����', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (14, '����', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (15, '����', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (16, '����', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (17, '�ڵ���', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (18, 'TV', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (19, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (20, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (21, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (22, '��Ʈ��', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (23, 'å��', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (24, '����', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (25, '�ڵ���', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (26, 'TV', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (27, '����', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (28, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (29, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (30, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (31, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (32, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (33, '��Ʈ��', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (34, 'å��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (35, '����', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (36, '�ڵ���', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (37, 'TV', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (38, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (39, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (40, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (41, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (42, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (43, '����', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (44, '��Ʈ��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (45, 'å��', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (46, '����', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (47, '�ڵ���', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (48, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (49, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (50, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (51, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (52, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (53, '��Ʈ��', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (54, 'å��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (55, '����', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (56, '�ڵ���', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (57, 'TV', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (58, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (59, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (60, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (61, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (62, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (63, '����', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (64, '��Ʈ��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (65, 'å��', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (66, '����', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (67, '�ڵ���', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (68, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (69, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (70, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (71, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (72, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (73, '��Ʈ��', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (74, 'å��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (75, '����', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (76, '�ڵ���', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (77, 'TV', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (78, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (79, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (80, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (81, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (82, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (83, '����', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (84, '��Ʈ��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (85, 'å��', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (86, '����', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (87, '�ڵ���', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (88, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (89, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (90, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (91, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (92, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (93, '��Ʈ��', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (94, 'å��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (95, '����', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (96, '�ڵ���', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (97, 'TV', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (98, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (99, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (100, '����', to_date('09/09/2021', 'MM/DD/RRRR'));



--�޽���
CREATE TABLE tblMessage (
	message_seq	number NOT NULL,
	sender_id	VARCHAR2(100) NOT NULL, --fk
	receiver_id	VARCHAR2(100) NOT NULL, --fk
	content	varchar2(4000) NOT NULL, -- 10��
	sendtime DATE DEFAULT sysdate NOT NULL,
	is_check CHAR(1) NOT NULL --
); --100
CREATE SEQUENCE message_seq;


INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (1, 'user1', 'user2', '�ȳ��ϼ���1', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (2, 'user2', 'user3', '�ȳ��ϼ���2', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (3, 'user3', 'user4', '�ȳ��ϼ���3', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (4, 'user4', 'user5', '�ȳ��ϼ���4', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (5, 'user5', 'user6', '�ȳ��ϼ���5', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (6, 'user6', 'user7', '�ȳ��ϼ���6', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (7, 'user7', 'user8', '�ȳ��ϼ���7', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (8, 'user8', 'user9', '�ȳ��ϼ���8', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (9, 'user9', 'user10', '�ȳ��ϼ���9', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (10, 'user10', 'user11', '�ȳ��ϼ���10', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (11, 'user11', 'user12', '�ȳ��ϼ���11', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (12, 'user12', 'user13', '�ȳ��ϼ���12', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (13, 'user13', 'user14', '�ȳ��ϼ���13', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (14, 'user14', 'user15', '�ȳ��ϼ���14', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (15, 'user15', 'user16', '�ȳ��ϼ���15', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (16, 'user16', 'user17', '�ȳ��ϼ���16', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (17, 'user17', 'user18', '�ȳ��ϼ���17', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (18, 'user18', 'user19', '�ȳ��ϼ���18', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (19, 'user19', 'user20', '�ȳ��ϼ���19', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (20, 'user20', 'user21', '�ȳ��ϼ���20', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (21, 'user21', 'user22', '�ȳ��ϼ���21', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (22, 'user22', 'user23', '�ȳ��ϼ���22', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (23, 'user23', 'user24', '�ȳ��ϼ���23', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (24, 'user24', 'user25', '�ȳ��ϼ���24', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (25, 'user25', 'user26', '�ȳ��ϼ���25', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (26, 'user26', 'user27', '�ȳ��ϼ���26', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (27, 'user27', 'user28', '�ȳ��ϼ���27', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (28, 'user28', 'user29', '�ȳ��ϼ���28', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (29, 'user29', 'user30', '�ȳ��ϼ���29', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (30, 'user30', 'user31', '�ȳ��ϼ���30', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (31, 'user31', 'user32', '�ȳ��ϼ���31', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (32, 'user32', 'user33', '�ȳ��ϼ���32', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (33, 'user33', 'user34', '�ȳ��ϼ���33', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (34, 'user34', 'user35', '�ȳ��ϼ���34', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (35, 'user35', 'user36', '�ȳ��ϼ���35', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (36, 'user36', 'user37', '�ȳ��ϼ���36', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (37, 'user37', 'user38', '�ȳ��ϼ���37', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (38, 'user38', 'user39', '�ȳ��ϼ���38', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (39, 'user39', 'user40', '�ȳ��ϼ���39', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (40, 'user40', 'user41', '�ȳ��ϼ���40', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (41, 'user41', 'user42', '�ȳ��ϼ���41', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (42, 'user42', 'user43', '�ȳ��ϼ���42', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (43, 'user43', 'user44', '�ȳ��ϼ���43', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (44, 'user44', 'user45', '�ȳ��ϼ���44', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (45, 'user45', 'user46', '�ȳ��ϼ���45', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (46, 'user46', 'user47', '�ȳ��ϼ���46', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (47, 'user47', 'user48', '�ȳ��ϼ���47', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (48, 'user48', 'user49', '�ȳ��ϼ���48', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (49, 'user49', 'user50', '�ȳ��ϼ���49', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (50, 'user50', 'user51', '�ȳ��ϼ���50', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (51, 'user51', 'user52', '�ȳ��ϼ���51', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (52, 'user52', 'user53', '�ȳ��ϼ���52', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (53, 'user53', 'user54', '�ȳ��ϼ���53', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (54, 'user54', 'user55', '�ȳ��ϼ���54', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (55, 'user55', 'user56', '�ȳ��ϼ���55', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (56, 'user56', 'user57', '�ȳ��ϼ���56', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (57, 'user57', 'user58', '�ȳ��ϼ���57', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (58, 'user58', 'user59', '�ȳ��ϼ���58', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (59, 'user59', 'user60', '�ȳ��ϼ���59', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (60, 'user60', 'user61', '�ȳ��ϼ���60', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (61, 'user61', 'user62', '�ȳ��ϼ���61', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (62, 'user62', 'user63', '�ȳ��ϼ���62', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (63, 'user63', 'user64', '�ȳ��ϼ���63', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (64, 'user64', 'user65', '�ȳ��ϼ���64', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (65, 'user65', 'user66', '�ȳ��ϼ���65', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (66, 'user66', 'user67', '�ȳ��ϼ���66', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (67, 'user67', 'user68', '�ȳ��ϼ���67', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (68, 'user68', 'user69', '�ȳ��ϼ���68', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (69, 'user69', 'user70', '�ȳ��ϼ���69', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (70, 'user70', 'user71', '�ȳ��ϼ���70', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (71, 'user71', 'user72', '�ȳ��ϼ���71', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (72, 'user72', 'user73', '�ȳ��ϼ���72', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (73, 'user73', 'user74', '�ȳ��ϼ���73', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (74, 'user74', 'user75', '�ȳ��ϼ���74', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (75, 'user75', 'user76', '�ȳ��ϼ���75', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (76, 'user76', 'user77', '�ȳ��ϼ���76', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (77, 'user77', 'user78', '�ȳ��ϼ���77', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (78, 'user78', 'user79', '�ȳ��ϼ���78', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (79, 'user79', 'user80', '�ȳ��ϼ���79', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (80, 'user80', 'user81', '�ȳ��ϼ���80', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (81, 'user81', 'user82', '�ȳ��ϼ���81', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (82, 'user82', 'user83', '�ȳ��ϼ���82', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (83, 'user83', 'user84', '�ȳ��ϼ���83', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (84, 'user84', 'user85', '�ȳ��ϼ���84', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (85, 'user85', 'user86', '�ȳ��ϼ���85', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (86, 'user86', 'user87', '�ȳ��ϼ���86', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (87, 'user87', 'user88', '�ȳ��ϼ���87', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (88, 'user88', 'user89', '�ȳ��ϼ���88', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (89, 'user89', 'user90', '�ȳ��ϼ���89', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (90, 'user90', 'user91', '�ȳ��ϼ���90', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (91, 'user91', 'user92', '�ȳ��ϼ���91', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (92, 'user92', 'user93', '�ȳ��ϼ���92', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (93, 'user93', 'user94', '�ȳ��ϼ���93', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (94, 'user94', 'user95', '�ȳ��ϼ���94', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (95, 'user95', 'user96', '�ȳ��ϼ���95', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (96, 'user96', 'user97', '�ȳ��ϼ���96', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (97, 'user97', 'user98', '�ȳ��ϼ���97', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (98, 'user98', 'user99', '�ȳ��ϼ���98', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (99, 'user99', 'user100', '�ȳ��ϼ���99', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (100, 'user100', 'user1', '�ȳ��ϼ���100', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');



--���������̹���
CREATE TABLE tblNoticeImg (
	notice_img_seq	NUMBER	NOT NULL,
	notice_seq	number	NOT NULL,
	path varchar2(4000)	NOT NULL
); --���߿�
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



--��ǰ���
CREATE TABLE tblProductComment (
	product_comment_seq	NUMBER NOT NULL,
	product_seq	NUMBER NOT NULL,
	id VARCHAR2(100) NOT NULL,
	comments VARCHAR2(4000) NOT NULL, --100��
	time DATE DEFAULT sysdate NOT NULL 
); --100��
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
VALUES (1, 1, 'user1', '�����մϴ�1', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (2, 2, 'user2', '�����մϴ�2', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (3, 3, 'user3', '�����մϴ�3', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (4, 4, 'user4', '�����մϴ�4', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (5, 5, 'user5', '�����մϴ�5', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (6, 6, 'user6', '�����մϴ�6', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (7, 7, 'user7', '�����մϴ�7', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (8, 8, 'user8', '�����մϴ�8', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (9, 9, 'user9', '�����մϴ�9', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (10, 10, 'user10', '�����մϴ�10', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (11, 11, 'user11', '�����մϴ�11', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (12, 12, 'user12', '�����մϴ�12', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (13, 13, 'user13', '�����մϴ�13', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (14, 14, 'user14', '�����մϴ�14', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (15, 15, 'user15', '�����մϴ�15', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (16, 16, 'user16', '�����մϴ�16', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (17, 17, 'user17', '�����մϴ�17', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (18, 18, 'user18', '�����մϴ�18', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (19, 19, 'user19', '�����մϴ�19', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (20, 20, 'user20', '�����մϴ�20', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (21, 21, 'user21', '�����մϴ�21', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (22, 22, 'user22', '�����մϴ�22', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (23, 23, 'user23', '�����մϴ�23', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (24, 24, 'user24', '�����մϴ�24', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (25, 25, 'user25', '�����մϴ�25', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (26, 26, 'user26', '�����մϴ�26', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (27, 27, 'user27', '�����մϴ�27', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (28, 28, 'user28', '�����մϴ�28', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (29, 29, 'user29', '�����մϴ�29', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (30, 30, 'user30', '�����մϴ�30', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (31, 31, 'user31', '�����մϴ�31', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (32, 32, 'user32', '�����մϴ�32', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (33, 33, 'user33', '�����մϴ�33', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (34, 34, 'user34', '�����մϴ�34', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (35, 35, 'user35', '�����մϴ�35', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (36, 36, 'user36', '�����մϴ�36', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (37, 37, 'user37', '�����մϴ�37', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (38, 38, 'user38', '�����մϴ�38', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (39, 39, 'user39', '�����մϴ�39', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (40, 40, 'user40', '�����մϴ�40', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (41, 41, 'user41', '�����մϴ�41', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (42, 42, 'user42', '�����մϴ�42', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (43, 43, 'user43', '�����մϴ�43', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (44, 44, 'user44', '�����մϴ�44', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (45, 45, 'user45', '�����մϴ�45', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (46, 46, 'user46', '�����մϴ�46', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (47, 47, 'user47', '�����մϴ�47', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (48, 48, 'user48', '�����մϴ�48', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (49, 49, 'user49', '�����մϴ�49', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (50, 50, 'user50', '�����մϴ�50', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (51, 51, 'user51', '�����մϴ�51', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (52, 52, 'user52', '�����մϴ�52', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (53, 53, 'user53', '�����մϴ�53', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (54, 54, 'user54', '�����մϴ�54', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (55, 55, 'user55', '�����մϴ�55', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (56, 56, 'user56', '�����մϴ�56', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (57, 57, 'user57', '�����մϴ�57', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (58, 58, 'user58', '�����մϴ�58', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (59, 59, 'user59', '�����մϴ�59', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (60, 60, 'user60', '�����մϴ�60', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (61, 61, 'user61', '�����մϴ�61', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (62, 62, 'user62', '�����մϴ�62', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (63, 63, 'user63', '�����մϴ�63', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (64, 64, 'user64', '�����մϴ�64', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (65, 65, 'user65', '�����մϴ�65', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (66, 66, 'user66', '�����մϴ�66', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (67, 67, 'user67', '�����մϴ�67', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (68, 68, 'user68', '�����մϴ�68', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (69, 69, 'user69', '�����մϴ�69', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (70, 70, 'user70', '�����մϴ�70', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (71, 71, 'user71', '�����մϴ�71', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (72, 72, 'user72', '�����մϴ�72', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (73, 73, 'user73', '�����մϴ�73', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (74, 74, 'user74', '�����մϴ�74', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (75, 75, 'user75', '�����մϴ�75', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (76, 76, 'user76', '�����մϴ�76', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (77, 77, 'user77', '�����մϴ�77', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (78, 78, 'user78', '�����մϴ�78', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (79, 79, 'user79', '�����մϴ�79', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (80, 80, 'user80', '�����մϴ�80', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (81, 81, 'user81', '�����մϴ�81', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (82, 82, 'user82', '�����մϴ�82', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (83, 83, 'user83', '�����մϴ�83', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (84, 84, 'user84', '�����մϴ�84', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (85, 85, 'user85', '�����մϴ�85', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (86, 86, 'user86', '�����մϴ�86', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (87, 87, 'user87', '�����մϴ�87', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (88, 88, 'user88', '�����մϴ�88', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (89, 89, 'user89', '�����մϴ�89', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (90, 90, 'user90', '�����մϴ�90', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (91, 91, 'user91', '�����մϴ�91', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (92, 92, 'user92', '�����մϴ�92', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (93, 93, 'user93', '�����մϴ�93', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (94, 94, 'user94', '�����մϴ�94', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (95, 95, 'user95', '�����մϴ�95', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (96, 96, 'user96', '�����մϴ�96', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (97, 97, 'user97', '�����մϴ�97', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (98, 98, 'user98', '�����մϴ�98', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (99, 99, 'user99', '�����մϴ�99', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (100, 100, 'user100', '�����մϴ�100', to_date('09/09/2021', 'MM/DD/RRRR'));




-- ���� ���̺�
CREATE TABLE tblvisit (
	regdate	DATE DEFAULT sysdate NOT NULL,--2020~
	COUNT NUMBER DEFAULT 0 NOT NULL --1000~5000
); --100
ALTER TABLE tblvisit ADD CONSTRAINT tblv_regdate_pk PRIMARY KEY (regdate);
-- ���� ���̺�

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


--���ֹ�������
CREATE SEQUENCE faq_seq;
CREATE TABLE tblfaq (
	faq_seq	NUMBER NOT NULL,
	question_type_seq NUMBER NOT NULL, --5
	title VARCHAR2(100) NOT NULL, --20��
	CONTENTS VARCHAR2(4000)	NOT NULL --200��
);  --100��
ALTER TABLE tblfaq ADD CONSTRAINT tblf_faq_seq_pk PRIMARY KEY (faq_seq);
ALTER TABLE tblfaq ADD CONSTRAINT tblf_question_type_seq_fk FOREIGN KEY (question_type_seq)
    REFERENCES tblquestiontype (question_type_seq);
--���ֹ�������
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[����ó��] ����ó�������� ��� �ǳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[����ó��] ����ó�������� ��� �ǳ���?','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[ȸ������] ������ ���̵� �̹� �����Ѵٰ� ���ɴϴ�.','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[ȸ������] ������ ���̵� �̹� �����Ѵٰ� ���ɴϴ�.','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[����ó��] ����ó�������� ��� �ǳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[����ó��] ����ó�������� ��� �ǳ���?','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[����ó��] ����ó�������� ��� �ǳ���?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[ȸ������] ������ ���̵� �̹� �����Ѵٰ� ���ɴϴ�.','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[����ó��] ����ó�������� ��� �ǳ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[ȸ������] ������ ���̵� �̹� �����Ѵٰ� ���ɴϴ�.','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[ȸ������] ������ ���̵� �̹� �����Ѵٰ� ���ɴϴ�.','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[����ó��] ����ó�������� ��� �ǳ���?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȸ������] ������ ���̵� �̹� �����Ѵٰ� ���ɴϴ�.','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[����ó��] ����ó�������� ��� �ǳ���?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[����ó��] ����ó�������� ��� �ǳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');



--ȸ�� ������
CREATE TABLE tbluserprofile (
	ID VARCHAR2(100) NOT NULL,-- �ĺ� 
	nickname VARCHAR2(45) NOT NULL, --�ѱ� 15��, ���� 45��
	intro VARCHAR2(300) NOT NULL, --30
	PATH VARCHAR2(4000) NOT NULL --profileimg1~100?
); --100�� ���߿�
ALTER TABLE tbluserprofile ADD CONSTRAINT tblup_id_pk PRIMARY KEY (ID);
ALTER TABLE tbluserprofile ADD CONSTRAINT tblup_nickname_unique UNIQUE(nickname);
ALTER TABLE tbluserprofile ADD CONSTRAINT tblup_id_fk FOREIGN KEY (ID)
    REFERENCES tbluser (ID);

insert into tblUserProfile(id,nickname,intro,path) values ('user1','nickname1','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user2','nickname2','�ȳ��ϼ���.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user3','nickname3','���� �������� �Դϴ�.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user4','nickname4','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user5','nickname5','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user6','nickname6','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user7','nickname7','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user8','nickname8','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user9','nickname9','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user10','nickname10','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user11','nickname11','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user12','nickname12','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user13','nickname13','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user14','nickname14','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user15','nickname15','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user16','nickname16','�ȳ��ϼ���.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user17','nickname17','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user18','nickname18','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user19','nickname19','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user20','nickname20','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user21','nickname21','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user22','nickname22','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user23','nickname23','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user24','nickname24','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user25','nickname25','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user26','nickname26','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user27','nickname27','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user28','nickname28','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user29','nickname29','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user30','nickname30','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user31','nickname31','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user32','nickname32','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user33','nickname33','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user34','nickname34','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user35','nickname35','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user36','nickname36','���� �������� �Դϴ�.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user37','nickname37','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user38','nickname38','�ݰ�����!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user39','nickname39','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user40','nickname40','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user41','nickname41','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user42','nickname42','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user43','nickname43','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user44','nickname44','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user45','nickname45','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user46','nickname46','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user47','nickname47','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user48','nickname48','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user49','nickname49','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user50','nickname50','�ȳ��ϼ���.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user51','nickname51','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user52','nickname52','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user53','nickname53','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user54','nickname54','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user55','nickname55','�ݰ�����!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user56','nickname56','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user57','nickname57','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user58','nickname58','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user59','nickname59','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user60','nickname60','�ȳ��ϼ���.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user61','nickname61','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user62','nickname62','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user63','nickname63','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user64','nickname64','�ȳ��ϼ���.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user65','nickname65','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user66','nickname66','�ݰ�����!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user67','nickname67','���� �������� �Դϴ�.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user68','nickname68','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user69','nickname69','�ݰ�����!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user70','nickname70','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user71','nickname71','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user72','nickname72','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user73','nickname73','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user74','nickname74','�ݰ�����!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user75','nickname75','���� �������� �Դϴ�.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user76','nickname76','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user77','nickname77','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user78','nickname78','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user79','nickname79','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user80','nickname80','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user81','nickname81','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user82','nickname82','���� �������� �Դϴ�.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user83','nickname83','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user84','nickname84','�ݰ�����!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user85','nickname85','���� �������� �Դϴ�.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user86','nickname86','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user87','nickname87','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user88','nickname88','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user89','nickname89','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user90','nickname90','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user91','nickname91','�ȳ��ϼ���.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user92','nickname92','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user93','nickname93','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user94','nickname94','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user95','nickname95','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user96','nickname96','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user97','nickname97','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user98','nickname98','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user99','nickname99','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user100','nickname100','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');


-- �ŷ� ����

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

=======
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
    id VARCHAR2(100) NOT NULL, -- ���ҹ���+���� 4~12�� (user1)
    password VARCHAR2(100) NOT NULL, --���ҹ���+���� 6~10��
    user_level NUMBER NOT NULL --ȸ��,2-������
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
	sido VARCHAR2(15)	NOT NULL,--�ȵ�,�����
	sgg	VARCHAR2(15)	NOT NULL,--
	emd	VARCHAR2(15)	NOT NULL
);

ALTER TABLE tblAddress ADD CONSTRAINT PK_TBLADDRESS PRIMARY KEY (address_seq);
CREATE SEQUENCE address_seq;

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (1, '����', '���ı�', 'ǳ����');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (2, '����', '���ı�', '���̵�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (3, '����', '���ı�', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (4, '����', '���ı�', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (5, '����', '������', 'ȭ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (6, '����', '������', '���赿');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (7, '����', '������', '���̵�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (8, '����', '������', '���');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (9, '����', '������', '����굿');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (10, '����', '������', '��ȭ��');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (11, '����', '������', '��ȭ��');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (12, '����', '���ϱ�', '�̾Ƶ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (13, '����', '���ϱ�', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (14, '����', '���ϱ�', '��õ��');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (15, '����', '���ϱ�', '����');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (16, '����', '���ϱ�', '�μ���');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (17, '����', '���빮��', 'ȫ����');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (18, '����', '���빮��', '��ŵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (19, '����', '���빮��', 'âõ��');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (20, '����', '���빮��', '�ϰ��µ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (21, '����', '������', '�߰');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (22, '����', '������', '�ɵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (23, '����', '������', '���ǵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (24, '����', '������', 'ȭ�絿');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (25, '����', '������', '���ڵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (26, '����', '������', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (27, '����', '������', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (28, '����', '������', '�Ű�����');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (29, '����', '������', '�밭��');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (30, '����', '������', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (31, '����', '������', '���ﵿ');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (32, '����', '������', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (33, '����', '������', '���굿');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (34, '����', '������', '�ż���');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (35, '����', '������', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (36, '����', '������', '���ε�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (37, '����', '������', '���ߵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (38, '����', '������', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (39, '����', '���α�', 'û�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (40, '����', '���α�', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (41, '����', '���α�', 'ȿ�ڵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (42, '����', '���α�', '���ǵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (43, '����', '���α�', '���ϵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (44, '����', '���α�', '���ε�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (45, '����', '���α�', '���ֵ�');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (46, '����', '���α�', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (47, '����', '���α�', '�λ絿');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (48, '����', '���α�', '������');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (49, '����', '���α�', '����');

INSERT INTO TBLADDRESS (ADDRESS_SEQ, SIDO, SGG, EMD) 
VALUES (50, '����', '���α�', '������');



CREATE TABLE tblUserInfo (
    id VARCHAR2(100) NOT NULL, 
    address_seq NUMBER NOT NULL, --fk ���� 
    name VARCHAR2(21) NOT NULL, --�ѱ�2~5��
    address VARCHAR2(100) NOT NULL, --���ּ�, ���� ����
    tel VARCHAR2(100) NOT NULL, --���ڸ� 11
    email VARCHAR2(90) NOT NULL, --@�˾Ƽ�
    birth DATE NOT NULL, --����
    gender CHAR(1) NOT NULL, --F/M
    since DATE default sysdate NOT NULL --�˾Ƽ�
);

ALTER TABLE tblUserInfo
    ADD CONSTRAINT tblUI_id_pk PRIMARY KEY (id);
    
ALTER TABLE tblUserInfo
    ADD CONSTRAINT tblUI_id_fk FOREIGN KEY (id) REFERENCES tblUser(id);
    
ALTER TABLE tblUserInfo
    ADD CONSTRAINT tblUI_gender_ck CHECK (gender in ('f','m'));
    
ALTER TABLE tblUserInfo
    ADD CONSTRAINT tblUI_address_seq_fk FOREIGN KEY (address_seq) REFERENCES tblAddress(address_seq);

insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user1', 29, '������', '�ְ� ����������Ʈ 588�� 512ȣ', '01097244474', 'user1@daum.net', '84-08-25', 'm', '20-11-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user2', 16, '������', 'ȣ������ E���Ѽ������Ʈ 407�� 44ȣ', '01081807781', 'user2@daum.net', '06-03-02', 'f', '21-08-12');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user3', 16, '������', '�ְ� ���̾���Ʈ 608�� 916ȣ', '01058624356', 'user3@daum.net', '35-10-17', 'm', '21-09-20');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user4', 14, '������', '�Ѻ����� ������������Ʈ 717�� 142ȣ', '01046246116', 'user4@daum.net', '34-03-14', 'f', '20-02-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user5', 29, '������', 'ȣ������ ������ũ����Ʈ 107�� 72ȣ', '01065939529', 'user5@daum.net', '50-07-21', 'm', '20-04-13');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user6', 5, '���缷', '�Ѻ����� ���̾Ⱦ���Ʈ 629�� 37ȣ', '01036186804', 'user6@gmail.com', '89-02-02', 'f', '21-03-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user7', 6, '������', '�ŻＺ����Ʈ 205�� 1414ȣ', '01063052160', 'user7@gmail.com', '81-06-20', 'f', '20-01-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user8', 2, '������', '�ٶ����� ��������Ʈ 608�� 1115ȣ', '01019933591', 'user8@gmail.com', '13-07-05', 'm', '20-08-23');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user9', 12, '������', '�Ѻ����� ��������Ʈ����Ʈ 548�� 212ȣ', '01025561040', 'user9@gmail.com', '51-05-23', 'f', '21-03-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user10', 6, '�̹ι�', '���縶�� �Ｚ����Ʈ 732�� 1115ȣ', '01031786363', 'user10@daum.net', '81-09-07', 'f', '20-06-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user11', 14, '������', '�Ѻ����� ����������Ʈ 241�� 55ȣ', '01067926609', 'user11@naver.com', '67-09-12', 'f', '21-02-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user12', 20, '���缱', '�ְ� ���̾���Ʈ 825�� 715ȣ', '01086031607', 'user12@daum.net', '70-09-24', 'm', '21-02-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user13', 27, '�ּ���', '���縶�� ����������Ʈ 274�� 913ȣ', '01014421810', 'user13@daum.net', '73-01-07', 'f', '21-09-22');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user14', 30, '�ڿ���', '�ູ���� ������ũ����Ʈ 518�� 1412ȣ', '01068564300', 'user14@daum.net', '75-05-10', 'f', '21-01-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user15', 22, '�ȹ���', '�ູ���� �������Ʈ 360�� 44ȣ', '01067121548', 'user15@gmail.com', '33-08-28', 'f', '21-03-21');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user16', 4, '������', '�ٶ����� ������ũ����Ʈ 180�� 142ȣ', '01094558032', 'user16@naver.com', '47-10-18', 'f', '21-05-03');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user17', 19, '������', '�Ŵ�������Ʈ 850�� 416ȣ', '01082638789', 'user17@daum.net', '78-11-02', 'f', '20-11-22');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user18', 2, '������', '�Ѻ����� ����������Ʈ 850�� 134ȣ', '01028556819', 'user18@gmail.com', '49-11-10', 'f', '21-01-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user19', 7, '�Ѿȹ�', '�ٶ����� ����������Ʈ 815�� 45ȣ', '01080922965', 'user19@daum.net', '24-04-01', 'f', '20-01-14');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user20', 25, '������', '���縶�� ��������Ʈ 846�� 69ȣ', '01058284478', 'user20@daum.net', '34-01-19', 'f', '20-02-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user21', 20, '���ؿ�', '���縶�� ����������Ʈ 831�� 59ȣ', '01054069299', 'user21@gmail.com', '37-10-20', 'm', '20-03-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user22', 4, '������', '���縶�� �Ｚ����Ʈ 249�� 1616ȣ', '01023316038', 'user22@naver.com', '05-11-07', 'f', '21-06-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user23', 8, '������', '�ٶ����� ��������Ʈ����Ʈ 129�� 513ȣ', '01088418368', 'user23@naver.com', '10-05-22', 'f', '21-11-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user24', 18, '�ڼ���', '�ٶ����� ���̾Ⱦ���Ʈ 195�� 131ȣ', '01035881340', 'user24@gmail.com', '81-04-15', 'f', '21-06-03');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user25', 13, '������', 'ȣ������ ��������Ʈ����Ʈ 341�� 84ȣ', '01091239810', 'user25@naver.com', '02-05-08', 'm', '20-04-08');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user26', 7, '�ֹ���', '�ٶ����� �������Ʈ 633�� 108ȣ', '01094738336', 'user26@naver.com', '26-06-22', 'f', '20-03-04');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user27', 15, '�Ѽ���', '�Ѻ����� ���̾���Ʈ 187�� 94ȣ', '01098343433', 'user27@gmail.com', '01-07-28', 'm', '20-09-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user28', 21, '�ȼ���', '�ٶ����� �Ե�ĳ������Ʈ 685�� 111ȣ', '01059556232', 'user28@naver.com', '80-10-03', 'm', '20-01-06');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user29', 15, '������', '�Ѻ����� �Ｚ����Ʈ 401�� 814ȣ', '01029958412', 'user29@gmail.com', '62-08-22', 'f', '20-07-11');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user30', 6, '�Ѿȼ�', '�ູ���� �Ｚ����Ʈ 302�� 28ȣ', '01095498133', 'user30@daum.net', '53-04-18', 'm', '21-04-22');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user31', 11, '�̾ȿ�', 'ȣ������ E���Ѽ������Ʈ 472�� 65ȣ', '01030285803', 'user31@gmail.com', '64-07-22', 'f', '20-08-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user32', 5, '���ؼ�', 'ȣ������ ����������Ʈ 747�� 1216ȣ', '01085985885', 'user32@daum.net', '33-06-23', 'f', '20-06-23');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user33', 4, '���ο�', '�ž�����ũ����Ʈ 206�� 16ȣ', '01035781022', 'user33@daum.net', '35-05-15', 'f', '21-08-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user34', 3, '������', '���縶�� ���̾���Ʈ 275�� 1615ȣ', '01045303984', 'user34@gmail.com', '68-03-16', 'm', '21-03-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user35', 17, '������', '�ְ� ������ũ����Ʈ 596�� 916ȣ', '01067546812', 'user35@gmail.com', '23-03-28', 'f', '21-02-23');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user36', 9, '������', '�ְ� ������������Ʈ 726�� 118ȣ', '01028722278', 'user36@daum.net', '53-01-22', 'm', '20-03-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user37', 29, '���ϼ�', '�ٶ����� E���Ѽ������Ʈ 617�� 616ȣ', '01030274868', 'user37@daum.net', '95-10-02', 'm', '21-06-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user38', 25, '�ȿ���', '���縶�� ���̾���Ʈ 644�� 126ȣ', '01015574583', 'user38@naver.com', '16-11-07', 'm', '20-05-06');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user39', 12, '�̼���', 'ȣ������ ��������Ʈ����Ʈ 140�� 1014ȣ', '01068733295', 'user39@daum.net', '62-05-19', 'f', '20-11-14');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user40', 13, '������', '�ž�����ũ����Ʈ 748�� 117ȣ', '01057509817', 'user40@daum.net', '93-09-28', 'f', '21-01-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user41', 19, '������', 'ȣ������ ���̾���Ʈ 157�� 1516ȣ', '01068358234', 'user41@gmail.com', '04-03-15', 'f', '20-01-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user42', 17, '������', '�ŷԵ�ĳ������Ʈ 350�� 416ȣ', '01061054540', 'user42@daum.net', '74-03-08', 'm', '20-02-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user43', 14, '������', '�ٶ����� ��������Ʈ 859�� 141ȣ', '01059973031', 'user43@gmail.com', '29-07-26', 'f', '21-07-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user44', 30, '�Ӿ���', '�ְ� ����������Ʈ 553�� 1515ȣ', '01031324560', 'user44@gmail.com', '99-09-26', 'f', '20-07-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user45', 20, '�־���', 'ȣ������ E���Ѽ������Ʈ 518�� 71ȣ', '01030938436', 'user45@naver.com', '36-10-23', 'm', '21-10-11');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user46', 13, '������', '�ٶ����� ��������Ʈ����Ʈ 636�� 510ȣ', '01087554076', 'user46@naver.com', '09-09-01', 'f', '20-04-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user47', 7, '������', '�ְ� ����������Ʈ 765�� 97ȣ', '01018498041', 'user47@daum.net', '69-02-18', 'm', '20-08-14');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user48', 3, '������', '�ٶ����� �������Ʈ 423�� 812ȣ', '01029578152', 'user48@naver.com', '09-04-27', 'f', '20-03-05');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user49', 13, '���ϼ�', '�ູ���� ���̾���Ʈ 769�� 55ȣ', '01062069926', 'user49@gmail.com', '14-02-17', 'f', '20-03-26');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user50', 18, '������', '�Ѻ����� ���̾���Ʈ 186�� 28ȣ', '01047181675', 'user50@naver.com', '25-01-17', 'f', '20-06-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user51', 10, '�̼���', '�ູ���� ���̾Ⱦ���Ʈ 879�� 68ȣ', '01054176986', 'user51@naver.com', '60-10-10', 'f', '21-06-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user52', 24, '�ȹ���', '���縶�� �������Ʈ 453�� 1411ȣ', '01032936269', 'user52@naver.com', '22-03-07', 'm', '20-08-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user53', 25, '�ּ���', '�Ѻ����� �Ե�ĳ������Ʈ 777�� 810ȣ', '01024818996', 'user53@gmail.com', '22-05-02', 'f', '21-02-06');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user54', 17, '��ȼ�', '�ְ� ���̾Ⱦ���Ʈ 277�� 313ȣ', '01032639461', 'user54@naver.com', '66-08-25', 'f', '20-07-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user55', 23, '������', '���縶�� ������ũ����Ʈ 493�� 213ȣ', '01030585236', 'user55@gmail.com', '12-09-26', 'f', '21-11-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user56', 14, '������', '�ٶ����� ��������Ʈ 444�� 92ȣ', '01019292299', 'user56@naver.com', '91-10-27', 'm', '20-03-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user57', 7, '������', '�ְ� ������ũ����Ʈ 186�� 1113ȣ', '01072434241', 'user57@gmail.com', '09-01-25', 'm', '20-05-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user58', 22, '������', '������������Ʈ 361�� 1112ȣ', '01063776598', 'user58@naver.com', '56-07-27', 'f', '21-02-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user59', 4, '�̹μ�', '�ٶ����� ����������Ʈ 466�� 107ȣ', '01044483700', 'user59@gmail.com', '24-04-15', 'm', '20-08-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user60', 26, '������', '�ְ� ����������Ʈ 810�� 313ȣ', '01098856654', 'user60@gmail.com', '70-06-02', 'f', '20-02-13');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user61', 4, '������', '�ٶ����� �������Ʈ 593�� 84ȣ', '01089914755', 'user61@naver.com', '77-04-27', 'm', '21-06-05');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user62', 8, '�ڼ���', '�ְ� �Ｚ����Ʈ 528�� 1111ȣ', '01016659130', 'user62@gmail.com', '72-11-07', 'f', '21-10-12');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user63', 11, '�����', '�ٶ����� ���̾���Ʈ 730�� 55ȣ', '01069663150', 'user63@gmail.com', '20-03-28', 'm', '21-01-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user64', 29, '�̼���', '�ٶ����� ������������Ʈ 203�� 55ȣ', '01058369906', 'user64@naver.com', '12-01-05', 'm', '21-09-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user65', 20, '������', '�ູ���� �Ե�ĳ������Ʈ 746�� 916ȣ', '01017863188', 'user65@naver.com', '52-11-10', 'm', '21-03-08');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user66', 10, '���ؼ�', '���������Ʈ 841�� 1216ȣ', '01065548477', 'user66@daum.net', '24-04-24', 'f', '20-10-18');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user67', 7, '���ؿ�', '�ŷ��̾Ⱦ���Ʈ 417�� 77ȣ', '01083378638', 'user67@naver.com', '64-05-18', 'm', '20-01-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user68', 21, '������', 'ȣ������ �������Ʈ 729�� 78ȣ', '01061634851', 'user68@daum.net', '74-04-07', 'm', '21-09-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user69', 1, '������', 'ȣ������ �Ｚ����Ʈ 480�� 116ȣ', '01089768490', 'user69@naver.com', '17-06-01', 'm', '21-07-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user70', 11, '�Ѽ���', '���縶�� ������������Ʈ 493�� 119ȣ', '01054978907', 'user70@naver.com', '26-01-18', 'f', '20-10-03');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user71', 23, '������', '�Ѻ����� �Ե�ĳ������Ʈ 612�� 122ȣ', '01018682784', 'user71@gmail.com', '81-09-28', 'f', '21-06-22');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user72', 16, '������', '����������Ʈ����Ʈ 467�� 118ȣ', '01086854564', 'user72@naver.com', '83-10-04', 'm', '20-05-19');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user73', 10, '���ع�', '�ູ���� ������ũ����Ʈ 143�� 310ȣ', '01013871159', 'user73@gmail.com', '24-04-13', 'f', '21-06-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user74', 23, '�ֿ���', '�ٶ����� ������������Ʈ 250�� 1116ȣ', '01062424607', 'user74@daum.net', '05-07-06', 'f', '21-07-04');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user75', 4, '�ּ���', 'ȣ������ ����������Ʈ 863�� 169ȣ', '01014282799', 'user75@naver.com', '41-05-02', 'f', '21-03-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user76', 18, '�Ѽ���', '�ٶ����� E���Ѽ������Ʈ 754�� 122ȣ', '01059509867', 'user76@naver.com', '47-01-21', 'm', '21-11-20');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user77', 2, '���ϼ�', 'ȣ������ ������������Ʈ 884�� 159ȣ', '01059221640', 'user77@daum.net', '33-04-05', 'f', '21-08-17');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user78', 18, '�迬��', '���縶�� ���̾���Ʈ 811�� 72ȣ', '01081687551', 'user78@naver.com', '01-07-27', 'm', '20-07-05');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user79', 8, '������', '�Ѻ����� ������������Ʈ 781�� 1411ȣ', '01056126425', 'user79@naver.com', '54-10-17', 'm', '20-11-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user80', 10, '���缱', 'ȣ������ ���̾���Ʈ 532�� 129ȣ', '01024524538', 'user80@daum.net', '38-03-02', 'm', '21-11-04');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user81', 6, '���ο�', '�ٶ����� ��������Ʈ 490�� 810ȣ', '01037753009', 'user81@daum.net', '72-08-22', 'm', '21-03-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user82', 10, '������', '���������Ʈ 445�� 124ȣ', '01049751197', 'user82@naver.com', '78-11-17', 'f', '20-09-26');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user83', 16, '�ѹ���', '�Ŵ�������Ʈ 330�� 88ȣ', '01022254152', 'user83@gmail.com', '31-02-04', 'f', '20-11-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user84', 22, '������', 'ȣ������ �Ｚ����Ʈ 565�� 143ȣ', '01039841591', 'user84@gmail.com', '08-01-17', 'f', '20-10-05');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user85', 8, '������', '�ְ� E���Ѽ������Ʈ 301�� 1212ȣ', '01047823022', 'user85@naver.com', '22-06-10', 'm', '20-06-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user86', 12, '������', '�Ŵ�������Ʈ 811�� 19ȣ', '01042686935', 'user86@naver.com', '44-07-05', 'm', '21-08-23');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user87', 5, '������', '�ٶ����� �Ե�ĳ������Ʈ 723�� 138ȣ', '01061901586', 'user87@gmail.com', '44-04-24', 'm', '21-06-02');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user88', 10, '�ȿ���', 'ȣ������ ������������Ʈ 752�� 13ȣ', '01093459292', 'user88@daum.net', '86-04-24', 'f', '20-10-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user89', 25, '�ֹμ�', '��������������Ʈ 506�� 1216ȣ', '01061572643', 'user89@gmail.com', '29-05-24', 'f', '21-06-19');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user90', 4, '���ȿ�', 'ȣ������ �Ｚ����Ʈ 498�� 1113ȣ', '01052516471', 'user90@daum.net', '12-10-18', 'm', '20-02-28');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user91', 11, '�ڼ���', '�ٶ����� E���Ѽ������Ʈ 451�� 18ȣ', '01033123793', 'user91@daum.net', '29-11-04', 'f', '21-03-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user92', 11, '������', 'ȣ������ ������������Ʈ 833�� 166ȣ', '01038176950', 'user92@naver.com', '02-08-07', 'f', '20-01-26');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user93', 2, '������', '�ְ� ������������Ʈ 172�� 132ȣ', '01082134396', 'user93@daum.net', '87-07-17', 'm', '20-10-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user94', 30, '�־���', '�ູ���� ������������Ʈ 237�� 816ȣ', '01076156610', 'user94@daum.net', '97-06-25', 'm', '20-01-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user95', 29, '�Ѽ���', '�ູ���� �Ｚ����Ʈ 566�� 716ȣ', '01015781330', 'user95@naver.com', '99-10-08', 'm', '20-01-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user96', 22, '������', 'ȣ������ ���̾Ⱦ���Ʈ 517�� 912ȣ', '01074044041', 'user96@naver.com', '58-01-05', 'm', '21-09-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user97', 21, '������', 'ȣ������ �������Ʈ 800�� 94ȣ', '01018603676', 'user97@naver.com', '95-02-08', 'f', '21-06-27');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user98', 5, '������', '�Ѻ����� ���̾Ⱦ���Ʈ 600�� 111ȣ', '01034291276', 'user98@gmail.com', '14-01-25', 'f', '20-08-10');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user99', 20, '������', '�ŷ��̾Ⱦ���Ʈ 457�� 138ȣ', '01047211370', 'user99@gmail.com', '76-06-05', 'f', '21-04-06');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('user100', 18, '������', '��E���Ѽ������Ʈ 375�� 1010ȣ', '01073351097', 'user100@naver.com', '49-03-26', 'm', '20-10-02');


-- ��ǰ ����
CREATE TABLE tblProductType (
	product_type_seq	NUMBER	NOT NULL,
	name	VARCHAR2(100)	NOT NULL
);

CREATE SEQUENCE product_type_seq;

ALTER TABLE tblProductType ADD CONSTRAINT tblPT_product_type_seq_pk PRIMARY KEY(product_type_seq);

insert into tblProductType (product_type_seq, name) values (1, '�����б��');
insert into tblProductType (product_type_seq, name) values (2, '��Ȱ����');
insert into tblProductType (product_type_seq, name) values (3, '����/���׸���');
insert into tblProductType (product_type_seq, name) values (4, '���Ƶ�');
insert into tblProductType (product_type_seq, name) values (5, '��Ȱ/������ǰ');
insert into tblProductType (product_type_seq, name) values (6, '���Ƶ���');
insert into tblProductType (product_type_seq, name) values (7, '������/����');
insert into tblProductType (product_type_seq, name) values (8, '������ȭ');
insert into tblProductType (product_type_seq, name) values (9, '�����Ƿ�');
insert into tblProductType (product_type_seq, name) values (10, '�����м�/��ȭ');
insert into tblProductType (product_type_seq, name) values (11, '����/���');
insert into tblProductType (product_type_seq, name) values (12, '��Ƽ/�̿�');
insert into tblProductType (product_type_seq, name) values (13, '�ݷ�������ǰ');
insert into tblProductType (product_type_seq, name) values (14, '����/Ƽ��/����');
insert into tblProductType (product_type_seq, name) values (15, '�Ĺ�');
insert into tblProductType (product_type_seq, name) values (16, '��Ÿ �߰�ǰ');


-- ��ǰ
CREATE TABLE tblProduct (
	product_seq	NUMBER	NOT NULL,               --��ǰ��ȣ(PK)
	id	VARCHAR2(100)	NOT NULL,               --�Ǹ��� ���̵�(FK). USER1~100
	address_seq	NUMBER	NOT NULL,               --������ȣ(FK) 30��
	product_type_seq	NUMBER	NOT NULL,       --��ǰ����(FK) �˾Ƽ�
	name	VARCHAR2(100)	NOT NULL,           --��ǰ�̸�   ���ľ�+���
	price	NUMBER	NOT NULL,                   --��ǰ���� 1000~1000000
	is_auction CHAR(1)	DEFAULT 'n' NOT NULL,   --��ſ��� n/y
	content	VARCHAR2(4000)	NOT NULL,           --�󼼳��� ���ľ�+����+��õ
	regdate DATE DEFAULT sysdate NOT NULL,      --�ۼ���¥   �˾Ƽ�.. 
	is_completion CHAR(1) DEFAULT 'n' NOT NULL, --�Ǹſ��� n/y..
	readcount NUMBER DEFAULT 0 NOT NULL,        --��ȸ�� ������
	is_deletion CHAR(1) DEFAULT 'n' NOT NULL	--��������
);

CREATE SEQUENCE product_seq;

ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_product_seq_pk PRIMARY KEY(product_seq);
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_seller_id_fk FOREIGN KEY(id) REFERENCES tblUser(id);
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_address_seq_fk FOREIGN KEY(address_seq) REFERENCES tblAddress(address_seq);
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_product_type_fk FOREIGN KEY(product_type_seq) REFERENCES tblProductType(product_type_seq);
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_is_auction_ck CHECK(is_auction IN ('n', 'y'));
ALTER TABLE tblProduct ADD CONSTRAINT tblProduct_is_completion_ck CHECK(is_completion IN ('n', 'y'));

insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (1, 'user61', 29, 6, '�̰��� ������ ����ǰ', 38000, 'n', '����ǰ�Դϴ�.', '2020-01-09', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (2, 'user100', 33, 10, '�ǾƳ��峭��', 270000, 'y', '�ΰ� �������ϴ�.', '2020-01-18', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (3, 'user43', 36, 7, 'û����', 727000, 'n', '�ù�ŷ� ���ؿ�', '2020-01-23', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (4, 'user10', 6, 2, '������', 454000, 'y', '�ù�ŷ� ���ؿ�', '2020-01-28', 'y', 21);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (5, 'user100', 37, 8, '���� �Ǹ��մϴ�', 11000, 'n', '�ΰ� �������ϴ�.', '2020-02-04', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (6, 'user58', 28, 8, '�̰��� ���ǽ� �˴ϴ�', 46000, 'y', '����ǰ�Դϴ�.', '2020-02-11', 'y', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (7, 'user71', 50, 10, '�������� �Ⱦƿ�', 301000, 'n', '�ΰ� �������ϴ�.', '2020-02-15', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (8, 'user66', 48, 14, '�� �� �� ������', 798000, 'y', '�ù�ŷ� ���ؿ�', '2020-02-18', 'y', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (9, 'user75', 43, 10, '�� �� �� å��', 471000, 'n', '��ŷ� ���մϴ�', '2020-02-22', 'y', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (10, 'user93', 16, 7, '�̰��� ���̺� �����մϴ�', 298000, 'y', '�ΰ� �������ϴ�.', '2020-02-24', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (11, 'user29', 18, 15, '�ǾƳ��峭��', 373000, 'n', '���ŷ� ���ؿ�', '2020-02-28', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (12, 'user5', 28, 12, '����', 299000, 'y', '�ù�ŷ� ���ؿ�', '2020-03-02', 'y', 6);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (13, 'user57', 20, 1, '�̰��� ������', 574000, 'n', '���� ���� ��ǰ�̿���~', '2020-03-06', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (14, 'user17', 36, 12, '�̰��� û���� �Ⱦƿ�', 23000, 'y', '����ǰ�Դϴ�.', '2020-03-13', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (15, 'user56', 33, 8, '�̰��� ���䳪��Ʈ �˴ϴ�', 505000, 'n', '��ŷ� ���մϴ�', '2020-03-19', 'y', 29);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (16, 'user14', 8, 4, '�����϶��� �Ǹ��մϴ�', 195000, 'y', '���ŷ� ���ؿ�', '2020-03-23', 'y', 12);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (17, 'user59', 15, 3, '�ǾƳ��峭��', 564000, 'n', '��ŷ� ���մϴ�', '2020-03-31', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (18, 'user89', 45, 13, '���䳪��Ʈ �˴ϴ�', 87000, 'y', '�ù�ŷ� ���ؿ�', '2020-04-07', 'y', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (19, 'user13', 37, 5, '�ǾƳ��峭�� �Ǹ�', 335000, 'n', '����ǰ�Դϴ�.', '2020-04-08', 'y', 13);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (20, 'user90', 40, 9, '���� �Ⱦƿ�', 817000, 'y', '��ŷ� ���մϴ�', '2020-04-13', 'y', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (21, 'user36', 10, 10, '�̰��� ������', 966000, 'n', '�ù�ŷ� ���ؿ�', '2020-04-18', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (22, 'user42', 21, 5, '��������', 495000, 'y', '���� ���� ��ǰ�̿���~', '2020-04-25', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (23, 'user15', 30, 2, '������ ����ǰ', 785000, 'n', '��ŷ� ���մϴ�', '2020-04-29', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (24, 'user97', 30, 12, '���ڷ�����', 825000, 'y', '��ŷ� ���մϴ�', '2020-05-03', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (25, 'user57', 28, 7, '���� �Ǹ��մϴ�', 751000, 'n', '��ŷ� ���մϴ�', '2020-05-10', 'y', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (26, 'user55', 36, 14, '�߰� ������', 852000, 'y', '���ŷ� ���ؿ�', '2020-05-11', 'y', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (27, 'user95', 18, 14, '�߰� ������ �˴ϴ�', 357000, 'n', '��ŷ� ���մϴ�', '2020-05-12', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (28, 'user86', 12, 8, '�߰� ���ڹ�', 775000, 'y', '�ù�ŷ� ���ؿ�', '2020-05-15', 'y', 13);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (29, 'user97', 50, 12, '�̰��� ���䳪��Ʈ �˴ϴ�', 843000, 'n', '�ù�ŷ� ���ؿ�', '2020-05-23', 'y', 11);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (30, 'user45', 13, 3, '�ڱⰳ�� ���� �������ϴ�.', 89000, 'y', '���ŷ� ���ؿ�', '2020-05-29', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (31, 'user93', 7, 15, '�����е� �������ϴ�.', 830000, 'n', '��ŷ� ���մϴ�', '2020-06-01', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (32, 'user37', 16, 14, '�߰� ������', 808000, 'y', '���� ���� ��ǰ�̿���~', '2020-06-02', 'y', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (33, 'user13', 22, 2, '�� �� �� û�ұ� ����ǰ', 134000, 'n', '����ǰ�Դϴ�.', '2020-06-04', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (34, 'user91', 24, 8, '���ڷ�����', 506000, 'y', '���� ���� ��ǰ�̿���~', '2020-06-13', 'y', 11);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (35, 'user44', 25, 5, '�߰� ���� �Ǹ�', 280000, 'n', '�ΰ� �������ϴ�.', '2020-06-16', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (36, 'user7', 27, 2, '�� �� �� �������� ���� �������ϴ�.', 94000, 'y', '���� �ŷ� ���ؿ�^^', '2020-06-18', 'y', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (37, 'user24', 17, 8, '��������', 596000, 'n', '���� ���� ��ǰ�̿���~', '2020-06-23', 'y', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (38, 'user50', 49, 10, '������', 611000, 'y', '���� �ŷ� ���ؿ�^^', '2020-07-01', 'y', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (39, 'user53', 41, 1, '�ǾƳ��峭�� �Ⱦƿ�', 159000, 'n', '���� �ŷ� ���ؿ�^^', '2020-07-06', 'y', 29);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (40, 'user16', 33, 8, '���䳪��Ʈ', 519000, 'y', '���� �ŷ� ���ؿ�^^', '2020-07-07', 'y', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (41, 'user91', 49, 9, '�߰� ���̺�', 905000, 'n', '�ΰ� �������ϴ�.', '2020-07-13', 'y', 11);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (42, 'user73', 46, 10, '�� �� �� ���ȭ', 272000, 'y', '����ǰ�Դϴ�.', '2020-07-15', 'y', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (43, 'user91', 25, 9, '�� �� �� ���̺�', 96000, 'n', '���� ���� ��ǰ�̿���~', '2020-07-16', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (44, 'user19', 38, 9, '���е�ȭ����', 582000, 'y', '���� ���� ��ǰ�̿���~', '2020-07-17', 'y', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (45, 'user97', 41, 7, '�̰��� ���� ����ǰ', 698000, 'n', '�ù�ŷ� ���ؿ�', '2020-07-22', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (46, 'user93', 25, 13, '�߰� ������', 838000, 'y', '��ŷ� ���մϴ�', '2020-07-27', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (47, 'user46', 27, 11, '�̰��� �����϶���', 701000, 'n', '�ΰ� �������ϴ�.', '2020-07-28', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (48, 'user41', 35, 4, '�� �� �� �������� ���� �������ϴ�.', 663000, 'y', '���� �ŷ� ���ؿ�^^', '2020-08-02', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (49, 'user67', 32, 3, '���ڹ�', 209000, 'n', '���� �ŷ� ���ؿ�^^', '2020-08-05', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (50, 'user98', 28, 3, '�����϶��� �Ǹ�', 695000, 'y', '���ŷ� ���ؿ�', '2020-08-13', 'y', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (51, 'user96', 23, 11, '�ڹ��� ���� �����մϴ�', 156000, 'n', '�ΰ� �������ϴ�.', '2020-08-16', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (52, 'user73', 23, 3, '�� �� �� ���̺� �Ǹ�', 510000, 'y', '�ù�ŷ� ���ؿ�', '2020-08-20', 'y', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (53, 'user44', 7, 7, '���䳪��Ʈ', 140000, 'n', '����ǰ�Դϴ�.', '2020-08-26', 'y', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (54, 'user71', 22, 9, '�̰��� ������ �Ǹ��մϴ�', 265000, 'y', '��ŷ� ���մϴ�', '2020-08-27', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (55, 'user74', 27, 2, '�̰��� ���䳪��Ʈ', 40000, 'n', '�ù�ŷ� ���ؿ�', '2020-09-03', 'y', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (56, 'user40', 8, 12, '�̰��� å�� ����ǰ', 959000, 'y', '���� ���� ��ǰ�̿���~', '2020-09-11', 'y', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (57, 'user17', 42, 11, '�� �� �� ��Ÿ���� 5���� ����', 86000, 'n', '��ŷ� ���մϴ�', '2020-09-17', 'y', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (58, 'user40', 47, 7, '������ �������ϴ�.', 375000, 'y', '���� �ŷ� ���ؿ�^^', '2020-09-19', 'y', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (59, 'user22', 50, 5, '���� �����մϴ�', 701000, 'n', '��ŷ� ���մϴ�', '2020-09-23', 'y', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (60, 'user89', 11, 1, '�Ʊ��ڵ���', 63000, 'y', '���� �ŷ� ���ؿ�^^', '2020-09-29', 'y', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (61, 'user38', 2, 1, '������', 715000, 'n', '���� ���� ��ǰ�̿���~', '2020-10-01', 'y', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (62, 'user62', 9, 15, '���ǽ� �������ϴ�.', 717000, 'y', '���� �ŷ� ���ؿ�^^', '2020-10-07', 'y', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (63, 'user72', 2, 6, '�̰��� ���ڹ� �˴ϴ�', 519000, 'n', '���� �ŷ� ���ؿ�^^', '2020-10-11', 'y', 6);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (64, 'user93', 20, 5, '������', 800000, 'y', '��ŷ� ���մϴ�', '2020-10-19', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (65, 'user38', 29, 1, '���ڹ� �������ϴ�.', 808000, 'n', '����ǰ�Դϴ�.', '2020-10-21', 'y', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (66, 'user89', 2, 7, '�߰� �౸��', 151000, 'y', '���� �ŷ� ���ؿ�^^', '2020-10-28', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (67, 'user76', 15, 8, '����Ű', 947000, 'n', '���� ���� ��ǰ�̿���~', '2020-10-31', 'y', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (68, 'user15', 20, 3, '��Ʈ �����մϴ�', 792000, 'y', '�ΰ� �������ϴ�.', '2020-11-07', 'y', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (69, 'user10', 43, 8, '������', 335000, 'n', '�ΰ� �������ϴ�.', '2020-11-15', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (70, 'user8', 24, 13, 'å��', 922000, 'y', '�ΰ� �������ϴ�.', '2020-11-19', 'y', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (71, 'user4', 35, 5, '�߰� ������', 963000, 'n', '��ŷ� ���մϴ�', '2020-11-22', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (72, 'user4', 45, 4, '���ڷ����� �������ϴ�.', 114000, 'y', '�ΰ� �������ϴ�.', '2020-11-27', 'y', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (73, 'user9', 34, 15, '�߰� ����Ű �Ǹ��մϴ�', 350000, 'n', '�ù�ŷ� ���ؿ�', '2020-12-06', 'y', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (74, 'user71', 48, 4, 'ƾƮ', 424000, 'y', '���� �ŷ� ���ؿ�^^', '2020-12-09', 'y', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (75, 'user51', 20, 6, '���ȭ �������ϴ�.', 437000, 'n', '���� ���� ��ǰ�̿���~', '2020-12-16', 'y', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (76, 'user91', 46, 10, '���̺�', 298000, 'y', '���� ���� ��ǰ�̿���~', '2020-12-24', 'y', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (77, 'user39', 8, 15, '��Ÿ���� 5���� ���� �Ⱦƿ�', 376000, 'n', '���ŷ� ���ؿ�', '2020-12-25', 'y', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (78, 'user52', 8, 8, '���̺�', 647000, 'y', '���� ���� ��ǰ�̿���~', '2020-12-26', 'y', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (79, 'user15', 42, 1, '�̰��� �����е�', 660000, 'n', '����ǰ�Դϴ�.', '2021-01-04', 'y', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (80, 'user65', 36, 1, 'û���� �˴ϴ�', 436000, 'y', '����ǰ�Դϴ�.', '2021-01-11', 'y', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (81, 'user89', 38, 10, '�� �� �� ���е�ȭ���� ����ǰ', 904000, 'n', '���ŷ� ���ؿ�', '2021-01-17', 'y', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (82, 'user16', 38, 9, '�߰� ���ȭ �������ϴ�.', 106000, 'y', '����ǰ�Դϴ�.', '2021-01-21', 'y', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (83, 'user56', 34, 3, '�̰��� ���ȭ', 900000, 'n', '���� ���� ��ǰ�̿���~', '2021-01-23', 'y', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (84, 'user17', 37, 4, '�����϶��� �����մϴ�', 989000, 'y', '��ŷ� ���մϴ�', '2021-01-29', 'y', 12);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (85, 'user83', 18, 15, '������', 581000, 'n', '�ù�ŷ� ���ؿ�', '2021-02-01', 'y', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (86, 'user53', 18, 1, '�̰��� ������', 749000, 'y', '�ΰ� �������ϴ�.', '2021-02-06', 'y', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (87, 'user63', 16, 3, '�̰��� û����', 201000, 'n', '���� �ŷ� ���ؿ�^^', '2021-02-07', 'y', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (88, 'user40', 23, 14, '���̺�', 359000, 'y', '����ǰ�Դϴ�.', '2021-02-10', 'y', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (89, 'user56', 50, 3, '�̰��� å����', 768000, 'n', '�ΰ� �������ϴ�.', '2021-02-12', 'y', 11);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (90, 'user51', 30, 13, '�� �� �� �ĵ����� �������ϴ�.', 708000, 'y', '����ǰ�Դϴ�.', '2021-02-17', 'y', 10);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (91, 'user75', 48, 4, '�����е�', 127000, 'n', '���ŷ� ���ؿ�', '2021-02-18', 'y', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (92, 'user58', 3, 4, '�߰� ���� �˴ϴ�', 456000, 'y', '���ŷ� ���ؿ�', '2021-02-19', 'y', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (93, 'user93', 6, 3, '�̰��� û����', 526000, 'n', '�ΰ� �������ϴ�.', '2021-02-25', 'y', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (94, 'user41', 20, 7, '�߰� �ڵ�ũ�� �������ϴ�.', 779000, 'y', '���� �ŷ� ���ؿ�^^', '2021-03-03', 'y', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (95, 'user34', 7, 11, '�̰��� �ǾƳ��峭�� �������ϴ�.', 291000, 'n', '��ŷ� ���մϴ�', '2021-03-06', 'y', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (96, 'user14', 12, 8, '������', 19000, 'y', '�ΰ� �������ϴ�.', '2021-03-08', 'y', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (97, 'user65', 30, 11, '�߰� ������ �Ǹ��մϴ�', 140000, 'n', '����ǰ�Դϴ�.', '2021-03-17', 'y', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (98, 'user36', 11, 6, '�ڹ��� ���� ����ǰ', 935000, 'y', '�ù�ŷ� ���ؿ�', '2021-03-23', 'y', 21);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (99, 'user17', 12, 12, '����', 767000, 'n', '���ŷ� ���ؿ�', '2021-03-29', 'y', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (100, 'user33', 16, 8, '�̰��� ���� �Ǹ��մϴ�', 356000, 'y', '���� �ŷ� ���ؿ�^^', '2021-04-06', 'y', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (101, 'user65', 31, 2, '���ȭ', 348000, 'n', '�ù�ŷ� ���ؿ�', '2021-04-08', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (102, 'user16', 39, 12, '�ڱⰳ�� ���� �˴ϴ�', 618000, 'y', '���� ���� ��ǰ�̿���~', '2021-04-14', 'n', 6);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (103, 'user54', 11, 1, '�߰� ���е�ȭ���� �������ϴ�.', 113000, 'n', '�ù�ŷ� ���ؿ�', '2021-04-23', 'n', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (104, 'user98', 6, 11, 'û�ұ� �Ⱦƿ�', 775000, 'y', '���ŷ� ���ؿ�', '2021-04-29', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (105, 'user84', 49, 15, '�߰� ������ ����ǰ', 780000, 'n', '��ŷ� ���մϴ�', '2021-05-02', 'n', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (106, 'user95', 26, 5, '�̵���', 834000, 'y', '���� ���� ��ǰ�̿���~', '2021-05-06', 'n', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (107, 'user5', 3, 8, '������ �Ǹ�', 860000, 'n', '�ΰ� �������ϴ�.', '2021-05-08', 'n', 16);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (108, 'user89', 44, 13, '�̰��� �������� ����', 257000, 'y', '���� ���� ��ǰ�̿���~', '2021-05-17', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (109, 'user87', 6, 5, 'å��', 87000, 'n', '��ŷ� ���մϴ�', '2021-05-19', 'n', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (110, 'user16', 30, 10, 'ƾƮ', 202000, 'y', '���� �ŷ� ���ؿ�^^', '2021-05-23', 'n', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (111, 'user33', 2, 2, '�߰� ��Ÿ���� 5���� ���� ����ǰ', 964000, 'n', '���� ���� ��ǰ�̿���~', '2021-05-30', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (112, 'user51', 31, 2, '�ڹ��� ���� �Ⱦƿ�', 580000, 'y', '���� ���� ��ǰ�̿���~', '2021-05-31', 'n', 1);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (113, 'user10', 4, 15, '������', 282000, 'n', '��ŷ� ���մϴ�', '2021-06-02', 'n', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (114, 'user21', 27, 13, '�̰��� ƾƮ', 918000, 'y', '���� ���� ��ǰ�̿���~', '2021-06-03', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (115, 'user55', 16, 12, '�̰��� �����ħ �����մϴ�', 622000, 'n', '�ΰ� �������ϴ�.', '2021-06-11', 'n', 24);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (116, 'user72', 19, 12, '�� �� �� �������� ����', 990000, 'y', '���� ���� ��ǰ�̿���~', '2021-06-18', 'n', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (117, 'user16', 45, 13, '�߰� �����ħ', 535000, 'n', '���ŷ� ���ؿ�', '2021-06-23', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (118, 'user50', 40, 14, '���̺�', 274000, 'y', '�ΰ� �������ϴ�.', '2021-07-01', 'n', 19);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (119, 'user90', 4, 8, '�����е�', 852000, 'n', '�ΰ� �������ϴ�.', '2021-07-08', 'n', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (120, 'user71', 37, 1, '�̰��� ���䳪��Ʈ', 666000, 'y', '���� ���� ��ǰ�̿���~', '2021-07-10', 'n', 12);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (121, 'user85', 32, 9, '����Ű �����մϴ�', 307000, 'n', '�ΰ� �������ϴ�.', '2021-07-19', 'n', 6);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (122, 'user80', 27, 14, '������', 139000, 'y', '�ΰ� �������ϴ�.', '2021-07-25', 'n', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (123, 'user35', 38, 9, '�� �� �� ����Ű', 748000, 'n', '���� ���� ��ǰ�̿���~', '2021-07-27', 'n', 25);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (124, 'user73', 12, 4, '�� �� �� �ڵ�ũ�� �������ϴ�.', 28000, 'y', '�ΰ� �������ϴ�.', '2021-08-03', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (125, 'user34', 23, 13, '�� �� �� û���� �Ǹ��մϴ�', 107000, 'n', '���ŷ� ���ؿ�', '2021-08-09', 'n', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (126, 'user91', 16, 13, '�߰� ������ �Ǹ�', 347000, 'y', '���� ���� ��ǰ�̿���~', '2021-08-13', 'n', 10);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (127, 'user33', 13, 8, '�߰� �ĵ�����', 488000, 'n', '���ŷ� ���ؿ�', '2021-08-19', 'n', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (128, 'user29', 36, 12, '�� �� �� ����� ����ǰ', 200000, 'y', '���ŷ� ���ؿ�', '2021-08-20', 'n', 10);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (129, 'user95', 3, 9, '�߰� å�� �����մϴ�', 930000, 'n', '�ΰ� �������ϴ�.', '2021-08-24', 'n', 29);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (130, 'user98', 21, 4, '�� �� �� å�� �˴ϴ�', 592000, 'y', '�ΰ� �������ϴ�.', '2021-08-29', 'n', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (131, 'user69', 8, 9, '�ǾƳ��峭��', 966000, 'n', '���� �ŷ� ���ؿ�^^', '2021-09-06', 'n', 22);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (132, 'user76', 15, 9, '�����ħ �Ǹ�', 714000, 'y', '����ǰ�Դϴ�.', '2021-09-07', 'n', 23);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (133, 'user75', 31, 2, 'ƾƮ �������ϴ�.', 220000, 'n', '���� ���� ��ǰ�̿���~', '2021-09-10', 'n', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (134, 'user77', 38, 4, 'û���� ����ǰ', 981000, 'y', '���ŷ� ���ؿ�', '2021-09-14', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (135, 'user58', 20, 1, '�� �� �� ���̺�', 177000, 'n', '���� �ŷ� ���ؿ�^^', '2021-09-21', 'n', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (136, 'user85', 36, 5, '�ڱⰳ�� ����', 503000, 'y', '��ŷ� ���մϴ�', '2021-09-26', 'n', 5);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (137, 'user94', 18, 8, '�߰� ���ڷ����� ����ǰ', 805000, 'n', '�ΰ� �������ϴ�.', '2021-10-02', 'n', 17);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (138, 'user77', 20, 14, '�ĵ�����', 502000, 'y', '�ù�ŷ� ���ؿ�', '2021-10-08', 'n', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (139, 'user25', 38, 8, '�߰� �з¹�� �����մϴ�', 981000, 'n', '���� �ŷ� ���ؿ�^^', '2021-10-13', 'n', 7);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (140, 'user69', 45, 11, '�߰� ���е�', 409000, 'y', '����ǰ�Դϴ�.', '2021-10-15', 'n', 18);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (141, 'user90', 25, 1, '���̺� �Ǹ��մϴ�', 577000, 'n', '��ŷ� ���մϴ�', '2021-10-19', 'n', 27);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (142, 'user42', 45, 15, '�� �� �� ����', 455000, 'y', '���� ���� ��ǰ�̿���~', '2021-10-27', 'n', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (143, 'user53', 20, 2, '�ڹ��� ����', 279000, 'n', '���ŷ� ���ؿ�', '2021-11-01', 'n', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (144, 'user8', 10, 1, '���ڹ�', 766000, 'y', '�ΰ� �������ϴ�.', '2021-11-05', 'n', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (145, 'user96', 34, 11, '�� �� �� ��Ÿ���� 5���� ���� �������ϴ�.', 277000, 'n', '��ŷ� ���մϴ�', '2021-11-10', 'n', 3);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (146, 'user71', 48, 8, '�� �� �� ������ �˴ϴ�', 212000, 'y', '����ǰ�Դϴ�.', '2021-11-11', 'n', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (147, 'user87', 31, 6, '���ǽ� �Ⱦƿ�', 89000, 'n', '�ΰ� �������ϴ�.', '2021-11-13', 'n', 2);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (148, 'user85', 41, 10, '�߰� �з¹�� �������ϴ�.', 249000, 'y', '���� ���� ��ǰ�̿���~', '2021-11-14', 'n', 15);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (149, 'user50', 6, 13, '�߰� �з¹�� �Ǹ��մϴ�', 427000, 'n', '��ŷ� ���մϴ�', '2021-11-17', 'n', 20);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (150, 'user21', 6, 12, '���ڹ� �Ⱦƿ�', 634000, 'y', '����ǰ�Դϴ�.', '2021-11-22', 'n', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (151, 'user15', 9, 5, '�߰� ������', 513000, 'n', '�ΰ� �������ϴ�.', '2021-11-26', 'n', 14);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (152, 'user8', 42, 8, '����̰��� �Ⱦƿ�', 798000, 'y', '���� �ŷ� ���ؿ�^^', '2021-12-05', 'n', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (153, 'user16', 13, 4, '�� �� �� ������ �Ǹ��մϴ�', 377000, 'n', '���� ���� ��ǰ�̿���~', '2021-12-06', 'n', 8);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (154, 'user71', 40, 15, 'û���� �Ⱦƿ�', 348000, 'y', '����ǰ�Դϴ�.', '2021-12-10', 'n', 21);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (155, 'user28', 26, 14, '���̺� �Ǹ�', 946000, 'n', '���� ���� ��ǰ�̿���~', '2021-12-19', 'n', 4);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (156, 'user26', 7, 12, '����Ű �������ϴ�.', 113000, 'y', '��ŷ� ���մϴ�', '2021-12-25', 'n', 26);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (157, 'user41', 33, 6, '������', 82000, 'n', '��ŷ� ���մϴ�', '2021-12-29', 'n', 29);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (158, 'user26', 10, 7, '�̰��� �ǾƳ��峭��', 869000, 'y', '�ΰ� �������ϴ�.', '2022-01-04', 'n', 9);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (159, 'user34', 22, 10, '�� �� �� �������� �Ǹ�', 64000, 'n', '��ŷ� ���մϴ�', '2022-01-09', 'n', 28);
insert into tblProduct (product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount) values (160, 'user87', 30, 4, 'å��', 623000, 'y', '���� ���� ��ǰ�̿���~', '2022-01-12', 'n', 15);



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

insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'���');
insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'���');
insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'�弳');
insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'Ÿ ����Ʈ ����');
insert into tblBlockType(block_type_seq,type) values (blocktype_seq.nextval,'�ҹ�');

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

insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'UI �Ҹ�');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'���� �Ҹ�');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'�Ǹ��ڰ� �ʹ� �����.');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'Ÿ ����Ʈ �̿�');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'���� ����');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'�����ڰ� �ʹ� �����.');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'��Ÿ');

CREATE TABLE tblWithdraw (
    id VARCHAR2(100) NOT NULL,
    withdraw_type_seq NUMBER NOT NULL,
    time DATE default sysdate NOT NULL
);--20��

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


insert into tblquestiontype values (question_type_seq.nextVAL, '����/����');
insert into tblquestiontype values (question_type_seq.nextVAL, '����/�Ǹ�');
insert into tblquestiontype values (question_type_seq.nextVAL, '���å');
insert into tblquestiontype values (question_type_seq.nextVAL, '�����̿�');
insert into tblquestiontype values (question_type_seq.nextVAL, '��Ÿ');



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

insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user1', 1, '���ο� �Ǹ��� ������ ����.', '���ο� �Ǹ��� ������ ����. �˾Ƽ� ��Ȳ�� �����ϰھ��??', '21-10-24');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user2', 3, '�� �ŷڵ� ������ �����ƿ�.', '�� �ŷڵ� ������ �����ƿ�. ���� ��Ȳ�� �����Ͻ���..', '21-06-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user3', 1, '���� �Խñ� ������ �����ƿ�.', '���� �Խñ� ������ �����ƿ�. ���ѷ� ������ ������Ź�帳�ϴ�.', '21-10-10');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user4', 1, '���� ���� ������ ����.', '���� ���� ������ ����. �˾Ƽ� ������ Ȯ�����ּ���.', '20-09-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user5', 2, '�̹� �г��� ������ �̻��ؿ�.', '�̹� �г��� ������ �̻��ؿ�. ���ѷ� ������ Ȯ�κ�Ź�帳�ϴ�.', '21-06-20');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user6', 3, '���� �г��� ������ ���ο���...', '���� �г��� ������ ���ο���... ���� ÷�� ������ ������Ź�帳�ϴ�?', '20-11-10');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user7', 3, '���ο� �ŷڵ� ����� �����ƿ�.', '���ο� �ŷڵ� ����� �����ƿ�. ���� ÷�� ������ �������ּ���.', '21-05-24');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user8', 5, '���� �г��� ������ �����ؿ�.', '���� �г��� ������ �����ؿ�. ���ѷ� ������ ������Ź�帳�ϴ�.', '20-08-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user9', 4, '�� ���� ������ �����ؿ�.', '�� ���� ������ �����ؿ�. ���� ������ �ľ��ϰھ��?.', '20-06-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user10', 3, '���� ��й�ȣ ������ �����ؿ�.', '���� ��й�ȣ ������ �����ؿ�. ���ѷ� ������ �����ϰھ��??', '20-05-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user11', 5, '���� �Խñ� ����� �̻��ؿ�.', '���� �Խñ� ����� �̻��ؿ�. ���� ��Ȳ�� ������Ź�帳�ϴ�..', '20-02-24');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user12', 3, '�̹� �г��� ������ �����ؿ�..', '�̹� �г��� ������ �����ؿ�.. ���ѷ� ������ ������Ź�帳�ϴ٤Ѥ�', '20-07-26');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user13', 3, '�� ��й�ȣ ������ ����.', '�� ��й�ȣ ������ ����. ���� ��Ȳ�� �������ּ���.', '21-06-12');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user14', 1, '���� �ŷڵ� ������ ����.', '���� �ŷڵ� ������ ����. ���� ÷�� ������ ������Ź�帳�ϴ�!', '21-06-05');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user15', 5, '�̹� �Ǹ��� ������ ����.', '�̹� �Ǹ��� ������ ����. ���� ������ �ľ����ּ���?', '21-03-12');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user16', 3, '���� �г��� ������ ���ο���.', '���� �г��� ������ ���ο���. ���ѷ� ��Ȳ�� ������Ź�帳�ϴ�..', '21-06-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user17', 4, '���� �ŷڵ� ����� ����.', '���� �ŷڵ� ����� ����. ���� ÷�� ������ Ȯ�κ�Ź�帳�ϴ�.', '20-03-07');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user18', 4, '�̹� ���� ������ ���ο���...', '�̹� ���� ������ ���ο���... �˾Ƽ� ��Ȳ�� Ȯ���ϰھ��?!', '21-01-06');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user19', 4, '�̹� �Ǹ��� ����� �����ؿ�.', '�̹� �Ǹ��� ����� �����ؿ�. ���ѷ� ÷�� ������ ������Ź�帳�ϴ�.', '20-07-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user20', 1, '���� �Խñ� ������ �̻��ؿ�.', '���� �Խñ� ������ �̻��ؿ�. ���� ������ ������Ź�帳�ϴ٤̤�', '20-01-27');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user21', 5, '�� �Խñ� ������ �̻��ؿ�.', '�� �Խñ� ������ �̻��ؿ�. ���� ������ �����Ͻ���.', '21-11-05');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user22', 3, '���ο� �г��� ����� ���ο���.', '���ο� �г��� ����� ���ο���. ���� ������ �������ּ���.', '21-04-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user23', 1, '���� ������ ������ �����ؿ�.', '���� ������ ������ �����ؿ�. �˾Ƽ� ÷�� ������ Ȯ���Ͻ���?', '20-10-01');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user24', 4, '���� ��й�ȣ ������ ���ο���.', '���� ��й�ȣ ������ ���ο���. ���� ��Ȳ�� �����Ͻ���...', '20-04-01');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user25', 5, '���� �Խñ� ������ ���ο���.', '���� �Խñ� ������ ���ο���. ���� ������ Ȯ���Ͻ���.', '20-09-04');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user26', 5, '���ο� ��й�ȣ ������ �̻��ؿ�.', '���ο� ��й�ȣ ������ �̻��ؿ�. ���ѷ� ������ �����ϰھ��?.', '20-05-25');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user27', 5, '�� �Խñ� ����� ����.', '�� �Խñ� ����� ����. ���� ÷�� ������ �������ּ���.', '21-10-08');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user28', 4, '���� �г��� ������ �����ƿ�.', '���� �г��� ������ �����ƿ�. �˾Ƽ� ÷�� ������ Ȯ�����ּ���Ѥ�', '20-11-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user29', 4, '�� �Խñ� ������ �̻��ؿ�.', '�� �Խñ� ������ �̻��ؿ�. �˾Ƽ� ������ �������ּ���...', '20-08-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user30', 5, '���ο� �Ǹ��� ����� �����ƿ�.', '���ο� �Ǹ��� ����� �����ƿ�. �˾Ƽ� ÷�� ������ Ȯ�����ּ���.', '20-08-04');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user31', 2, '�̹� �ŷڵ� ����� �����ƿ�...', '�̹� �ŷڵ� ����� �����ƿ�... ���� ������ �ľ��Ͻ��Ҥ̤�', '20-10-27');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user32', 1, '���ο� ��й�ȣ ������ ����.', '���ο� ��й�ȣ ������ ����. ���ѷ� ������ �����Ͻ��ҤѤ�', '20-11-24');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user33', 5, '���� ���� ����� �̻��ؿ�.', '���� ���� ����� �̻��ؿ�. ���� ������ �����ϰھ��??', '20-03-27');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user34', 5, '�̹� �Խñ� ����� ���ο���..', '�̹� �Խñ� ����� ���ο���.. ���ѷ� ÷�� ������ �������ּ���?', '20-01-13');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user35', 4, '�� �Խñ� ������ �����ƿ�.', '�� �Խñ� ������ �����ƿ�. �˾Ƽ� ��Ȳ�� �ľ��ϰھ��?.', '21-10-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user36', 4, '�� �Ǹ��� ������ �̻��ؿ�.', '�� �Ǹ��� ������ �̻��ؿ�. ���� ������ �ľ��Ͻ���.', '21-03-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user37', 2, '���� ���� ������ ����.', '���� ���� ������ ����. ���� ������ �����Ͻ���.', '20-06-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user38', 1, '�̹� ��й�ȣ ����� ���ο���.', '�̹� ��й�ȣ ����� ���ο���. �˾Ƽ� ÷�� ������ Ȯ���ϰھ��?!', '20-03-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user39', 4, '���� �ŷڵ� ����� �����ƿ�.', '���� �ŷڵ� ����� �����ƿ�. ���� ��Ȳ�� �ľǺ�Ź�帳�ϴ�.', '20-04-07');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user40', 4, '�� ���� ����� ����.', '�� ���� ����� ����. ���� ÷�� ������ Ȯ���Ͻ���.', '21-08-27');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user41', 2, '�̹� ���� ������ �̻��ؿ�...', '�̹� ���� ������ �̻��ؿ�... ���ѷ� ÷�� ������ Ȯ�κ�Ź�帳�ϴ�..', '20-10-13');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user42', 1, '���� �Ǹ��� ������ ���ο���.', '���� �Ǹ��� ������ ���ο���. �˾Ƽ� ÷�� ������ �����ϰھ��?�Ѥ�', '21-05-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user43', 2, '�� ���� ������ �̻��ؿ�.', '�� ���� ������ �̻��ؿ�. ���ѷ� ��Ȳ�� Ȯ�κ�Ź�帳�ϴ�?', '21-04-08');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user44', 3, '�� ��й�ȣ ������ �̻��ؿ�..', '�� ��й�ȣ ������ �̻��ؿ�.. ���� ��Ȳ�� ������Ź�帳�ϴ�.', '21-02-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user45', 3, '���� ��й�ȣ ������ ���ο���.', '���� ��й�ȣ ������ ���ο���. �˾Ƽ� ������ ������Ź�帳�ϴ�.', '21-08-26');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user46', 5, '�� ��й�ȣ ������ �����ƿ�.', '�� ��й�ȣ ������ �����ƿ�. ���ѷ� ������ Ȯ�κ�Ź�帳�ϴ�...', '20-11-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user47', 1, '���� �Ǹ��� ������ ����.', '���� �Ǹ��� ������ ����. ���� ÷�� ������ �ľ��Ͻ���.', '21-11-19');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user48', 2, '�� ���� ������ ����.', '�� ���� ������ ����. ���� ÷�� ������ �����Ͻ���...', '21-05-07');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user49', 2, '���� ��й�ȣ ������ ����.', '���� ��й�ȣ ������ ����. �˾Ƽ� ������ Ȯ���Ͻ���?', '21-11-10');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user50', 4, '���� ���� ������ �̻��ؿ�.', '���� ���� ������ �̻��ؿ�. ���� ��Ȳ�� �����Ͻ���.', '20-11-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user51', 1, '���ο� ���� ����� �����ƿ�.', '���ο� ���� ����� �����ƿ�. �˾Ƽ� ������ Ȯ�κ�Ź�帳�ϴ�.', '21-08-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user52', 5, '���� ���� ������ ����.', '���� ���� ������ ����. ���ѷ� ÷�� ������ �����Ͻ���?', '21-07-03');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user53', 5, '���ο� �Ǹ��� ����� �����ؿ�.', '���ο� �Ǹ��� ����� �����ؿ�. �˾Ƽ� ÷�� ������ ������Ź�帳�ϴ�.', '20-09-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user54', 5, '���ο� �ŷڵ� ������ �����ؿ�.', '���ο� �ŷڵ� ������ �����ؿ�. ���ѷ� ÷�� ������ �����Ͻ���..', '20-05-12');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user55', 5, '�̹� �Ǹ��� ������ �����ƿ�.', '�̹� �Ǹ��� ������ �����ƿ�. ���� ��Ȳ�� �����Ͻ��Ҥ̤�', '21-07-03');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user56', 4, '�� �Ǹ��� ������ �����ƿ�.', '�� �Ǹ��� ������ �����ƿ�. �˾Ƽ� ÷�� ������ �����Ͻ���!', '21-11-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user57', 5, '�� �Խñ� ����� �����ؿ�.', '�� �Խñ� ����� �����ؿ�. �˾Ƽ� ÷�� ������ �����ϰھ��?.', '21-09-12');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user58', 2, '�� �г��� ������ �����ؿ�.', '�� �г��� ������ �����ؿ�. �˾Ƽ� ÷�� ������ Ȯ���ϰھ��??', '21-10-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user59', 2, '�̹� �г��� ������ �����ƿ�.', '�̹� �г��� ������ �����ƿ�. �˾Ƽ� ��Ȳ�� �ľ��ϰھ��?!', '21-04-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user60', 5, '�� �ŷڵ� ����� ����.', '�� �ŷڵ� ����� ����. ���� ÷�� ������ �����Ͻ���.', '21-06-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user61', 1, '�̹� �ŷڵ� ����� ����.', '�̹� �ŷڵ� ����� ����. ���ѷ� ������ �����Ͻ���..', '20-04-13');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user62', 4, '���ο� �г��� ������ �����ؿ�.', '���ο� �г��� ������ �����ؿ�. ���� ÷�� ������ Ȯ���ϰھ��??', '20-06-13');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user63', 4, '���ο� �ŷڵ� ������ ����.', '���ο� �ŷڵ� ������ ����. ���� ÷�� ������ �������ּ���̤�', '21-06-05');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user64', 2, '�̹� ��й�ȣ ������ �����ƿ�.', '�̹� ��й�ȣ ������ �����ƿ�. ���� ��Ȳ�� Ȯ���Ͻ��Ҥ̤�', '21-11-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user65', 1, '���ο� �Ǹ��� ������ �����ƿ�.', '���ο� �Ǹ��� ������ �����ƿ�. ���� ������ �ľ��ϰھ��?.', '20-05-20');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user66', 1, '�� �ŷڵ� ����� �����ƿ�...', '�� �ŷڵ� ����� �����ƿ�... ���� ��Ȳ�� �����Ͻ���?', '21-07-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user67', 4, '�� �ŷڵ� ������ ���ο���.', '�� �ŷڵ� ������ ���ο���. ���ѷ� ÷�� ������ �ľ��ϰھ��?�̤�', '20-11-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user68', 4, '���� �ŷڵ� ����� �̻��ؿ�.', '���� �ŷڵ� ����� �̻��ؿ�. ���� ��Ȳ�� �����Ͻ���.', '20-05-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user69', 2, '�̹� �г��� ����� ���ο���.', '�̹� �г��� ����� ���ο���. ���ѷ� ��Ȳ�� Ȯ�κ�Ź�帳�ϴ�..', '20-11-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user70', 1, '���� �Ǹ��� ����� �̻��ؿ�.', '���� �Ǹ��� ����� �̻��ؿ�. ���� ��Ȳ�� ������Ź�帳�ϴ�.', '21-10-07');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user71', 1, '���� �ŷڵ� ������ �����ƿ�.', '���� �ŷڵ� ������ �����ƿ�. ���� ������ �������ּ���.', '21-03-26');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user72', 1, '���ο� �Խñ� ����� ���ο���.', '���ο� �Խñ� ����� ���ο���. ���� ÷�� ������ �����Ͻ���..', '21-03-09');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user73', 5, '�� ���� ����� ����.', '�� ���� ����� ����. ���� ÷�� ������ �������ּ���Ѥ�', '21-07-01');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user74', 3, '�� ���� ������ ����...', '�� ���� ������ ����... ���ѷ� ÷�� ������ �ľ��ϰھ��??', '21-11-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user75', 5, '���� �г��� ����� �̻��ؿ�.', '���� �г��� ����� �̻��ؿ�. ���ѷ� ÷�� ������ Ȯ���ϰھ��?.', '20-04-08');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user76', 2, '���� �Խñ� ����� �����ؿ�.', '���� �Խñ� ����� �����ؿ�. ���ѷ� ��Ȳ�� �����Ͻ���.', '21-04-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user77', 3, '�� �Ǹ��� ������ �����ؿ�...', '�� �Ǹ��� ������ �����ؿ�... �˾Ƽ� ÷�� ������ Ȯ�����ּ���?', '20-06-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user78', 5, '���ο� ���� ������ �����ؿ�..', '���ο� ���� ������ �����ؿ�.. ���� ÷�� ������ �ľ����ּ���..', '21-07-03');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user79', 1, '�̹� �ŷڵ� ������ ���ο���...', '�̹� �ŷڵ� ������ ���ο���... ���ѷ� ÷�� ������ �ľ����ּ���?', '21-04-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user80', 2, '�̹� �ŷڵ� ������ ���ο���.', '�̹� �ŷڵ� ������ ���ο���. ���� ������ ������Ź�帳�ϴ�.', '20-09-21');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user81', 1, '���� �ŷڵ� ������ ����.', '���� �ŷڵ� ������ ����. ���ѷ� ��Ȳ�� Ȯ���Ͻ���.', '20-10-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user82', 4, '���� �г��� ������ ���ο���.', '���� �г��� ������ ���ο���. ���� ������ �������ּ���...', '21-06-10');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user83', 5, '���� ������ ������ ���ο���.', '���� ������ ������ ���ο���. ���ѷ� ��Ȳ�� �ľ��ϰھ��?...', '21-07-28');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user84', 1, '�� ��й�ȣ ������ ����.', '�� ��й�ȣ ������ ����. �˾Ƽ� ÷�� ������ �ľ��ϰھ��?.', '20-09-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user85', 1, '�� �Խñ� ������ �����ؿ�.', '�� �Խñ� ������ �����ؿ�. ���ѷ� ÷�� ������ �������ּ���..', '21-11-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user86', 4, '�� �Խñ� ������ �̻��ؿ�...', '�� �Խñ� ������ �̻��ؿ�... �˾Ƽ� ÷�� ������ �������ּ���Ѥ�', '20-11-03');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user87', 3, '���ο� ��й�ȣ ������ �����ؿ�.', '���ο� ��й�ȣ ������ �����ؿ�. ���� ÷�� ������ Ȯ�κ�Ź�帳�ϴ٤̤�', '21-11-18');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user88', 2, '���ο� ��й�ȣ ����� ����.', '���ο� ��й�ȣ ����� ����. ���� ������ �����ϰھ��?.', '20-11-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user89', 2, '�̹� �ŷڵ� ������ ���ο���.', '�̹� �ŷڵ� ������ ���ο���. ���ѷ� ������ �ľ��Ͻ���?', '21-08-15');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user90', 1, '�� �Ǹ��� ����� �����ƿ�.', '�� �Ǹ��� ����� �����ƿ�. �˾Ƽ� ��Ȳ�� �ľ��Ͻ���?', '21-08-23');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user91', 3, '�̹� ���� ����� �̻��ؿ�..', '�̹� ���� ����� �̻��ؿ�.. ���� ������ �������ּ���Ѥ�', '20-03-04');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user92', 3, '���ο� �Ǹ��� ������ �����ƿ�.', '���ο� �Ǹ��� ������ �����ƿ�. ���� ÷�� ������ Ȯ�κ�Ź�帳�ϴ�?', '20-04-17');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user93', 3, '�� �Խñ� ����� �̻��ؿ�.', '�� �Խñ� ����� �̻��ؿ�. ���� ������ �����ϰھ��?.', '21-03-09');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user94', 2, '�� �ŷڵ� ����� ����..', '�� �ŷڵ� ����� ����.. ���ѷ� ÷�� ������ Ȯ���ϰھ��?..', '20-06-11');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user95', 5, '���ο� �Ǹ��� ������ ����.', '���ο� �Ǹ��� ������ ����. ���ѷ� ÷�� ������ �ľ��ϰھ��?�̤�', '21-05-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user96', 4, '���� �Խñ� ����� �̻��ؿ�..', '���� �Խñ� ����� �̻��ؿ�.. ���ѷ� ÷�� ������ �����ϰھ��?.', '20-02-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user97', 3, '���ο� �Խñ� ������ �����ƿ�.', '���ο� �Խñ� ������ �����ƿ�. ���� ������ �������ּ���Ѥ�', '20-07-22');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user98', 5, '���� �Խñ� ������ �����ؿ�.', '���� �Խñ� ������ �����ؿ�. ���ѷ� ��Ȳ�� �����Ͻ���...', '20-06-14');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user99', 2, '���ο� ������ ����� �����ƿ�.', '���ο� ������ ����� �����ƿ�. ���ѷ� ��Ȳ�� ������Ź�帳�ϴ�.', '21-01-16');
insert into tblQuestion (question_seq, id, question_type_seq, title, content, regdate) values (question_seq.nextVal, 'user100', 4, '�� ���� ������ �̻��ؿ�..', '�� ���� ������ �̻��ؿ�.. ���ѷ� ÷�� ������ �����ϰھ��?.', '20-06-04');


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

insert into tblNotice values (1,'1�� �������� ����  ','1�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-02-01');
insert into tblNotice values (2,'2�� �������� ����  ','2�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-02-08');
insert into tblNotice values (3,'3�� �������� ����  ','3�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-02-15');
insert into tblNotice values (4,'4�� �������� ����  ','4�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-02-22');
insert into tblNotice values (5,'5�� �������� ����  ','5�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-02-29');
insert into tblNotice values (6,'6�� �������� ����  ','6�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-03-07');
insert into tblNotice values (7,'7�� �������� ����  ','7�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-03-14');
insert into tblNotice values (8,'8�� �������� ����  ','8�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-03-21');
insert into tblNotice values (9,'9�� �������� ����  ','9�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-03-28');
insert into tblNotice values (10,'10�� �������� ����  ','10�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-04-04');
insert into tblNotice values (11,'11�� �������� ����  ','11�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-04-11');
insert into tblNotice values (12,'12�� �������� ����  ','12�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-04-18');
insert into tblNotice values (13,'13�� �������� ����  ','13�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-04-25');
insert into tblNotice values (14,'14�� �������� ����  ','14�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-05-02');
insert into tblNotice values (15,'15�� �������� ����  ','15�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-05-09');
insert into tblNotice values (16,'16�� �������� ����  ','16�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-05-16');
insert into tblNotice values (17,'17�� �������� ����  ','17�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-05-23');
insert into tblNotice values (18,'18�� �������� ����  ','18�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-05-30');
insert into tblNotice values (19,'19�� �������� ����  ','19�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-06-06');
insert into tblNotice values (20,'20�� �������� ����  ','20�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-06-13');
insert into tblNotice values (21,'21�� �������� ����  ','21�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-06-20');
insert into tblNotice values (22,'22�� �������� ����  ','22�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-06-27');
insert into tblNotice values (23,'23�� �������� ����  ','23�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-07-04');
insert into tblNotice values (24,'24�� �������� ����  ','24�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-07-11');
insert into tblNotice values (25,'25�� �������� ����  ','25�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-07-18');
insert into tblNotice values (26,'26�� �������� ����  ','26�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-07-25');
insert into tblNotice values (27,'27�� �������� ����  ','27�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-08-01');
insert into tblNotice values (28,'28�� �������� ����  ','28�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-08-08');
insert into tblNotice values (29,'29�� �������� ����  ','29�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-08-15');
insert into tblNotice values (30,'30�� �������� ����  ','30�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-08-22');
insert into tblNotice values (31,'31�� �������� ����  ','31�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-08-29');
insert into tblNotice values (32,'32�� �������� ����  ','32�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-09-05');
insert into tblNotice values (33,'33�� �������� ����  ','33�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-09-12');
insert into tblNotice values (34,'34�� �������� ����  ','34�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-09-19');
insert into tblNotice values (35,'35�� �������� ����  ','35�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-09-26');
insert into tblNotice values (36,'36�� �������� ����  ','36�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-10-03');
insert into tblNotice values (37,'37�� �������� ����  ','37�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-10-10');
insert into tblNotice values (38,'38�� �������� ����  ','38�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-10-17');
insert into tblNotice values (39,'39�� �������� ����  ','39�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-10-24');
insert into tblNotice values (40,'40�� �������� ����  ','40�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-10-31');
insert into tblNotice values (41,'41�� �������� ����  ','41�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-11-07');
insert into tblNotice values (42,'42�� �������� ����  ','42�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-11-14');
insert into tblNotice values (43,'43�� �������� ����  ','43�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-11-21');
insert into tblNotice values (44,'44�� �������� ����  ','44�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-11-28');
insert into tblNotice values (45,'45�� �������� ����  ','45�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-12-05');
insert into tblNotice values (46,'46�� �������� ����  ','46�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-12-12');
insert into tblNotice values (47,'47�� �������� ����  ','47�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-12-19');
insert into tblNotice values (48,'48�� �������� ����  ','48�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2020-12-26');
insert into tblNotice values (49,'49�� �������� ����  ','49�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-01-02');
insert into tblNotice values (50,'50�� �������� ����  ','50�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-01-09');
insert into tblNotice values (51,'51�� �������� ����  ','51�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-01-16');
insert into tblNotice values (52,'52�� �������� ����  ','52�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-01-23');
insert into tblNotice values (53,'53�� �������� ����  ','53�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-01-30');
insert into tblNotice values (54,'54�� �������� ����  ','54�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-02-06');
insert into tblNotice values (55,'55�� �������� ����  ','55�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-02-13');
insert into tblNotice values (56,'56�� �������� ����  ','56�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-02-20');
insert into tblNotice values (57,'57�� �������� ����  ','57�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-02-27');
insert into tblNotice values (58,'58�� �������� ����  ','58�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-03-06');
insert into tblNotice values (59,'59�� �������� ����  ','59�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-03-13');
insert into tblNotice values (60,'60�� �������� ����  ','60�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-03-20');
insert into tblNotice values (61,'61�� �������� ����  ','61�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-03-27');
insert into tblNotice values (62,'62�� �������� ����  ','62�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-04-03');
insert into tblNotice values (63,'63�� �������� ����  ','63�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-04-10');
insert into tblNotice values (64,'64�� �������� ����  ','64�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-04-17');
insert into tblNotice values (65,'65�� �������� ����  ','65�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-04-24');
insert into tblNotice values (66,'66�� �������� ����  ','66�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-05-01');
insert into tblNotice values (67,'67�� �������� ����  ','67�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-05-08');
insert into tblNotice values (68,'68�� �������� ����  ','68�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-05-15');
insert into tblNotice values (69,'69�� �������� ����  ','69�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-05-22');
insert into tblNotice values (70,'70�� �������� ����  ','70�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-05-29');
insert into tblNotice values (71,'71�� �������� ����  ','71�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-06-05');
insert into tblNotice values (72,'72�� �������� ����  ','72�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-06-12');
insert into tblNotice values (73,'73�� �������� ����  ','73�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-06-19');
insert into tblNotice values (74,'74�� �������� ����  ','74�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-06-26');
insert into tblNotice values (75,'75�� �������� ����  ','75�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-07-03');
insert into tblNotice values (76,'76�� �������� ����  ','76�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-07-10');
insert into tblNotice values (77,'77�� �������� ����  ','77�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-07-17');
insert into tblNotice values (78,'78�� �������� ����  ','78�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-07-24');
insert into tblNotice values (79,'79�� �������� ����  ','79�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-07-31');
insert into tblNotice values (80,'80�� �������� ����  ','80�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-08-07');
insert into tblNotice values (81,'81�� �������� ����  ','81�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-08-14');
insert into tblNotice values (82,'82�� �������� ����  ','82�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-08-21');
insert into tblNotice values (83,'83�� �������� ����  ','83�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-08-28');
insert into tblNotice values (84,'84�� �������� ����  ','84�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-09-04');
insert into tblNotice values (85,'85�� �������� ����  ','85�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-09-11');
insert into tblNotice values (86,'86�� �������� ����  ','86�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-09-18');
insert into tblNotice values (87,'87�� �������� ����  ','87�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-09-25');
insert into tblNotice values (88,'88�� �������� ����  ','88�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-10-02');
insert into tblNotice values (89,'89�� �������� ����  ','89�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-10-09');
insert into tblNotice values (90,'90�� �������� ����  ','90�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-10-16');
insert into tblNotice values (91,'91�� �������� ����  ','91�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-10-23');
insert into tblNotice values (92,'92�� �������� ����  ','92�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-10-30');
insert into tblNotice values (93,'93�� �������� ����  ','93�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-11-06');
insert into tblNotice values (94,'94�� �������� ����  ','94�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-11-13');
insert into tblNotice values (95,'95�� �������� ����  ','95�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-11-20');
insert into tblNotice values (96,'96�� �������� ����  ','96�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-11-27');
insert into tblNotice values (97,'97�� �������� ����  ','97�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-12-04');
insert into tblNotice values (98,'98�� �������� ����  ','98�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-12-11');
insert into tblNotice values (99,'99�� �������� ����  ','99�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-12-18');
insert into tblNotice values (100,'100�� �������� ����  ','100�� �������� ����  1�� �������� �����Դϴ�. �����մϴ�.','2021-12-25');



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


-- �ŷ�
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
    

insert into tblReview values ('S',1, 10,'1�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',1, 8,'1�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',2, 7,'2�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',2, 8,'2�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',3, 9,'3�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',3, 9,'3�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',4, 9,'4�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',4, 8,'4�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',5, 8,'5�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',5, 8,'5�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',6, 7,'6�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',6, 9,'6�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',7, 7,'7�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',7, 8,'7�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',8, 10,'8�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',8, 9,'8�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',9, 8,'9�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',9, 8,'9�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',10, 9,'10�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',10, 10,'10�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',11, 7,'11�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',11, 8,'11�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',12, 10,'12�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',12, 8,'12�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',13, 8,'13�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',13, 9,'13�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',14, 10,'14�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',14, 8,'14�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',15, 7,'15�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',15, 9,'15�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',16, 9,'16�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',16, 9,'16�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',17, 9,'17�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',17, 7,'17�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',18, 8,'18�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',18, 7,'18�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',19, 7,'19�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',19, 9,'19�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',20, 7,'20�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',20, 8,'20�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',21, 9,'21�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',21, 10,'21�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',22, 9,'22�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',22, 9,'22�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',23, 8,'23�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',23, 10,'23�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',24, 9,'24�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',24, 9,'24�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',25, 8,'25�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',25, 10,'25�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',26, 7,'26�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',26, 10,'26�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',27, 10,'27�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',27, 8,'27�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',28, 8,'28�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',28, 8,'28�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',29, 10,'29�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',29, 9,'29�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',30, 9,'30�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',30, 10,'30�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',31, 8,'31�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',31, 10,'31�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',32, 10,'32�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',32, 8,'32�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',33, 7,'33�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',33, 10,'33�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',34, 8,'34�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',34, 10,'34�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',35, 9,'35�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',35, 9,'35�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',36, 9,'36�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',36, 9,'36�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',37, 8,'37�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',37, 9,'37�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',38, 7,'38�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',38, 10,'38�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',39, 9,'39�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',39, 9,'39�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',40, 10,'40�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',40, 9,'40�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',41, 9,'41�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',41, 10,'41�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',42, 8,'42�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',42, 10,'42�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',43, 8,'43�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',43, 8,'43�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',44, 9,'44�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',44, 9,'44�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',45, 9,'45�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',45, 8,'45�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',46, 8,'46�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',46, 7,'46�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',47, 9,'47�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',47, 10,'47�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',48, 9,'48�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',48, 9,'48�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',49, 7,'49�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',49, 9,'49�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',50, 8,'50�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',50, 7,'50�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',51, 7,'51�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',51, 7,'51�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',52, 7,'52�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',52, 10,'52�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',53, 10,'53�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',53, 10,'53�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',54, 9,'54�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',54, 7,'54�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',55, 9,'55�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',55, 9,'55�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',56, 7,'56�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',56, 10,'56�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',57, 10,'57�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',57, 9,'57�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',58, 9,'58�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',58, 10,'58�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',59, 9,'59�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',59, 8,'59�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',60, 9,'60�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',60, 10,'60�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',61, 10,'61�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',61, 7,'61�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',62, 8,'62�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',62, 7,'62�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',63, 7,'63�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',63, 8,'63�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',64, 9,'64�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',64, 8,'64�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',65, 7,'65�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',65, 8,'65�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',66, 10,'66�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',66, 9,'66�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',67, 10,'67�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',67, 10,'67�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',68, 8,'68�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',68, 8,'68�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',69, 7,'69�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',69, 8,'69�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',70, 8,'70�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',70, 10,'70�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',71, 7,'71�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',71, 10,'71�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',72, 7,'72�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',72, 8,'72�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',73, 8,'73�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',73, 10,'73�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',74, 10,'74�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',74, 8,'74�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',75, 10,'75�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',75, 7,'75�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',76, 8,'76�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',76, 9,'76�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',77, 10,'77�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',77, 8,'77�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',78, 10,'78�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',78, 10,'78�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',79, 7,'79�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',79, 10,'79�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',80, 9,'80�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',80, 8,'80�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',81, 9,'81�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',81, 10,'81�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',82, 9,'82�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',82, 7,'82�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',83, 10,'83�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',83, 9,'83�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',84, 7,'84�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',84, 8,'84�� �ı��  ������ : ���� ģ���ϼ̾��');
insert into tblReview values ('S',85, 10,'85�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',85, 8,'85�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',86, 8,'86�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',86, 8,'86�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',87, 10,'87�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',87, 7,'87�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',88, 7,'88�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',88, 10,'88�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',89, 9,'89�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',89, 7,'89�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',90, 8,'90�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',90, 8,'90�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',91, 10,'91�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',91, 10,'91�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',92, 9,'92�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',92, 8,'92�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',93, 7,'93�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',93, 10,'93�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',94, 10,'94�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',94, 7,'94�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');
insert into tblReview values ('S',95, 7,'95�� �ı��  �Ǹ��� : �����ϰ� �ȼ� �־ ���ҽ��ϴ�.');
insert into tblReview values ('B',95, 9,'95�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',96, 8,'96�� �ı��  �Ǹ��� : ģ���ϼ̾��!');
insert into tblReview values ('B',96, 10,'96�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',97, 9,'97�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',97, 8,'97�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',98, 7,'98�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',98, 7,'98�� �ı��  ������ : ���� ���ƿ�!!');
insert into tblReview values ('S',99, 8,'99�� �ı��  �Ǹ��� : �װ���� ��ŷ� �����մϴ�!');
insert into tblReview values ('B',99, 10,'99�� �ı��  ������ :  �ջ�Ȱ����� �Ϻ��ؿ�!');
insert into tblReview values ('S',100, 9,'100�� �ı��  �Ǹ��� : �ŷ����� �ű���� ����ϰ� �ŷ��߾��!!');
insert into tblReview values ('B',100, 8,'100�� �ı��  ������ : �ΰ� �� �� �־ ���Ҿ��');


CREATE TABLE tblCommunity(
	community_seq NUMBER not null, 
	id VARCHAR2(100) NOT NULL,
	title VARCHAR2(100)	NOT NULL, --20��
    content VARCHAR2(4000) NOT NULL,--200��
	regDate DATE default sysdate NOT NULL,--���� ���� 28�� ����
    readcount NUMBER default 0 NOT NULL --0
); --100


create sequence community_seq start with 1;

alter table tblCommunity
    add constraint tblc_community_seq_pk primary key(community_seq);
alter table tblCommunity
    add constraint tblc_id_fk FOREIGN Key(id) references tblUser(id);


insert into tblCommunity values (1,'user65','1�� Ŀ�´�Ƽ�� ����  ','1�� Ŀ�´�Ƽ�� ���� ','2020-02-01',66);
insert into tblCommunity values (2,'user78','2�� Ŀ�´�Ƽ�� ����  ','2�� Ŀ�´�Ƽ�� ���� ','2020-02-06',75);
insert into tblCommunity values (3,'user18','3�� Ŀ�´�Ƽ�� ����  ','3�� Ŀ�´�Ƽ�� ���� ','2020-02-11',53);
insert into tblCommunity values (4,'user76','4�� Ŀ�´�Ƽ�� ����  ','4�� Ŀ�´�Ƽ�� ���� ','2020-02-16',71);
insert into tblCommunity values (5,'user55','5�� Ŀ�´�Ƽ�� ����  ','5�� Ŀ�´�Ƽ�� ���� ','2020-02-21',71);
insert into tblCommunity values (6,'user93','6�� Ŀ�´�Ƽ�� ����  ','6�� Ŀ�´�Ƽ�� ���� ','2020-02-26',31);
insert into tblCommunity values (7,'user91','7�� Ŀ�´�Ƽ�� ����  ','7�� Ŀ�´�Ƽ�� ���� ','2020-03-02',0);
insert into tblCommunity values (8,'user78','8�� Ŀ�´�Ƽ�� ����  ','8�� Ŀ�´�Ƽ�� ���� ','2020-03-07',11);
insert into tblCommunity values (9,'user88','9�� Ŀ�´�Ƽ�� ����  ','9�� Ŀ�´�Ƽ�� ���� ','2020-03-12',76);
insert into tblCommunity values (10,'user52','10�� Ŀ�´�Ƽ�� ����  ','10�� Ŀ�´�Ƽ�� ���� ','2020-03-17',55);
insert into tblCommunity values (11,'user12','11�� Ŀ�´�Ƽ�� ����  ','11�� Ŀ�´�Ƽ�� ���� ','2020-03-22',80);
insert into tblCommunity values (12,'user52','12�� Ŀ�´�Ƽ�� ����  ','12�� Ŀ�´�Ƽ�� ���� ','2020-03-27',45);
insert into tblCommunity values (13,'user39','13�� Ŀ�´�Ƽ�� ����  ','13�� Ŀ�´�Ƽ�� ���� ','2020-04-01',8);
insert into tblCommunity values (14,'user16','14�� Ŀ�´�Ƽ�� ����  ','14�� Ŀ�´�Ƽ�� ���� ','2020-04-06',90);
insert into tblCommunity values (15,'user45','15�� Ŀ�´�Ƽ�� ����  ','15�� Ŀ�´�Ƽ�� ���� ','2020-04-11',20);
insert into tblCommunity values (16,'user1','16�� Ŀ�´�Ƽ�� ����  ','16�� Ŀ�´�Ƽ�� ���� ','2020-04-16',79);
insert into tblCommunity values (17,'user92','17�� Ŀ�´�Ƽ�� ����  ','17�� Ŀ�´�Ƽ�� ���� ','2020-04-21',37);
insert into tblCommunity values (18,'user8','18�� Ŀ�´�Ƽ�� ����  ','18�� Ŀ�´�Ƽ�� ���� ','2020-04-26',6);
insert into tblCommunity values (19,'user59','19�� Ŀ�´�Ƽ�� ����  ','19�� Ŀ�´�Ƽ�� ���� ','2020-05-01',30);
insert into tblCommunity values (20,'user92','20�� Ŀ�´�Ƽ�� ����  ','20�� Ŀ�´�Ƽ�� ���� ','2020-05-06',2);
insert into tblCommunity values (21,'user7','21�� Ŀ�´�Ƽ�� ����  ','21�� Ŀ�´�Ƽ�� ���� ','2020-05-11',93);
insert into tblCommunity values (22,'user63','22�� Ŀ�´�Ƽ�� ����  ','22�� Ŀ�´�Ƽ�� ���� ','2020-05-16',84);
insert into tblCommunity values (23,'user51','23�� Ŀ�´�Ƽ�� ����  ','23�� Ŀ�´�Ƽ�� ���� ','2020-05-21',88);
insert into tblCommunity values (24,'user13','24�� Ŀ�´�Ƽ�� ����  ','24�� Ŀ�´�Ƽ�� ���� ','2020-05-26',72);
insert into tblCommunity values (25,'user51','25�� Ŀ�´�Ƽ�� ����  ','25�� Ŀ�´�Ƽ�� ���� ','2020-05-31',49);
insert into tblCommunity values (26,'user77','26�� Ŀ�´�Ƽ�� ����  ','26�� Ŀ�´�Ƽ�� ���� ','2020-06-05',0);
insert into tblCommunity values (27,'user17','27�� Ŀ�´�Ƽ�� ����  ','27�� Ŀ�´�Ƽ�� ���� ','2020-06-10',47);
insert into tblCommunity values (28,'user86','28�� Ŀ�´�Ƽ�� ����  ','28�� Ŀ�´�Ƽ�� ���� ','2020-06-15',91);
insert into tblCommunity values (29,'user87','29�� Ŀ�´�Ƽ�� ����  ','29�� Ŀ�´�Ƽ�� ���� ','2020-06-20',62);
insert into tblCommunity values (30,'user41','30�� Ŀ�´�Ƽ�� ����  ','30�� Ŀ�´�Ƽ�� ���� ','2020-06-25',34);
insert into tblCommunity values (31,'user73','31�� Ŀ�´�Ƽ�� ����  ','31�� Ŀ�´�Ƽ�� ���� ','2020-06-30',3);
insert into tblCommunity values (32,'user54','32�� Ŀ�´�Ƽ�� ����  ','32�� Ŀ�´�Ƽ�� ���� ','2020-07-05',13);
insert into tblCommunity values (33,'user56','33�� Ŀ�´�Ƽ�� ����  ','33�� Ŀ�´�Ƽ�� ���� ','2020-07-10',69);
insert into tblCommunity values (34,'user18','34�� Ŀ�´�Ƽ�� ����  ','34�� Ŀ�´�Ƽ�� ���� ','2020-07-15',94);
insert into tblCommunity values (35,'user21','35�� Ŀ�´�Ƽ�� ����  ','35�� Ŀ�´�Ƽ�� ���� ','2020-07-20',32);
insert into tblCommunity values (36,'user65','36�� Ŀ�´�Ƽ�� ����  ','36�� Ŀ�´�Ƽ�� ���� ','2020-07-25',44);
insert into tblCommunity values (37,'user52','37�� Ŀ�´�Ƽ�� ����  ','37�� Ŀ�´�Ƽ�� ���� ','2020-07-30',85);
insert into tblCommunity values (38,'user21','38�� Ŀ�´�Ƽ�� ����  ','38�� Ŀ�´�Ƽ�� ���� ','2020-08-04',65);
insert into tblCommunity values (39,'user69','39�� Ŀ�´�Ƽ�� ����  ','39�� Ŀ�´�Ƽ�� ���� ','2020-08-09',93);
insert into tblCommunity values (40,'user41','40�� Ŀ�´�Ƽ�� ����  ','40�� Ŀ�´�Ƽ�� ���� ','2020-08-14',56);
insert into tblCommunity values (41,'user60','41�� Ŀ�´�Ƽ�� ����  ','41�� Ŀ�´�Ƽ�� ���� ','2020-08-19',74);
insert into tblCommunity values (42,'user28','42�� Ŀ�´�Ƽ�� ����  ','42�� Ŀ�´�Ƽ�� ���� ','2020-08-24',47);
insert into tblCommunity values (43,'user53','43�� Ŀ�´�Ƽ�� ����  ','43�� Ŀ�´�Ƽ�� ���� ','2020-08-29',84);
insert into tblCommunity values (44,'user34','44�� Ŀ�´�Ƽ�� ����  ','44�� Ŀ�´�Ƽ�� ���� ','2020-09-03',50);
insert into tblCommunity values (45,'user67','45�� Ŀ�´�Ƽ�� ����  ','45�� Ŀ�´�Ƽ�� ���� ','2020-09-08',53);
insert into tblCommunity values (46,'user46','46�� Ŀ�´�Ƽ�� ����  ','46�� Ŀ�´�Ƽ�� ���� ','2020-09-13',66);
insert into tblCommunity values (47,'user14','47�� Ŀ�´�Ƽ�� ����  ','47�� Ŀ�´�Ƽ�� ���� ','2020-09-18',42);
insert into tblCommunity values (48,'user66','48�� Ŀ�´�Ƽ�� ����  ','48�� Ŀ�´�Ƽ�� ���� ','2020-09-23',49);
insert into tblCommunity values (49,'user68','49�� Ŀ�´�Ƽ�� ����  ','49�� Ŀ�´�Ƽ�� ���� ','2020-09-28',3);
insert into tblCommunity values (50,'user96','50�� Ŀ�´�Ƽ�� ����  ','50�� Ŀ�´�Ƽ�� ���� ','2020-10-03',1);
insert into tblCommunity values (51,'user29','51�� Ŀ�´�Ƽ�� ����  ','51�� Ŀ�´�Ƽ�� ���� ','2020-10-08',90);
insert into tblCommunity values (52,'user66','52�� Ŀ�´�Ƽ�� ����  ','52�� Ŀ�´�Ƽ�� ���� ','2020-10-13',72);
insert into tblCommunity values (53,'user47','53�� Ŀ�´�Ƽ�� ����  ','53�� Ŀ�´�Ƽ�� ���� ','2020-10-18',39);
insert into tblCommunity values (54,'user16','54�� Ŀ�´�Ƽ�� ����  ','54�� Ŀ�´�Ƽ�� ���� ','2020-10-23',64);
insert into tblCommunity values (55,'user53','55�� Ŀ�´�Ƽ�� ����  ','55�� Ŀ�´�Ƽ�� ���� ','2020-10-28',67);
insert into tblCommunity values (56,'user3','56�� Ŀ�´�Ƽ�� ����  ','56�� Ŀ�´�Ƽ�� ���� ','2020-11-02',41);
insert into tblCommunity values (57,'user76','57�� Ŀ�´�Ƽ�� ����  ','57�� Ŀ�´�Ƽ�� ���� ','2020-11-07',87);
insert into tblCommunity values (58,'user61','58�� Ŀ�´�Ƽ�� ����  ','58�� Ŀ�´�Ƽ�� ���� ','2020-11-12',88);
insert into tblCommunity values (59,'user41','59�� Ŀ�´�Ƽ�� ����  ','59�� Ŀ�´�Ƽ�� ���� ','2020-11-17',56);
insert into tblCommunity values (60,'user77','60�� Ŀ�´�Ƽ�� ����  ','60�� Ŀ�´�Ƽ�� ���� ','2020-11-22',89);
insert into tblCommunity values (61,'user86','61�� Ŀ�´�Ƽ�� ����  ','61�� Ŀ�´�Ƽ�� ���� ','2020-11-27',57);
insert into tblCommunity values (62,'user29','62�� Ŀ�´�Ƽ�� ����  ','62�� Ŀ�´�Ƽ�� ���� ','2020-12-02',69);
insert into tblCommunity values (63,'user75','63�� Ŀ�´�Ƽ�� ����  ','63�� Ŀ�´�Ƽ�� ���� ','2020-12-07',45);
insert into tblCommunity values (64,'user98','64�� Ŀ�´�Ƽ�� ����  ','64�� Ŀ�´�Ƽ�� ���� ','2020-12-12',74);
insert into tblCommunity values (65,'user17','65�� Ŀ�´�Ƽ�� ����  ','65�� Ŀ�´�Ƽ�� ���� ','2020-12-17',76);
insert into tblCommunity values (66,'user25','66�� Ŀ�´�Ƽ�� ����  ','66�� Ŀ�´�Ƽ�� ���� ','2020-12-22',53);
insert into tblCommunity values (67,'user65','67�� Ŀ�´�Ƽ�� ����  ','67�� Ŀ�´�Ƽ�� ���� ','2020-12-27',84);
insert into tblCommunity values (68,'user51','68�� Ŀ�´�Ƽ�� ����  ','68�� Ŀ�´�Ƽ�� ���� ','2021-01-01',87);
insert into tblCommunity values (69,'user48','69�� Ŀ�´�Ƽ�� ����  ','69�� Ŀ�´�Ƽ�� ���� ','2021-01-06',45);
insert into tblCommunity values (70,'user80','70�� Ŀ�´�Ƽ�� ����  ','70�� Ŀ�´�Ƽ�� ���� ','2021-01-11',16);
insert into tblCommunity values (71,'user79','71�� Ŀ�´�Ƽ�� ����  ','71�� Ŀ�´�Ƽ�� ���� ','2021-01-16',14);
insert into tblCommunity values (72,'user65','72�� Ŀ�´�Ƽ�� ����  ','72�� Ŀ�´�Ƽ�� ���� ','2021-01-21',48);
insert into tblCommunity values (73,'user83','73�� Ŀ�´�Ƽ�� ����  ','73�� Ŀ�´�Ƽ�� ���� ','2021-01-26',68);
insert into tblCommunity values (74,'user12','74�� Ŀ�´�Ƽ�� ����  ','74�� Ŀ�´�Ƽ�� ���� ','2021-01-31',75);
insert into tblCommunity values (75,'user71','75�� Ŀ�´�Ƽ�� ����  ','75�� Ŀ�´�Ƽ�� ���� ','2021-02-05',14);
insert into tblCommunity values (76,'user73','76�� Ŀ�´�Ƽ�� ����  ','76�� Ŀ�´�Ƽ�� ���� ','2021-02-10',57);
insert into tblCommunity values (77,'user21','77�� Ŀ�´�Ƽ�� ����  ','77�� Ŀ�´�Ƽ�� ���� ','2021-02-15',26);
insert into tblCommunity values (78,'user15','78�� Ŀ�´�Ƽ�� ����  ','78�� Ŀ�´�Ƽ�� ���� ','2021-02-20',71);
insert into tblCommunity values (79,'user8','79�� Ŀ�´�Ƽ�� ����  ','79�� Ŀ�´�Ƽ�� ���� ','2021-02-25',86);
insert into tblCommunity values (80,'user65','80�� Ŀ�´�Ƽ�� ����  ','80�� Ŀ�´�Ƽ�� ���� ','2021-03-02',89);
insert into tblCommunity values (81,'user98','81�� Ŀ�´�Ƽ�� ����  ','81�� Ŀ�´�Ƽ�� ���� ','2021-03-07',90);
insert into tblCommunity values (82,'user79','82�� Ŀ�´�Ƽ�� ����  ','82�� Ŀ�´�Ƽ�� ���� ','2021-03-12',9);
insert into tblCommunity values (83,'user39','83�� Ŀ�´�Ƽ�� ����  ','83�� Ŀ�´�Ƽ�� ���� ','2021-03-17',27);
insert into tblCommunity values (84,'user8','84�� Ŀ�´�Ƽ�� ����  ','84�� Ŀ�´�Ƽ�� ���� ','2021-03-22',85);
insert into tblCommunity values (85,'user54','85�� Ŀ�´�Ƽ�� ����  ','85�� Ŀ�´�Ƽ�� ���� ','2021-03-27',2);
insert into tblCommunity values (86,'user41','86�� Ŀ�´�Ƽ�� ����  ','86�� Ŀ�´�Ƽ�� ���� ','2021-04-01',33);
insert into tblCommunity values (87,'user88','87�� Ŀ�´�Ƽ�� ����  ','87�� Ŀ�´�Ƽ�� ���� ','2021-04-06',23);
insert into tblCommunity values (88,'user78','88�� Ŀ�´�Ƽ�� ����  ','88�� Ŀ�´�Ƽ�� ���� ','2021-04-11',12);
insert into tblCommunity values (89,'user96','89�� Ŀ�´�Ƽ�� ����  ','89�� Ŀ�´�Ƽ�� ���� ','2021-04-16',4);
insert into tblCommunity values (90,'user57','90�� Ŀ�´�Ƽ�� ����  ','90�� Ŀ�´�Ƽ�� ���� ','2021-04-21',69);
insert into tblCommunity values (91,'user60','91�� Ŀ�´�Ƽ�� ����  ','91�� Ŀ�´�Ƽ�� ���� ','2021-04-26',6);
insert into tblCommunity values (92,'user21','92�� Ŀ�´�Ƽ�� ����  ','92�� Ŀ�´�Ƽ�� ���� ','2021-05-01',25);
insert into tblCommunity values (93,'user83','93�� Ŀ�´�Ƽ�� ����  ','93�� Ŀ�´�Ƽ�� ���� ','2021-05-06',56);
insert into tblCommunity values (94,'user3','94�� Ŀ�´�Ƽ�� ����  ','94�� Ŀ�´�Ƽ�� ���� ','2021-05-11',48);
insert into tblCommunity values (95,'user88','95�� Ŀ�´�Ƽ�� ����  ','95�� Ŀ�´�Ƽ�� ���� ','2021-05-16',0);
insert into tblCommunity values (96,'user47','96�� Ŀ�´�Ƽ�� ����  ','96�� Ŀ�´�Ƽ�� ���� ','2021-05-21',86);
insert into tblCommunity values (97,'user48','97�� Ŀ�´�Ƽ�� ����  ','97�� Ŀ�´�Ƽ�� ���� ','2021-05-26',34);
insert into tblCommunity values (98,'user72','98�� Ŀ�´�Ƽ�� ����  ','98�� Ŀ�´�Ƽ�� ���� ','2021-05-31',9);
insert into tblCommunity values (99,'user21','99�� Ŀ�´�Ƽ�� ����  ','99�� Ŀ�´�Ƽ�� ���� ','2021-06-05',82);
insert into tblCommunity values (100,'user66','100�� Ŀ�´�Ƽ�� ����  ','100�� Ŀ�´�Ƽ�� ���� ','2021-06-10',85);


-- Ŀ�´�Ƽ ���
CREATE TABLE tblComComment (
	comcomment_seq	NUMBER	NOT NULL,       --��� ��ȣ(PK) 
	community_seq	NUMBER	NOT NULL,       --�� ��ȣ(FK) --100
	id	VARCHAR2(100)	NOT NULL,           --�ۼ��� id(FK)
	content	VARCHAR2(4000)	NOT NULL,       --���� 20��
	regdate DATE DEFAULT sysdate NOT NULL   --�ۼ���¥ 28�� ����
); --100

CREATE SEQUENCE comcomment_seq;

ALTER TABLE tblComComment ADD CONSTRAINT tblCC_comcomment_seq_pk PRIMARY KEY(comcomment_seq);
ALTER TABLE tblComComment ADD CONSTRAINT tblCC_community_seq_fk FOREIGN KEY(community_seq) REFERENCES tblCommunity(community_seq);
ALTER TABLE tblComComment ADD CONSTRAINT tblCC_id_fk FOREIGN KEY(id) REFERENCES tblUser(id);

insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (1, 48, 'user68', '�� ���� ���ϴ�~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (2, 100, 'user47', '�� ���� ���ϴ�~', '2021-01-04');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (3, 19, 'user2', '���� ���̳׿�^^', '2021-01-06');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (4, 19, 'user55', '�� ���� ���ϴ�~', '2021-01-08');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (5, 74, 'user93', '���� ���̳׿�^^', '2021-01-10');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (6, 13, 'user40', 'ȭ�����սô�!!', '2021-01-11');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (7, 9, 'user47', '�� ���� ���ϴ�~', '2021-01-12');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (8, 100, 'user59', '���� ���̳׿�^^', '2021-01-13');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (9, 6, 'user25', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-01-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (10, 84, 'user37', '���� ���̳׿�^^', '2021-01-16');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (11, 23, 'user27', '���� ���̳׿�^^', '2021-01-17');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (12, 21, 'user52', '�� ���� ���ϴ�~', '2021-01-19');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (13, 20, 'user7', '�� ���� ���ϴ�~', '2021-01-21');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (14, 81, 'user21', '���� ���̳׿�^^', '2021-01-22');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (15, 84, 'user82', '���� ���̳׿�^^', '2021-01-23');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (16, 79, 'user90', 'ȭ�����սô�!!', '2021-01-24');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (17, 41, 'user40', '���� ���̳׿�^^', '2021-01-25');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (18, 44, 'user3', 'ȭ�����սô�!!', '2021-01-26');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (19, 94, 'user62', 'ȭ�����սô�!!', '2021-01-27');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (20, 81, 'user82', '���� ���̳׿�^^', '2021-01-29');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (21, 96, 'user92', '�� ���� ���ϴ�~', '2021-01-31');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (22, 26, 'user12', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-02-02');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (23, 18, 'user2', '�� ���� ���ϴ�~', '2021-02-04');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (24, 24, 'user19', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-02-05');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (25, 6, 'user64', '�� ���� ���ϴ�~', '2021-02-06');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (26, 51, 'user35', '�� ���� ���ϴ�~', '2021-02-07');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (27, 59, 'user72', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-02-08');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (28, 29, 'user64', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-02-10');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (29, 85, 'user36', '���� ���̳׿�^^', '2021-02-12');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (30, 57, 'user72', 'ȭ�����սô�!!', '2021-02-13');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (31, 74, 'user22', 'ȭ�����սô�!!', '2021-02-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (32, 41, 'user22', '���� ���̳׿�^^', '2021-02-16');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (33, 76, 'user53', 'ȭ�����սô�!!', '2021-02-18');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (34, 3, 'user4', 'ȭ�����սô�!!', '2021-02-19');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (35, 95, 'user75', '���� ���̳׿�^^', '2021-02-20');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (36, 47, 'user38', 'ȭ�����սô�!!', '2021-02-22');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (37, 83, 'user34', 'ȭ�����սô�!!', '2021-02-23');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (38, 78, 'user57', '�� ���� ���ϴ�~', '2021-02-24');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (39, 36, 'user97', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-02-25');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (40, 76, 'user48', '���� ���̳׿�^^', '2021-02-27');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (41, 13, 'user58', 'ȭ�����սô�!!', '2021-03-01');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (42, 15, 'user59', '�� ���� ���ϴ�~', '2021-03-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (43, 21, 'user48', '���� ���̳׿�^^', '2021-03-05');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (44, 49, 'user36', 'ȭ�����սô�!!', '2021-03-07');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (45, 4, 'user32', 'ȭ�����սô�!!', '2021-03-09');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (46, 26, 'user12', 'ȭ�����սô�!!', '2021-03-10');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (47, 77, 'user24', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-03-12');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (48, 70, 'user4', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-03-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (49, 25, 'user49', 'ȭ�����սô�!!', '2021-03-15');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (50, 3, 'user10', '�� ���� ���ϴ�~', '2021-03-17');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (51, 91, 'user42', 'ȭ�����սô�!!', '2021-03-19');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (52, 73, 'user15', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-03-20');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (53, 41, 'user56', '�� ���� ���ϴ�~', '2021-03-21');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (54, 83, 'user36', 'ȭ�����սô�!!', '2021-03-23');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (55, 65, 'user60', 'ȭ�����սô�!!', '2021-03-25');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (56, 4, 'user27', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-03-26');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (57, 97, 'user84', 'ȭ�����սô�!!', '2021-03-27');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (58, 39, 'user1', '���� ���̳׿�^^', '2021-03-28');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (59, 77, 'user99', '���� ���̳׿�^^', '2021-03-30');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (60, 69, 'user63', 'ȭ�����սô�!!', '2021-04-01');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (61, 48, 'user80', '���� ���̳׿�^^', '2021-04-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (62, 50, 'user90', 'ȭ�����սô�!!', '2021-04-05');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (63, 67, 'user7', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-04-06');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (64, 84, 'user56', '���� ���̳׿�^^', '2021-04-07');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (65, 72, 'user49', '�� ���� ���ϴ�~', '2021-04-09');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (66, 95, 'user70', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-04-11');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (67, 84, 'user30', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-04-12');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (68, 7, 'user22', 'ȭ�����սô�!!', '2021-04-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (69, 41, 'user90', '�� ���� ���ϴ�~', '2021-04-16');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (70, 88, 'user57', 'ȭ�����սô�!!', '2021-04-17');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (71, 88, 'user26', '���� ���̳׿�^^', '2021-04-18');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (72, 40, 'user8', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-04-20');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (73, 99, 'user82', '�� ���� ���ϴ�~', '2021-04-22');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (74, 87, 'user24', 'ȭ�����սô�!!', '2021-04-24');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (75, 91, 'user94', '�� ���� ���ϴ�~', '2021-04-25');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (76, 93, 'user63', 'ȭ�����սô�!!', '2021-04-26');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (77, 67, 'user67', '�� ���� ���ϴ�~', '2021-04-28');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (78, 63, 'user21', '�� ���� ���ϴ�~', '2021-04-30');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (79, 59, 'user9', '���� ���̳׿�^^', '2021-05-02');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (80, 91, 'user74', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-05-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (81, 58, 'user4', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-05-04');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (82, 79, 'user60', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-05-06');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (83, 27, 'user53', '�� ���� ���ϴ�~', '2021-05-07');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (84, 81, 'user79', '���� ���̳׿�^^', '2021-05-08');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (85, 7, 'user35', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-05-09');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (86, 17, 'user79', '�� ���� ���ϴ�~', '2021-05-11');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (87, 65, 'user36', '���� ���̳׿�^^', '2021-05-13');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (88, 84, 'user26', 'ȭ�����սô�!!', '2021-05-14');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (89, 48, 'user3', '�� ���� ���ϴ�~', '2021-05-15');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (90, 83, 'user36', '�� ���� ���ϴ�~', '2021-05-17');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (91, 60, 'user1', '���� ���̳׿�^^', '2021-05-18');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (92, 53, 'user16', '�� ���� ���ϴ�~', '2021-05-19');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (93, 60, 'user26', 'ȭ�����սô�!!', '2021-05-21');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (94, 96, 'user26', '�� ���� ���ϴ�~', '2021-05-22');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (95, 9, 'user31', '���� ���̳׿�^^', '2021-05-23');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (96, 9, 'user73', '�� ���� ���ϴ�~', '2021-05-24');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (97, 9, 'user63', '�� ���� ���ϴ�~', '2021-05-26');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (98, 59, 'user32', 'ȭ�����սô�!!', '2021-05-28');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (99, 97, 'user35', '���� ���̳׿�^^', '2021-05-30');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (100, 11, 'user70', '�� �ڷγ��� ��������� ���ڽ��ϴ�', '2021-06-01');


-- Ŀ�´�Ƽ �̹���
CREATE TABLE tblCommunityImage (
	community_img_seq	NUMBER	NOT NULL,   --�̹�����ȣ(PK)
	community_seq	NUMBER	NOT NULL,       --�۹�ȣ(FK)
	path	VARCHAR2(4000)	NOT NULL        --�̹������
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


-- ����
CREATE TABLE tblBid (
	bid_seq	NUMBER	NOT NULL,
	id	VARCHAR2(100)	NOT NULL,
	product_seq	NUMBER	NOT NULL, --160
	price	NUMBER	NOT NULL, -- 1000~100000
	time	DATE	DEFAULT sysdate NOT NULL
); --¦�� ��� , Ȧ�� �Ϲ�

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



--��ǰ�̹���
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



--��ǰ�˻�
CREATE TABLE tblSearch (
	search_seq	number	NOT NULL,
	keyword	varchar2(90)	NOT NULL, --�˾Ƽ�
	time date DEFAULT sysdate	NOT NULL
);--100��
CREATE SEQUENCE search_seq;

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (1, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (2, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (3, '����', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (4, '����', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (5, '�ڵ���', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (6, 'TV', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (7, '����', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (8, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (9, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (10, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (11, '�ڵ���', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (12, 'TV', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (13, '����', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (14, '����', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (15, '����', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (16, '����', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (17, '�ڵ���', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (18, 'TV', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (19, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (20, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (21, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (22, '��Ʈ��', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (23, 'å��', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (24, '����', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (25, '�ڵ���', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (26, 'TV', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (27, '����', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (28, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (29, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (30, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (31, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (32, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (33, '��Ʈ��', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (34, 'å��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (35, '����', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (36, '�ڵ���', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (37, 'TV', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (38, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (39, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (40, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (41, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (42, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (43, '����', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (44, '��Ʈ��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (45, 'å��', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (46, '����', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (47, '�ڵ���', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (48, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (49, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (50, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (51, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (52, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (53, '��Ʈ��', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (54, 'å��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (55, '����', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (56, '�ڵ���', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (57, 'TV', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (58, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (59, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (60, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (61, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (62, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (63, '����', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (64, '��Ʈ��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (65, 'å��', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (66, '����', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (67, '�ڵ���', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (68, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (69, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (70, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (71, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (72, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (73, '��Ʈ��', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (74, 'å��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (75, '����', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (76, '�ڵ���', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (77, 'TV', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (78, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (79, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (80, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (81, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (82, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (83, '����', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (84, '��Ʈ��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (85, 'å��', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (86, '����', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (87, '�ڵ���', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (88, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (89, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (90, '����', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (91, '����', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (92, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (93, '��Ʈ��', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (94, 'å��', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (95, '����', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (96, '�ڵ���', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (97, 'TV', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (98, '����', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (99, '����', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLSEARCH (SEARCH_SEQ, KEYWORD, TIME) 
VALUES (100, '����', to_date('09/09/2021', 'MM/DD/RRRR'));



--�޽���
CREATE TABLE tblMessage (
	message_seq	number NOT NULL,
	sender_id	VARCHAR2(100) NOT NULL, --fk
	receiver_id	VARCHAR2(100) NOT NULL, --fk
	content	varchar2(4000) NOT NULL, -- 10��
	sendtime DATE DEFAULT sysdate NOT NULL,
	is_check CHAR(1) NOT NULL --
); --100
CREATE SEQUENCE message_seq;


INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (1, 'user1', 'user2', '�ȳ��ϼ���1', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (2, 'user2', 'user3', '�ȳ��ϼ���2', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (3, 'user3', 'user4', '�ȳ��ϼ���3', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (4, 'user4', 'user5', '�ȳ��ϼ���4', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (5, 'user5', 'user6', '�ȳ��ϼ���5', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (6, 'user6', 'user7', '�ȳ��ϼ���6', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (7, 'user7', 'user8', '�ȳ��ϼ���7', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (8, 'user8', 'user9', '�ȳ��ϼ���8', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (9, 'user9', 'user10', '�ȳ��ϼ���9', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (10, 'user10', 'user11', '�ȳ��ϼ���10', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (11, 'user11', 'user12', '�ȳ��ϼ���11', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (12, 'user12', 'user13', '�ȳ��ϼ���12', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (13, 'user13', 'user14', '�ȳ��ϼ���13', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (14, 'user14', 'user15', '�ȳ��ϼ���14', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (15, 'user15', 'user16', '�ȳ��ϼ���15', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (16, 'user16', 'user17', '�ȳ��ϼ���16', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (17, 'user17', 'user18', '�ȳ��ϼ���17', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (18, 'user18', 'user19', '�ȳ��ϼ���18', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (19, 'user19', 'user20', '�ȳ��ϼ���19', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (20, 'user20', 'user21', '�ȳ��ϼ���20', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (21, 'user21', 'user22', '�ȳ��ϼ���21', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (22, 'user22', 'user23', '�ȳ��ϼ���22', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (23, 'user23', 'user24', '�ȳ��ϼ���23', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (24, 'user24', 'user25', '�ȳ��ϼ���24', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (25, 'user25', 'user26', '�ȳ��ϼ���25', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (26, 'user26', 'user27', '�ȳ��ϼ���26', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (27, 'user27', 'user28', '�ȳ��ϼ���27', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (28, 'user28', 'user29', '�ȳ��ϼ���28', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (29, 'user29', 'user30', '�ȳ��ϼ���29', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (30, 'user30', 'user31', '�ȳ��ϼ���30', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (31, 'user31', 'user32', '�ȳ��ϼ���31', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (32, 'user32', 'user33', '�ȳ��ϼ���32', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (33, 'user33', 'user34', '�ȳ��ϼ���33', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (34, 'user34', 'user35', '�ȳ��ϼ���34', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (35, 'user35', 'user36', '�ȳ��ϼ���35', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (36, 'user36', 'user37', '�ȳ��ϼ���36', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (37, 'user37', 'user38', '�ȳ��ϼ���37', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (38, 'user38', 'user39', '�ȳ��ϼ���38', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (39, 'user39', 'user40', '�ȳ��ϼ���39', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (40, 'user40', 'user41', '�ȳ��ϼ���40', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (41, 'user41', 'user42', '�ȳ��ϼ���41', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (42, 'user42', 'user43', '�ȳ��ϼ���42', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (43, 'user43', 'user44', '�ȳ��ϼ���43', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (44, 'user44', 'user45', '�ȳ��ϼ���44', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (45, 'user45', 'user46', '�ȳ��ϼ���45', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (46, 'user46', 'user47', '�ȳ��ϼ���46', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (47, 'user47', 'user48', '�ȳ��ϼ���47', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (48, 'user48', 'user49', '�ȳ��ϼ���48', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (49, 'user49', 'user50', '�ȳ��ϼ���49', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (50, 'user50', 'user51', '�ȳ��ϼ���50', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (51, 'user51', 'user52', '�ȳ��ϼ���51', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (52, 'user52', 'user53', '�ȳ��ϼ���52', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (53, 'user53', 'user54', '�ȳ��ϼ���53', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (54, 'user54', 'user55', '�ȳ��ϼ���54', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (55, 'user55', 'user56', '�ȳ��ϼ���55', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (56, 'user56', 'user57', '�ȳ��ϼ���56', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (57, 'user57', 'user58', '�ȳ��ϼ���57', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (58, 'user58', 'user59', '�ȳ��ϼ���58', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (59, 'user59', 'user60', '�ȳ��ϼ���59', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (60, 'user60', 'user61', '�ȳ��ϼ���60', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (61, 'user61', 'user62', '�ȳ��ϼ���61', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (62, 'user62', 'user63', '�ȳ��ϼ���62', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (63, 'user63', 'user64', '�ȳ��ϼ���63', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (64, 'user64', 'user65', '�ȳ��ϼ���64', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (65, 'user65', 'user66', '�ȳ��ϼ���65', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (66, 'user66', 'user67', '�ȳ��ϼ���66', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (67, 'user67', 'user68', '�ȳ��ϼ���67', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (68, 'user68', 'user69', '�ȳ��ϼ���68', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (69, 'user69', 'user70', '�ȳ��ϼ���69', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (70, 'user70', 'user71', '�ȳ��ϼ���70', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (71, 'user71', 'user72', '�ȳ��ϼ���71', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (72, 'user72', 'user73', '�ȳ��ϼ���72', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (73, 'user73', 'user74', '�ȳ��ϼ���73', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (74, 'user74', 'user75', '�ȳ��ϼ���74', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (75, 'user75', 'user76', '�ȳ��ϼ���75', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (76, 'user76', 'user77', '�ȳ��ϼ���76', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (77, 'user77', 'user78', '�ȳ��ϼ���77', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (78, 'user78', 'user79', '�ȳ��ϼ���78', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (79, 'user79', 'user80', '�ȳ��ϼ���79', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (80, 'user80', 'user81', '�ȳ��ϼ���80', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (81, 'user81', 'user82', '�ȳ��ϼ���81', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (82, 'user82', 'user83', '�ȳ��ϼ���82', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (83, 'user83', 'user84', '�ȳ��ϼ���83', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (84, 'user84', 'user85', '�ȳ��ϼ���84', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (85, 'user85', 'user86', '�ȳ��ϼ���85', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (86, 'user86', 'user87', '�ȳ��ϼ���86', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (87, 'user87', 'user88', '�ȳ��ϼ���87', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (88, 'user88', 'user89', '�ȳ��ϼ���88', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (89, 'user89', 'user90', '�ȳ��ϼ���89', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (90, 'user90', 'user91', '�ȳ��ϼ���90', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (91, 'user91', 'user92', '�ȳ��ϼ���91', to_date('12/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (92, 'user92', 'user93', '�ȳ��ϼ���92', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (93, 'user93', 'user94', '�ȳ��ϼ���93', to_date('11/03/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (94, 'user94', 'user95', '�ȳ��ϼ���94', to_date('10/10/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (95, 'user95', 'user96', '�ȳ��ϼ���95', to_date('05/06/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (96, 'user96', 'user97', '�ȳ��ϼ���96', to_date('07/12/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (97, 'user97', 'user98', '�ȳ��ϼ���97', to_date('12/28/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (98, 'user98', 'user99', '�ȳ��ϼ���98', to_date('12/20/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (99, 'user99', 'user100', '�ȳ��ϼ���99', to_date('11/13/2021', 'MM/DD/RRRR'), 'Y');

INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (100, 'user100', 'user1', '�ȳ��ϼ���100', to_date('09/09/2021', 'MM/DD/RRRR'), 'Y');



--���������̹���
CREATE TABLE tblNoticeImg (
	notice_img_seq	NUMBER	NOT NULL,
	notice_seq	number	NOT NULL,
	path varchar2(4000)	NOT NULL
); --���߿�
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



--��ǰ���
CREATE TABLE tblProductComment (
	product_comment_seq	NUMBER NOT NULL,
	product_seq	NUMBER NOT NULL,
	id VARCHAR2(100) NOT NULL,
	comments VARCHAR2(4000) NOT NULL, --100��
	time DATE DEFAULT sysdate NOT NULL 
); --100��
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
VALUES (1, 1, 'user1', '�����մϴ�1', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (2, 2, 'user2', '�����մϴ�2', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (3, 3, 'user3', '�����մϴ�3', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (4, 4, 'user4', '�����մϴ�4', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (5, 5, 'user5', '�����մϴ�5', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (6, 6, 'user6', '�����մϴ�6', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (7, 7, 'user7', '�����մϴ�7', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (8, 8, 'user8', '�����մϴ�8', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (9, 9, 'user9', '�����մϴ�9', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (10, 10, 'user10', '�����մϴ�10', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (11, 11, 'user11', '�����մϴ�11', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (12, 12, 'user12', '�����մϴ�12', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (13, 13, 'user13', '�����մϴ�13', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (14, 14, 'user14', '�����մϴ�14', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (15, 15, 'user15', '�����մϴ�15', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (16, 16, 'user16', '�����մϴ�16', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (17, 17, 'user17', '�����մϴ�17', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (18, 18, 'user18', '�����մϴ�18', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (19, 19, 'user19', '�����մϴ�19', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (20, 20, 'user20', '�����մϴ�20', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (21, 21, 'user21', '�����մϴ�21', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (22, 22, 'user22', '�����մϴ�22', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (23, 23, 'user23', '�����մϴ�23', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (24, 24, 'user24', '�����մϴ�24', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (25, 25, 'user25', '�����մϴ�25', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (26, 26, 'user26', '�����մϴ�26', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (27, 27, 'user27', '�����մϴ�27', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (28, 28, 'user28', '�����մϴ�28', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (29, 29, 'user29', '�����մϴ�29', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (30, 30, 'user30', '�����մϴ�30', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (31, 31, 'user31', '�����մϴ�31', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (32, 32, 'user32', '�����մϴ�32', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (33, 33, 'user33', '�����մϴ�33', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (34, 34, 'user34', '�����մϴ�34', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (35, 35, 'user35', '�����մϴ�35', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (36, 36, 'user36', '�����մϴ�36', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (37, 37, 'user37', '�����մϴ�37', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (38, 38, 'user38', '�����մϴ�38', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (39, 39, 'user39', '�����մϴ�39', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (40, 40, 'user40', '�����մϴ�40', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (41, 41, 'user41', '�����մϴ�41', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (42, 42, 'user42', '�����մϴ�42', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (43, 43, 'user43', '�����մϴ�43', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (44, 44, 'user44', '�����մϴ�44', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (45, 45, 'user45', '�����մϴ�45', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (46, 46, 'user46', '�����մϴ�46', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (47, 47, 'user47', '�����մϴ�47', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (48, 48, 'user48', '�����մϴ�48', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (49, 49, 'user49', '�����մϴ�49', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (50, 50, 'user50', '�����մϴ�50', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (51, 51, 'user51', '�����մϴ�51', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (52, 52, 'user52', '�����մϴ�52', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (53, 53, 'user53', '�����մϴ�53', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (54, 54, 'user54', '�����մϴ�54', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (55, 55, 'user55', '�����մϴ�55', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (56, 56, 'user56', '�����մϴ�56', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (57, 57, 'user57', '�����մϴ�57', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (58, 58, 'user58', '�����մϴ�58', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (59, 59, 'user59', '�����մϴ�59', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (60, 60, 'user60', '�����մϴ�60', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (61, 61, 'user61', '�����մϴ�61', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (62, 62, 'user62', '�����մϴ�62', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (63, 63, 'user63', '�����մϴ�63', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (64, 64, 'user64', '�����մϴ�64', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (65, 65, 'user65', '�����մϴ�65', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (66, 66, 'user66', '�����մϴ�66', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (67, 67, 'user67', '�����մϴ�67', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (68, 68, 'user68', '�����մϴ�68', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (69, 69, 'user69', '�����մϴ�69', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (70, 70, 'user70', '�����մϴ�70', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (71, 71, 'user71', '�����մϴ�71', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (72, 72, 'user72', '�����մϴ�72', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (73, 73, 'user73', '�����մϴ�73', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (74, 74, 'user74', '�����մϴ�74', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (75, 75, 'user75', '�����մϴ�75', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (76, 76, 'user76', '�����մϴ�76', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (77, 77, 'user77', '�����մϴ�77', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (78, 78, 'user78', '�����մϴ�78', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (79, 79, 'user79', '�����մϴ�79', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (80, 80, 'user80', '�����մϴ�80', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (81, 81, 'user81', '�����մϴ�81', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (82, 82, 'user82', '�����մϴ�82', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (83, 83, 'user83', '�����մϴ�83', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (84, 84, 'user84', '�����մϴ�84', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (85, 85, 'user85', '�����մϴ�85', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (86, 86, 'user86', '�����մϴ�86', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (87, 87, 'user87', '�����մϴ�87', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (88, 88, 'user88', '�����մϴ�88', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (89, 89, 'user89', '�����մϴ�89', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (90, 90, 'user90', '�����մϴ�90', to_date('09/09/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (91, 91, 'user91', '�����մϴ�91', to_date('12/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (92, 92, 'user92', '�����մϴ�92', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (93, 93, 'user93', '�����մϴ�93', to_date('11/03/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (94, 94, 'user94', '�����մϴ�94', to_date('10/10/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (95, 95, 'user95', '�����մϴ�95', to_date('05/06/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (96, 96, 'user96', '�����մϴ�96', to_date('07/12/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (97, 97, 'user97', '�����մϴ�97', to_date('12/28/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (98, 98, 'user98', '�����մϴ�98', to_date('12/20/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (99, 99, 'user99', '�����մϴ�99', to_date('11/13/2021', 'MM/DD/RRRR'));

INSERT INTO TBLPRODUCTCOMMENT (PRODUCT_COMMENT_SEQ, PRODUCT_SEQ, ID, COMMENTS, TIME) 
VALUES (100, 100, 'user100', '�����մϴ�100', to_date('09/09/2021', 'MM/DD/RRRR'));




-- ���� ���̺�
CREATE TABLE tblvisit (
	regdate	DATE DEFAULT sysdate NOT NULL,--2020~
	COUNT NUMBER DEFAULT 0 NOT NULL --1000~5000
); --100
ALTER TABLE tblvisit ADD CONSTRAINT tblv_regdate_pk PRIMARY KEY (regdate);
-- ���� ���̺�

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


--���ֹ�������
CREATE SEQUENCE faq_seq;
CREATE TABLE tblfaq (
	faq_seq	NUMBER NOT NULL,
	question_type_seq NUMBER NOT NULL, --5
	title VARCHAR2(100) NOT NULL, --20��
	CONTENTS VARCHAR2(4000)	NOT NULL --200��
);  --100��
ALTER TABLE tblfaq ADD CONSTRAINT tblf_faq_seq_pk PRIMARY KEY (faq_seq);
ALTER TABLE tblfaq ADD CONSTRAINT tblf_question_type_seq_fk FOREIGN KEY (question_type_seq)
    REFERENCES tblquestiontype (question_type_seq);
--���ֹ�������
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[����ó��] ����ó�������� ��� �ǳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[����ó��] ����ó�������� ��� �ǳ���?','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[ȸ������] ������ ���̵� �̹� �����Ѵٰ� ���ɴϴ�.','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[ȸ������] ������ ���̵� �̹� �����Ѵٰ� ���ɴϴ�.','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[����ó��] ����ó�������� ��� �ǳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[����ó��] ����ó�������� ��� �ǳ���?','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[����ó��] ����ó�������� ��� �ǳ���?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[ȸ������] ������ ���̵� �̹� �����Ѵٰ� ���ɴϴ�.','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[����ó��] ����ó�������� ��� �ǳ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[ȸ������] ������ ���̵� �̹� �����Ѵٰ� ���ɴϴ�.','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[ȸ������] ������ ���̵� �̹� �����Ѵٰ� ���ɴϴ�.','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[����ó��] ����ó�������� ��� �ǳ���?','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȸ������] ������ ���̵� �̹� �����Ѵٰ� ���ɴϴ�.','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�ֹ�] ����糭�������� ���ο��� ��� �����Ѱ���?',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','�ƴϿ�, ����糭�������� �¶��� ��ŷ����� ����� �� ������, ���ο����� ����� �������� �ʽ��ϴ�,');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[�������] �ֹ��� ��ǰ�� ���� ��۵ǳ��� ?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[�������] ������� ��ǰ�� ��ġ�� �˰� �;��.','�α��� �� ���������� �ϸ� ���ο� ȯ�濡�� �α��� �� ���� �� �� �־� ������ ������ ��ȣ�� �� �ֽ��ϴ�.



���� �� ������ȣ�� ���� �Ǵ� �̸��Ϸ� ���۵˴ϴ�.

���� �̸��Ϸ� ��û�� �� ���� ��ȣ�� ���� ���ϼ̴ٸ�

�������� ���� �������� �Ʒ� �̸��� �ּҷ� ���� �̸����� �ִ� �� Ȯ���� �ֽʽÿ�.

- noreply@coupang.com

- noreply@e.coupang.com');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,4,'[����ó��] ����ó�������� ��� �ǳ���?','�������ο��� ���� ������ ��� ��Ȳ Ȯ���� �����մϴ�. 

��ۿ�����, ��۽��� �޼����� ���� �� �˸�����(App push)���� Ȯ���Ͻ� �� �ֽ��ϴ�');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','�� ���� ���񽺿� ���� ���� ���� �ð��� ���� ������ �� �ֽ��ϴ�.
������ �������� ���� ��� ���Ը������� Ȯ���� ���ðų� ������ ���� �ּҰ� ���� ���ܵǾ� ���� ���� �� Ȯ���� �ֽñ� �ٶ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.','������ ������ ���������� [�������� ��޹�ħ] ���� ������ ���� ������ ����ϸ� ������ ������ �ʰ��Ͽ� �̿��ϰų�, Ÿ�� �Ǵ� Ÿ���, ����� �������� �ʽ��ϴ�.

�� ���� ȸ�� ���̵�� ��й�ȣ�� �ҹ� ���� �� ȸ�������� ������ ���ذ� �߻��� ��쿡�� �ٷ� ���� ������(��1577-7011) �Ǵ� ����� �� [������> ä�ù���]�� ���� ���� ������ �˷��ֽñ� �ٶ��ϴ�. 

�� ���������� �����Ͽ� ������ �ִ� ��쿡�� 2�� �ο�ó�� ����� ����������ȣ�����(KISA)�� ��������������������ȸ�� �������� �ο���û�� �Ͻ� �� �ֽ��ϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[ȸ������] ���������� ���õ� ���ظ� ���� ��� ��� �ϳ���?','������ ���ο� ����� �޴��� ��ȣ�� ���� ����Ͻô� �޴��� ��ȣ�� �ٸ� ��� ������ȣ�� ���� ���� �� �ֽ��ϴ�.

���� ������(1577-7011)�� �����Ͽ� ��ȣ������ ��û���ֽñ� �ٶ��ϴ�.



�Ǵ� ���� ������ ��ȣ(1577-7011)�� ���Űź� �Ǿ��ִ��� Ȯ���� �ֽʽÿ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] ����Ȯ���� �ϴµ� ������ȣ�� ���� �ʽ��ϴ�.',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,1,'[ȯ��] �ٸ� ��� ������ ���·� ȯ�ҹ��� �� �ֳ���?','�ֹ��Ͻ� ��ǰ�� �����Ϸ� �� �ȳ��� ��ۿ����ϱ��� ��۵˴ϴ�. 
��ۿ������� �Ǹ��� �� ������� ���� ���̰� ���� �� �ֽ��ϴ�.
����, �����갣 ���� ��� Ȥ�� õ���������� ���� ��������� ������ �� �ֽ��ϴ�.

�� ��ۿ����� Ȯ���ϱ� (�ֹ� ��)
1. ��ǰ������: ��ǰ��� ���� �ϴܿ� ǥ��
2. ��ٱ���: ��ǰ�̹��� ����
3. �ֹ�/���� ������: ��ǰ������ ǥ��');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,2,'[��й�ȣ] ��й�ȣ �缳�� ������ ���� �ʾҾ��.',' �� ������ ���� ������ �ǰ��̳� �Ҹ��� �����ϴ� ��� �� ��û�� ���� ���κ��� ���� �Ҹ� ���� ���� �����Ͽ� ����(������) ���� 3�� �̳��� ���� ����� ������ �����Ͽ��� �ϰ�, ����(������) ���� 10�� �̳��� ���� ��� �Ǵ� ó�� ����� ������ �˷��� �մϴ�.

  �� ���� ��1���� ����ó�� ����� ���Ͽ� ���ǰ� ���� ������ ������ ó�����͸� ���Ͽ� ���Ǹ� ������ �� ������, �� ���ǰ� �޾Ƶ鿩���� ���� ������ �Һ��ں�����������ȸ�� �������� ��û�� �� �� �ֽ��ϴ�.

  �� ������ �����κ��� ��ȭ, FAX, E-mail, ����Ʈ �Խ���, �� ���� ���� ������ �ǰ��̳� �Ҹ��� ���� �� ������, �̿� ���� ������ ��û�������� ����, ó�� ������� ���� ���ϴ� ������� �̷������ �մϴ�.

  �� ������ ��3���� �������� �Ҹ� ���� ���� ���� ��� ��������� ���� ���� ������� �����ϰ� ��ü���� ��ǰ��踦 �ľ��Ͽ� ������ ���ذ� �߻��Ͽ����� ���� ���� Ȯ���� �ڿ� ó�� ����� �����մϴ�.

  �� ������ �����ǿ� ���Ͽ� ���� ����Ʈ, ��å, ���� ���� �����ϵ��� ����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[����ó��] ����ó�������� ��� �ǳ���?','���� ���� ������ ���·θ� ȯ���� �����մϴ�.');
insert into tblFaq(faq_seq,question_type_seq,title,contents) values (faq_seq.nextval,3,'[��������] �α��� �� �� �޴���/�̸��� ���� ������ �ؾ� �ϳ���?','	
�������� �õ� �� "ȸ���� ���Ƿ� ������ ���̵� �̹� �����մϴ�."�� �ȳ��Ǵ� ���, 
������ ������ �̹� ���Ե� �ٸ� ���̵� �����ϴ� ���̱� ������ ���� ���������� ���� �� �����ϴ�. 
�̹� ���Ե� ���̵� ������ֽð�, ��й�ȣ�� �𸣽ô� ��� �α��� â���� ��й�ȣ ã�� �� �̿����ּ���.
');



--ȸ�� ������
CREATE TABLE tbluserprofile (
	ID VARCHAR2(100) NOT NULL,-- �ĺ� 
	nickname VARCHAR2(45) NOT NULL, --�ѱ� 15��, ���� 45��
	intro VARCHAR2(300) NOT NULL, --30
	PATH VARCHAR2(4000) NOT NULL --profileimg1~100?
); --100�� ���߿�
ALTER TABLE tbluserprofile ADD CONSTRAINT tblup_id_pk PRIMARY KEY (ID);
ALTER TABLE tbluserprofile ADD CONSTRAINT tblup_nickname_unique UNIQUE(nickname);
ALTER TABLE tbluserprofile ADD CONSTRAINT tblup_id_fk FOREIGN KEY (ID)
    REFERENCES tbluser (ID);

insert into tblUserProfile(id,nickname,intro,path) values ('user1','nickname1','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user2','nickname2','�ȳ��ϼ���.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user3','nickname3','���� �������� �Դϴ�.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user4','nickname4','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user5','nickname5','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user6','nickname6','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user7','nickname7','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user8','nickname8','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user9','nickname9','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user10','nickname10','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user11','nickname11','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user12','nickname12','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user13','nickname13','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user14','nickname14','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user15','nickname15','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user16','nickname16','�ȳ��ϼ���.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user17','nickname17','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user18','nickname18','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user19','nickname19','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user20','nickname20','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user21','nickname21','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user22','nickname22','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user23','nickname23','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user24','nickname24','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user25','nickname25','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user26','nickname26','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user27','nickname27','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user28','nickname28','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user29','nickname29','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user30','nickname30','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user31','nickname31','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user32','nickname32','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user33','nickname33','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user34','nickname34','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user35','nickname35','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user36','nickname36','���� �������� �Դϴ�.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user37','nickname37','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user38','nickname38','�ݰ�����!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user39','nickname39','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user40','nickname40','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user41','nickname41','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user42','nickname42','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user43','nickname43','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user44','nickname44','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user45','nickname45','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user46','nickname46','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user47','nickname47','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user48','nickname48','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user49','nickname49','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user50','nickname50','�ȳ��ϼ���.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user51','nickname51','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user52','nickname52','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user53','nickname53','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user54','nickname54','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user55','nickname55','�ݰ�����!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user56','nickname56','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user57','nickname57','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user58','nickname58','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user59','nickname59','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user60','nickname60','�ȳ��ϼ���.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user61','nickname61','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user62','nickname62','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user63','nickname63','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user64','nickname64','�ȳ��ϼ���.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user65','nickname65','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user66','nickname66','�ݰ�����!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user67','nickname67','���� �������� �Դϴ�.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user68','nickname68','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user69','nickname69','�ݰ�����!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user70','nickname70','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user71','nickname71','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user72','nickname72','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user73','nickname73','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user74','nickname74','�ݰ�����!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user75','nickname75','���� �������� �Դϴ�.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user76','nickname76','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user77','nickname77','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user78','nickname78','���� ��û ���� �� �ſ���','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user79','nickname79','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user80','nickname80','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user81','nickname81','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user82','nickname82','���� �������� �Դϴ�.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user83','nickname83','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user84','nickname84','�ݰ�����!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user85','nickname85','���� �������� �Դϴ�.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user86','nickname86','6������ �ȷο� 500�� ���, ���̵���� �¸�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user87','nickname87','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user88','nickname88','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user89','nickname89','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user90','nickname90','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user91','nickname91','�ȳ��ϼ���.','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user92','nickname92','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user93','nickname93','���ο� ���� ��� ������� �������� 1�� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user94','nickname94','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user95','nickname95','�� ���÷��� 50�ǿ� ��ó�ϸ� Ű�� ������� �ɷ�','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user96','nickname96','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user97','nickname97','��ǥ�� �޼��ϱ� ���� ������ 3�ܰ� ���� ��ȹ','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user98','nickname98','���� �Ǹ� ������ ���ƿ�!','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user99','nickname99','�� ���� ������ ���� �� ���� ���� �ִ� ����','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('user100','nickname100','2�Ⱓ 20�� ���⿡ �⿩�� ������','default image.jpg');


-- �ŷ� ����

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

>>>>>>> refs/heads/master
commit;