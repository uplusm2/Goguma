update tbluserprofile set intro = '진짜 난 고구마야' , nickname ='고구고구고구마마마마ㅇ' , path = 'KakaoTalk_20220104_0145524694.jpg' where id ='user100';

select * from tbluserprofile;

Drop view VWRECEIVED_SELLER_REVIEWS;
CREATE OR REPLACE VIEW VWRECEIVED_SELLER_REVIEWS
    AS 
select --selid와 userid랑 매칭하면 user가 물건 판매 후 구매자에게 받은 후기를 확인할 수 있음.
    tblproduct.PRODUCT_SEQ
    ,tblproduct.id as selId
    ,tbldeal.id as buyid
    ,'[ 제목 : '||tblproduct.name||']'|| tblproduct.content as productcontent
    ,tbldeal.regdate 
    ,tblreview.score 
    ,tblreview.content as reviewcontent
from tblproduct
        inner join tbldeal on tblproduct.product_seq = tbldeal.product_seq
        inner join tblreview on tblreview.DEAL_SEQ = tbldeal.DEAL_SEQ
where tblreview.type = 'B';


Drop view VWRECEIVED_BUYER_REVIEWS;
CREATE OR REPLACE VIEW VWRECEIVED_BUYER_REVIEWS
AS 
select -- buyid 와 userid를 매칭하면 user가 물건 구매 후 판매자에게 받은 후기를 확인할 수 있음.
    tblproduct.PRODUCT_SEQ
    ,tbldeal.id as buyid
    ,tblproduct.id as selid
    ,'[ 제목 : '||tblproduct.name||']'|| tblproduct.content as productcontent
    ,tbldeal.regdate 
    ,tblreview.score 
    ,tblreview.content as reviewcontent
from tbldeal 
    inner join tblreview on tblreview.deal_seq = tbldeal.deal_seq
    inner join tblproduct on tblproduct.product_seq = tbldeal.product_seq
where tblreview.type='S';


CREATE OR REPLACE VIEW VWPURCHASEDPRODUCT
AS 
select --구매완료된 상품 
tblproduct.product_seq 
,'['||tblproduct.name||']'||tblproduct.content as content
, tbluserprofile.nickname
, tbldeal.id as id
, tblproduct.id as selid
, tbldeal.deal_seq
, tbldeal.REGDATE
from tblproduct 
inner join tbldeal on tblproduct.product_seq = tbldeal.product_seq
inner join tbluserprofile on tbluserprofile.id = tblproduct.id;


CREATE OR REPLACE VIEW VWPRODUCTSOLD
AS 
select --판매한상품
tblproduct.product_seq 
,'['||tblproduct.name||']'||tblproduct.content as content
, tbluserprofile.nickname
, tblproduct.id as id
, tbldeal.id as buyid
, tbldeal.deal_seq
, tbldeal.REGDATE
from tblproduct 
inner join tbldeal on tblproduct.product_seq = tbldeal.product_seq
inner join tbluserprofile on tbluserprofile.id = tblproduct.id order by REGDATE;

select * from vwproductsold where id = 'user1';

select * from VWPURCHASEDPRODUCT where id = 'user17';


select -- 판매한것
    *
 from(select a.*,rownum as rnum from(select * from vwproductsold where id = 'user1' order by regdate) a) a
             left outer join tblreview re on a.DEAL_SEQ = re.deal_seq;

select * from(select a.* , rownum as rnum from( select * from (vwproductsold p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)
where id = 'user1' order by p.regdate) a) where rnum between 1 and 1000; -- 판매한것;

      
      
select -- 구매한것
    *
 from(select a.*,rownum as rnum from(select * from VWPURCHASEDPRODUCT where id = 'user17' order by regdate) a) a
             left outer join tblreview re on a.DEAL_SEQ = re.deal_seq;

select * from(select a.* , rownum as rnum from( select * from (VWPURCHASEDPRODUCT p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)
where id = 'user17' order by p.regdate) a) where rnum between 1 and 1000; -- 구매한것;     
      
      
      
select avg(SCORE) as avg , count(score) as cnt from vwReceived_seller_reviews where selid = 'user17';     
      
      
      
select * from tblreview;   

insert into tbldeal_seq(type , deal_seq , score , content ) values (?,?,?,?);
      
select * from(select a.* , rownum as rnum from( select * from (vwproductsold p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)
				where id = 'user1' order by p.regdate) a) where rnum between 1 and 100  and type = 'B' or type is null  ;    
      

select 
    v.id
    ,v.name
    ,v.nickname
    ,case when tbluserinfo.gender = 'm' then '남성'
          when tbluserinfo.gender = 'f' then '여성'
          end as gender
    ,v.tel,v.email
    ,v.address
    ,TO_CHAR(v.birth, 'YYYY-MM-DD') as birth
from vwuserall v inner join tbluserinfo on v.id = tbluserinfo.id 
    where v.id='user1';      
-- 회원 데이터 확인용     
             

insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'UI 불만');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'서버 불만');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'판매자가 너무 없어요.');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'타 사이트 이용');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'개인 사유');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'구매자가 너무 없어요.');
insert into tblWithdrawType(withdraw_type_seq,type) values (withdrawtype_seq.nextVal,'기타');

update tblWithdrawType set type = '이용자 부족' where type = '구매자가 너무 없어요.';

select * from tblWithdrawType;
commit;

delete from tblWithdrawType where type = '판매자가 너무 없어요.';

select * from v$resource_limit where resource_name = 'processes';
alter system set processes=300 scope=spfile;


select count(*) from(select a.*,rownum as num from( select * from tblproduct where id = 'user100' order by regdate desc) a);
select * from(select a.*,rownum as rnum from( select * from tblproduct where id = 'user100' order by regdate desc) a) where rnum between 1 and 3;
select * from(select a.*,rownum as rnum from( select * from tblproduct where id = ? order by regdate desc) a) where rnum between ? and ?;




create or replace Trigger Trgreview
after insert on tbldeal
for each row
begin
insert into tblReview values ('S',:NEW.deal_seq, 10,'null');
insert into tblReview values ('B',:NEW.deal_seq, 10,'null');
commit;
end;


update tblReview set score= ?,content=? where type=? and deal_seq=?
insert into tblDeal (deal_seq, id, product_seq, price, regdate) values (deal_seq.nextVal, 'user53', 162, 197000, '2020-01-14');

select * from tblreview;



select * from VWPURCHASEDPRODUCT;


select 
    * 
from(select a.* , rownum as rnum from( select * from (VWPURCHASEDPRODUCT p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)
		 where type = 'B' order by p.regdate) a);
         
         
select 
     *
from(select a.* , rownum as rnum from( select 
p.Product_seq,p.content,p.nickname,p.id,p.selid,p.regdate,re.deal_seq,re.type,re.CONTENT as review
from (VWPURCHASEDPRODUCT p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)
		 where type = 'B' order by p.regdate) a) where rnum between 1 and 100;

select * from VWPURCHASEDPRODUCT;

select * from vwproductsold;



select 
     *
from(select a.* , rownum as rnum from( select 
p.Product_seq,p.content,p.nickname,p.id,p.BUYID,p.regdate,re.type,re.deal_seq,re.CONTENT as review
from (vwproductsold p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)
		 where type = 'S' order by p.regdate) a) where rnum between 1 and 100;





select * from vwReceived_seller_reviews where selid;











--------------------------------------------------------
--  DDL for View VWNEWPRODUCT
--------------------------------------------------------

  CREATE OR REPLACE VWNEWPRODUCT  AS 
  select
    p."PRODUCT_SEQ",p."ID",p."ADDRESS_SEQ",p."PRODUCT_TYPE_SEQ",p."NAME",p."PRICE",p."IS_AUCTION",p."CONTENT",p."REGDATE",p."IS_COMPLETION",p."READCOUNT",p."IS_DELETION",p."MAIN_IMG",
    pi.path as img_path,
    (sysdate - regdate) as interval
from tblProduct p inner join tblProductImage pi
on (p.product_seq = pi.product_seq)
where is_completion = 'n'
;
create or replace view vwUserAll
as
select 
    u.id as id,
    u.password as password,
    u.user_level as lv,
    ui.name as name,
    up.nickname as nickname,
    ui.tel as tel,
    ui.email as email,
    a.sido  ' '  a.sgg  ' '  a.emd  ' '  ui.address as address,
    ui.birth as birth,
    ui.since as since,
    (nvl(sr.score, -1) + nvl(br.score, -1))/2 as score,
    up.path as path,
    CASE 
        WHEN b.id is not null THEN '차단'
        WHEN w.id is not null THEN '탈퇴'
        ELSE '정상'
    END as state
from tblUser u
    inner join tblUserInfo ui on ui.id = u.id
    left outer join tblUserProfile up on up.id = ui.id
    left outer join tblAddress a on a.address_seq = ui.address_seq
    left outer join vwSellerRate sr on sr.id = u.id
    left outer join vwBuyerRate br on br.id = u.id
    left outer join tblBlock b on b.id = u.id
    left outer join tblWithdraw w on w.id = u.id;


--------------------------------------------

create or replace view vwSellerRate
as
select
    u.id id,                        --판매자 아이디
    round(avg(r.score),1) as score  --평가 받은 점수
from tblUser u
    inner join tblProduct p on p.id = u.id
    inner join tblDeal d on d.product_seq = p.product_seq
    inner join tblReview r on r.deal_seq = d.deal_seq
where r.type = 'B'
group by u.id;
    
create or replace view vwBuyerRate
as
select 
    u.id as id,                     --구매자 아이디
    round(avg(r.score), 1) as score --평가 받은 점수
from tblUser u
    inner join tblDeal d on d.id = u.id
    inner join tblReview r on r.deal_seq = d.deal_seq
where r.type = 'S'
group by u.id;

create or replace view vwUserAll
as
select 
    u.id as id,
    u.password as password,
    u.user_level as lv,
    ui.name as name,
    up.nickname as nickname,
    ui.tel as tel,
    ui.email as email,
    a.sido || ' ' || a.sgg || ' ' || a.emd || ' ' || ui.address as address,
    ui.birth as birth,
    ui.since as since,
    (nvl(sr.score, -1) + nvl(br.score, -1))/2 as score,
    up.path as path,
    CASE 
        WHEN b.id is not null THEN '차단'
        WHEN w.id is not null THEN '탈퇴'
        ELSE '정상'
    END as state
from tblUser u
    inner join tblUserInfo ui on ui.id = u.id
    left outer join tblUserProfile up on up.id = ui.id
    left outer join tblAddress a on a.address_seq = ui.address_seq
    left outer join vwSellerRate sr on sr.id = u.id
    left outer join vwBuyerRate br on br.id = u.id
    left outer join tblBlock b on b.id = u.id
    left outer join tblWithdraw w on w.id = u.id;

create or replace view vwBlock
as
select 
    b.id as id,
    ui.name as name,
    b.regdate as regdate,
    bt.type as type
from tblBlock b
    inner join tblBlockType bt on bt.block_type_seq = b.block_type_seq
    inner join tblUserInfo ui on ui.id = b.id;


create or replace view vwWithdraw
as
select 
    w.id as id,
    ui.name as name,
    w.time as regdate,
    wt.type as type
from tblWithdraw w
    inner join tblWithdrawType wt on wt.withdraw_type_seq = w.withdraw_type_seq
    inner join tblUserInfo ui on ui.id = w.id;


create or replace view vwQuestion
as
select 
    q.question_seq,
    q.id,
    qt.type,
    q.title,
    q.regdate,
    qna.question_seq as answer_seq
from tblquestion q
    left outer join tblQuestionAndAnswer qna on qna.question_seq = q.question_seq
    inner join tblQuestionType qt on qt.question_type_seq = q.question_type_seq;


CREATE OR REPLACE VIEW VWPRODUCTSOLD
AS 
select --판매한상품
tblproduct.product_seq 
,'['||tblproduct.name||']'||tblproduct.content as content
, tbluserprofile.nickname
, tblproduct.id as id
, tbldeal.id as buyid
, tbldeal.deal_seq
, tbldeal.REGDATE
from tblproduct 
inner join tbldeal on tblproduct.product_seq = tbldeal.product_seq
inner join tbluserprofile on tbluserprofile.id = tblproduct.id order by REGDATE;


CREATE OR REPLACE VIEW VWPURCHASEDPRODUCT
AS 
select --구매완료된 상품 
tblproduct.product_seq 
,'['||tblproduct.name||']'||tblproduct.content as content
, tbluserprofile.nickname
, tbldeal.id as id
, tblproduct.id as selid
, tbldeal.deal_seq
, tbldeal.REGDATE
from tblproduct 
inner join tbldeal on tblproduct.product_seq = tbldeal.product_seq
inner join tbluserprofile on tbluserprofile.id = tblproduct.id;


CREATE OR REPLACE VIEW VWRECEIVED_BUYER_REVIEWS
AS 
select -- buyid 와 userid를 매칭하면 user가 물건 구매 후 판매자에게 받은 후기를 확인할 수 있음.
    tblproduct.PRODUCT_SEQ
    ,tbldeal.id as buyid
    ,tblproduct.id as selid
    ,'[ 제목 : '||tblproduct.name||']'|| tblproduct.content as productcontent
    ,tbldeal.regdate 
    ,tblreview.score 
    ,tblreview.content as reviewcontent
from tbldeal 
    inner join tblreview on tblreview.deal_seq = tbldeal.deal_seq
    inner join tblproduct on tblproduct.product_seq = tbldeal.product_seq
where tblreview.type='S';


CREATE OR REPLACE VIEW VWRECEIVED_SELLER_REVIEWS
    AS 
select --selid와 userid랑 매칭하면 user가 물건 판매 후 구매자에게 받은 후기를 확인할 수 있음.
    tblproduct.PRODUCT_SEQ
    ,tblproduct.id as selId
    ,tbldeal.id as buyid
    ,'[ 제목 : '||tblproduct.name||']'|| tblproduct.content as productcontent
    ,tbldeal.regdate 
    ,tblreview.score 
    ,tblreview.content as reviewcontent
from tblproduct
        inner join tbldeal on tblproduct.product_seq = tbldeal.product_seq
        inner join tblreview on tblreview.DEAL_SEQ = tbldeal.DEAL_SEQ
where tblreview.type = 'B';

CREATE OR REPLACE VIEW TBLNOTICEANDIMG AS 
select a.NOTICE_SEQ ,a.TITLE, a.CONTENT, a.REGDATE, b.path from tblnotice a
left outer join tblnoticeimg b on a.notice_seq = b.notice_seq;

CREATE OR REPLACE VIEW VWFAVPRODUCT AS 
select a.favorite_seq, a.id as favid, b.id, b.regdate, b.name, b.price, b.is_auction, b.product_seq from tblfavorite a
left outer join tblproduct b on a.product_seq = b.product_seq;

CREATE OR REPLACE VIEW VWQUESTIONANDIMG AS 
select a.QUESTION_SEQ, a.ID, a.QUESTION_TYPE_SEQ, a.TITLE, a.CONTENT, a.REGDATE, b.path from tblquestion a
left outer join tblquestionimg b on a.question_seq = b.question_seq;

create or replace view vwNewProduct
as
select
    p.*,
    pi.path as img_path,
    (sysdate - regdate) as interval
from tblProduct p inner join tblProductImage pi
on (p.product_seq = pi.product_seq)
where is_completion = 'n';

create or replace view vwComComment
as
select
    cc.*,
    up.nickname,
    (sysdate - regdate) as isnew
from tblComComment cc inner join tblUser u
    on (cc.id = u.id) inner join tblUserProfile up
    on (u.id = up.id);

create or replace view vwCommunity
as
select
    c.*,
    up.nickname,
    up.path as path,
    ci.path as img_path,
    (sysdate - regdate) as isnew,
    (select count(*) from tblComComment where community_seq = c.community_seq) as commentCount
from tblCommunity c inner join tblUser u
    on (c.id = u.id) inner join tblUserProfile up
    on (u.id = up.id) inner join tblCommunityImage ci
    on (c.community_seq = ci.community_seq);
            
create or replace view vwMessage
as
select
    m.*,
    su.nickname as sender_nickname,
    ru.nickname as receiver_nickname,
    (sysdate - sendtime) as isNew
from tblMessage m inner join tblUserProfile su
    on (m.sender_id = su.id) inner join tblUserProfile ru
    on (m.receiver_id = ru.id);

insert into tblUser (id, password, user_level) values ('goguma', 'java1234', 1);
insert into tblUser (id, password, user_level) values ('lcw7407', 'java2222', 1);
insert into tblUser (id, password, user_level) values ('u_0112', 'java3333', 1);
insert into tblUser (id, password, user_level) values ('hyein8290', 'java4444', 1);
insert into tblUser (id, password, user_level) values ('hi8259', 'java5555', 1);
insert into tblUser (id, password, user_level) values ('wngktjd1223', 'java6666', 1);
insert into tblUser (id, password, user_level) values ('joonyoung1', 'java7777', 1);
insert into tblUser (id, password, user_level) values ('gusdn33', 'java8888', 1);
insert into tblUser (id, password, user_level) values ('gumaguma01', 'java9999', 1);
insert into tblUser (id, password, user_level) values ('wnsdud12', 'java1234', 1);
insert into tblUser (id, password, user_level) values ('dbal12', 'java1234', 1);
insert into tblUser (id, password, user_level) values ('gktjd0112', 'java1234', 1);
insert into tblUser (id, password, user_level) values ('hobak234', 'java1234', 1);
insert into tblUser (id, password, user_level) values ('ume123', 'java1234', 1);
insert into tblUser (id, password, user_level) values ('rkawkk', 'java1234', 1);
insert into tblUser (id, password, user_level) values ('oksusu12', 'java1234', 1);
insert into tblUser (id, password, user_level) values ('joon556', 'java1234', 1);
insert into tblUser (id, password, user_level) values ('hyunwoo97', 'java1234', 1);
insert into tblUser (id, password, user_level) values ('hasung95', 'java1234', 1);
insert into tblUser (id, password, user_level) values ('kamja98', 'java1234', 1);

insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('goguma', 1, '송준영', '주공 포레나아파트 109동 1307호', '01094011256', 'goguma@naver.com', '97-08-25', 'f', '22-01-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('lcw7407', 1, '김수찬', '호수마을 E편한세상아파트 407동 44호', '01094011251', 'lcw7407@naver.com', '97-08-25', 'f', '22-01-16');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('u_0112', 1, '이찬우', '포레나아파트 109동 1307호', '01094011252', 'u_0112@naver.com', '97-08-25', 'f', '22-01-15');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('hyein8290', 1, '황현우', '주공 포레나아파트 109동 1307호', '01094011253', 'hyein8290@naver.com', '97-08-25', 'f', '22-01-14');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('hi8259', 1, '주하성', '주공 포레나아파트 109동 1307호', '01094011254', 'hi8259@naver.com', '97-08-25', 'f', '22-01-14');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('wngktjd1223', 1, '김정연', '주공 포레나아파트 110동 1307호', '01094011255', 'wngktjd1223@naver.com', '97-08-25', 'f', '22-01-13');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('joonyoung1', 1, '최예원', '한빛마을 래미안아파트 629동 37호', '01094011212', 'joonyoung1@naver.com', '97-08-25', 'f', '22-01-13');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('gusdn33', 1, '김아린', '주공 포레나아파트 109동 1308호', '01094011254', 'gusdn33@naver.com', '97-08-25', 'f', '22-01-25');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('gumaguma01', 1, '이혜인', '바람마을 더샵아파트 608동 1115호', '01094011561', 'gumaguma01@naver.com', '97-08-25', 'f', '22-01-24');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('wnsdud12', 1, '이유미', '주공 포레나아파트 109동 1307호', '01099891234', 'wnsdud12@naver.com', '97-08-25', 'f', '22-01-23');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('dbal12', 1, '양수민', '한빛마을 힐스테이트아파트 548동 212호', '01094016654', 'dbal12@naver.com', '97-08-25', 'f', '22-01-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('gktjd0112', 1, '한지혜', '주공 포레나아파트 109동 1307호', '01091230654', 'gktjd0112@naver.com', '97-08-25', 'f', '22-01-10');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('hobak234', 1, '문은지', '주공 포레나아파트 109동 1307호', '01056011256', 'hobak234@naver.com', '97-08-25', 'f', '22-01-09');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('ume123', 1, '김은애', '행복마을 현대아파트 360동 44호', '01056011251', 'ume123@naver.com', '97-08-25', 'f', '22-01-08');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('rkawkk', 1, '주하은', '주공 포레나아파트 109동 1307호', '01022077256', 'rkawkk@naver.com', '97-08-25', 'f', '22-01-07');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('oksusu12', 1, '이찬성', '주공 포레나아파트 109동 1307호', '01056013256', 'oksusu12@naver.com', '97-08-25', 'f', '22-01-11');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('joon556', 1, '송진영', '신더샵아파트 850동 416호', '01098011256', 'joon556@naver.com', '97-08-25', 'f', '21-12-31');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('hyunwoo97', 1, '이유진', '주공 포레나아파트 109동 1307호', '01012371256', 'hyunwoo97@naver.com', '97-08-25', 'f', '22-01-01');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('hasung95', 1, '김현우', '바람마을 래미안아파트 195동 121호', '01099011256', 'hasung95@naver.com', '97-08-25', 'f', '22-01-04');
insert into tblUserInfo (id, address_seq, name, address, tel, email, birth, gender, since) values ('kamja98', 1, '장혜진', '주공 포레나아파트 109동 1307호', '01094099257', 'kamja98@naver.com', '97-08-25', 'f', '22-01-09');


insert into tblUserProfile(id,nickname,intro,path) values ('goguma','고구마','좋은 거래해요','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('lcw7407','감자','안녕하세요 감자입니다','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('u_0112','옥수수','옥수수를 제일 좋아해요','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('hyein8290','호박','안녕하세요 저는 호박을 좋아해요','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('hi8259','고구마왕','고구마왕이 되고 싶어요','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('wngktjd1223','감자돌이','고구마가 되고 싶은 감자돌이','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('joonyoung1','김감자','행복한 거래 원해요','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('gusdn33','김고구마','좋은 거래해요~','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('gumaguma01','연어초밥','좋은 거래해요~','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('wnsdud12','간장게장','좋은 거래해요~','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('dbal12','오마이걸','좋은 거래해요~','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('gktjd0112','던던댄스','좋은 거래해요~','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('hobak234','감자칩','좋은 거래해요~','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('ume123','김치찌개','좋은 거래해요~','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('rkawkk','된장찌개','좋은 거래해요~','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('oksusu12','호박고구마','좋은 거래해요~','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('joon556','물고구마','좋은 거래해요~','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('hyunwoo97','숭난이','좋은 거래해요~','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('hasung95','나문희','좋은 거래해요~','default image.jpg');
insert into tblUserProfile(id,nickname,intro,path) values ('kamja98','이순재','좋은 거래해요~','default image.jpg');



insert into tblCommunity values (200, 'u_0112', '안녕하세요! 오늘 가입했습니다.ㅎㅎ', '다들 잘 부탁드려요ㅎㅎ 친하게 지내요~!', sysdate+0.474, 20);
insert into tblCommunity values (201, 'lcw7407', '혀누혀누 조심하세요ㅡㅡ', '상습 사기꾼입니다.', sysdate+0.474, 20);
insert into tblCommunity values (202, 'goguma', '배고프네여', '뭐 드셨어요?', sysdate+0.474, 20);
insert into tblCommunity values (203, 'hyein8290', '그거 아세요???', '저도 잘 몰라여 ㅋ', sysdate+0.474, 20);
insert into tblCommunity values (204, 'wngktjd1223', '햄버거 먹고싶다', '배고파요ㅠㅠ', sysdate+0.474, 20);
insert into tblCommunity values (205, 'jammine', '아 자꾸 오류 뜨네요', '사이트 누가 만든 거지', sysdate+0.475, 20);
insert into tblCommunity values (206, 'joonyoung1', '오늘 날씨 너무 좋아요>_<', '산책들 다녀오셔요!', sysdate+0.475, 20);
insert into tblCommunity values (207, 'gumaguma01', '친구랑 싸웠어요.......', '우울해요ㅠㅠ', sysdate+0.475, 20);
insert into tblCommunity values (208, 'hasung555', '텀블러 샀어용', '예쁘죠?ㅎㅎ', sysdate+0.475, 20);
insert into tblCommunity values (209, 'user1', '목이 아프네요...', '다들 잘 부탁드려요ㅎㅎ 친하게 지내요~!', sysdate+0.475, 20);
insert into tblCommunity values (210, 'user2', '뭐하고 있으세요??', '다들 잘 부탁드려요ㅎㅎ 친하게 지내요~!', sysdate+0.476, 20);
insert into tblCommunity values (211, 'lcw7407', '가방 어때요?', '다들 잘 부탁드려요ㅎㅎ 친하게 지내요~!', sysdate+0.476, 20);
insert into tblCommunity values (212, 'hyein8290', '굿모닝ㅎㅎ', '다들 잘 부탁드려요ㅎㅎ 친하게 지내요~!', sysdate+0.476, 20);
insert into tblCommunity values (213, 'goguma', '점심 드셨어요?', '다들 잘 부탁드려요ㅎㅎ 친하게 지내요~!', sysdate+0.476, 20);
insert into tblCommunity values (214, 'user3', '목 아파서 한의원 다녀왔어요~ㅠㅠ', '다들 잘 부탁드려요ㅎㅎ 친하게 지내요~!', sysdate+0.476, 20);
insert into tblCommunity values (215, 'gumaguma01', '저희 집 강아지예요ㅋㅋㅋ', '다들 잘 부탁드려요ㅎㅎ 친하게 지내요~!', sysdate+0.476, 20);
insert into tblCommunity values (216, 'hasung555', '오늘 결혼 기념일인데 추천 부탁드립니다.', '다들 잘 부탁드려요ㅎㅎ 친하게 지내요~!', sysdate+0.477, 20);
insert into tblCommunity values (217, 'jammine', '동생 진짜 짜증남', '다들 잘 부탁드려요ㅎㅎ 친하게 지내요~!', sysdate+0.477, 20);
insert into tblCommunity values (218, 'joonyoung1', '전 초록색이 제일 좋아요', '다들 잘 부탁드려요ㅎㅎ 친하게 지내요~!', sysdate+0.477, 20);
insert into tblCommunity values (219, 'user6', '치마 사고 싶어요 ㅠㅠ ', '다들 잘 부탁드려요ㅎㅎ 친하게 지내요~!', sysdate+0.477, 20);
insert into tblCommunity values (220, 'user1', '자도 자도 피곤 하네요...', '다들 잘 부탁드려요ㅎㅎ 친하게 지내요~!', sysdate+0.477, 23);

select * from tblMessage;
--메시지
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (201, 'hyein8290', 'goguma', '그거 장갑 팔렸나여????? 제가 바로 입금해드릴게요ㅠㅠ', 22-01-07, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (202, 'user1', 'goguma', '님 귀엽던데 저랑 친하게 지내여', 22-01-09, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (203, 'gumaguma01', 'goguma', '죄송해요 이미 팔렸습니다', 22-01-17, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (204, 'jammine', 'goguma', '엥? 아닌데요? 뭔 소리세요?', 22-01-19, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (205, 'user3', 'goguma', '010-2213-5999로 연락 부탁드릴게요!', 22-01-20, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (206, 'goguma', 'hyein8290', '네 ㅠㅠ 이미 팔렸습니다', 22-01-07, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (207, 'goguma', 'user1', '좋아요ㅋㅋㅋ 자주 메시지 해주세요', 22-01-09, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (208, 'goguma', 'gumaguma01', '저 책 사고 싶어요!', 22-01-17, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (209, 'goguma', 'jammine', '님 혀누혀누 맞져?', 22-01-19, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (210, 'goguma', 'user3', '택배가 아직 안 왔는데 무슨 일인가여 ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ', 22-01-20, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (211, 'user3', 'goguma', '네 연락했는데 확인해주세요!!', 22-01-21, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (212, 'goguma', 'hasung555', '호박 고구마 팔렸나여?', 22-01-21, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (213, 'hasung555', 'goguma', '아녀!! 아직 있습니당 의향 있으시면 연락주세요', 22-01-22, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (214, 'goguma', 'user3', '택배 잘 도착했나요?', 22-01-23, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (215, 'hasung555', 'goguma', '저 살래요 계좌번호 알려주세용 ㅎㅎ', 22-01-27, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (216, 'goguma', 'hasung555', '넵 신한 110 261 831350 고미정입니다', 22-01-27, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (217, 'hasung555', 'goguma', '주하성으로 입금했어요! 확인 부탁드릴게요~', 22-01-27, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (218, 'goguma', 'hasung555', '확인 했습니다! 주소가 어떻게 되세요???', 22-01-27, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (219, 'hasung555', 'goguma', '저 서울시 송파구 풍납동 현대아파트 211동 901호 입니다!', 22-01-27, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (220, 'goguma', 'hasung555', '넵 내일 중으로 바로 택배 보내드릴게요ㅎㅎ', 22-01-27, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (221, 'hasung555', 'goguma', '앗 혹시 오늘은 어려우실까요?? 배고파서 빨리 먹고 싶은데 ㅠㅠ', 22-01-27, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (222, 'goguma', 'hasung555', '제가 일이 바빠서 오늘은 어려울 거 같아요 ㅠㅠ 낼 바로 보낼게요!!', 22-01-27, 'N');
INSERT INTO TBLMESSAGE (MESSAGE_SEQ, SENDER_ID, RECEIVER_ID, CONTENT, SENDTIME, IS_CHECK) 
VALUES (223, 'hasung555', 'goguma', '어쩔 수 없져 ㅠㅠ 알겠습니당', 22-01-27, 'N');





insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (201, 201, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (202, 202, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (203, 204, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (204, 204, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (205, 205, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (206, 207, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (207, 207, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (208, 208, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (209, 210, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (210, 210, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (211, 210, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (212, 210, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (213, 211, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (214, 212, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (215, 212, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (216, 212, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (217, 214, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (218, 215, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (219, 216, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (220, 216, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (221, 216, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (222, 216, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (223, 217, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (224, 217, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (225, 217, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (226, 218, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (227, 218, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (228, 219, 'user68', '잘 보고 갑니다~', '2021-01-03');
insert into tblComComment (comcomment_seq, community_seq, id, content, regdate) values (229, 220, 'user68', '잘 보고 갑니다~', '2021-01-03');
--------------------------------
insert into tblNotice values (notice_seq.nextVal, '2021-10-20 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2021-10-20');
insert into tblNotice values (notice_seq.nextVal, '2021-10-27 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2021-10-27');
insert into tblNotice values (notice_seq.nextVal, '2021-11-03 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2021-11-03');
insert into tblNotice values (notice_seq.nextVal, '2021-11-10 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2021-11-10');
insert into tblNotice values (notice_seq.nextVal, '2021-11-17 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2021-11-17');
insert into tblNotice values (notice_seq.nextVal, '2021-11-24 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2021-11-24');
insert into tblNotice values (notice_seq.nextVal, '2021-12-01 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2021-12-01');
insert into tblNotice values (notice_seq.nextVal, '2021-12-08 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2021-12-08');
insert into tblNotice values (notice_seq.nextVal, '2021-12-15 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2021-12-15');
insert into tblNotice values (notice_seq.nextVal, '2021-12-22 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2021-12-22');
insert into tblNotice values (notice_seq.nextVal, '2021-12-29 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2021-12-29');
insert into tblNotice values (notice_seq.nextVal, '2021-01-05 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2022-01-05');
insert into tblNotice values (notice_seq.nextVal, '2021-01-12 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2022-01-12');
insert into tblNotice values (notice_seq.nextVal, '2021-01-19 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2022-01-19');
insert into tblNotice values (notice_seq.nextVal, '2021-01-27 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2022-01-27');
insert into tblNotice values (notice_seq.nextVal, '2021-01-28 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2022-01-28');
insert into tblNotice values (notice_seq.nextVal, '2021-01-28 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2022-01-28');
insert into tblNotice values (notice_seq.nextVal, '2021-01-28 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2022-01-28');
insert into tblNotice values (notice_seq.nextVal, '2021-01-28 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2022-01-28');
insert into tblNotice values (notice_seq.nextVal, '2021-01-28 id 금지 내역','id : 나아즈뱅야 발발이 치와와','2022-01-28');
tblnotice.sql
3KB
-------------------------------
insert into tblfaq values (faq_seq.nextVal, 1, '내 계정에 로그인할 수 없는 경우', '계정에 로그인하는 데 문제가 발생한 경우 이 문제해결 도구를 사용하세요.');
insert into tblfaq values (faq_seq.nextVal, 1, '계정 비밀번호는 어떻게 복구하나요?', '계정 비밀번호는 어떻게 복구하나요?');
insert into tblfaq values (faq_seq.nextVal, 1, '가입할 수 없는 이유는 무엇인가요?', '가입하기 위해 사용하는 Google 계정과 연결된 애드센스 또는 Google Ads 계정에 문제가 있을 수 있습니다. 가입하려는 과정에서 오류가 발생하는 경우 AdMob 가입 오류 목록을 검토하여 자세한 정보를 확인하세요.');
insert into tblfaq values (faq_seq.nextVal, 1, '가입할 수 없는 이유는 무엇인가요?', '가입할 수 없는 이유는 무엇인가요?');
insert into tblfaq values (faq_seq.nextVal, 1, '정책 위반으로 인해 내 앱에 광고 게재가 중단되고 알림 이메일을 받으면 어떻게 해야 하나요?', '정책 위반으로 인해 내 앱에 광고 게재가 중단되고 알림 이메일을 받으면 어떻게 해야 하나요?');
insert into tblfaq values (faq_seq.nextVal, 1, '내 계정이 정지된 다른 계정과 관련되었다는 이유로 정지되었습니다. 자세히 알려 주세요.', '내 계정이 정지된 다른 계정과 관련되었다는 이유로 정지되었습니다. 자세히 알려 주세요.');
insert into tblfaq values (faq_seq.nextVal, 1, '내 계정이 정지된 다른 계정과 관련되었다는 이유로 정지되었습니다. 자세히 알려 주세요.', '내 계정이 정지된 다른 계정과 관련되었다는 이유로 정지되었습니다. 자세히 알려 주세요.');
insert into tblfaq values (faq_seq.nextVal, 1, '계정을 몇 개까지 보유할 수 있나요?', '각 사용자가 보유할 수 있는 AdMob 계정은 항상 1개이며 중복 계정은 허용되지 않습니다.');
insert into tblfaq values (faq_seq.nextVal, 1, '비밀번호를 잊어버렸어요.', '걱정마세요! 저희도 가끔 잊어버린답니다.

아래의 방법으로 비밀번호 재설정 안내 메일을 받아보세요.');
insert into tblfaq values (faq_seq.nextVal, 1, '이메일 주소를 변경하고 싶어요.', '커리어리 앱에 로그인하신 후 하단 가장 우측 메뉴 [프로필] 클릭 > 우측 상단의 [설정] 버튼 클릭 > '계정 관리' 버튼을 클릭하시면, 이메일 주소를 직접 변경하실 수 있습니다.
 

단, 카카오 등 소셜 로그인을 통해 가입하신 경우 계정 정보 변경이 불가합니다.');


insert into tblfaq values (faq_seq.nextVal, 2, '판매 금지 물품', '가품∙이미테이션 (상표권, 저작권 침해 물품, 특정 브랜드의 스타일을 모방한 물품)
주류(무알콜 주류 포함), 담배, 전자담배, 모의총포 및 그 부속품 일체 (ex. 라이터, 비비탄 총알 등 청소년 유해물건)
경유, LPG, 휘발유 등의 유류 거래');
insert into tblfaq values (faq_seq.nextVal, 2, '직접 재배하거나 채취한 농수산물도 중고거래할 수 있나요?', '가공식품은 중고거래할 수 있어요.
마트에서 구입한 가공식품은 유통기한 전에 중고거래할 수 있어요. [홈] 탭의 + → 중고거래 → 생활/가공식품 게시판에 올려 주세요.');
insert into tblfaq values (faq_seq.nextVal, 2, '가품, 전문판매업자 글이 있는데 보기 싫어요. 어떻게 해야 하나요?', '가품은 판매 금지 물품에 해당하며 당근마켓은 전문판매업자의 상업적인 판매를 허용하지 않고 있어요.

이와 같은 글을 봤다면 [게시글 상단 오른쪽 점 3개 버튼 클릭 > 신고하기] 로 신고해 주시길 바랍니다. :)');
insert into tblfaq values (faq_seq.nextVal, 2, '형편없는 물건을 판매해요.', '판매 금지 물품 이외의 물건에 대해서는 직접적으로 제재하지 않아요.');
insert into tblfaq values (faq_seq.nextVal, 2, '판매 금지 물품에 해당하는 의약품·의료기기에는 어떤 것이 있나요?', '판매 금지 물품에 해당하는 의약품·의료기기에는 어떤 것이 있나요?');
insert into tblfaq values (faq_seq.nextVal, 2, '내가 운영하는 쇼핑몰 물건을 당근마켓에서 중고거래할 수 있나요?', '쇼핑몰 물건을 중고거래하는 것은 제한하고 있어요.
당근마켓 중고거래 서비스는 나에게는 필요 없지만 다른 이웃에게 유용할 수 있는 물건을 저렴히 판매하거나 나누는 취지예요. 그래서 이윤 추구를 목표하는 전문판매업자 상품의 중고거래는 제한하고 있어요. 중고거래 게시판에서는 우리집에서 더 이상 사용하지 않는 물건 위주로 등록해 주시기를 부탁드립니다.');
insert into tblfaq values (faq_seq.nextVal, 2, '요소수 거래는 이렇게 해요', '요소수 거래시 아래의 내용을 주의해주세요.



요소수를 저렴한 가격에 판다며 선입금을 요구하는 경우 조심해야 해요
요소수를 저렴한 가격에 판다며 네이버 페이 등 안전결제 페이지 링크를 받는 경우 조심해야 해요
요소수를 시세보다 비싸게 판매하지 않도록 해요
재판매를 목적으로 구입 후 비싼 가격에 판매할 수 없어요
요소수를 이익추구 목적으로 반복적으로 판매하는 것이 확인될 경우, 게시글 미노출 및 서비스 이용이 제한될 수 있어요.');
insert into tblfaq values (faq_seq.nextVal, 2, '반려동물을 무료로 분양할 수 있나요?', '무료 분양이더라도 생명이 있는 동물을 거래하는 행위는 금지하고 있어요. 

아직 당근마켓이 동물의 평생 가족을 찾아 주는 서비스로는 부족한 점이 많기 때문이에요.

생명이 있는 동물은 거래하지 말아 주세요. :)');


insert into tblfaq values (faq_seq.nextVal, 3, '커뮤니티 가이드라인', '이웃을 향한 당신의 따뜻한 관심과 애정은 당근마켓의 가장 큰 동력이에요. 당근마켓을 사용하는 이웃 모두가 커뮤니티 가이드라인을 지키며 따뜻한 지역 커뮤니티를 함께 만들어요. 혼자 힘으로는 할 수 없지만, 우리가 함께라면 할 수 있어요!
');
insert into tblfaq values (faq_seq.nextVal, 3, '중고거래 운영정책', '당근마켓은 동네 이웃 간의 연결을 도와 따뜻하고 활발한 교류가 있는 지역 사회를 만들기 위해 노력하고 있어요.

우리는 신뢰, 존중, 윤리를 서비스의 중요한 가치라고 생각해요. 당근마켓과 당근마켓을 사용하는 이웃 모두가 동참하여 이 가치를 지키기 위해 최선을 다하고 있어요. 따뜻하고 믿을 수 있는 거래 문화를 함께 만들어가요.');
insert into tblfaq values (faq_seq.nextVal, 3, '동네생활 운영정책', '따뜻한 동네생활 커뮤니티를 만들기 위한 약속을 지켜주세요.
동네생활은 우리 동네 근처 이웃을 위한 공간이에요. 동네인증한 이웃만 게시글과 댓글을 남길 수 있어요.
카테고리와 주제에 맞는 글을 작성해 주세요.');
insert into tblfaq values (faq_seq.nextVal, 3, '지역광고 운영정책', '지역광고가 다음의 각 항목 중 어느 하나에 해당할 경우, 해당 지역광고의 심사 미승인 또는 게재를 제한할 수 있습니다.');
insert into tblfaq values (faq_seq.nextVal, 3, '신고는 어떻게 하나요', '이웃 분들의 다양한 신고 제보를 받아 관련 법 또는 운영정책 기준으로 신속히 대응하고 있어요.

탈퇴한 사용자라도 개인정보 처리방침에 따라 부정이용 기록은 10년 동안 보관하고 있기 때문에 동일한 기준으로 신고가 처리돼요.

신고 방법은 아래와 같아요.');


insert into tblfaq values (faq_seq.nextVal, 4, '본인인증 문자가 오지 않아요.', '인증번호 문자를 발송했는데도 10분 이상 문자가 오지 않는다면 아래 내용을 확인해 보세요.');
insert into tblfaq values (faq_seq.nextVal, 4, '본인인증 시 등록한 휴대폰 번호를 수정하고 싶어요.', '휴대폰 번호가 바뀌었다면 당근마켓에 등록한 휴대폰 번호를 변경해 주시길 바랍니다.');
insert into tblfaq values (faq_seq.nextVal, 4, '입력한 정보와 통신사 정보가 달라요. 가입한 통신사에 문의해주세요. 사유로 본인인증에 실패했어요.', '아래의 정보 중 본인인증 화면에서 입력한 정보와 통신사에 가입된 정보가 다르기 때문이에요.');
insert into tblfaq values (faq_seq.nextVal, 4, '타인명의 휴대폰을 사용하고 있어요.', '타인명의 휴대폰을 사용하고 있어요.');
insert into tblfaq values (faq_seq.nextVal, 4, '법인명의 휴대폰을 사용하고 있어요.', '법인명의 휴대폰의 본인인증은 이용 중인 통신사를 통해 확인이 필요해요.');
insert into tblfaq values (faq_seq.nextVal, 4, '기존 본인인증 정보와 불일치해요.” 사유로 본인인증에 실패했어요.', '당근마켓 가입 시 본인인증 했던 명의와 다른 명의로 당근페이 본인인증을 시도했기 때문이에요.');
insert into tblfaq values (faq_seq.nextVal, 4, '신고는 어떻게 하나요?', '당근마켓은 이웃 분들의 다양한 신고 제보를 받아 관련 법 또는 운영정책 기준으로 신속히 대응하고 있어요.

탈퇴한 사용자라도 개인정보 처리방침에 따라 부정이용 기록은 10년 동안 보관하고 있기 때문에 동일한 기준으로 신고가 처리돼요.');

insert into tblfaq values (faq_seq.nextVal, 5, '당근마켓 뜻이 뭔가요? (왜 당근마켓인가요?)', '당근마켓은 당신 근처의 마켓의 줄임말이에요.

현재는 직거래 뿐만 아니라 여러분의 근처에서 생기는 다양한 일을 해결할 수 있는 서비스를 꿈꾸고 있어요.');
insert into tblfaq values (faq_seq.nextVal, 5, '알림은 어디서 확인하나요?', '알림 메시지는 홈 화면의 오른쪽 상단 종 모양 버튼을 누르면 확인할 수 있어요.');
insert into tblfaq values (faq_seq.nextVal, 5, '알림 목록을 모두 삭제할 수 없나요?', '알림 목록은 삭제하지 않고 보관하는 것을 권장해요. ');
insert into tblfaq values (faq_seq.nextVal, 5, '댓글을 삭제하고 싶어요', '알림 목록은 삭제하지 않고 보관하는 것을 권장해요. ');
insert into tblfaq values (faq_seq.nextVal, 5, '특정 사용자가 내 게시글을 못 보게 할 수 있나요?', '알림 목록은 삭제하지 않고 보관하는 것을 권장해요. ');

--------------------------------
INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (162, 'goguma', 1, 3, '스피드랙 앵글선반', 30000, 'y', '2년 좀 안되게 사용하던 스피드랙입니다.
선반은 우드결쪽으로 사용했으며 뒤집어서 사용하시면 화이트 선반으로 사용 가능합니다!
(우드선반쪽은 생활기스 있습니다)

900짜리 앵글 선반 하나는 판이 깨져서 버린 상태입니다~
스피드랙에서 쉽게 선반추가는 가능하니 주문하시면 됩니다!

개당 15,000원에 내놓습니다 :)

조립은 풀러드릴 수 있으나 직접 가져가셔야 해요!
조립은 손쉽게 가능합니다~', to_date('01/11/2021', 'MM/DD/RRRR'), 'y', 154, 'n', 'img162.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (163, 'lcw7407', 2, 5, '스팸 선물세트 판매합니다.', 28000, 'y', '오늘 선물받은 제품입니다.
스팸 클래식 200g 6개, 340g 6개로 구성되어 있습니다.
쇼핑백도 있습니다.', to_date('01/12/2021', 'MM/DD/RRRR'), 'y', 284, 'n', 'img163.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (164, 'u_0112', 3, 10, 'K2-62안전화 새상품 265', 30000, 'y', '265 K2 안전화 새제품 입니다.
필요하신분 쳇 주세요', to_date('01/13/2021', 'MM/DD/RRRR'), 'y', 253, 'n', 'img164.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (165, 'hyein8290', 4, 2, '삼성 46인치 스마트티브(TV)', 220000, 'y', '삼성 스마트 티비 46인치 입니다.
사용하던 티비 교체로 올립니다.
상세 사양은 사진에 나와 있습니다.', to_date('01/14/2021', 'MM/DD/RRRR'), 'n', 58, 'n', 'img165.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (166, 'hi8259', 5, 11, '게이밍 컴퓨터 급처', 130000, 'y', '게이밍 컴퓨터 급처합니다 메세지주세요
잠수타시면 바로 차단합니다', to_date('01/15/2021', 'MM/DD/RRRR'), 'n', 219, 'n', 'img166.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (167, 'wngktjd1223', 6, 14, '설민석의 한국사대모험1~16권', 20000, 'y', '아이가 좋아했던 책이라
살짝 사용감있어요.

16권 다 있어요^^', to_date('01/16/2021', 'MM/DD/RRRR'), 'y', 131, 'n', 'img167.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (168, 'jammine', 7, 6, '자연이랑 아람 전집 판매합니다.', 20000, 'y', '새책 구입후 깨끗하게 보았어요.
80권 + 별책2권 + CD1개 입니다.
비대면 문앞 거래 원해요~', to_date('01/17/2021', 'MM/DD/RRRR'), 'y', 222, 'n', 'img168.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (169, 'joonyoung1', 8, 15, '인테리어용 화분선반 판매(IKEA)', 10000, 'y', '깨끗하고 예쁜 선반 판매해요~!

가장 높은 선반 높이 78cm
가장 낮은 선반 높이 50cm
넓이, 깊이 45cm
흰 선반 지름 20cm(3개모두 동일)

마두역 3분거리구요 비대면거래 원합니다 :)
택배는 안될 것 같아요!

깨끗하게 써서 흠집이나 자국이 그렇게 많지않아요.
눈에 띄는 자국은 사진에 첨부했어요!
감사합니다. :)', to_date('01/18/2021', 'MM/DD/RRRR'), 'y', 75, 'n', 'img169.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (170, 'gumaguma01', 9, 16, '신세계 상품권 10만원x4장', 370000, 'y', '직거래
가격제안x
죄송합니다 가격 조정했습니다
37만원 가능하신뷴 채팅주세요', to_date('01/19/2021', 'MM/DD/RRRR'), 'n', 271, 'n', 'img170.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (171, 'hasung555', 10, 7, '장바구니 자전거 팔아요', 20000, 'y', '앞바퀴에 장바구니가 달려있는 삼천리자전거 입니다 별로 사용하지 않았지만 이사가느라 처분해요. 바퀴에 바람넣는 펌프도 서비스로 함께 드려요', to_date('01/20/2021', 'MM/DD/RRRR'), 'n', 97, 'n', 'img171.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (172, 'goguma', 11, 3, '스토케 트립트랩 하이체어', 70000, 'n', '스토케 트립트랩 네추럴색상이요
안쓴지 좀 되어서 한번 닦아서 쓰시면 좋을듯해요

약속파기 또는 채팅 보내고 답장 없으신분 등 비매너는 차단합니다', to_date('01/21/2021', 'MM/DD/RRRR'), 'n', 253, 'n', 'img172.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (173, 'lcw7408', 12, 5, '설 선물 과일세트 /사과 배', 10000, 'n', '설 선물세트 입니다.좋아하는 과일이 없어 올립니다.
품질은 좋아보여요.', to_date('01/22/2021', 'MM/DD/RRRR'), 'n', 67, 'n', 'img173.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (174, 'u_0113', 13, 3, '7만원에 산 행거 싸게 팝니다', 7000, 'y', '엄청 가볍고 커요 분해가능합니다 저는 이거 엄청 잘썼어요. 옷많이 보관하기 좋아요 안흔들리고 29일날 가져가셔야해요', to_date('01/23/2021', 'MM/DD/RRRR'), 'n', 179, 'n', 'img174.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (175, 'hyein8291', 14, 7, '덤벨 아령 (무게조절 15단계가능)', 70000, 'y', '무게조절 15단계까지 가능한 덤벨 판매합니다
2.5/3.5/4.5/5.5/6.5/8/9/10/
11.5/13.5/16/18/20.5/22.5/24kg
측면의 다이얼을 돌려가며 무게조절하는 기능입니다.
1개씩은 35000원
1쌍(2개) 70000원 판매합니다.', to_date('01/24/2021', 'MM/DD/RRRR'), 'n', 231, 'n', 'img175.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (176, 'hi8260', 15, 1, '삼성27 모니터', 120000, 'y', '아들이 방학때만 2년간
게임용으로 썼던 삼성모니터
(총 사용기간 6개월 정도)
27인치고 모델명 사진에있음
내가 지금쓰는것과 바꿔쓰려
하니 ㅡ소리안남
삼성에 문의 ㅡ외장스피커
필요하다고 함
가격은ㅡ9만이면 적당할듯
지금 다나와 가격
? 341,310 이네요
정말 필요하신분
연락주세요', to_date('01/25/2021', 'MM/DD/RRRR'), 'y', 119, 'n', 'img176.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (177, 'wngktjd1224', 16, 5, '포트메리온 공기대접 3세트', 30000, 'y', '공기 대접 3세트에요
세트당 만원드려요', to_date('01/26/2021', 'MM/DD/RRRR'), 'y', 166, 'n', 'img177.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (178, 'jammine', 17, 1, '3세대 에어팟프로 새거 팝니다 무선충전', 120000, 'y', '3세대 에어팟프로 새거 팝니다 무선충전
새거 입니다 내고 안되요

정품입니다 관련해서 메시지 보내지마세요', to_date('01/27/2021', 'MM/DD/RRRR'), 'n', 277, 'n', 'img178.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (179, 'joonyoung2', 18, 9, '울혼방 박시코트 / 사이즈66', 10000, 'y', '울혼방 박시코트 / 사이즈66 판매합니다
사이즈 입기가 너무 커서 판매합니다 메시지주세요', to_date('01/28/2021', 'MM/DD/RRRR'), 'n', 159, 'n', 'img179.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (180, 'gumaguma02', 19, 9, '보드복 밀리터리 (새상품)', 10000, 'n', '보드복 팝니다 
털이 많아서 따듯해요 

사용감 없는 새상품입니다 연락주세요', to_date('01/29/2021', 'MM/DD/RRRR'), 'n', 126, 'n', 'img180.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (181, 'hasung556', 20, 16, 'fenix 통기타', 15000, 'n', '통기타 10만원 주고 산건데 안쳐서 팝니다
내고 안됩니다 연락주세요
찾아가시는 조건입니다', to_date('01/30/2021', 'MM/DD/RRRR'), 'n', 78, 'n', 'img181.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (182, 'goguma', 21, 2, '전기밥솥 팝니다', 20000, 'n', '새 밥솥이 들어와서 팔간밥솥은 판매합니다. 이동경로가 맞으면 가져다 드릴 수도 있습니다.', to_date('01/31/2021', 'MM/DD/RRRR'), 'n', 193, 'n', 'img182.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (183, 'lcw7409', 22, 2, '휘센 에어컨 팝니다(실외기포함)', 160000, 'n', '2016년에 구입해서 지금까지 잘 쓰다 이사를 가게 되어 팝니다. 작동 잘 되고 상태 깨끗합니다.
실외기 포함이구요. 직접 가져가시는 조건입니다.', to_date('02/01/2021', 'MM/DD/RRRR'), 'n', 145, 'n', 'img183.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (184, 'u_0114', 23, 3, '1인용 리클라이너 흔들쇼파', 20000, 'n', '현재 인터넷 판매가 36만원
1인용 리클라이너
흔들의자
아이보리색상
쿠션 꺼짐 없고 외관 양호
사진상태 그대로 입니다.
쇼파커버 씌워 사용했어요.
육지 이사로 정리합니다.

승용차에는 안들어가고
SUV에는 들어갈것 같아요.
조천읍입니다.', to_date('02/02/2021', 'MM/DD/RRRR'), 'y', 181, 'n', 'img184.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (185, 'hyein8292', 24, 6, '교육도서 내 친구 수학공룡.내 친구', 3000, 'y', '모두 책만 있어요.
활동지 흔적있어요

1.내 친구 과학공룡 49+증강본3권
19만
2.내 친구 수학공룡 42권
15만
3.몬테소리 글끼말키 69권.
11만', to_date('02/03/2021', 'MM/DD/RRRR'), 'n', 191, 'n', 'img185.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (186, 'hi8261', 25, 10, '노스페이스 눕시900ltd', 8000, 'y', '드라이 완료된 상품입니다 하자 없고 컨디션 좋고
국내 95-100 되요 패딩에 미쳐서 막 샀더니 너무 많아 처분 시작 합니다 ㅠ', to_date('02/04/2021', 'MM/DD/RRRR'), 'n', 255, 'n', 'img186.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (187, 'wngktjd1225', 26, 7, '스피닝 실내 자전거', 17000, 'y', '무게가 꽤 나가요.
접으면 승용차에도 실립니다.
사용감은 좀 있어요~
집에 스텝퍼랑 다른 기구들 사놓으니 안하게 되서 팝니다!', to_date('02/05/2021', 'MM/DD/RRRR'), 'n', 296, 'n', 'img187.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (188, 'jammine', 27, 5, '투썸기프티콘', 5000, 'y', '아메리카노 안먹어서 팔아요 원가15400원', to_date('02/06/2021', 'MM/DD/RRRR'), 'n', 219, 'n', 'img188.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (189, 'joonyoung3', 28, 2, '엘지 세탁기 + 엘지냉장고', 620000, 'n', '1.엘지 세탁기
세탁17kg, 건조9kg
2015년 10월 제조
현 시간까지 사용하고 있는 상태 좋은 세탁기에요.
육지 이사가게 되어 판매해요.

2.엘지냉장고
830리터
좌-냉동 / 우-냉장
2015년에 세탁기랑 같이 샀어요.

엘리베이터 없는 4층 이에요.
직접 가지러 오셔야 해요.
(삼도2동 북초등학교 근처)

교환. 반품. 환불 안되니 신중한 구매 부탁드려요.', to_date('02/07/2021', 'MM/DD/RRRR'), 'n', 86, 'n', 'img189.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (190, 'gumaguma03', 29, 6, 'EQ의 천재들 총 71권', 30000, 'y', '총 71권(4권 분실 제외)
dvd까지 포함(3, 4번 분실)', to_date('02/08/2021', 'MM/DD/RRRR'), 'n', 92, 'n', 'img190.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (191, 'hasung557', 30, 1, '아이폰11 프로 64기가', 550000, 'n', '당근에서 구매했는데 컬러가 마음에 안들어 다시 판매합니다
구매 했던 상태 금액 그대로입니다', to_date('02/09/2021', 'MM/DD/RRRR'), 'n', 120, 'n', 'img191.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (192, 'goguma', 31, 5, '비전냄비~~', 10000, 'y', '주전자 저희는 용량이 작아서 팝니다 스테인리스라
기본 생활 사용감은 있어요~', to_date('02/10/2021', 'MM/DD/RRRR'), 'n', 112, 'n', 'img192.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (193, 'lcw7410', 32, 8, '루이비통가방', 160000, 'n', '공홈에서 정가주고 구매했고 5번만으로 사용했어요
밑바닥에 오염있고 더스트백 없어서
저렴하게 내놓아요..
택배가능해요 연락주세요', to_date('02/11/2021', 'MM/DD/RRRR'), 'n', 68, 'n', 'img193.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (194, 'u_0115', 33, 16, '파세코난로 (등유통,등유20리터 무료 드림)', 20000, 'y', '2020년도 말에 선물받아 몇번 사용 못했어요? 상태는 깨끗합니다 ? 사는분에게 큐브상자와 남은 캡슐 다 드리겠습니다 ^^', to_date('02/12/2021', 'MM/DD/RRRR'), 'n', 297, 'n', 'img194.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (195, 'hyein8293', 34, 2, '린나이 도시가스렌지 팝니다', 20000, 'n', '20만원정도에 구매후 2년 사용하고 이사오니 가스레인지 있어서 팝니다
청소는 했는데 기름때 조금 덜 지워졌습니다
2020년1월 생산됐고 도시가스용입니다.
뒤에 건전지 큰거 두개 6000원 짜리 새걸로 끼워놨습니다. 바로 쓰시면됩니다. 연락주세요~', to_date('02/13/2021', 'MM/DD/RRRR'), 'n', 213, 'n', 'img195.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (196, 'hi8262', 35, 8, '순금한돈반지', 300000, 'y', '부을 부르는물고기반지
정말 이쁘고 귀엽죠ㅎ
11호 정사이즈예요
커서 내놓아요.깨끗합니다
1돈입니다^^', to_date('02/14/2021', 'MM/DD/RRRR'), 'y', 137, 'n', 'img196.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (197, 'wngktjd1226', 36, 1, '미니 빔 프로젝터 풀박스', 80000, 'n', '밀크티 기기로 이용햇던거
센터가서 초기화 해왔어요
삼성 초기화하셔서 그냥 탭으로 이용하실수도 잇어요

케이스 항시 끼워놓아서
충전단자, 펜넣는곳, 베젤 쪽으로 까짐 말구는
깨끗한 편이나
사용감은 잇어요', to_date('02/15/2021', 'MM/DD/RRRR'), 'n', 269, 'n', 'img197.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (198, 'jammine', 37, 4, '프롬제이 아기 한복', 15000, 'y', '오트밀 한복 S사이즈 입니다
2회 착용 했어요
18개월,30개월 착용했었는데 옷이 커서 잠깐씩 입힌게 다구요
실제 색상이 사진보다 밝은 것 같아요~~', to_date('02/16/2021', 'MM/DD/RRRR'), 'n', 217, 'n', 'img198.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (199, 'joonyoung4', 38, 7, '전기 자전거', 70000, 'y', '자전거 배우시는분도좋아요 작아서 초등학생 타기도 좋아요 바람이 부족했어 넣어야해요 환불 안되요 신중히 생각하세요', to_date('02/17/2021', 'MM/DD/RRRR'), 'n', 79, 'n', 'img199.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (200, 'gumaguma04', 39, 5, '비누치약 선물세트 팔아요', 3000, 'y', '사용하기 좋은 비누치약입니다
인기 많은 선물세트입니다
패키지 다있어요 급처합니다', to_date('02/18/2021', 'MM/DD/RRRR'), 'n', 163, 'n', 'img200.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (201, 'hasung558', 40, 14, '잔나비 2집 사인 lp', 6000, 'y', '잔 나비 2집 싸인 lp 입니다 가요을 그닥 좋아 하지 않아서 처분 합니다.', to_date('02/19/2021', 'MM/DD/RRRR'), 'n', 219, 'n', 'img201.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (202, 'goguma', 41, 3, '거실 테이블', 25000, 'n', '4-5명 동시에 밥 먹어도 될 정도로 커요 !
연휴 이후로 거래 가능하고 직접 운반 해주셔야 합니다', to_date('02/20/2021', 'MM/DD/RRRR'), 'n', 284, 'n', 'img202.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (203, 'lcw7411', 42, 5, '잡곡세트', 3000, 'y', '찹쌀 찰수수 찰보리 흑미 각 600g
생산일자 22년 1월 20일
유통기한 23년 1월 19일', to_date('02/21/2021', 'MM/DD/RRRR'), 'n', 272, 'n', 'img203.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (204, 'u_0116', 43, 10, '베베드피노 스키복 100', 9000, 'n', '딱 2번 입었어요.

털이 빵빵해서 엄청 따뜻해요.', to_date('02/22/2021', 'MM/DD/RRRR'), 'n', 89, 'n', 'img204.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (205, 'hyein8294', 44, 3, '마켓비 철제 침대 팝니다', 10000, 'n', '요기 링크랑 같은 제품이고 슈퍼싱글입니다~!
색상은 블랙이고 엄청 예뻐요?
깨끗하게 써서 생활 기스도 없어요~! 조금 저렴해서 그런지 갑자기 큰 힘을 줘서 올라가면 잠시 삐걱 소리 나기는 하는데 신경쓰일 정도는 아니에요!
매트리스는 드리지 않고, 분해해 드릴테니 가져갈 수 있으신 분들만 채팅 부탁드려요~! 가져다 드리지 않습니다^^
반품 안됩니다^^!', to_date('02/23/2021', 'MM/DD/RRRR'), 'n', 274, 'n', 'img205.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (206, 'hi8263', 45, 3, '게이밍체어', 30000, 'n', '황지시내는 배달가능 모든 기능 상태최상입니다
 구름위에 앉은 듯한 릴렉스 설연휴편안히 게임 즐기세요 필요하신분 ? 주세요 선착순', to_date('02/24/2021', 'MM/DD/RRRR'), 'y', 166, 'n', 'img206.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (207, 'wngktjd1227', 46, 5, '이성당 다과 세트', 20000, 'n', '새상품 입니다~!', to_date('02/25/2021', 'MM/DD/RRRR'), 'n', 222, 'n', 'img207.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (208, 'jammine', 47, 2, '오래된 핸드휘핑기', 2000, 'n', '98년 제과 수강하면서 사용하던 휘핑기 입니다. 
오래 되었지만 작동되고 깨끗한 편입니다. 잘 닦아 두었습니다. 
필요하신 분 연락 주세요.', to_date('02/26/2021', 'MM/DD/RRRR'), 'n', 299, 'n', 'img208.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (209, 'joonyoung5', 48, 3, '화이트7단서랍장', 7000, 'n', '가로 30 세로 40 높이135 7단서랍장 15000원입니다.', to_date('02/27/2021', 'MM/DD/RRRR'), 'y', 88, 'n', 'img209.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (210, 'gumaguma05', 49, 2, '앰프 및 우퍼 스피커', 20000, 'y', '아버지가 정말 애지중지하시던 스피커인데  눈물을 머금고 내놓으라 하시네요..   
 아는사람은 단번에 알고 사가실거라하시는데 
 필요하신분 가져가세요~!', to_date('02/28/2021', 'MM/DD/RRRR'), 'n', 235, 'n', 'img210.jpg');

INSERT INTO TBLPRODUCT (PRODUCT_SEQ, ID, ADDRESS_SEQ, PRODUCT_TYPE_SEQ, NAME, PRICE, IS_AUCTION, CONTENT, REGDATE, IS_COMPLETION, READCOUNT, IS_DELETION, MAIN_IMG) 
VALUES (211, 'hasung559', 50, 11, '게임기 팝니다~', 50000, 'y', '선물 받았는데 사용 안해서 판매 합니다. 교환 환불 안되고요 5만원에 가져가세요', to_date('03/01/2021', 'MM/DD/RRRR'), 'n', 80, 'n', 'img211.jpg');



-----------------------

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (162, 162, 'img162.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (163, 163, 'img163.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (164, 164, 'img164.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (165, 165, 'img165.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (166, 166, 'img166.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (167, 167, 'img167.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (168, 168, 'img168.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (169, 169, 'img169.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (170, 170, 'img170.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (171, 171, 'img171.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (172, 172, 'img172.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (173, 173, 'img173.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (174, 174, 'img174.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (175, 175, 'img175.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (176, 176, 'img176.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (177, 177, 'img177.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (178, 178, 'img178.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (179, 179, 'img179.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (180, 180, 'img180.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (181, 181, 'img181.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (182, 182, 'img182.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (183, 183, 'img183.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (184, 184, 'img184.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (185, 185, 'img185.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (186, 186, 'img186.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (187, 187, 'img187.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (188, 188, 'img188.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (189, 189, 'img189.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (190, 190, 'img190.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (191, 191, 'img191.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (192, 192, 'img192.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (193, 193, 'img193.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (194, 194, 'img194.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (195, 195, 'img195.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (196, 196, 'img196.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (197, 197, 'img197.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (198, 198, 'img198.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (199, 199, 'img199.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (200, 200, 'img200.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (201, 201, 'img201.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (202, 202, 'img202.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (203, 203, 'img203.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (204, 204, 'img204.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (205, 205, 'img205.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (206, 206, 'img206.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (207, 207, 'img207.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (208, 208, 'img208.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (209, 209, 'img209.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (210, 210, 'img210.jpg');

INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) 
VALUES (211, 211, 'img211.jpg');


