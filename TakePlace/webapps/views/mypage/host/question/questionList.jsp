<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page UI</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/common/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/common/common.css" type="text/css" />

<script src="<%= request.getContextPath() %>/resources/js/common/jquery-3.5.1.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/common/bootstrap.min.js"></script>

<!-- 아이콘 사용시 연결 -->
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<style>

.sidebar {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  z-index: 100; /* Behind the navbar */
  padding-top: 93px;
  box-shadow: inset -1px 0 0 rgba(0, 0, 0, .1);
  width: 225px;
}

.sidebar-sticky {
  position: relative;
  top: 0;
  height: calc(100vh - 48px);
  padding-top: .5rem;
  overflow-x: hidden;
  overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
}

@supports ((position: -webkit-sticky) or (position: sticky)) {
  .sidebar-sticky {
    position: -webkit-sticky;
    position: sticky;
  }
}

.sidebar .nav-link {
  font-weight: 500;
  color: #6C7994;
  padding: 15px 30px;
}

.sidebar .nav-link:hover {
  	color: #82cbc4;
	-webkit-transition: all 0.5s;
    -moz-transition: all 0.5s;
    -ms-transition: all 0.5s;
    -o-transition: all 0.5s;
    transition: all 0.5s;
}

.sidebar .nav-link .feather {
  margin-right: 4px;
  color: #999;
}

.sidebar .nav-link.active {
  color: #82cbc4;
}

.sidebar .nav-link:hover .feather,
.sidebar .nav-link.active .feather {
  color: inherit;
}

.sidebar-heading {
  font-size: .75rem;
  text-transform: uppercase;
}


.sidebar .nav-link svg {
	position: absolute;
    right: 18px;
    margin: 5px;
    font-size: 14px;
}

.mypage-content {
	margin-left: 225px; /*마이페이지에서만 sidebar 때문에  margin-left*/
	width : 1250px;
	height : 910px;
}

#tp-footer {
	margin-left: 225px; /*마이페이지에서만 sidebar 때문에  margin-left*/
}

.outer{
		width:auto;
		height:600px;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
	
	
	
 

    #mainWrapper{
        width: 100%;
        margin: 0 auto; /*가운데 정렬*/
    }

    #mainWrapper > ul > li:first-child {
        text-align: center;
        
        
        
        vertical-align:middle;
        line-height:30px;
}

    #ulTable {margin-top:10px;}
    

    #ulTable > li:first-child > ul > li {
        background-color:#D5DAE0;
        height : 50px;
        font-weight:bold;
        text-align:center;
        align : center;
        padding : 15px;
}

    #ulTable > li > ul {
        clear:both;
        padding:0px auto;
        position:relative;
        min-width:40px;
}
    #ulTable > li > ul > li { 
        float:left;
        padding : 10px;
        height : 50px;
        border-bottom:1px solid silver;
        vertical-align:baseline;
}    

    #ulTable > li > ul > li:first-child               	{width: 5%;} /*No  크기*/
    #ulTable > li > ul > li:first-child +li           	{width:20%;} /*공간명 크기*/
    #ulTable > li > ul > li:first-child +li+li        	{width:15%;} /*문의자 크기*/
    #ulTable > li > ul > li:first-child +li+li+li     	{width:30%;} /*문의 제목 크기*/
    #ulTable > li > ul > li:first-child +li+li+li+li  	{width:20%;} /*문의 날짜 크기*/
    #ulTable > li > ul > li:first-child +li+li+li+li+li {width:10%;} /*답변   크기*/

    #divPaging {
        clear:both; 
        margin:0 auto; 
        width:365px; 
        height:100px;
        padding :40px;
      
}

    #divPaging > div {
        float:left;
        width: 30px;
        margin:10px;
        text-align:center;
       
}

    #liSearchOption {
    	clear:both;
    	
    	align : center;
    	width : auto;
    	height : 100px;
    	
    	padding : 50px 50px 50px 325px;
    }
    #liSearchOption > div {
        margin:0 auto; 
        margin-top: 30px; 
        width:auto; 
        height:100px;
        align : center;

}

   

</style>

</head>
<body>

	<%@ include file="../../../common/header.jsp" %>
	
	<nav class="d-none d-md-block bg-light sidebar">
        <div class="sidebar-sticky">
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link" href="http://localhost:8088/takeplace/views/mypage/host/profile/hostPageProfile.jsp">프로필</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="http://localhost:8088/takeplace/views/mypage/host/products/productsList.jsp">내 상품 목록</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="http://localhost:8088/takeplace/views/mypage/host/reservation/reservationList.jsp">예약 현황</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="http://localhost:8088/takeplace/views/mypage/host/question/questionList.jsp">문의 내역</a>
            </li>
          </ul>
        </div>
   	</nav>
   	
   	<script>
   		var dropdown = document.getElementsByClassName("dropdown-btn");
		var i;
		
		for (i = 0; i < dropdown.length; i++) {
		  dropdown[i].addEventListener("click", function() {
			  console.log(this);
			  this.classList.toggle("active");
			  var dropdownContent = this.children;
			  var icon = dropdownContent[0].firstElementChild;
			  console.log(dropdownContent);
			  if (dropdownContent[1].style.display === "block") {
			 	dropdownContent[1].style.display = "none";
				icon.classList.add("fa-chevron-down");
				icon.style.color = "#6C7994";
			  } else {
			  	dropdownContent[1].style.display = "block";
			  	icon.classList.add("fa-chevron-up");
			  	icon.style.color = "#82cbc4";
			  }
		  });
		}
	</script>
	
	<section id="wrap-contents">
		<div class="mypage-content">
			<div class="container" >
				<nav aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="#">Home</a></li>
				    <li class="breadcrumb-item"><a href="#">마이페이지</a></li>
				    <li class="breadcrumb-item active" aria-current="page">문의 내역</li>
				  </ol>
				</nav>
				<h2 class="content-title">문의 내역</h2>
				
				<!-- 여기서부터 자유롭게 컨텐츠 잡으면서 시작 -->
				<nav>
                	<div class="nav nav-tabs" id="nav-tab" role="tablist">
                		<a style="width: 50%" class="nav-link active" id="nav-waiting-tab" data-toggle="tab" href="#nav-waiting" role="tab" aria-controls="nav-waiting" aria-selected="true">문의 대기</a>
                		<a style="width: 50%" class="nav-link" id="nav-complete-tab" data-toggle="tab" href="#nav-complete" role="tab" aria-controls="nav-complete" aria-selected="false">문의 완료</a>
              		</div>
         		</nav>
				<div class="tab-content" id="nav-tabContent" >
         <!-- 회원가입 시작 -->
              <div class="tab-pane fade show active" id="nav-waiting" role="tabpanel" aria-labelledby="nav-waiting-tab" >
                <div class ="outer">
                
                <form action="#" method="post" id="create_waitingAccount" name="waitingForm">
             
                <div class="outer">
							 <div id="mainWrapper">
						        <ul>
						            <li>
						                <ul id ="ulTable">
						                    <li>
						                        <ul>
						                            <li>No</li>
						                            <li>공간명</li>
						                            <li>문의자</li>
						                            <li>문의 제목</li>
						                            <li>문의 날짜</li>
						                            <li>답변</li>
						                        </ul>
						                    </li>
						                    <!-- 게시물이 출력될 영역 -->
						                    <li>
						                        <ul>
						                            <li>20</li>
						                            <li class="left">강남 일등 스터디룸</li>
						                            <li>guest01</li>
						                            <li>기본 인원에 대해 ...</li>
						                            <li>2020-10-29</li>
						                            <li>답변대기</li>
						                        </ul>
						                    </li>
						                    <li>
						                        <ul>
						                            <li>19</li>
						                            <li class="left">강남 일등 스터디룸</li>
						                            <li>guest02</li>
						                            <li>내일도 예약 가능한가요?</li>
						                            <li>2020-10-29</li>
						                            <li>답변대기</li>
						                        </ul>
						                    </li>
						                    <li>
						                        <ul>
						                            <li>18</li>
						                            <li class="left">강남 일등 스터디룸</li>
						                            <li>guest03</li>
						                            <li>예약했는데 시간 변경 가능한가요?</li>
						                            <li>2020-10-29</li>
						                            <li>답변대기</li>
						                        </ul>
						                    </li>
						                    <li>
						                        <ul>
						                            <li>17</li>
						                            <li class="left">강북 세미 파티룸</li>
						                            <li>guest04</li>
						                            <li>방 몇개인가요?</li>
						                            <li>2020-10-29</li>
						                            <li>답변대기</li>
						                        </ul>
						                        <ul>
						                            <li>16</li>
						                            <li class="left">강북 세미 파티룸</li>
						                            <li>guest05</li>
						                            <li>고기 구워먹어도 되나요...</li>
						                            <li>2020-10-29</li>
						                            <li>답변대기</li>
						                        </ul>
						                        <ul>
						                            <li>15</li>
						                            <li class="left">역삼 KH 스터디룸</li>
						                            <li>guest06</li>
						                            <li>화장실 깨끗한가요?</li>
						                            <li>2020-10-29</li>
						                            <li>답변대기</li>
						                        </ul>
						                        <ul>
						                            <li>14</li>
						                            <li class="left">강남 일등 스터디룸</li>
						                            <li>guest07</li>
						                            <li>최대인원 몇명인가요?</li>
						                            <li>2020-10-29</li>
						                            <li>답변대기</li>
						                        </ul>
						                        <ul>
						                            <li>13</li>
						                            <li class="left">강남 일등 스터디룸</li>
						                            <li>guest08</li>
						                            <li>시간변경 가능한가요?</li>
						                            <li>2020-10-29</li>
						                            <li>답변대기</li>
						                        </ul>
						                    <li>                                        
						                </ul>
						            </li>
						            </ul>
						            <!-- 게시판 페이징 영역 -->
						            <br>
						                <div id="divPaging">
						                    <button class="btn btn-tp-custom-white">◀</button>
						                    <button class="btn btn-tp-custom-white">1</button>
						                    <button class="btn btn-tp-custom-white">2</button>
						                    <button class="btn btn-tp-custom-white">3</button>
						                    <button class="btn btn-tp-custom-white">4</button>
						                    <button class="btn btn-tp-custom-white">5</button>
						                    <button class="btn btn-tp-custom-white">▶</button>
						                    
						                </div> 
						                <div id='liSearchOption'>
						                    <select id='selSearchOption' >
						                        <option value='A'>제목+내용</option>
						                        <option value='T'>제목</option>
						                        <option value='C'>내용</option>
						                    </select>
						                    <input type="text" class="form-control inline-block" id="exampleInputId1" aria-describedby="emailHelp">
						                    <button class="btn btn-tp-custom-green">검색</button>
						                </div>
						                </div>
						                </div>
                </form>
                
                </div>
              </div>
              
              <!-- ----------------------------------------------------------- -->
              
              <div class="tab-pane fade" id="nav-complete" role="tabpanel" aria-labelledby="nav-complete-tab">
                
                 <div style="border: 1px solid #82cbc4">
                 <form action="#" method="post" id="create_completeAccount">
                 <div class="outer">
							 <div id="mainWrapper">
						        <ul>
						            <li>
						                <ul id ="ulTable">
						                    <li>
						                        <ul>
						                            <li>No</li>
						                            <li>공간명</li>
						                            <li>문의자</li>
						                            <li>문의 제목</li>
						                            <li>문의 날짜</li>
						                            <li>답변</li>
						                        </ul>
						                    </li>
						                    <!-- 게시물이 출력될 영역 -->
						                    <li>
						                        <ul>
						                            <li>20</li>
						                            <li class="left">강남 일등 스터디룸</li>
						                            <li>guest01</li>
						                            <li>기본 인원에 대해 ...</li>
						                            <li>2020-10-29</li>
						                            <li>답변완료</li>
						                        </ul>
						                    </li>
						                    <li>
						                        <ul>
						                            <li>19</li>
						                            <li class="left">강남 일등 스터디룸</li>
						                            <li>guest02</li>
						                            <li>내일도 예약 가능한가요?</li>
						                            <li>2020-10-29</li>
						                            <li>답변완료</li>
						                        </ul>
						                    </li>
						                    <li>
						                        <ul>
						                            <li>18</li>
						                            <li class="left">강남 일등 스터디룸</li>
						                            <li>guest03</li>
						                            <li>예약했는데 시간 변경 가능한가요?</li>
						                            <li>2020-10-29</li>
						                            <li>답변완료</li>
						                        </ul>
						                    </li>
						                    <li>
						                        <ul>
						                            <li>17</li>
						                            <li class="left">강북 세미 파티룸</li>
						                            <li>guest04</li>
						                            <li>방 몇개인가요?</li>
						                            <li>2020-10-29</li>
						                            <li>답변완료</li>
						                        </ul>
						                        <ul>
						                            <li>16</li>
						                            <li class="left">강북 세미 파티룸</li>
						                            <li>guest05</li>
						                            <li>고기 구워먹어도 되나요...</li>
						                            <li>2020-10-29</li>
						                            <li>답변완료</li>
						                        </ul>
						                        <ul>
						                            <li>15</li>
						                            <li class="left">역삼 KH 스터디룸</li>
						                            <li>guest06</li>
						                            <li>화장실 깨끗한가요?</li>
						                            <li>2020-10-29</li>
						                            <li>답변대기</li>
						                        </ul>
						                        <ul>
						                            <li>14</li>
						                            <li class="left">강남 일등 스터디룸</li>
						                            <li>guest07</li>
						                            <li>최대인원 몇명인가요?</li>
						                            <li>2020-10-29</li>
						                            <li>답변대기</li>
						                        </ul>
						                        <ul>
						                            <li>13</li>
						                            <li class="left">강남 일등 스터디룸</li>
						                            <li>guest08</li>
						                            <li>시간변경 가능한가요?</li>
						                            <li>2020-10-29</li>
						                            <li>답변완료</li>
						                        </ul>
						                    <li>                                        
						                </ul>
						            </li>
						            </ul>
						            <!-- 게시판 페이징 영역 -->
						            <br>
						                <div id="divPaging">
						                    <button class="btn btn-tp-custom-white">◀</button>
						                    <button class="btn btn-tp-custom-white">1</button>
						                    <button class="btn btn-tp-custom-white">2</button>
						                    <button class="btn btn-tp-custom-white">3</button>
						                    <button class="btn btn-tp-custom-white">4</button>
						                    <button class="btn btn-tp-custom-white">5</button>
						                    <button class="btn btn-tp-custom-white">▶</button>
						                    
						                </div> 
						                <div id='liSearchOption'>
						                    <select id='selSearchOption' >
						                        <option value='A'>제목+내용</option>
						                        <option value='T'>제목</option>
						                        <option value='C'>내용</option>
						                    </select>
						                    <input type="text" class="form-control inline-block" id="exampleInputId1" aria-describedby="emailHelp">
						                    <button class="btn btn-tp-custom-green">검색</button>
						                </div>
						                </div>
						                </div>
                
                </form>
                </div>
                </div>
         </div>
				
				
				<!-- 여기가 컨텐츠 끝 -->
			</div>
		</div>
	</section>
	
	<%@ include file="../../../common/footer.jsp" %>
</body>
</html>