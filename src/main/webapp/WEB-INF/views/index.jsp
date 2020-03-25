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
			<%@ include file="header.jsp"%>
			<%@ include file="menu.jsp"%>
			<div class="my-3 my-md-5">
				<div class="container">
					<div class="text-center mb-6">
						<img src="demo/photos/petlogo.png" style="width: 300px;">
					</div>
					<div class="row row-cards">
						<div class="col-lg-1"></div>
						<div class="col-lg-10">
							<form id="calcform" action="inscalmoney" method="POST">
								<div class="card card-aside" style="margin-left: 0px;">
									<div class="col-lg-7 text-center">
										<img src="demo/photos/dbins_petmain.PNG" class="rounded" style="margin-left: 0%; margin-top: 10%;">
									</div>
									<div class="col-lg-5 ">
										<div class="card-body d-flex flex-column" style="margin-left: 0%;">
											<div class="card-title">반려견 정보 입력하기</div>
											<div class="form-group">
												<label class="form-label">이름</label>
												<input type="text" class="form-control" name="p_name" id="p_name">
											</div>
											<div class="form-group">
												<label class="form-label">견종</label>
												<select name="petinput" id="petinput" class="form-control custom-select">
													<option value="말티즈">말티즈</option>
													<option value="푸들">푸들</option>
													<option value="시츄">시츄</option>
												</select>
											</div>
											<div class="form-group">
												<label class="form-label">생일</label>
												<input type="date" class="form-control custom-select" name="birthinput" id="birthinput">
											</div>
											<div class="form-group">
												<label class="form-label" style="color: gray;">회원이라면</label>
												<select name="callpet" id="callpet" class="form-control custom-select">
													<option value="defalutsel" disabled selected>반려견 정보 불러오기</option>
													<option value="감자">감자</option>
													<option value="쵸비">쵸비</option>
												</select>
											</div>
											<div class="form-footer">
												<button type="submit" class="btn btn-success btn-block" id="paychk" onclick="setfn();">보험료 확인</button>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
						<div class="col-lg-1"></div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
	<script>
		$(function() {
			$("#callpet").append("<option value=\"고구마\">고구마</option>")
			$("#callpet").change(function() {
				s = $("#callpet > option:selected").val();
				$.get("selectpetinfo", {
					'p_name' : s
				}, function(data) {
					console.log(data)
					var obj = eval("(" + data + ")");
					$("#petinput").val(obj[0].p_type).prop("selected", true)
					$("#birthinput").val(obj[0].p_birth)
				})
			});

		})

		function setfn() {
			petname = $("#p_name").val()
			pettype = $("#petinput > option:selected").val();
			petbirth = $("#birthinput").val()

			yearbirth = parseInt(petbirth.substr(0, 4));
			todayyear = new Date().getFullYear();

			agecalc = todayyear - yearbirth + 1;

			sessionStorage.setItem('petname', petname);
			sessionStorage.setItem('pettype', pettype);
			sessionStorage.setItem('petbirth', agecalc);

			if (!pettype || !petbirth || !petname) {
				alert("반려견 정보를 입력하세요.")
				$('#calcform').attr({
					'action' : 'index'
				}).submit();
			}

		}
	</script>
</body>
</html>