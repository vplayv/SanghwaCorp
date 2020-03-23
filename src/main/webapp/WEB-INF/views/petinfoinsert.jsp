<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
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

</head>
<body class="">
	<div class="page">
		<div class="flex-fill">
			<div class="header py-4">
				<div class="container">
					<div class="d-flex">
						<a class="header-brand" href="./index.html">
							<img src="demo/brand/tabler.svg" class="header-brand-img" alt="tabler logo">
						</a>
						<div class="d-flex order-lg-2 ml-auto">
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
									<span class="avatar" style="background-image: url(./demo/faces/female/25.jpg)"></span> <span class="ml-2 d-none d-lg-block"> <span class="text-default">Jane Pearson</span> <small class="text-muted d-block mt-1">Administrator</small>
									</span>
								</a>
								<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
									<a class="dropdown-item" href="#">
										<i class="dropdown-icon fe fe-user"></i> 회원정보
									</a>
									<a class="dropdown-item" href="#">
										<i class="dropdown-icon fe fe-gitlab"></i> 반려견정보
									</a>
									<a class="dropdown-item" href="#">
										<i class="dropdown-icon fe fe-log-out"></i> 로그아웃
									</a>
								</div>
							</div>
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
						<div class="col-lg-3 ml-auto">
							<form class="input-icon my-3 my-lg-0">
								<input type="search" class="form-control header-search" placeholder="Search&hellip;" tabindex="1">
								<div class="input-icon-addon">
									<i class="fe fe-search"></i>
								</div>
							</form>
						</div>
						<div class="col-lg order-lg-first">
							<ul class="nav nav-tabs border-0 flex-column flex-lg-row">
								<li class="nav-item dropdown"><a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
										<i class="fe fe-home"></i> 보험
									</a>
									<div class="dropdown-menu dropdown-menu-arrow">
										<a href="./index" class="dropdown-item ">보험료 산정</a>
										<a href="./charts.html" class="dropdown-item ">보험 연동</a>
										<a href="./test" class="dropdown-item ">test</a>
									</div></li>
								<li class="nav-item dropdown"><a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
										<i class="fe fe-box"></i> 동물병원
									</a></li>
								<li class="nav-item dropdown"><a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
										<i class="fe fe-calendar"></i> FAQ
									</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="row justify-content-md-center">
				<div class="col-lg-6">
					<form class="card" action="petinfoinsertsave" method="post" autocomplete="off" enctype="multipart/form-data">
						<div class="card-body">
							<div class="card-title center" sytle="font-weight: bold">반려견 등록</div>

							<div class="form-group">
								<label class="form-label">사진 업로드</label>
								<input type="file" name="p_photo">
							</div>

							<div class="form-group">
								<label class="form-label">이름</label>
								<input type="text" name="p_name" class="form-control" placeholder="이름을 입력하세요">
							</div>

							<div class="form-group">
								<label class="form-label">견종</label>
								<select name="p_type" class="form-control">
									<option value="maltese">말티즈</option>
									<option value="poodle">푸들</option>
									<option value="shitzu">시츄</option>
								</select>
							</div>

							<div class="form-group">
								<label class="form-label">생일</label>
								<input type="date" name="p_birth" class="form-control" placeholder="YYYY-MM-DD">
							</div>

							<div class="form-group">
								<div class="form-label">성별</div>
								<div class="custom-controls-stacked">
									<label class="custom-control custom-radio custom-control-inline">
										<input type="radio" class="custom-control-input" name="p_gender" value="m_option"> <span class="custom-control-label">남자</span>
									</label>
									<label class="custom-control custom-radio custom-control-inline">
										<input type="radio" class="custom-control-input" name="p_gender" value="w_option"> <span class="custom-control-label">여자</span>
									</label>
								</div>
							</div>

							<hr />
							<h4>추가정보</h4>
							<br>

							<div class="form-group">
								<label class="form-label">몸무게</label>
								<input type="number" name="p_weight" class="form-control" placeholder="kg단위로 입력하세요">
							</div>

							<div class="form-group">
								<div class="form-label">중성화</div>
								<div class="custom-controls-stacked">
									<label class="custom-control custom-radio custom-control-inline">
										<input type="radio" class="custom-control-input" name="p_status" value="y_option"> <span class="custom-control-label">Yes</span>
									</label>
									<label class="custom-control custom-radio custom-control-inline">
										<input type="radio" class="custom-control-input" name="p_status" value="n_option"> <span class="custom-control-label">No</span>
									</label>
								</div>
							</div>

							<div class="form-footer">
								<button type="submit" class="btn btn-primary btn-block">반려견 정보 등록</button>
							</div>
						</div>
					</form>
				</div>
			</div>


		</div>
	</div>
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="row">
						<div class="col-6 col-md-3">
							<ul class="list-unstyled mb-0">
								<li><a href="#">First link</a></li>
								<li><a href="#">Second link</a></li>
							</ul>
						</div>
						<div class="col-6 col-md-3">
							<ul class="list-unstyled mb-0">
								<li><a href="#">Third link</a></li>
								<li><a href="#">Fourth link</a></li>
							</ul>
						</div>
						<div class="col-6 col-md-3">
							<ul class="list-unstyled mb-0">
								<li><a href="#">Fifth link</a></li>
								<li><a href="#">Sixth link</a></li>
							</ul>
						</div>
						<div class="col-6 col-md-3">
							<ul class="list-unstyled mb-0">
								<li><a href="#">Other link</a></li>
								<li><a href="#">Last link</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-4 mt-4 mt-lg-0">Premium and Open Source dashboard template with responsive and high quality UI. For Free!</div>
			</div>
		</div>
	</div>

	<footer class="footer">
		<div class="container">
			<div class="row align-items-center flex-row-reverse">
				<div class="col-auto ml-lg-auto">
					<div class="row align-items-center">
						<div class="col-auto">
							<ul class="list-inline list-inline-dots mb-0">
								<li class="list-inline-item"><a href="./docs/index.html">Documentation</a></li>
								<li class="list-inline-item"><a href="./faq.html">FAQ</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-12 col-lg-auto mt-3 mt-lg-0 text-center">
					Copyright © 2020
					<a href="https://www.dbinc.co.kr/">DB Inc.</a>
				</div>
			</div>
		</div>
	</footer>
	</div>
</body>
</html>