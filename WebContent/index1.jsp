<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>邮箱</th>
			<th>密码</th>
			<th>userPower</th>
			<th>portectionID</th>
		</tr>
		<c:if test="${empty userss }">
				<tr>
					<td colspan="6" style="color: red">没有查询到任何数据</td>
				</tr>
		</c:if>
		<c:if test="${not empty userss }">
		<c:forEach items="${userss }" var="users">
		<tr>
		<td>${users.userID }</td>
		<td>${users.userName }</td>
		<td>${users.userEmail }</td>
		<td>${users.userPwd }</td>
		<td>${users.userPower }</td>
		<td>${users.portectionID }</td>
		</tr>
		</c:forEach>
		</c:if>
	</table>
</body>
</html>