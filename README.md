![main_goguma](https://user-images.githubusercontent.com/87955005/151654019-dde31184-07a4-453f-938d-449338246e51.png)

>  **고구마켓**은 **Servlet**과 **JSP**로 구현한 중고거래 웹사이트입니다. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;👉[미리보기](https://umingming.github.io/Goguma/sample)<br />
>  **25일** 동안( 22.01.03 - 22.01.27 ) **6명**의 팀원이 개발에 참여했습니다. &nbsp;&nbsp;&nbsp;📝[프로젝트 일지](https://www.notion.so/yumding/10800488ce4345e38dd9cb80348a9713 )<br />

<br />

# 📌 Table Of Contents
* [📖 Introduction](#-introduction)
* [🙋 My Role](#-my-role)
* [🔎 Detail](#-detail)
* [💡 Consideration](#-consideration)

<br />
<br />
<br />



# 📖 Introduction
### 1. 프로젝트 개요
* **입찰 시스템**을 통해 사용자가 중고 제품을 보다 저렴하게 구매합니다.
* 직관적인 UI로 관리자는 빠르고 쉽게 **사이트**를 **관리**하고, **통계 현황**을 확인할 수 있습니다.
<br />

### 2. 개발 환경
<img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white">  <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white">  <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white">  <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">  <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">  <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white"><br/>
<img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">  <img src="https://img.shields.io/badge/eclipse ide-2C2255?style=for-the-badge&logo=eclipseide&logoColor=white">  <img src="https://img.shields.io/badge/visual studio code-007ACC?style=for-the-badge&logo=visualstudiocode&logoColor=white">  <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">  
* Windows 10
* Java(JDK 1.8) / HTML5 / CSS3 / JavaScript / jQuery 1.12 / Oracle 
* Apache Tomcat v8.5 / Servlet / JSP 
* Eclipse IDE for Enterprise Java Developers / Visual Studio Code
* Github
<br />

### 3. 프로젝트 내용
![ERD](https://user-images.githubusercontent.com/87955005/151833773-f69b809c-eb47-4356-9641-6457e20377f7.JPG)
#### 3-1. 비회원
* 회원가입 및 로그인, ID/PW 찾기
* 인기 검색어와 상품 검색
* 중고거래 등 게시글 조회

#### 3-2. 회원
* 회원 정보 수정 및 탈퇴
* 중고거래 및 커뮤니티 게시글 작성
* 경매 물품 입찰
* 메시지 작성과 조회

#### 3-3. 관리자
* 회원 통합 관리
* 문의 사항 답변
* 고객센터 게시글 등록
* 사이트 통계 현황 확인


<br />
<br />
<br />

# 🙋 My Role
### 1. 고구마켓 메인 
![main](https://user-images.githubusercontent.com/87955005/151651298-caf2b362-9813-44ad-849b-7a7bcad1338d.gif)

#### 1-1. 메인 화면
* 오늘 등록된 **중고 물품**을 **최신 순**으로 조회할 수 있으며, 클릭시 해당 거래글로 **이동**합니다.
* 최근 **공지사항**의 제목을 클릭하면 내용을 **확인**할 수 있습니다.
* 사이드에 고정된 **top 버튼**을 통해 페이지 **상단**으로 이동 가능합니다.
* **하트 버튼**은 회원이 **찜**한 물품의 수를 상징하며, 버튼 클릭으로 찜목록 페이지에 **접근**합니다.

#### 1-2. 인기 검색어 조회
* **검색창**을 클릭해 **인기 검색어**를 조회할 수 있습니다.
* 인기 검색어는 **사용자**의 검색 **빈도수**에 따라 순위가 결정됩니다.
* 검색어를 클릭하면 해당 **키워드**가 검색창에 **자동** 입력됩니다.

<br />
<br />

### 2. 메시지
![message](https://user-images.githubusercontent.com/87955005/151649991-7db800dc-1e59-408a-a728-effb93681da1.gif)

#### 2-1. 메시지 목록
* 헤더와 사이드의 **메시지 아이콘**을 통해 메시지 목록으로 이동합니다.
* 한 페이지 당 **10개**의 메시지만 노출되며 원하는 페이지에 **접근**할 수 있습니다..
* **N 배지**는 **최근 메시지**를 상징합니다.
* **검색** 시 **키워드**와 관련된 메시지만 확인할 수 있습니다.

#### 2-2. 메시지 확인
* 헤더의 메시지 아이콘에서 **미확인** 메시지 개수를 알 수 있습니다.
* 메시지를 모두 확인하면 **아이콘**이 **변경**됩니다.
* **확인** 메시지는 받은 메시지 목록에서 **회색**으로 표시됩니다.
* 자유롭게 메시지를 **삭제**할 수 있습니다.

#### 2-3 메시지 작성
* **답장** 버튼으로 **발신자**에게 메시지를 작성할 수 있습니다.
* 작성된 메시지는 바로 **확인**이 가능하며, 버튼을 통해 **삭제**합니다.

<br />
<br />

### 3. 커뮤니티
![community](https://user-images.githubusercontent.com/87955005/151649988-fc70e196-7463-4aea-a3e3-cb7ff955e1e1.gif)

#### 3-1. 커뮤니티 목록
* 메시지와 마찬가지로 **페이징** 되어 있으며 **N 배지**로 최근 게시글을 분류합니다.
* 제목, 내용, 작성자로 **검색**할 수 있으며 **키워드**가 포함된 글만 노출됩니다.
* 제목 옆 [숫자]는 게시글에 달린 **댓글 수**를 의미합니다.

#### 3-2. 게시글 확인
* 게시글 확인과 동시에 **조회수**가 **증가**됩니다.
* **작성자**에게만 **수정**과 **삭제** 버튼이 노출되며 클릭 시 해당 페이지로 **이동**합니다.
* 게시글 작성 시간과 **작성자**의 닉네임, 프로필이 제목 밑에 **표기**됩니다.
* 좌측 하단의 이전과 다음 버튼으로 **다른 게시물**에 **접근**할 수 있습니다.
 
#### 3-3. 게시글의 댓글
* 회원은 게시글에 **댓글**을 **등록**할 수 있으며 버튼을 통해 **삭제** 가능합니다.
* 게시글과 마찬가지로 댓글이 작성된 시간과 **작성자**의 닉네임, 프로필이 **표시**됩니다.


<br />
<br />
<br />

# 🔎 Detail
### 1. 인기 검색어
* tblSearch 테이블에서 키워드를 **그룹화**하고, 검색 시간이 현재 시간과 일치할 경우만 포함하는 쿼리입니다.
    ```sql
    select 
    	keyword, 
    	count(*) as cnt 
    from tblSearch 
    group by keyword, to_char(time, 'yy-mm-dd hh24') 
    having to_char(time, 'yy-mm-dd hh24') = to_char(sysdate, 'yy-mm-dd hh24')
    order by cnt desc;
    ```
* **ArrayList**에 넣은 키워드 객체를 jsp에서 li 태그 내 순서대로 **출력**했습니다.
    ```javascript
    <ul class="poplular-keyword">
    	<li class="keyword">1 ${searchList[1].keyword}</li>
    	<li class="keyword">2 ${searchList[2].keyword}</li>
    	...
    	<li class="keyword">10 ${searchList[10].keyword}</li>
    </ul>
    ```
* **jQuery**로 검색창을 클릭해야 인기 검색어가 노출되도록 **슬라이딩 효과**를 주었습니다.
   ```javascript
   $(function() {
   	$(".popular-keyword").hide();
   	$(".search").click(function() {
   		$(".popular-keyword").slideToggle(200);
   	});
   });
   ```
* li 태그 클릭 시 해당 **innerHTML** 값이 **검색 창**에 자동으로 입력되는 함수입니다.
   ```javascript
   $('.keyword').click(function() {
   	$('.search').val(this.innerHTML);
   	$(".popular-keyword").slideToggle(200);
   });
   ```
   
<br />
<br />

### 2. 새로운 메시지
* 메시지를 주고 받을 땐 id 대신 **닉네임**이 노출되므로 tblMessage와 tblUserProfile을 **inner join**한 **view** 생성했습니다.
   ```sql
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
   ```
* **vwMessage**를 바탕으로 사용자의 **미확인 메시지**를 알려주는 쿼리입니다.
    ```sql
    select 
    	count(*) as cnt 
    from vwMessage 
    where receiver_id=? 
    	and is_check='N';
    ```
* 새로운 메시지 수에 따라 헤더의 **아이콘**이 **변경**되도록 JSTL 조건문을 사용했습니다.
   ```javascript
   <c:if test="${newMessage == 0}">
   <li>
   	<span class="bi bi-envelope-open"></span>
   </li>
   </c:if>
   <c:if test="${newMessage > 0}">
   <li>
   	<span class="bi bi-envelope"></span>
   </li>
   <li>
   	<span>${newMessage}</span>
   </li>
   </c:if>
   ```

<br />
<br />

### 3. 게시글 삭제
* 작성자만 삭제가 가능하도록 **session**과 게시글 **dto**의 id가 **일치**할 경우만 버튼이 보이도록 설정했습니다.
   ```javascript
   <c:if test="${id == dto.id}">
   <td class="button">
   	<input type="button" value=삭제 class="btn important del">
   </td>
   </c:if>
   ```
* 삭제 버튼을 클릭하면 **삭제 여부**를 묻는 창이 발생하고, 삭제 페이지로 이동하는 script입니다.
   ```javascript
   $('.btn.del').click(function(){
   	if(confirm("정말 삭제하시겠습니까?")){
   		location.href='/goguma/community/communityDel.do?seq=${dto.seq}';
   	}
   })
   ```
* 개시글을 **참조**하는 댓글이 존재하므로, 게시글 삭제 전 해당 글에 달린 **댓글**이 모두 **삭제**되는 **트리거**를 만들었습니다.
   ```sql
   create or replace Trigger trgCommunityDel
   	before 
   	delete on tblCommunity
   for each row
   begin
   	delete from tblComcomment where community_seq = :old.community_seq;
   	delete from tblCommunityImage where community_seq = :old.community_seq;
   end;
   ```

<br />
<br />
<br />

# 💡 Consideration
### 1. 후기 </br>
> &nbsp;&nbsp;열정적인 팀원들을 만나 온전히 개발에 몰입할 수 있었던 프로젝트입니다. 이전의 프로젝트와 달리 수많은 오류들을 직면해, 기능 구현보다 오류 해결에 더 많은 시간이 투자됐습니다. 
<br />

