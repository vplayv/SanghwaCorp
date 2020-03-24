<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>FAQ</title>
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

<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- <script src="resources/assets/faq/faq.js"></script> -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<style>
.panel-group {
	margin-bottom: 0
}

.panel {
	border-radius: 0 box-shadow: none border-top: none margin-top: 0
}

.panel-heading {
	padding: 0
}

.panel-body {
	padding-top: 0
}

.panel-heading, .panel-collapse> ,list-group {
	border-top: none
}

.panel-heading, .panel-collapse> ,panel-body {
	border-top: none
}
</style>

<script>
	function recvFaqData(data) {
		$.each(
						data,
						function(i, v) {

							$("#accordion")
									.append(
											'<div class="panel panel-default">'
													+ '<div class="panel-heading" id="heading'+i+'" role="tab">'
													+ '<h4 class="panel-title">'
													+ '<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse'+i+'" aria-expanded="false" aria-controls="collapse'+i+'">'
													+ v.question
													+ '<i class="pull-right fa fa-plus">'
													+ '</i>'
													+ '</a>'
													+ '</h4>'
													+ '</div>'
													+ '<div class="panel-collapse collapse" id="collapse'+i+'" role="tabpanel" aria-labelledby="heading'+i+'">'
													+ '<div class="panel-body">'
													+ '<p>' + v.answer + '</p>'
													+ '</div>' + '</div>'
													+ '</div>')
						})
	}

	function view() {
		$.getJSON("faqtablemake", recvFaqData)
	}

	function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "${pageContext.request.contextPath}/faq";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}

	//페이지 번호 클릭
	function fn_pagination(page) {
		var url = "${pageContext.request.contextPath}/faq";
		url = url + "?page=" + page;
		location.href = url;
	}

	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "${pageContext.request.contextPath}/faq";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
</script>
</head>
<body onload="view()" class="">
	<div class="page">
		<div class="flex-fill">
			<div class="header py-4">
				<div class="container">
					<div class="d-flex">
						<a class="header-brand" href="./index.html">
							<img src="./demo/brand/tabler.svg" class="header-brand-img" alt="tabler logo">
						</a>
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
								<li class="nav-item"><a href="./index.html" class="nav-link active">
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
										<a href="./empty.html" class="dropdown-item ">Empty page</a>
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
			<div class="my-3 my-md-5">

				<div class="container">
					<h2>자주묻는 질문과 답변</h2>
					<br>

					<p>
						총 <strong>${listCnt}</strong>건 <strong>${pageCnt}</strong>페이지
					</p>


					<div class="panel-group" id="accordion"></div>

					<!-- pagination{s} -->

					<div id="paginationBox" style="text-align: center">

						<ul class="pagination">

							<c:if test="${pagination.prev}">

								<li class="page-item">
									<%--<a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a> --%> <a class="page-link" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a>
								</li>

							</c:if>

							<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">

								<%--<c:forEach begin="1" end="5" var="idx"> --%>

								<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}')"> ${idx} </a> <%-- <a class="page-link" onClick="fn_pagination('${idx}', '${pagination.range}')"> ${idx} </a> --%></li>

							</c:forEach>

							<c:if test="${pagination.next}">

								<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')">Next</a> <%-- <a class="page-link" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')" >Next</a> --%></li>

							</c:if>

						</ul>

					</div>

					<!-- pagination{e} -->

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

</body>
</html>