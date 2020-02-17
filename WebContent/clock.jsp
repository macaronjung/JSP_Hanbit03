<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
</body>
</html>