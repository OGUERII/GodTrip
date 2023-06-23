<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<title>intro</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
body, h1, h2, h3, h4, h5, h6 {
	  font-family: 'Noto Sans KR', sans-serif;
	}

html {
  scroll-behavior: smooth;
}

body, html {
  height: 100%;
  line-height: 1.8;
}

.w3-bar .w3-button {
  padding: 16px;
}

.navbar {
  background-color: #f8f9fa;
  height: auto;
}

.navbar-brand {
  font-weight: bold;
  color: #1cc3ff;
}

.navbar-nav .nav-item .nav-link {
  color: #008bbe;
}

.card {
  border-radius: 0;
  box-shadow: 0 4px 8px rgba(0,0,0,0.2);
}

.card-img-top {
  height: 200px;
  object-fit: cover;
}


h3 {
  color: #19b3eb;
  font-weight: bold;
}

footer {
   background-color: #f8f9fa;
}
.img-fluid:hover {
    transform: scale(1.1);
    transition: all .3s ease-out;
}
.img-sz {
	width: 85%;
	height: auto;
	margin-left: 30px;
}
.navbar-logo {
	max-height: 45%;
	max-width: 45%;
	height: auto;
	width: auto;
	margin-top: 0;
	margin-bottom: 0;
}

</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-md navbar-light" >
	<div class="container">
	<a class="navbar-brand" href="/home" >
		<img src="../images/logo2.png" alt="Logo" class="navbar-logo">
	</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item" style="white-space: nowrap;">
					<a class="nav-link" href="../area/areaForm">내·만·패</a>
	        	</li>
	        	<li class="nav-item" style="white-space: nowrap;">
	          		<a class="nav-link" href="../attraction/attractionList">관광지소개</a>
	        	</li>
	        	<li class="nav-item" style="white-space: nowrap;">
	          		<a class="nav-link" href="../review/reviewList">여행후기</a>
	        	</li>
	        	<li class="nav-item" style="white-space: nowrap;">
	          		<a class="nav-link" href="../service/serviceList">고객센터</a>
	        	</li>
	        	<li class="nav-item" style="white-space: nowrap;">
	        	<c:choose>
	            <c:when test="${!(empty s_id || empty s_passwd || s_mlevel == 'E1' || s_mlevel == 'F1' )}">
	              <a class="nav-link" href="/member/memberpage">마이페이지</a>
	            </c:when>
	            <c:when test="${!(empty p_id || empty p_passwd ||  empty p_level )}">
	              <a class="nav-link" href="/partner/partnerpage">마이페이지</a>
	            </c:when>
	            <c:otherwise>
	              <a class="nav-link" href="/member/memberlogin" onclick="alert('로그인이 필요한 서비스입니다.');">마이페이지</a>
	            </c:otherwise>
	          </c:choose>
	                </li>
	                
	                <c:choose>
	                <c:when test="${(empty s_id || empty s_passwd || s_mlevel == 'E1' || s_mlevel == 'F1') && (empty p_id || empty p_passwd || empty p_level)}">
	                <li class="nav-item dropdown nav-item">
	                 <li class="nav-item dropdown"><a
	                       class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
	                       role="button" data-toggle="dropdown">로그인</a>
	                       <div class="dropdown-menu dropdown-menu-right">
	                          
	                                <a class="dropdown-item" href="/partner/partnerlogin">파트너로그인</a>
	                                <a class="dropdown-item" href="/member/memberlogin">회원로그인</a>
	                             </c:when>
	                             <c:otherwise>
	           
	                                <a href="/member/logout.do" class="w3-bar-item w3-button w3-mobile"><h6>로그아웃</h6></a>
	                             </c:otherwise>
	                          </c:choose>
	          		</div>
	        	</li>
			</ul>
		</div>
	</div>
</nav>

<header class="w3-display-container w3-content w3-hide-small" style="max-width:100%;">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../images/header2.jpg" class="d-block w-100" alt="header2" style="width:100%; max-height: 60vh;">
    </div>
    <div class="carousel-item">
      <img src="../images/header3.jpg" class="d-block w-100" alt="header3" style="width:100%; max-height: 60vh;">
    </div>
    <div class="carousel-item">
      <img src="../images/header6.jpg" class="d-block w-100" alt="london6" style="width:100%; max-height: 60vh;">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div class="w3-display-middle" style="width:40%">
  <div class="w3-display-left w3-padding w3-hide-small" style="width:100%">
    <div class="w3-light-gray w3-opacity w3-hover-opacity-off w3-padding-large w3-round-large" style="text-align: center; max-width: 80%; margin: 0 auto;">
      <h5 class="w3-large" id="my">나만의 여행패키지를 만들어보세요</h5>
      <hr class="w3-opacity">
      <p style="text-align: center;">
        <button class="w3-button w3-block w3-Gray w3-round" id="start" onclick="location.href='../area/areaForm'" style="margin: 0 auto; display: block;">바로가기</button>
      </p>
    </div>
  </div>
</div>
</header>


<!-- area Section -->
<section id="projects" class="w3-container w3-padding-32">
  <div class="container">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">인기여행지</h3>
    <div class="row">
      <div class="col-lg-4 col-md-6 mb-4">
      	<div class="row">
          <a href="#">
            <img src="../images/gangneung.png" alt="gangneung" class="img-fluid img-sz">
          </a>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4">
        <div class="row">
          <a href="#">
            <img src="../images/jeju.png" alt="jeju" class="img-fluid img-sz">
          </a>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4">
        <div class="row">
          <a href="#">
            <img src="../images/busan.png" alt="busan" class="img-fluid img-sz">
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- reviews Section -->
<section id="reviews" class="w3-container w3-padding-32">
	<div class="container">
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">여행후기</h3>
		<div class="row">
      	<div class="col-lg-4 col-md-6 mb-4">
        	<div class="card">
          	<a href="../review/reviewList">
            <img src="../images/review_gn.png" alt="House" class="card-img-top">
          	</a>
        	</div>
      	</div>
      	<div class="col-lg-4 col-md-6 mb-4">
        	<div class="card">
          	<a href="../review/reviewList">
            <img src="../images/review_gj.png" alt="House" class="card-img-top">
          	</a>
        	</div>
      	</div>
      	<div class="col-lg-4 col-md-6 mb-4">
        	<div class="card">
          	<a href="../review/reviewList">
            <img src="../images/review_hc.png" alt="House" class="card-img-top">
          	</a>
       		</div>
      	</div>
    	</div>
	</div>
</section>

<!-- Footer -->
<footer class="w3-container w3-center w3-opacity w3-margin-bottom">
  <div class="w3-middle w3-padding-16">
  	<p>Copyright &copy; 2023 GOD TRIP</p>
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</footer>

<script>
// Tabs
function openLink(evt, linkName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("myLink");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
  }
  document.getElementById(linkName).style.display = "block";
  evt.currentTarget.className += " w3-red";
}

</script>

</body>
</html>