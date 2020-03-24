<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ page session="false"%> --%>
<!doctype html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta http-equiv="Content-Language" content="en" />
<meta name="msapplication-TileColor" content="#2d89ef">
<meta name="theme-color" content="#4188c9">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="HandheldFriendly" content="True">
<meta name="MobileOptimized" content="320">
<link rel="icon" href="./favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" type="image/x-icon" href="./favicon.ico" />
<!-- Generated: 2019-04-04 16:55:45 +0200 -->
<title>index</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext">
<script src="./assets/js/vendors/jquery-3.2.1.min.js"></script>
<script src="./assets/js/require.min.js"></script>
<script>
	requirejs.config({
		baseUrl : '.'
	});
</script>
<!-- Dashboard Core -->
<link href="assets/css/dashboard.css" rel="stylesheet" />
<script src="assets/js/dashboard.js"></script>
<!-- c3.js Charts Plugin -->
<link href="assets/plugins/charts-c3/plugin.css" rel="stylesheet" />
<script src="assets/plugins/charts-c3/plugin.js"></script>
<!-- Google Maps Plugin -->
<link href="assets/plugins/maps-google/plugin.css" rel="stylesheet" />
<script src="assets/plugins/maps-google/plugin.js"></script>
<!-- Input Mask Plugin -->
<script src="assets/plugins/input-mask/plugin.js"></script>
<!-- Datatables Plugin -->
<script src="assets/plugins/datatables/plugin.js"></script>
<!-- Daum map api -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="./assets/js/postcode.v2.js"></script>
</head>
<body class="">
	<div class="page">
		<div class="flex-fill">
			<div class="header py-4">
				<div class="container">
					<div class="d-flex">
						<a class="header-brand" href="./index">
							<img src="demo/brand/dbpetlogo.png" class="header-brand-img" alt="dbpet logo">
						</a>
						<div class="d-flex order-lg-2 ml-auto">
							<c:choose>
								<c:when test="${not empty sessionScope.user}">
									<div class="dropdown d-none d-md-flex">
										<a class="nav-link icon" data-toggle="dropdown">
											<i class="fe fe-bell"></i> <span class="nav-unread"></span>
										</a>
										<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
											<a href="#" class="dropdown-item d-flex">
												<span class="avatar mr-3 align-self-center" style="background-image: url(demo/faces/male/41.jpg)"></span>
												<div>
													<strong>Nathan</strong> pushed new commit: Fix page load performance issue.
													<div class="small text-muted">10 minutes ago</div>
												</div>
											</a>
											<a href="#" class="dropdown-item d-flex">
												<span class="avatar mr-3 align-self-center" style="background-image: url(demo/faces/female/1.jpg)"></span>
												<div>
													<strong>Alice</strong> started new task: Tabler UI design.
													<div class="small text-muted">1 hour ago</div>
												</div>
											</a>
											<a href="#" class="dropdown-item d-flex">
												<span class="avatar mr-3 align-self-center" style="background-image: url(demo/faces/female/18.jpg)"></span>
												<div>
													<strong>Rose</strong> deployed new version of NodeJS REST Api V3
													<div class="small text-muted">2 hours ago</div>
												</div>
											</a>
											<div class="dropdown-divider"></div>
											<a href="#" class="dropdown-item text-center">Mark all as read</a>
										</div>
									</div>
									<div class="dropdown">
										<a href="#" class="nav-link pr-0 leading-none" data-toggle="dropdown">
											<span class="avatar" style="background-image: url(./demo/faces/female/25.jpg)"></span> <span class="ml-2 d-none d-lg-block"> <span class="text-default">${sessionScope.user.c_id}</span> <small class="text-muted d-block mt-1">${sessionScope.user.c_name}</small>
											</span>
										</a>
										<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
											<a class="dropdown-item" href="profile">
												<i class="dropdown-icon fe fe-user"></i> 사용자 설정
											</a>
											<a class="dropdown-item" href="#">
												<i class="dropdown-icon fe fe-settings"></i> 반려견 설정
											</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="logout">
												<i class="dropdown-icon fe fe-log-out"></i> 로그아웃
											</a>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="nav-item d-none d-md-flex">
										<a href="./login" class="btn btn-sm btn-outline-success">로그인</a>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
						<a href="#" class="header-toggler d-lg-none ml-3 ml-lg-0" data-toggle="collapse" data-target="#headerMenuCollapse">
							<span class="header-toggler-icon"></span>
						</a>
					</div>
				</div>
			</div>
			<div class="header collapse d-lg-flex p-0" id="headerMenuCollapse">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg order-lg-first">
							<ul class="nav nav-tabs border-0 flex-column flex-lg-row">
								<li class="nav-item dropdown"><a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
										<i class="fa fa-edit"></i> 보험
									</a>
									<div class="dropdown-menu dropdown-menu-arrow">
										<a href="./index" class="dropdown-item ">보험료 산정</a>
										<a href="./index" class="dropdown-item ">보험 연동</a>
									</div></li>
								<li class="nav-item dropdown"><a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
										<i class="fa fa-hospital-o"></i> 동물병원
									</a>
									<div class="dropdown-menu dropdown-menu-arrow">
										<a href="./index" class="dropdown-item ">동물병원 조회</a>
									</div></li>
								<li class="nav-item dropdown"><a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
										<i class="fa fa-question"></i> FAQ
									</a>
									<div class="dropdown-menu dropdown-menu-arrow">
										<a href="./faq" class="dropdown-item ">자주찾는 질문</a>
									</div></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="my-3 my-md-5">
				<div class="container">
					<div class="row">
						<div class="col col-login mx-auto">
							<div class="text-center mb-6">
								<img src="/resources/demo/photos/petlogo.png" class="h-6" alt="">
							</div>
							<form class="card" method="GET" name="cusform">
								<div class="card-body p-6">
									<div class="card-title">고객 정보 입력하기</div>
									<div class="form-group">
										<label class="form-label">이름</label>
										<input type="text" class="form-control" name="c_name" id="c_name" placeholder="Enter Name">
									</div>
									<div class="form-group">
										<label class="form-label">주민등록번호</label>
										<input type="text" name="c_pid" id="c_pid" name="field-name" class="form-control" data-mask="000000-0000000" data-mask-clearifnotmatch="true" placeholder="000000-0000000" autocomplete="off" maxlength="14">
									</div>
									<label class="form-label">주소</label>
									<div class="form-group">
										<input class="form-control" style="width: 40%; display: inline;" placeholder="우편번호" name="c_zipcode" id="c_zipcode" type="text" readonly="readonly">
										<button type="button" class="btn btn-default" onclick="execPostCode();">
											<i class="fa fa-search"></i> 우편번호 찾기
										</button>
									</div>
									<div class="form-group">
										<input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="c_road" id="c_road" type="text" readonly="readonly" />
									</div>
									<div class="form-group">
										<input class="form-control" placeholder="상세주소" name="c_detail" id="c_detail" type="text" />
									</div>
									<div class="form-group">
										<label class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input" id="cusinfochk" /> <span class="custom-control-label">내 정보 불러오기</span>
										</label>
									</div>
									<div class="form-footer">
										<a href="./inscalmoney" type="button" class="btn btn-success" id="prev" style="width: 80px; margin-right: 127px;">이전</a>
										<a href="./insobligation" type="button" class="btn btn-success" id="prev" style="width: 80px;" onclick="cuschk();">다음</a>
									</div>
								</div>
							</form>

						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-6 col-md-3">
								<ul class="list-unstyled mb-0">
									<li><strong>보험</strong></li>
									<li><a href="#">보험료 산정</a></li>
									<li><a href="#">보험 연동</a></li>
								</ul>
							</div>
							<div class="col-6 col-md-3">
								<ul class="list-unstyled mb-0">
									<li><strong>동물병원</strong></li>
									<li><a href="#">동물병원 조회</a></li>
								</ul>
							</div>
							<div class="col-6 col-md-3">
								<ul class="list-unstyled mb-0">
									<li><strong>FAQ</strong></li>
									<li><a href="#">자주 찾는 질문</a></li>
								</ul>
							</div>
							<div class="col-6 col-md-3">
								<ul class="list-unstyled mb-0">
									<li><strong>프로필</strong></li>
									<li><a href="#">사용자 설정</a></li>
									<li><a href="#">반려견 설정</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="footer center-block">
			<div class="container">
				<div class="row flex-row-reverse">
					<div class="col-12 col-lg-auto mt-3 mt-lg-0 text-center">
						<ul class="list-inline list-inline-dots mb-0">
							<li class="list-inline-item"><a href="https://www.dbinc.co.kr/">
									<strong>(주)디비아이엔씨</strong>
								</a></li>
							<li class="list-inline-item">서울시 강남구 삼성로 96길 23(삼성동 154-17)</li>
							<li class="list-inline-item">TEL : 02-2136-6000</li>
							<li class="list-inline-item">사업자 등록 번호 : 211-81-19938 (C) 2015</li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<script>
		$(function() {
			/* if ($("input:checkbox[id='cusinfochk']").is(":checked")) {
			        $("#cname").val("김디비")
			} */
		})

		function cuschk() {
			c_name = $("#c_name").val();
			c_pid = $("#c_pid").val();
			c_zipcode = $("#c_zipcode").val();
			c_road = $("#c_road").val();
			c_detail = $("#c_detail").val();

			sessionStorage.setItem('c_name', c_name);
			sessionStorage.setItem('c_pid', c_pid);
			sessionStorage.setItem('c_zipcode', c_zipcode);
			sessionStorage.setItem('c_road', c_road);
			sessionStorage.setItem('c_detail', c_detail);
		}
	</script>
</body>
</html>