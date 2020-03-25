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
<script src="./assets/js/vendors/jquery-3.2.1.min.js"></script>
<script src="./assets/js/require.min.js"></script>
<script>
	requirejs.config({
		baseUrl : '.'
	});
</script>
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
<body class="" onload="view()">
	<div class="page">
		<div class="flex-fill">
			<%@ include file="header.jsp"%>
			<%@ include file="menu.jsp"%>
			<div class="my-3 my-md-5">
				<div class="container">
					<div class="card">
						<div class="table-responsive">
							<div class="card-header">
								<h1 class="page-title">자주묻는 질문과 답변</h1>
							</div>
							<div class="dataTables_info" id="DataTables_info" role="status" aria-live="polite">
								총 <strong>${listCnt}</strong>건 <strong>${pageCnt}</strong>페이지
							</div>
							<div class="panel-group dataTables_wrapper no-footer panel panel-default">
								<table class="table card-table table-vcenter text-wrap datatable dataTable no-footer">
									<tbody id="accordion">

									</tbody>
								</table>
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
	<script>
		function recvFaqData(data) {
			$
					.each(
							data,
							function(i, v) {
								$("#accordion")
										.append(
												'<tr class="row panel-heading" id="heading'+i+'" role="tab">'
														+ '<td>'
														+ '<h4 class="panel-title">'
														+ '<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse'+i+'" aria-expanded="false" aria-controls="collapse'+i+'">'
														+ v.question
														+ '<i class="pull-right fa fa-plus">'
														+ '</i>'
														+ '</a>'
														+ '</h4>'
														+ '</td>'
														+ '<div class="panel-collapse collapse" id="collapse'+i+'" role="tabpanel" aria-labelledby="heading'+i+'">'
														+ '<div class="panel-body">'
														+ '<p>' + v.answer
														+ '</p>' + '</div>'
														+ '</div>' + '</tr>')
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
</body>
</html>