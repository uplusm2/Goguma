select * from tbluser;
select * from tblfavorite;
select * from tbluserprofile;
select * from tblreview;
select * from tbldeal;
select * from tblProduct;

drop view vwReceived_buyer_reviews;   
create or replace view vwReceived_buyer_reviews
    as 
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
    
select * from(select a.*,rownum as rnum from (select * from vwReceived_buyer_reviews where buyid = 'user17' order by regdate) a) where rnum BETWEEN 1 and 100;    
    
drop view vwReceived_seller_reviews;   
create or replace view vwReceived_seller_reviews
    as
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
    
select avg(SCORE)as avg from vwReceived_seller_reviews where selid = 'user5';

select * from(select a.*,rownum as rnum from (select * from vwReceived_seller_reviews where selid = 'user17' order by regdate) a) where rnum BETWEEN 1 and 100;

select * from vwReceived_buyer_reviews where buyid = 'user5';

select count(*) as cnt from(select rownum as seq, a.* from (select * from vwReceived_buyer_reviews where buyid = 'user2' order by regdate) a) ;
    
    
select * from tbluserprofile where id = 'user5';
    
update tbluserprofile set intro = 'hello' , nickname ='히히' , path = 'default image.jpg' where id ='user5';



select * from tblproduct 
    inner join tbldeal on tblproduct.product_seq = tbldeal.product_seq
    inner join tbluserprofile on tbluserprofile.id = tblproduct.id;


create or replace view vwproductsold
    as
select --판매한상품
    tblproduct.product_seq 
    ,'['||tblproduct.name||']'||tblproduct.content as content
    , tbluserprofile.nickname,tbluserprofile.id 
    , tbldeal.deal_seq
    , tbldeal.REGDATE
    from tblproduct 
    inner join tbldeal on tblproduct.product_seq = tbldeal.product_seq
    inner join tbluserprofile on tbluserprofile.id = tblproduct.id order by REGDATE;

select * from vwproductsold;

create or replace view vwPurchasedProduct
    as
select --구매한상품
    tblproduct.product_seq 
    ,'['||tblproduct.name||']'||tblproduct.content as content
    , tbluserprofile.nickname,tbluserprofile.id 
    , tbldeal.deal_seq
    , tbldeal.REGDATE
    from tblproduct 
    inner join tbldeal on tblproduct.product_seq = tbldeal.product_seq
    inner join tbluserprofile on tbluserprofile.id = tbldeal.id order by REGDATE;

select * from vwPurchasedProduct where id = 'user2';


select * from(select a.*,rownum as rnum from (select * from vwReceived_seller_reviews where selid = 'user17' order by regdate) a);


select * from(select a.*,rownum as rnum from (select * from vwReceived_buyer_reviews where buyid = 'user17' order by regdate) a) where rnum between 1 and 10;


select -- 판매한것
    a.PRODUCT_SEQ
    ,a.content
    ,a.nickname
    ,a.id
    ,a.regdate
    ,re.DEAL_SEQ
    ,re.Type
from(select a.*,rownum as rnum from(select * from vwproductsold where id = 'user17' order by regdate) a) a
            left outer join tblreview re on a.DEAL_SEQ = re.deal_seq where re.type='B';

select * from(select a.* , rownum as rnum from( select * from (vwproductsold p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)
        where id = 'user2' and type='B' order by p.regdate) a) where rnum between ? and ?;

select -- 판매한것
    count(*) as cnt
from(select a.*,rownum as rnum from(select * from vwproductsold where id = ? order by regdate) a) a
            left outer join tblreview re on a.DEAL_SEQ = re.deal_seq where re.type='B';



select -- 구매한것
    a.PRODUCT_SEQ
    ,a.content
    ,a.nickname
    ,a.id
    ,a.regdate
    ,re.DEAL_SEQ
    ,re.Type
from(select a.*,rownum as rnum from(select * from vwPurchasedProduct where id = 'user17' order by regdate) a) a
            left outer join tblreview re on a.DEAL_SEQ = re.deal_seq where re.type='B' and a.rnum >0;

select -- 구매한것
    count(*)
from(select a.*,rownum as rnum from(select * from vwPurchasedProduct where id = 'user17' order by regdate) a) a
            left outer join tblreview re on a.DEAL_SEQ = re.deal_seq where re.type='B' and a.rnum >0;


select * from(select a.* , rownum as rnum from( select * from (vwPurchasedProduct p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)
        where id = 'user2' and type='B' order by p.regdate) a) where rnum between ? and ?;


select * from (select c.* , rownum as rnum from (select * from vwCommunity  order by community_seq desc) c ) where rnum between 0 and 100;



select 
    a.*
from(select a.*,rownum as rnum from(select * from vwproductsold where id = 'user17'  order by regdate) a) a;
commit;


select max(rnum) as cnt from(select a.*,rownum as rnum from (select * from vwReceived_buyer_reviews where buyid = 'user1' order by regdate) a);



insert into tblProduct (product_seq, seller_id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount, is_deletion) values (product_seq.nextVal, 'user1', 47, 10, '에어컨', 308000, 'n', '싸게 내놓습니다.', '2020-01-10', 'y', 7, 'n');























    