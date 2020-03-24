<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<script src="assets/js/require.min.js"></script>
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
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="./assets/js/postcode.v2.js"></script>
</head>
<body class="">
	<div class="page">
		<div class="flex-fill">
			<div class="header py-4">
				<div class="container">
					<div class="d-flex">
						<a class="header-brand" href="./index.html">
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
													<strong>백암순대국</strong> 5000원 쿠폰
													<div class="small text-muted">10 minutes ago</div>
												</div>
											</a>
											<a href="#" class="dropdown-item d-flex">
												<span class="avatar mr-3 align-self-center" style="background-image: url(demo/faces/female/1.jpg)"></span>
												<div>
													<strong>육담와</strong> 제육볶음 12000원
													<div class="small text-muted">1 hour ago</div>
												</div>
											</a>
											<a href="#" class="dropdown-item d-flex">
												<span class="avatar mr-3 align-self-center" style="background-image: url(demo/faces/female/18.jpg)"></span>
												<div>
													<strong>오빠닭</strong> 코로나바이러스
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
					<c:choose>
						<c:when test="${not empty sessionScope.user}">
							<div class="page-header">
								<h1 class="page-title">프로필</h1>
							</div>
							<div class="row">
								<div class="col-lg-3 order-lg-1 mb-4">
									<!-- Components -->
									<div class="list-group list-group-transparent mb-0">
										<a href="profile" class="list-group-item list-group-item-action active">
											<span class="icon mr-3"><i class="fe fe-user"></i></span>회원정보 수정
										</a>
										<a href="delete" class="list-group-item list-group-item-action">
											<span class="icon mr-3"><i class="fe fe-user-x"></i></span>계정 탈퇴
										</a>
										<a href="profile" class="list-group-item list-group-item-action">
											<span class="icon mr-3"><i class="fe fe-bar-chart-2"></i></span>통계 예시..
										</a>
										<a href="profile" class="list-group-item list-group-item-action">
											<span class="icon mr-3"><i class="fa fa-paw""></i></span>강아지 예시..
										</a>
										<a href="profile" class="list-group-item list-group-item-action">
											<span class="icon mr-3"><i class="fa fa-address-book"></i></span>추가가능...
										</a>
									</div>
								</div>

								<div class="col-9">
									<div class="card">
										<div class="card-header">
											<div class="card-status bg-green"></div>
											<h3 class="card-title">회원정보 수정</h3>
										</div>
										<div class="card-body">
											<form:form id="updateform" name="updateform" class="card" modelAttribute="true" action="updateProcess" method="post" autocomplete="off">
												<div class="card-body">
													<div class="card-title center">회원 정보</div>
													<div class="row">
														<div class="col-auto">
															<span class="avatar avatar-xl" style="background-image: url(demo/faces/female/9.jpg)"></span>
														</div>
														<div class="col">
															<div class="form-group">
																<label class="form-label">아이디</label>
																<input type="text" name="c_id" id="c_id" class="form-control" placeholder="아이디" value='<c:out value="${sessionScope.user.c_id}"></c:out>' readonly="readonly">
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="form-label">가입날짜</label>
														<input type="text" name="c_joindate" id="c_joindate" class="form-control" placeholder="가입날짜" value='<c:out value="${sessionScope.user.c_joindate}"></c:out>' readonly="readonly">
													</div>
													<div class="form-group">
														<label class="form-label">패스워드 </label>
														<input type="password" name="c_pw" id="c_pw" class="form-control" placeholder="패스워드" value='<c:out value="${sessionScope.user.c_pw}"></c:out>'>
													</div>
													<div class="form-group">
														<label class="form-label">패스워드 확인 </label>
														<input type="password" name="c_pw_check" id="c_pw_check" class="form-control" placeholder="패스워드 확인" value='<c:out value="${sessionScope.user.c_pw}"></c:out>'>
														<div class="alert alert-success" id="alert-success" style="display: none;">비밀번호가 일치합니다.</div>
														<div class="alert alert-danger" id="alert-danger" style="display: none;">비밀번호가 일치하지 않습니다.</div>
													</div>
													<div class="form-group">
														<label class="form-label">이름</label>
														<input type="text" name="c_name" id="c_name" class="form-control" placeholder="이름" value='<c:out value="${sessionScope.user.c_name}"></c:out>'>
													</div>

													<div class="form-group">
														<label class="form-label">주민등록번호</label>
														<input type="text" name="c_pid" id="c_pid" class="form-control" value='<c:out value="${sessionScope.user.c_pid}"></c:out>' data-mask="000000-0000000" data-mask-clearifnotmatch="true" placeholder="000000-0000000" autocomplete="off" maxlength="14">
													</div>
													<div class="form-group">
														<div class="form-label">성별</div>
														<div id="c_gender" class="custom-controls-stacked">
															<label class="custom-control custom-radio custom-control-inline">
																<input type="radio" name="c_gender" id="c_gender1" class="custom-control-input" value="male"> <span class="custom-control-label">남자</span>
															</label>
															<label class="custom-control custom-radio custom-control-inline">
																<input type="radio" name="c_gender" id="c_gender2" class="custom-control-input" value="female"> <span class="custom-control-label">여자</span>
															</label>
														</div>
													</div>
													<div class="form-group">
														<label class="form-label">연락처</label>
														<input name="c_phone" id="c_phone" type="text" class="form-control" value='<c:out value="${sessionScope.user.c_phone}"></c:out>' data-mask="000-0000-0000" data-mask-clearifnotmatch="true" placeholder="000-0000-0000" autocomplete="off" maxlength="13">
													</div>
													<div class="form-group">
														<label class="form-label">주소</label>
														<div class="form-group">
															<input name="c_zipcode" id="c_zipcode" class="form-control" value='<c:out value="${sessionScope.user.c_zipcode}"></c:out>' style="width: 40%; display: inline;" placeholder="우편번호" type="text" readonly="readonly">
															<button type="button" class="btn btn-default" onclick="execPostCode();">
																<i class="fa fa-search"></i> 우편번호 찾기
															</button>
														</div>
														<div class="form-group">
															<input class="form-control" value='<c:out value="${sessionScope.user.c_road}"></c:out>' style="top: 5px;" placeholder="도로명 주소" name="c_road" id="c_road" type="text" readonly="readonly" />
														</div>
														<div class="form-group">
															<input class="form-control" value='<c:out value="${sessionScope.user.c_detail}"></c:out>' placeholder="상세주소" name="c_detail" id="c_detail" type="text" />
														</div>

													</div>
													<div class="form-group">
														<label class="form-label">이메일</label>
														<input name="c_email" id="c_email" value='<c:out value="${sessionScope.user.c_email}"></c:out>' class="form-control" placeholder="email@domain.com">
													</div>
													<div class="form-group">
														<label class="form-label">체크사항</label>
														<label class="custom-switch">
															<input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input"> <span class="custom-switch-indicator"></span> <span class="custom-switch-description">DB손해보험 가입여부</span>
														</label>
													</div>
													<div class="form-footer">
														<button type="button" id="update_btn" class="btn btn-success btn-block">회원 정보 변경</button>
													</div>
												</div>
											</form:form>
										</div>
									</div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
						로그인 페이지로 넘기기(미구현 상태)
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
		<script type="text/javascript">
			$(function() {
				var c_gender = '${sessionScope.user.c_gender}'
				console.log(c_gender);
				$('input:radio[name=c_gender]:input[value=' + c_gender + ']')
						.attr("checked", true);
			})

			$(function() {
				var result = '${alertmsg}';
				var updateok = "회원정보 수정에 성공했습니다.";
				var updatefail = "업데이트 fail";
				if (result == updateok) {
					alert(updateok);
				} else if (result == updatefail) {
					alert(updatefail);
				}

			})

			$(function() {
				$("#alert-success").hide();
				$("#alert-danger").hide();
				$("input").keyup(function() {
					console.log("keyup");
					var pwd1 = $("#c_pw").val();
					var pwd2 = $("#c_pw_check").val();
					if (pwd1 != "" || pwd2 != "") {
						if (pwd1 == pwd2) {
							$("#alert-success").show();
							$("#alert-danger").hide();
							$("#submit").removeAttr("disabled");
						} else {
							$("#alert-success").hide();
							$("#alert-danger").show();
							$("#submit").attr("disabled", "disabled");
						}
					}
				});
			});

			$("#update_btn").click(function() {
				$("#updateform").submit();
			});
		</script>
</body>
</html>