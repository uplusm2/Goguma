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
      

      
      
      
             
