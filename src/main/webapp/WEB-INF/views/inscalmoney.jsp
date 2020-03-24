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
				<div class="container" style="padding-top: 30px;">

					<!-- 보험명 -->
					<div class="row">
						<div class="alert alert-primary" style="margin-left: 13px;">
							<div class="card-status card-status-left bg-blue"></div>
							<div class="card-body" style="width: 900px; padding-top: 5px; padding-bottom: 5px;">
								<span style="font-size: 20px;">아이(I)러브(LOVE)펫보험1904</span>
								<%-- (<span>${petinput}, ${birthinput}</span>세) --%>
								<%-- <span>${sessionScope.petinput}, ${sessionScope.birthinput}세</span> --%>
								<span id="p_name"></span>, <span id="p_age"></span>세, <span id="p_type"></span>
							</div>
						</div>
					</div>

					<!-- 보험료 테이블 -->
					<div class="row">
						<div class="col-lg-6">
							<div class="card">
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
										</tbody>
									</table>
								</div>
							</div>
						</div>
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
									<a href="./inscusinfo" type="button" class="btn btn-blue">보험 가입하러 가기</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
	<script>
		$(function() {
			$("#p_type").text(sessionStorage.getItem("pettype"));
			$("#p_age").text(sessionStorage.getItem("petbirth"));
			$("#p_name").text(sessionStorage.getItem("petname"));
		})

		perval = 70;
		typeval = 1;

		function perfn1() {
			$('#50per').attr('class', 'btn btn-success');
			$('#70per').attr('class', 'btn btn-secondary');
			perval = 50;
		}

		function perfn2() {
			$('#70per').attr('class', 'btn btn-success');
			$('#50per').attr('class', 'btn btn-secondary');
			perval = 70;
		}

		function monfn() {
			$('#monbtn').attr('class', 'btn btn-success');
			$('#yearbtn').attr('class', 'btn btn-secondary');
			typeval = 1;
		}

		function yearfn() {
			$('#yearbtn').attr('class', 'btn btn-success');
			$('#monbtn').attr('class', 'btn btn-secondary');
			typeval = 12;
		}

		function changecalc() {
			var burden = $("#cus_money option:selected").val();
			var joinmoney = 900;
			var paymoney1 = 30000;
			var paymoney2 = 1366;
			var paymoney3 = 7605;
			var paymoney4 = 9157;
			var paymoney5 = 269;
			var paymoney6 = 419;

			if (burden == "1man") {
				joinmoney *= 1.5;
				paymoney1 *= 1.5;
				paymoney2 *= 1.5;
				paymoney3 *= 1.5;
				paymoney4 *= 1.5;
				sessionStorage.setItem('burden', '1');
			}

			if (burden == "2man") {
				joinmoney *= 1.25;
				paymoney1 *= 1.25;
				paymoney2 *= 1.25;
				paymoney3 *= 1.25;
				paymoney4 *= 1.25;
				sessionStorage.setItem('burden', '2');
			}
			if (burden == "3man") {
				sessionStorage.setItem('burden', '3');
			}

			if (perval == 50) {
				joinmoney *= 0.7;
				paymoney1 *= 0.7;
				paymoney2 *= 0.7;
				paymoney3 *= 0.7;
				paymoney4 *= 0.7;
			}

			var totalmoney = paymoney1;

			if ($("input:checkbox[id=gugang]").is(":checked") == true) {
				totalmoney += paymoney2;
				sessionStorage.setItem('gugang', '구강질환');
			} else {
				sessionStorage.setItem('gugang', ' ');
			}
			if ($("input:checkbox[id=talgu]").is(":checked") == true) {
				totalmoney += paymoney3;
				sessionStorage.setItem('talgu', '탈구');
			} else {
				sessionStorage.setItem('talgu', ' ');
			}
			if ($("input:checkbox[id=skin]").is(":checked") == true) {
				totalmoney += paymoney4;
				sessionStorage.setItem('skin', '피부질환');
			} else {
				sessionStorage.setItem('skin', ' ');
			}
			if ($("input:checkbox[id=funeral]").is(":checked") == true) {
				totalmoney += paymoney5;
				sessionStorage.setItem('funeral', '장례');
			} else {
				sessionStorage.setItem('funeral', ' ');
			}
			if ($("input:checkbox[id=baesang]").is(":checked") == true) {
				totalmoney += paymoney6;
				sessionStorage.setItem('baesang', '배상책임');
			} else {
				sessionStorage.setItem('baesang', ' ');
			}

			totalmoney *= typeval;
			var totaldiscount = totalmoney * 0.9;

			if (typeval == 12) {
				$("#typeshow").text("연간");
				sessionStorage.setItem('typeval', '연납');
			} else {
				sessionStorage.setItem('typeval', '월납');
			}

			$("#join").text(Math.floor(joinmoney));
			$("#pay1").text(Math.floor(paymoney1));
			$("#pay2").text(Math.floor(paymoney2));
			$("#pay3").text(Math.floor(paymoney3));
			$("#pay4").text(Math.floor(paymoney4));
			$("#totalbefore").text(Math.floor(totalmoney));
			$("#total").text(Math.floor(totaldiscount));

			sessionStorage.setItem('perval', perval);
			sessionStorage.setItem('totaldiscount', Math.floor(totaldiscount));
		}
	</script>
</body>
</html>