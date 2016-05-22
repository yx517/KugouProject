<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	.qq1{width: 100%; height: 35%;border-bottom:2px solid #3BB7EA;}
	</style>
  </head>
  
  <body>
  	
   		<div class="qq1" <c:if test="${admins == null}">style="display: none;"</c:if>>
   			<h1 style="line-height: 200px;text-align: center;color: #3BB7EA;">欢迎：${admins.adminName}&nbsp;登陆!</h1>
   		</div>
   		<div style="width: 100%; height: 54%;">
   			<table style="width: 100%;height: 150px;margin-top: 50px;">
	  			<c:forEach items="${record}" var="r" end="1" begin="1" varStatus="status">
		   				<tr>
		   					<td style="text-align: right">上次登录时间：</td>
		   					<td>${r.recordDate}</td>
		   				</tr>
		   				<tr>
		   					<td style="text-align: right">上次登录IP：</td>
		   					<td>${r.recordIP}</td>
		   				</tr>
	   			</c:forEach>
   				<tr>
   					<td style="text-align: right">总登录次数：</td>
   					<td>${re }</td>
   				</tr>
   				<c:forEach items="${record}" var="r" end="0" begin="0" varStatus="status">
	   				<tr>
	   					<td style="text-align: right">本次登录时间：</td>
	   					<td>${r.recordDate}</td>
	   				</tr>
	   				<tr>
	   					<td style="text-align: right">本次登录IP：</td>
	   					<td>${r.recordIP}</td>
	   				</tr>
   			</c:forEach>
   			</table>
   		</div>
  </body>
</html>
