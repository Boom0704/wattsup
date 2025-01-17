
<%
	/* ================================================================= 
	 * 작성일     : 2024. 11. 18. 
	 * 작성자     : 팽수
	 * 상세설명  : 
	 * 화면ID  :
	 * ================================================================= 
	 * 수정일         작성자             내용      
	 * -----------------------------------------------------------------
	 *
	 * ================================================================= 
	 */
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<!--jua font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gamja+Flower&family=Jua&display=swap"
	rel="stylesheet">
<!--jua font-->

<!-- Icon Font Stylesheet -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">



<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<!--Chart_js-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js"></script>
<!--Chart_js-->
<!-- 쿠키관련 -->
<script src="/resources/js/login.js"></script>
<!-- 쿠키관련 -->


<style>
.btn_log {
	border-radius: 10px; /* 둥근 모서리 */
	padding: 12px 15px;
	width: 100%;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2); /* 기본 그림자 */
	transition: background-color 0.3s ease, transform 0.3s ease, box-shadow
		0.3s ease; /* 부드러운 전환 효과 */
}

/* 로그인 버튼 스타일 */
.btn_log.mb-2 {
	background-color: chartreuse; /* 기본 연두색 */
	color: white;
}

/* 로그인 버튼 호버 효과 */
.btn_log.mb-2:hover {
	background-color: #6B8E23; /* 더 짙은 연두색 */
	box-shadow: 0 6px 10px rgba(0, 0, 0, 0.3); /* 호버 시 그림자 확대 */
	transform: translateY(-2px); /* 살짝 위로 이동 */
}

.log {
	height: 50px;
	border: 2px solid;
}

.log:active {
	transform: scale(0.98);
}

button:active {
	transform: scale(0.95);
}

input {
	background-color: #eee;
	border: none;
	border-radius: 10px;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
}

form {
	background-color: #FFFFFF;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 50px;
	height: 100%;
	text-align: center;
}

.main {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px
		rgba(0, 0, 0, 0.22);
	position: relative;
	overflow: hidden;
	width: 768px;
	max-width: 100%;
	min-height: 480px;
	background: #f6f5f7;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 40vh;
}

.form-container {
	position: absolute;
	top: 0;
	height: 100%;
}

.sign-in-container {
	left: 0;
	width: 50%;
}

.overlay-container {
	position: absolute;
	top: 0;
	left: 50%;
	width: 50%;
	height: 100%;
	overflow: hidden;
	transition: transform 0.6s ease-in-out;
	z-index: 100;
}

.overlay {
	color: #FFFFFF;
	position: relative;
	left: -100%;
	height: 100%;
	width: 200%;
}

.bg-loginpage {
	background: url(img/loginimg.png);
	margin-left: 380px;
	background-repeat: no-repeat;
	background-size: cover;
}

.bg-loginpage .loginpage-item a {
	color: white !important;
}

.bg-loginpages {
	background: url(img/loginimg.png);
	margin-left: 0px;
	background-repeat: no-repeat;
	background-size: cover;
}

.bg-loginpages .loginpage-item a {
	color: white !important;
}

#signupButton {
	background-color: #87CEEB; /* 밝은 하늘색 */
	color: white;
}

/* 회원가입 버튼 호버 효과 */
#signupButton:hover {
	background-color: #4682B4; /* 어두운 하늘색 */
	box-shadow: 0 6px 10px rgba(0, 0, 0, 0.3); /* 호버 시 그림자 확대 */
	transform: translateY(-2px); /* 살짝 위로 이동 */
}

input[type="checkbox"] {
    --active: #275EFE; /* 체크된 상태의 배경 색상 */
    --active-inner: #fff; /* 체크 아이콘 색상 */
    --focus: 2px rgba(39, 94, 254, 0.3); /* 포커스 시 테두리 */
    --border: #BBC1E1; /* 기본 테두리 */
    --background: #fff; /* 기본 배경 */
    -webkit-appearance: none;
    -moz-appearance: none;
    height: 20px;
    width: 20px;
    border: 1px solid var(--border);
    border-radius: 4px; /* 둥근 모서리 */
    background: var(--background);
    display: inline-block;
    vertical-align: middle;
    position: relative;
    cursor: pointer;
    outline: none;
    margin-right: 10px; /* 라벨과 간격 */
    transition: background 0.3s ease, border-color 0.3s ease, transform 0.2s ease;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1); /* 기본 그림자 */
}

/* 체크박스 체크 시 스타일 */
input[type="checkbox"]:checked {
    background: var(--active);
    border-color: var(--active);
}

/* 체크박스 안의 체크 아이콘 */
input[type="checkbox"]:checked:after {
    content: '';
    display: block;
    width: 8px;
    height: 10px;
    border: solid var(--active-inner);
    border-width: 0 2px 2px 0;
    transform: rotate(45deg) translate(-50%, -50%);
    position: absolute;
    top: 50%;
    left: 35%;
}

/* 체크박스 포커스 시 효과 */
input[type="checkbox"]:focus {
    box-shadow: 0 0 3px var(--focus);
}

/* 체크박스 라벨 스타일 */
label {
    font-size: 16px;
    line-height: 20px;
    color: #444;
    cursor: pointer;
    display: inline-block;
    vertical-align: middle;
}

/* 체크박스 컨테이너 스타일 */
.remember-me {
	margin-top: 6px;
	margin-bottom: 20px;
    display: flex;
    align-items: center;
    justify-content: flex-start; /* 좌측 정렬 */
    gap: 8px; /* 체크박스와 라벨 사이 간격 */
}
.text-danger {
    color: red;
    font-size: 0.835rem;
    margin-bottom: 5px;
    display: block;


}
</style>


</head>
<body style="overflow: hidden;">
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->

	<!-- Topbar Start -->
	<div class="container-fluid px-5"
		style="background-color: rgb(0, 0, 0);">
		<div class="row gx-0 align-items-center" style="height: 45px;">
			<div class="col-lg-8 text-center text-lg-start mb-lg-0">

				<a href="/" class="text-light me-4"><i
					class="fas fa-home text-primary me-2"></i>Watt's Up?</a>



			</div>
			<div class="col-lg-4 text-center text-lg-end">
				<div class="d-flex align-items-center justify-content-end">


					<!-- 세션이 없을때
                <a href="#" class="text-light me-4"><i class="fas fa-map-marker-alt text-primary me-2"></i>회사이름</a>
                <a href="#" class="text-light me-4"><i class="fas fa-user-alt text-primary me-2"></i>본인</a>
                <a href="#" class="text-light me-4"><i class="fas fa-user text-primary me-2"></i>Example@gmail.com</a>
                <a href="#" class="text-light me-4"><i class="fas fa-user text-primary me-2"></i>로그아웃</a>
                -->


					<a href="/login" class="text-light me-4"><i
						class="fas fa-pen-square text-primary me-2"></i>로그인</a> <a
						href="/regist" class="text-light me-4"><i
						class="fas far fa-bookmark text-primary me-2"></i>회원가입</a>



				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->


	<div class="container main wow fadeInUp" id="container"
		style="margin-top: 170px;">
		<div class="nonscroll">
			<div class="form-container sign-in-container">
				<form action="loginDo">
					<h1>로그인</h1>
					<input class="form-control log" type="id" placeholder="Id"
						id="memId" name="memId" />
					<input class="form-control log"
						style="height: 50px;" type="password" placeholder="Password"
						id="memPw" name="memPw" />
						<span class="text-danger">${error}</span> 
						
				    <div class="remember-me">
				        <input type="checkbox" id="rememberMe" />
				        <label for="rememberMe">아이디 비밀번호 기억하기</label>
				    </div>


					<button class="btn btn-primary btn_log mb-2">로그인</button>

					<button class="btn btn-primary btn_log" type="button"
						id="signupButton" onclick="location.href='regist'">회원가입</button>
				</form>


			</div>
			<div class="overlay-container">
				<div class="overlay bg-loginpages">
					<div class="overlay-panel overlay-right"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- JavaScript Libraries -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>


	<!-- Template Javascript -->
	<script src="js/main.js"></script>
</body>
</html>