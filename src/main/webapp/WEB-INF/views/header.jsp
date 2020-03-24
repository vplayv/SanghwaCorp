<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
								<span class="avatar" style="background-image: url(./demo/photos/basicprofile.png)"></span> <span class="ml-2 d-none d-lg-block"> <span class="text-default">${sessionScope.user.c_id}</span> <small class="text-muted d-block mt-1">${sessionScope.user.c_name}</small>
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