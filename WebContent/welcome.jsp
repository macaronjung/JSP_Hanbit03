<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- 부트스트랩 추가 -->
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 부트스트랩 추가 -->
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="navbar-header">
			<a class="navbar-brand" href="./ex06.jsp"></a>
		</div>
	</nav>

	<%! String greeting = "Welcome to Shop!!!";
	String tagline = "Welcome to Market!!!"; %>
	
	<!-- 부트스트랩 추가 -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%= greeting %>
			</h1>
		</div>
	</div>
	
	<main role="main">
		<div class="container">
			<div class="text-center">
				<h3>
					<%= tagline %>
				</h3>
			</div>
			<hr>
	</div>
	</main>
	
	<footer class="container">
		<p>&copy; WebMarket</p>
	</footer>

</body>
</html>