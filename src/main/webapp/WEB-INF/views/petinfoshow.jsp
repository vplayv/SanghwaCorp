<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<%@ include file="header.jsp"%>
			<%@ include file="menu.jsp"%>
			<div class="row justify-content-md-center">
				<c:forEach var="a" items="${arr}">
					<div class="col-lg-3">
						<div class="card" style="text-align: center;">
							<div class="card-header">
								<h3>반려견 정보</h3>
							</div>
							<div class="card-body">
								<img src="${a.p_photo}" class="card-img-top rounded-circle" style="width: 250px; height: 250px">
							</div>
							<div class="card-footer">
								<h3>${a.p_name}</h3>
								견종:
								<c:choose>
									<c:when test="${a.p_type eq 'maltese'}">
                                                                                말티즈
                                                                        </c:when>
									<c:when test="${a.p_type eq 'poodle'}">
                                                                                푸들
                                                                        </c:when>
									<c:when test="${a.p_type eq 'shitzu'}">
                                                                                시츄
                                                                        </c:when>
								</c:choose>
								<br> 생일: ${a.p_birth}<br> 성별:
								<c:choose>
									<c:when test="${a.p_gender eq 'm_option'}">
                                                                                왕자
                                                                        </c:when>
									<c:when test="${a.p_gender eq 'w_option'}">
                                                                                공주
                                                                        </c:when>
								</c:choose>
								<br> 몸무게: ${a.p_weight}kg<br> 중성화 여부:
								<c:choose>
									<c:when test="${a.p_status eq 'y_option'}">
                                                                                O
                                                                        </c:when>
									<c:when test="${a.p_status eq 'n_option'}">
                                                                                X
                                                                        </c:when>
								</c:choose>
								<br> <br> <br>
								<button type="button" onclick="location.href='./petinfoupdate?p_idx=${a.p_idx}' " class="btn btn-success">반려견 정보 수정</button>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>