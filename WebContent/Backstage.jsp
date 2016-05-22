<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<%
//判断用户是否是登录进来的!
	if(request.getSession().getAttribute("admins")==null){
		response.sendRedirect("WinLoad");//重定向
		//request.getRequestDispatcher("login.jsp").forward(request,response);//转发
	}
%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>酷狗后台管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="Shortcut Icon" href="images/favicon.ico">
	

	
	<script type="text/javascript" src="js/jquery-1.9.js"></script>
	<script type="text/javascript">
		function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="images/ico05.gif";//图片ico04为白色的正方形
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="images/ico06.gif";}//图片ico06为蓝色的正方形
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="images/ico04.gif";
	}
}
	
	</script>
	<script type="text/javascript">
			function getOs() 
			{ 
			    var OsObject = ""; 
			   if(navigator.userAgent.indexOf("MSIE")>0) { 
			        return "MSIE";
			   } 
			   if(isFirefox=navigator.userAgent.indexOf("Firefox")>0){ 
			        return "Firefox"; 
			   } 
			   if(isSafari=navigator.userAgent.indexOf("Safari")>0) { 
			        return "Safari"; 
			   }  
			   if(isCamino=navigator.userAgent.indexOf("Camino")>0){ 
			        return "Camino"; 
			   } 
			   if(isMozilla=navigator.userAgent.indexOf("Gecko")>0){ 
			        return "Gecko"; 
			   } 
			} 
			if(getOs() == "MSIE"){
				document.write("<link rel='stylesheet' type='text/css' href='css/IEBackstage.css'>");
			}
			if(getOs() == "Firefox"){
				document.write("<link rel='stylesheet' type='text/css' href='css/FFBackstage.css'>");
			}
			if(getOs() == "Safari"){
				document.write("<link rel='stylesheet' type='text/css' href='css/GGBackstage.css'>");
			}
			if(getOs() == "Camino"){
				alert("Camino");
			}
			if(getOs() == "Gecko"){
				alert("Gecko");
			}
	</script>
	<script >
		function wang(){
			var wang = document.getElementById("firame");
			wang.src="table1Do";
		}
		function wang0(){
			var wang0 = document.getElementById("firame");
			var adminsName = document.getElementById("adminsName").innerHTML;
			var adminsPwd = document.getElementById("adminsPwd").value;
			wang0.src="indexDo?name="+adminsName+"&"+"pwd"+adminsPwd;
		}
		function wang1(){
			var wang = document.getElementById("firame");
			wang.src="table1Do?url=1";
		}
	</script>
  </head>
  
  <body>
  	<div>
	<script type="text/javascript">
		function showDate(){
		  	now = new Date();
		  	var date = document.getElementById("nva1");
			date.innerHTML = now.getUTCFullYear()+'年'+(now.getMonth()+1)+'月'+now.getDate()+'日'+now.getHours()+'点'+now.getMinutes()+'分'+now.getSeconds()+'秒';
		}
			window.onload=function(){
			showDate();
			window.setInterval("showDate()", 1000);
		}
	</script>
  	<!-- logo信息 -->
  		<div class="logo">
			<div class="logo_1"></div>
			<div class="logo_2">
			</div>
			
		</div>
		<!--导航信息 -->
		<div class="nva">
			<div class="nva_1">
			</div>
			<div class="nva_2">
				<p id="nva1">
				</p>
			</div>
		</div>
		<div style="width:960px;">
		<div class="mian_left">
		<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
		  <tr>
		    <TD>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="207" height="55" background="images/nav01.gif">
						<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
						  <tr>
							<td width="25%" rowspan="2"><img src="images/ico02.gif" width="35" height="35" /></td>
							<td width="75%" height="22" class="left-font01">您好，
							<span class="left-font02" id="adminsName">${admins.adminName }</span>
							<input type="hidden" id="adminsPwd" value="${admins.adminPwd }"/>
							</td>
						  </tr>
						  <tr>
							<td height="22" class="left-font01">
								[&nbsp;<a href="Admin.jsp" target="_top" class="left-font01">退出</a>&nbsp;]</td>
						  </tr>
						</table>
					</td>
				  </tr>
				</table>
				
		
		
				<!--  广告管理开始    -->
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
		          <tr>
		            <td height="29">
						<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%"><img name="img8" id="img8" src="images/ico04.gif" width="8" height="11" /></td>
								<td width="92%">
										<a  target="mainFrame" class="left-font03" onClick="list('8');" >广告管理</a></td>
							</tr>
						</table>
					</td>
		          </tr>		  
		        </TABLE>
				<table id="subtree8" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
						cellspacing="0" class="left-table02">
						<tr>
						  <td width="9%" height="20" ><img id="xiaotu20" src="images/ico06.gif" width="8" height="12" /></td>
						  <td width="91%"><a href="javascript:wang()" target="mainFrame" class="left-font03" onClick="tupian('20');">查看广告</a></td>
						</tr>
						<tr>
						  <td width="9%" height="20" ><img id="xiaotu21" src="images/ico06.gif" width="8" height="12" /></td>
						  <td width="91%"><a href="javascript:wang1()" target="mainFrame" class="left-font03" onClick="tupian('21');">修改广告</a></td>
						</tr>
						<tr>
						  <td width="9%" height="20" ><img id="xiaotu22" src="images/ico06.gif" width="8" height="12" /></td>
						  <td width="91%"><a target="mainFrame" class="left-font03" onClick="tupian('22');">添加广告</a></td>
						</tr>
						<tr>
						  <td width="9%" height="20" ><img id="xiaotu23" src="images/ico06.gif" width="8" height="12" /></td>
						  <td width="91%"><a target="mainFrame" class="left-font03" onClick="tupian('23');">删除广告</a></td>
						</tr>
		      </table>
				<!--  广告管理结束    -->
		
				
		
				<!-- 查询歌曲开始    -->
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
		          <tr>
		            <td height="29">
						<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%"><img name="img7" id="img7" src="images/ico04.gif" width="8" height="11" /></td>
								<td width="92%">
										<a target="mainFrame" class="left-font03" onClick="list('7');" >查询歌曲</a></td>
							</tr>
						</table>
					</td>
		          </tr>		  
		        </TABLE>
				<table id="subtree7" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
						cellspacing="0" class="left-table02">
						<tr>
						  <td width="9%" height="20" ><img id="xiaotu17" src="images/ico06.gif" width="8" height="12" /></td>
						  <td width="91%">
								<a href="#" target="mainFrame" class="left-font03" onClick="tupian('17');">查询最新信息</a></td>
						</tr>
						<tr>
						  <td width="9%" height="20" ><img id="xiaotu18" src="images/ico06.gif" width="8" height="12" /></td>
						  <td width="91%">
							<a href="#" target="mainFrame" class="left-font03" onClick="tupian('18');">查询热榜信息</a></td>
						</tr>
						<tr>
						  <td width="9%" height="20" ><img id="xiaotu19" src="images/ico06.gif" width="8" height="12" /></td>
						  <td width="91%">
								<a href="#" target="mainFrame" class="left-font03" onClick="tupian('19');">查询音乐盛典信息</a></td>
						</tr>
						<tr>
						  <td width="9%" height="20" ><img id="xiaotu24" src="images/ico06.gif" width="8" height="12" /></td>
						  <td width="91%">
								<a href="#" target="mainFrame" class="left-font03" onClick="tupian('24');">查询MV热播信息</a></td>
						</tr>
		      </table>
				<!--  查询歌曲结束    -->
		
		
				<!--  修改歌曲开始    -->
		        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
		          <tr>
		            <td height="29">
						<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%"><img name="img1" id="img1" src="images/ico04.gif" width="8" height="11" /></td>
								<td width="92%">
										<a  target="mainFrame" class="left-font03" onClick="list('1');" >修改歌曲</a></td>
							</tr>
						</table>
					</td>
		          </tr>		  
		        </TABLE>
				<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
						cellspacing="0" class="left-table02">
						<tr>
						  <td width="9%" height="20" ><img id="xiaotu1" src="images/ico06.gif" width="8" height="12" /></td>
						  <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('1');">修改最新界面</a></td>
						</tr>
						<tr>
						  <td width="9%" height="20" ><img id="xiaotu4" src="images/ico06.gif" width="8" height="12" /></td>
						  <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('4');">修改热榜信息</a></td>
						</tr>
						<tr>
						  <td width="9%" height="20" ><img id="xiaotu2" src="images/ico06.gif" width="8" height="12" /></td>
						  <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('2');">修改音乐盛典歌信息</a></td>
						</tr>
						<tr>
						  <td width="9%" height="20" ><img id="xiaotu5" src="images/ico06.gif" width="8" height="12" /></td>
						  <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('5');">修改MV信息</a></td>
						</tr>
		      </table>
				<!--  修改歌曲结束    -->
		
			  <!--  添加歌曲开始    -->
			  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
		          <tr>
		            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
		                <tr>
		                  <td width="8%" height="12"><img name="img2" id="img2" src="images/ico04.gif" width="8" height="11" /></td>
		                  <td width="92%"><a  target="mainFrame" class="left-font03" onClick="list('2');" >添加歌曲</a></td>
		                </tr>
		            </table></td>
		          </tr>
		      </table>
			  
			  <table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
		        
				<tr>
		          <td width="9%" height="20" ><img id="xiaotu7" src="images/ico06.gif" width="8" height="12" /></td>
		          <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('3');">添加最新信息</a></td>
		        </tr>
		        <tr>
		          <td width="9%" height="20" ><img id="xiaotu7" src="images/ico06.gif" width="8" height="12" /></td>
		          <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('6');">添加热榜信息</a></td>
		        </tr>
		        <tr>
		          <td width="9%" height="20" ><img id="xiaotu7" src="images/ico06.gif" width="8" height="12" /></td>
		          <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('7');">添加音乐盛典歌信息</a></td>
		        </tr>
		        <tr>
		          <td width="9%" height="20" ><img id="xiaotu7" src="images/ico06.gif" width="8" height="12" /></td>
		          <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('9');">添加MV信息</a></td>
		        </tr>
		      </table>
		
			  <!--  添加歌曲结束    -->
		
			  <!--  添加歌曲开始    -->
			  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
		          <tr>
		            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
		                <tr>
		                  <td width="8%" height="12"><img name="img3" id="img3" src="images/ico04.gif" width="8" height="11" /></td>
		                  <td width="92%"><a  target="mainFrame" class="left-font03" onClick="list('3');" >删除歌曲信息</a></td>
		                </tr>
		            </table></td>
		          </tr>
		      </table>
			  
			  <table id="subtree3" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
		        <tr>
		          <td width="9%" height="20" ><img id="xiaotu8" src="images/ico06.gif" width="8" height="12" /></td>
		          <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('8');">删除最新信息</a></td>
		        </tr>
				<tr>
		          <td width="9%" height="20" ><img id="xiaotu9" src="images/ico06.gif" width="8" height="12" /></td>
		          <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('9');">删除热榜信息</a></td>
		        </tr>
				<tr>
		          <td width="9%" height="20" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
		          <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('10');">删除音乐盛典歌信息</a></td>
		        </tr>
		        <tr>
		          <td width="9%" height="20" ><img id="xiaotu21" src="images/ico06.gif" width="8" height="12" /></td>
		          <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('21');">删除MV信息</a></td>
		        </tr>
		      </table>
			
			  <!--  添加歌曲结束    -->
		
		
			  <!-- 管理系统开始 -->
		      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
		          <tr>
		            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
		                <tr>
		                  <td width="8%"><img name="img5" id="img5" src="images/ico04.gif" width="8" height="11" /></td>
		                  <td width="92%"><a  target="mainFrame" class="left-font03" onClick="list('5');">系统管理</a></td>
		                </tr>
		            </table></td>
		          </tr>
		      </table>
		
			  <table id="subtree5" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
		        <tr>
		          <td width="9%" height="20"><img id="xiaotu13" src="images/ico06.gif" width="8" height="12" /></td>
		          <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('13');">添加管理员</a></td>
		        </tr>
		      </table>
			  <!-- 管理系统结束-->
		
				
		     <!-- 系统帮助开始 -->
		      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
		        <tr>
		          <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
		              <tr>
		                <td width="8%"><img name="img6" id="img6" src="images/ico04.gif" width="8" height="11" /></td>
		                <td width="92%"><a  target="mainFrame" class="left-font03" onClick="list('6');">系统帮助</a></td>
		              </tr>
		          </table></td>
		        </tr>
		      </table>
			  <table id="subtree6" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
		        <tr>
		          <td width="9%" height="20"><img id="xiaotu15" src="images/ico06.gif" width="8" height="12" /></td>
		          <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('15');">用户手册</a></td>
		        </tr>
		        <tr>
		          <td height="20"><img id="xiaotu16" src="images/ico06.gif" width="8" height="12" /></td>
		          <td><a href="#" target="mainFrame" class="left-font03" onClick="tupian('16');">规章制度</a></td>
		        </tr>
		      </table>
			 <!-- 系统帮助结束-->
		
			 <!--个人信息管理开始-->
		
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
		          <tr>
		            <td height="29">
						<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%"><img name="img9" id="img9" src="images/ico04.gif" width="8" height="11" /></td>
								<td width="92%">
									<a target="mainFrame" class="left-font03" onClick="list('9');" >个人管理</a>
								</td>
							</tr>
						</table>
					</td>
		          </tr>		  
		        </TABLE>
		
				<table id="subtree9" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
						cellspacing="0" class="left-table02">
						<tr>
						  <td width="9%" height="22" ><img id="xiaotu22" src="images/ico06.gif" width="8" height="12" /></td>
						  <td width="91%"><a href="javascript:wang0()" target="mainFrame" class="left-font03" 
								onClick="tupian('22');">个人信息查看</a></td>
						</tr>
		      </table>
				<!--  个人信息结束    -->
			  </TD>
		  </tr>
		</table>
		</div>
		<div class="mian_right">
			<iframe src="indexDo?name=${admins.adminName }&pwd=${admins.adminPwd }" width="100%" height="100%" id="firame" frameborder="0"  scrolling=no>
            </iframe>
		</div>
		</div>
  	</div>
  </body>
</html>
