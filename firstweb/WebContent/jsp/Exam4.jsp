<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		for (int i = 1; i <= 5; i++) {
	%>
<!-- 동적인 태그 생성 h1~h5 까지의 태그 생성 -->
<!-- 만들어진 자바 코드 보면 service 메서드 안에 만들어졌고, 
자바코드 안에 for문으로 out.write, out.print 반복하며 만들어져 있음 
-->

<!-- 응답 결과에 무언가를 표현하고 싶으면 표현식에 넣어야 함
	jsp 페이지에서 웹브라우저에 출력할 부분 표현(화면에 출력하기 위한 것)  -->
<!--  스크립트릿 안에서 표현하고 싶은 건 out.print 등을 이용할 수 있음  -->

<!--  jsp 파일 안에서는 html주석, 자바주석, jsp 주석을 모두 사용할 수 있음 (때에 따라)
jsp 주석인 경우 처음부터 아예 서블릿으로 변환되지 않음 소스보기로도 안 나타남 
html주석인 경우 브라우저에서 소스보기를 수행하면 주석 내용이 나타남 
자바주석의 경우 자바로 바뀌는데 자바부분이 화면에 출력되는게 아니므로 볼 수는 없음 
자바 주석문은 스크립트릿이나 선언문에서 사용함 // 방식  -->

<H<%=i %>>아름다운 한글</H<%=i%>>
			
	<%
		}
	
	%>
<!-- for문이 한 스크립트릿에서 시작되었지만 다른 스크립트릿에서 끝나게 할 수 있음  -->
</body>
</html>