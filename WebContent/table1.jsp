<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		#banner{width:100%;height:325px;margin-top:13px;}
		#banner a{margin-left:20px; }
		.banner_1{width:695px;height:325px;float: left;}
		#slide{right:10px;z-index:2;position:absolute;top:290px;left:505px;}
		.red_red{background:red;}
		#slide span{width: 22px;height: 22px;line-height: 22px;display: inline-block;margin: 0 1px;background: #999;text-align: center;color: white;border-radius: 12px;cursor: pointer;}	
	</style>
	
  </head>
  
  <body>
   <script type="text/javascript" src="js/jquery-1.9.js"></script>
    <script>
    	/**
*自动切换动画图片
*/
var min = 0;
var max = 5;
function adAutoChange() {
	 if (min == max) {
		 min = 0;
	 } else {
		 min++;
	 }
	 adChange();
}
/**
*手动切换图片
*/
function adChange() {
	 $("#banner a:eq(" + min + ")").show().siblings("a").hide();
	 $("#banner #slide span:eq(" + min + ")").css("background","red").siblings().css("background","#999");
}

//#banner的事件加载
$(function () {
	 //显示第一个图片，其他隐藏。数字一背景颜色变为红色。
	 $("#banner a:not(':first')").hide();
	 $("#banner #slide span:first").css("background","red");
	 setInterval("adAutoChange()", "3000"); //自动切换数字和图片

	 //当鼠标移动到数字对应切换到对应图片
	 $("#banner #slide span").mousemove(function () {
		 min = $(this).text() - 1;
		 adChange();
	 });
});
    </script>
		<div class="banner_1">
			<div id="banner">
				 <c:forEach items="${list}" var="img" varStatus="status">
				 	<a href="#">
				 		<img src="${img.imgURL}"/>
				 	</a>
				 </c:forEach>
			<div id = "slide">
				<c:forEach begin = "1" end = "6" step="1" var = "index">
						<span>${index}</span>
				</c:forEach>
			</div>
		</div>
	</div>
	<div <c:if test="${url != null}">style="display: block"</c:if><c:if test="${url == null}">style="display: none"</c:if>>
		<div style="border: 1px solid;width: 750px;height: 120px;position: absolute;left:0px;top:360px;">
			<table>
				<tr>
					<td>
						<input type="file"/>
					</td>
				</tr>
			</table>
		</div>
	</div>
  </body>
</html>
