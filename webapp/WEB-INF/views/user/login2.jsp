<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="${pageContext.servletContext.contextPath}/assets/css/user.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		
		<!--헤더 시작 -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!--헤더 끝 -->
		
		<div id="content">
			<div id="user">
				<form id="login-form" name="loginform" method="post" action="${pageContext.servletContext.contextPath}/user2/login">
					<label class="block-label" for="email">이메일</label>
					<input id="email" name="email" type="text" value="${email}">
					<label class="block-label" >패스워드</label>
					<input name="password" type="password" value="">
					<c:if test='${result == "fail"}'>
					<p>
						로그인이 실패 했습니다.
					</p>
					</c:if>
					<input type="submit" value="로그인">
				</form>
			</div>
		</div>
			
		<!--네비게이션 시작 -->
		<c:import url="/WEB-INF/views/includes/navigation.jsp">
		</c:import>
		<!--네비게이션 끝 -->
		
		<!--풋터 시작 -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!--풋터 끝 -->
		
	</div>
</body>
</html>