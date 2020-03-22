<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>Empty page - tabler.github.io - a responsive, flat and full featured admin template</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext">
<script src="./assets/js/vendors/jquery-3.2.1.min.js"></script>
<script src="./assets/js/require.min.js"></script>
<script>
	requirejs.config({
		btablaseUrl : '.'
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
<!-- 버튼 스크립트 -->
<script src="assets/js/inscalc.js"></script>
</head>
<body class="">
	<div class="page">
		<div class="flex-fill">
			<div class="header py-4">
				<div class="container">
					<div class="d-flex">
						<a class="header-brand" href="./index.html">
							<img src="resources/demo/brand/tabler.svg" class="header-brand-img" alt="tabler logo">
						</a>
						<div class="d-flex order-lg-2 ml-auto">
							<div class="nav-item d-none d-md-flex">
								<a href="https://github.com/tabler/tabler" class="btn btn-sm btn-outline-primary" target="_blank">Source code</a>
							</div>
							<div class="dropdown d-none d-md-flex">
								<a class="nav-link icon" data-toggle="dropdown">
									<i class="fe fe-bell"></i> <span class="nav-unread"></span>
								</a>
								<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
									<a href="#" class="dropdown-item d-flex">
										<span class="avatar mr-3 align-self-center" style="background-image: url(resources/demo/faces/male/41.jpg)"></span>
										<div>
											<strong>Nathan</strong> pushed new commit: Fix page load performance issue.
											<div class="small text-muted">10 minutes ago</div>
										</div>
									</a>
									<a href="#" class="dropdown-item d-flex">
										<span class="avatar mr-3 align-self-center" style="background-image: url(resources/demo/faces/female/1.jpg)"></span>
										<div>
											<strong>Alice</strong> started new task: Tabler UI design.
											<div class="small text-muted">1 hour ago</div>
										</div>
									</a>
									<a href="#" class="dropdown-item d-flex">
										<span class="avatar mr-3 align-self-center" style="background-image: url(resources/demo/faces/female/18.jpg)"></span>
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
								<a href="" class="nav-link pr-0 leading-none" data-toggle="dropdown">
									<span class="avatar" style="background-image: url(resources/demo/faces/female/25.jpg)"></span> <span class="ml-2 d-none d-lg-block"> <span class="text-default">Jane Pearson</span> <small class="text-muted d-block mt-1">Administrator</small>
									</span>
								</a>
								<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
									<a class="dropdown-item" href="#">
										<i class="dropdown-icon fe fe-user"></i> Profile
									</a>
									<a class="dropdown-item" href="#">
										<i class="dropdown-icon fe fe-settings"></i> Settings
									</a>
									<a class="dropdown-item" href="#">
										<span class="float-right"><span class="badge badge-primary">6</span></span> <i class="dropdown-icon fe fe-mail"></i> Inbox
									</a>
									<a class="dropdown-item" href="#">
										<i class="dropdown-icon fe fe-send"></i> Message
									</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">
										<i class="dropdown-icon fe fe-help-circle"></i> Need help?
									</a>
									<a class="dropdown-item" href="#">
										<i class="dropdown-icon fe fe-log-out"></i> Sign out
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
								<li class="nav-item"><a href="./empty.html" class="nav-link active">
										<i class="fe fe-home"></i> Home
									</a></li>
								<li class="nav-item"><a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
										<i class="fe fe-box"></i> Interface
									</a>
									<div class="dropdown-menu dropdown-menu-arrow">
										<a href="./cards.html" class="dropdown-item ">Cards design</a>
										<a href="./charts.html" class="dropdown-item ">Charts</a>
										<a href="./pricing-cards.html" class="dropdown-item ">Pricing cards</a>
									</div></li>
								<li class="nav-item dropdown"><a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
										<i class="fe fe-calendar"></i> Components
									</a>
									<div class="dropdown-menu dropdown-menu-arrow">
										<a href="./maps.html" class="dropdown-item ">Maps</a>
										<a href="./icons.html" class="dropdown-item ">Icons</a>
										<a href="./store.html" class="dropdown-item ">Store</a>
										<a href="./blog.html" class="dropdown-item ">Blog</a>
										<a href="./carousel.html" class="dropdown-item ">Carousel</a>
									</div></li>
								<li class="nav-item dropdown"><a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
										<i class="fe fe-file"></i> Pages
									</a>
									<div class="dropdown-menu dropdown-menu-arrow">
										<a href="./profile.html" class="dropdown-item ">Profile</a>
										<a href="./login.html" class="dropdown-item ">Login</a>
										<a href="./register.html" class="dropdown-item ">Register</a>
										<a href="./forgot-password.html" class="dropdown-item ">Forgot password</a>
										<a href="./400.html" class="dropdown-item ">400 error</a>
										<a href="./401.html" class="dropdown-item ">401 error</a>
										<a href="./403.html" class="dropdown-item ">403 error</a>
										<a href="./404.html" class="dropdown-item ">404 error</a>
										<a href="./500.html" class="dropdown-item ">500 error</a>
										<a href="./503.html" class="dropdown-item ">503 error</a>
										<a href="./email.html" class="dropdown-item ">Email</a>
										<a href="./empty.html" class="dropdown-item active">Empty page</a>
										<a href="./rtl.html" class="dropdown-item ">RTL mode</a>
									</div></li>
								<li class="nav-item dropdown"><a href="./form-elements.html" class="nav-link">
										<i class="fe fe-check-square"></i> Forms
									</a></li>
								<li class="nav-item"><a href="./gallery.html" class="nav-link">
										<i class="fe fe-image"></i> Gallery
									</a></li>
								<li class="nav-item"><a href="./docs/index.html" class="nav-link">
										<i class="fe fe-file-text"></i> Documentation
									</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 보험료 계산 테이블 -->
			<div class="my-3 my-md-5">
				<div class="container" style="padding-top: 30px;">

					<!-- 보험명 -->
					<div class="row">
						<div class="alert alert-primary" style="margin-left: 13px;">
							<div class="card-status card-status-left bg-blue"></div>
							<div class="card-body" style="width: 900px; padding-top: 5px; padding-bottom: 5px;">
								<span style="font-size: 20px;">아이(I)러브(LOVE)펫보험1904</span> (<span>${petinput}, ${birthinput}</span>세)
							</div>
						</div>
					</div>

					<!-- 보험료 테이블 -->
					<div class="row">
						<div class="col-lg-6">
							<div class="card">
								<!-- <div class="card-header">
                                                <h3 class="card-title">Development Activity</h3>
                                        </div> -->
								<!-- <div id="chart-development-activity" style="height: 10rem"></div> -->
								<div class="table-responsive">
									<table id="calctable" class="table card-table table-striped table-vcenter" style="height: 475px;">
										<thead>
											<tr>
												<th>구분</th>
												<th>보장담보</th>
												<th>가입금액</th>
												<th>납부금액</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>기본약관</td>
												<td>반려동물 의료비</td>
												<td rowspan="4"><span id="join">900</span>만원</td>
												<td><span id="pay1">31040</span>원</td>
											</tr>
											<tr>
												<td rowspan="5">특별약관</td>
												<td>구강질환 확장보장</td>
												<td><span id="pay2">1366</span>원</td>
											</tr>
											<tr>
												<td>슬관절 및 고관절 탈구 확장보장</td>
												<td><span id="pay3">7605</span>원</td>
											</tr>
											<tr>
												<td>피부질환 확장보장</td>
												<td><span id="pay4">9157</span>원</td>
											</tr>
											<tr>
												<td>반려동물 장례지원비</td>
												<td>30만원</td>
												<td>269원</td>
											</tr>
											<tr>
												<td>반려동물 배상책임</td>
												<td>500만원</td>
												<td>419원</td>
											</tr>

											<!-- <tr>
                                                                                <td><span class="avatar"></span></td>
                                                                                <td>Sharon Wells</td>
                                                                                <td class="text-nowrap">April 9, 2018</td>
                                                                                <td><a href="#" class="icon"><i class="fe fe-trash"></i></a></td>
                                                                        </tr> -->
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<!-- 오른쪽 -->
						<div class="col-md-6" style="padding-left: 30px;">

							<form>
								<div class="row">
									<b>자기 부담금 </b> <span style="font-size: 0.8em; position: relative; top: 3px;"> (최소 1만원, 최대 3만원) </span>
								</div>
								<div class="row" style="padding-top: 2px;">
									<select id="cus_money">
										<option value="1man">1만원</option>
										<option value="2man">2만원</option>
										<option value="3man" selected="selected">3만원</option>
									</select>
								</div>
								<br>


								<div class="row">
									<b>보상 비율</b>
								</div>
								<div class="row">
									<button type="button" id="50per" class="btn btn-secondary" style="width: 80px; margin-right: 10px;" onclick="perfn1();">50%</button>
									<button type="button" id="70per" class="btn btn-success" style="width: 80px; margin-right: 10px;" onclick="perfn2();">70%</button>

								</div>
								<br>


								<div class="row">
									<b>납부 방법</b>
								</div>
								<div class="row">
									<button type="button" id="monbtn" class="btn btn-success" style="width: 80px; margin-right: 10px;" onclick="monfn();">월납</button>
									<button type="button" id="yearbtn" class="btn btn-secondary" style="width: 80px; margin-right: 10px;" onclick="yearfn();">연납</button>
								</div>
								<br>


								<div class="row">
									<b>특별약관</b>
								</div>
								<div class="row">
									<label class="colorinput">
										<input name="special" id="gugang" type="checkbox" value="gugang" class="colorinput-input" /> <span class="colorinput-color bg-green" style="width: 25px; height: 25px;"></span> <span>구강&nbsp;</span>
									</label>
									<label class="colorinput">
										<input name="special" id="talgu" type="checkbox" value="talgu" id="talgu" class="colorinput-input" /> <span class="colorinput-color bg-green" style="width: 25px; height: 25px;"></span> 탈구&nbsp;
									</label>
									<label class="colorinput">
										<input name="special" id="skin" type="checkbox" value="skin" id="skin" class="colorinput-input" /> <span class="colorinput-color bg-green" style="width: 25px; height: 25px;"></span> 피부&nbsp;
									</label>
									<label class="colorinput">
										<input name="special" id="funeral" type="checkbox" value="funeral" id="funeral" class="colorinput-input" /> <span class="colorinput-color bg-green" style="width: 25px; height: 25px;"></span> 장례&nbsp;
									</label>
									<label class="colorinput">
										<input name="special" id="baesang" type="checkbox" value="baesang" id="baesang" class="colorinput-input" /> <span class="colorinput-color bg-green" style="width: 25px; height: 25px;"></span> 배상&nbsp;
									</label>
								</div>
								<br>


								<div class="row" style="width: 250px; height: 100px; background-color: MediumSeaGreen;">
									<div style="width: 250px; height: 35px; padding: 10px; color: white;">다이렉트 보험료(10% 할인)</div>
									<div style="width: 250px; padding-right: 10px; margin-top: 10px; color: white; font-size: 12px; text-align: right;">
										할인 전 <span id="totalbefore" style="text-decoration: line-through;">30000</span> 원
									</div>
									<div style="width: 250px; padding-right: 10px; color: white; text-align: right;">

										<span style="font-size: 20px;" id="typeshow">월</span> <span id="total" style="font-size: 18px;">27000</span> 원
									</div>
								</div>
								<br>


								<div class="row">
									<button type="button" id="monbtn" class="btn btn-cyan" style="width: 100px; margin-right: 15px;" onclick="changecalc();">보험료 계산</button>
									<a href="./calccus" type="button" class="btn btn-blue">보험 가입하러 가기</a>
								</div>

							</form>

							<%-- 여기까지 오른쪽 --%>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 보험료 계산 테이블 끝 -->


		<div class="footer">
			<div class="container">
				<div class="row row-cards">
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
								<div class="col-auto">
									<a href="https://github.com/tabler/tabler" class="btn btn-outline-primary btn-sm">Source code</a>
								</div>
							</div>
						</div>
						<div class="col-12 col-lg-auto mt-3 mt-lg-0 text-center">
							Copyright © 2019
							<a href=".">Tabler</a>
							. Theme by
							<a href="https://codecalm.net" target="_blank">codecalm.net</a>
							All rights reserved.
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	</div>
</body>
</html>