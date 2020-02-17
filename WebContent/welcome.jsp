<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- 02.부트스트랩 추가 -->
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 06.홈메뉴 모듈화 -->
	<%@ include file="menu.jsp" %>
<!-- <nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./welcome.jsp"></a>
			</div>
		</div>
	</nav> -->

	<%! String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
	String tagline = "Welcome to Market!!!"; %>
	
	<!-- 02.부트스트랩 추가 -->
	<div class="jumbotron">
		<div class="container">
			<div class="text-center">
				<h1 class="display-3">
					<%= greeting %>
				</h1>
			</div>
		</div>
	</div>
	
	<main role="main">
		<div class="container">
			<div class="text-center">
				<h3>
					<%= tagline %>
				</h3>
				
				<!-- 05.방문횟수 모듈화 -->
				<%@ include file="pagecount.jsp" %>
				
				<!-- 03.한글 출력 및 페이지 모듈화 -->
				<%
					Date day = new java.util.Date(); /* 상단 임포트 확인!!! */
					String am_pm;
					int hour = day.getHours();
					int minute = day.getMinutes();
					int second = day.getSeconds();
					
					/* int 값이라 0,1 두개만 나옴 */
					if (hour / 12 == 0) {
						am_pm = "AM";
					} else {
						am_pm = "PM";
						/* hour = hour - 12; */
					}
					
					String CT = hour + " : " + minute + " : " + second + " " + am_pm;
					out.println("현재 접속 시간 : " + CT + "\n");
					
				%>
				
			</div>
			<hr>
	</div>
	</main>
	
	<!-- 04.푸터 모듈화 -->
	<%@ include file="footer.jsp" %>
<!-- 	<footer class="container">
		<p>&copy; WebMarket</p>
	</footer> -->

</body>
</html>