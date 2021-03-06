<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<style>
		#tp-header {
		  background-color: #fff;
		  border-bottom: 1px solid #ddd;
		  position: fixed;
		  left: 0;
		  top: 0;
		  right: 0;
		  width: 100%;
		  z-index: 999;
		  box-shadow: 2px 2px 10px 2px rgba(0, 0, 0, 0.2)
		}
		.tp-custom-navbar {
		  background-color: transparent;
		  border: none;
		  border-radius: 0;
		  margin-bottom: 0;
		  -webkit-transition: all 0.5s;
		  -moz-transition: all 0.5s;
		  -ms-transition: all 0.5s;
		  -o-transition: all 0.5s;
		  transition: all 0.5s;
		}
		.tp-custom-navbar .tp-custom-nav form input:focus {
			border-color: #82cbc4;
		}
		.tp-custom-navbar .tp-custom-nav li {
			margin: 0 10px;
		}
		.tp-custom-navbar .tp-custom-nav li a {
		  color: #333;
		  -webkit-transition: all 0.5s;
		  -moz-transition: all 0.5s;
		  -ms-transition: all 0.5s;
		  -o-transition: all 0.5s;
		  transition: all 0.5s;
		}
		.tp-custom-navbar .tp-custom-nav li a:hover {
			color: #82cbc4 !important;
		} 
		.tp-custom-navbar .tp-custom-nav .dropdown-menu {
		  background-color: #fff;
		  border-radius: 0;
		}
		.tp-custom-navbar .tp-custom-nav .dropdown-menu li a {
		  padding: 10px 20px;
		}
	</style>
</head>

<body>
	<header id="tp-header">
		<div class="container-fluid">
		   <nav class="navbar navbar-expand-md navbar-light tp-custom-navbar">
		   		<a class="navbar-brand" href="<%= request.getContextPath() %>/index.jsp">
		   			<img src="<%= request.getContextPath() %>/resources/images/common/logo-horizontal.png" alt="Take Place" width="160" height="66"/>
		   		</a>
			    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
			        <span class="navbar-toggler-icon"></span>
			    </button>
		
			    <div class="collapse navbar-collapse tp-custom-nav" id="navbarNav">
				    <form class="mr-auto form-inline my-2 my-lg-0">
				      <input class="form-control mr-sm-2" type="search" placeholder="????????????/???????????? ??????" aria-label="Search">
				      <button class="btn btn-tp-custom-green my-2 my-sm-0" type="submit">??????</button>
				    </form>
				    
			        <ul class="navbar-nav mu-main-nav font-bold">
			        	<li class="nav-item">
		                	<a class="nav-link" href="<%= request.getContextPath() %>/views/intro/intro.jsp">????????? ??????</a>
			            </li>
			            <li class="nav-item">
		                	<a class="nav-link" href="<%= request.getContextPath() %>/views/products/productsList.jsp">?????? ??????</a>
			            </li>
			            <li class="nav-item">
		                	<a class="nav-link" href="<%= request.getContextPath() %>/views/notice/noticeList.jsp">????????????</a>
			            </li>
			            <li class="nav-item">
		                	<a class="nav-link" href="<%= request.getContextPath() %>/views/howto/howto.jsp">????????????</a>
			            </li>
			            <li class="nav-item">
		                	<a class="nav-link" href="<%= request.getContextPath() %>/views/member/signIn.jsp">?????????</a>
			            </li>
			            <li class="nav-item">
		                	<a class="nav-link" href="<%= request.getContextPath() %>/views/member/signUp.jsp">????????????</a>
			            </li>
			        </ul>
			    </div>
			</nav>
		</div>
	</header>
</body>
</html>