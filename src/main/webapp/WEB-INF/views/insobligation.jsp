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
					<div class="row" style="margin-right: 200px;">
						<div class="col col-login mx-auto">
							<div class="row row-cards">
								<div class="col-md-6">
									<div class="card" style="width: 600px;">
										<div class="card-status bg-green"></div>
										<div class="card-header">
											<h3 class="card-title">계약 전 알릴 의무 사항</h3>
										</div>
										<div class="card-body">
											<div class="form-group">
												<span>1. 애완/반려 이외의 목적으로 양육하고 있습니까?</span>
												<div class="custom-controls-stacked">
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="onechk" value="option1"> <span class="custom-control-label">YES</span>
													</label>
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="onechk" value="option2"> <span class="custom-control-label">NO</span>
													</label>
												</div>
											</div>
											<div class="form-group">
												<span>2. 반려동물이 현재 질병 및 사고로 치료 또는 경과 관찰 중이거나 과거 3개월 이내에 동물병원에서 예방목적 이외의 진찰을 받은 적이 있습니까?</span>
												<div class="custom-controls-stacked">
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="twochk" value="option1"> <span class="custom-control-label">YES</span>
													</label>
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="twochk" value="option2"> <span class="custom-control-label">NO</span>
													</label>
												</div>
											</div>
											<div class="form-group">
												<span>3. 반려동물이 과거부터 현재까지 슬·고관절탈구, 슬·고관절형성부전 또는 기타 이들과 유사한 질병 또는 상해로 진단되거나 의심소견을 받은적이 있습니까?</span>
												<div class="custom-controls-stacked">
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="threechk" value="option1"> <span class="custom-control-label">YES</span>
													</label>
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="threechk" value="option2"> <span class="custom-control-label">NO</span>
													</label>
												</div>
											</div>
											<div class="form-group">
												<span>4. 반려동물이 과거부터 현재까지 치석제거 및 치아부정교합 등 구강내 질환으로 진단되거나 의심소견을 받은적이 있습니까?</span>
												<div class="custom-controls-stacked">
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="fourchk" value="option1"> <span class="custom-control-label">YES</span>
													</label>
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="fourchk" value="option2"> <span class="custom-control-label">NO</span>
													</label>
												</div>
											</div>
											<div class="form-group">
												<span>5. 반려동물이 과거부터 현재까지 피부병(외이염, 중이염, 피부알러지, 피부트러블을 포함)으로 진단되거나 의심소견을 받은적이 있습니까?</span>
												<div class="custom-controls-stacked">
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="fivechk" value="option1"> <span class="custom-control-label">YES</span>
													</label>
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="fivechk" value="option2"> <span class="custom-control-label">NO</span>
													</label>
												</div>
											</div>
											<div class="form-group">
												<span>6. 반려동물이 현재 계속해서 복용(사용)하고 있는 의약품이 있습니까?</span>
												<div class="custom-controls-stacked">
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="sixchk" value="option1"> <span class="custom-control-label">YES</span>
													</label>
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="sixchk" value="option2"> <span class="custom-control-label">NO</span>
													</label>
												</div>
											</div>
											<div class="form-group">
												<span>7. 반려동물이 현재 일상적인 관리나 예방 접종을 받고 있는 동물병원이 있습니까? </span>
												<div class="custom-controls-stacked">
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="sevenchk" value="option1"> <span class="custom-control-label">YES</span>
													</label>
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="sevenchk" value="option2"> <span class="custom-control-label">NO</span>
													</label>
												</div>
											</div>
											<div class="form-group">
												<span>8. 현재 다른 애견보험 등에 가입하고 있습니까?</span>
												<div class="custom-controls-stacked">
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="eightchk" value="option1"> <span class="custom-control-label">YES</span>
													</label>
													<label class="custom-control custom-radio custom-control-inline">
														<input type="radio" class="custom-control-input" name="eightchk" value="option2"> <span class="custom-control-label">NO</span>
													</label>
												</div>
											</div>
											<div class="form-footer">
												<a href="./calccus" type="button" class="btn btn-success" id="prev" style="width: 80px; margin-right: 385px;">이전</a>
												<a href="./insfinalchk" type="button" class="btn btn-success" id="next" style="width: 80px;" onclick="chkfn();">다음</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
	<script>
		function chkfn() {
			var radioVal1 = $('input[name="onechk"]:checked').val();
			var radioVal2 = $('input[name="twochk"]:checked').val();
			var radioVal3 = $('input[name="threechk"]:checked').val();
			var radioVal4 = $('input[name="fourchk"]:checked').val();
			var radioVal5 = $('input[name="fivechk"]:checked').val();
			var radioVal6 = $('input[name="sixchk"]:checked').val();
			var radioVal7 = $('input[name="sevenchk"]:checked').val();
			var radioVal8 = $('input[name="eightchk"]:checked').val();
			if (radioVal1 == "option2" && radioVal2 == "option2"
					&& radioVal3 == "option2" && radioVal4 == "option2"
					&& radioVal5 == "option2" && radioVal6 == "option2"
					&& radioVal7 == "option1" && radioVal8 == "option2") {
				location.replace("./inspetreg")
			} else {
				alert('해당 조건으로는 가입하실 수 없습니다.')
			}

		}
	</script>
</body>
</html>