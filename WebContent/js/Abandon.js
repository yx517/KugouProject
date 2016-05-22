
/**
 * 小导航
 */
$(document).ready(function(){

		$("#hover-1 li a").mousemove(function(){
			$(this).addClass("hover_1_0");
		});
		$("#hover-1 li a").mouseout(function(){
			$(this).removeClass("hover_1_0");
		});
		$("#hover-1 li a").eq(0).addClass("hover_1_0");
});
//搜索歌曲，清空事件
$(document).ready(function(){
	$("#logo1").blur(function(){
		$(this).removeClass("logo_2_3");
		if(this.value == null || this.value == ""){
			this.value = "搜歌手、歌曲";
		}
	});
	$("#logo1").click(function(){
		$(this).addClass("logo_2_3");
		this.value="";
	});
});

//导航定位
$(document).ready(function() {
	$("#nva-1 li a").wrapInner( '<span class="out"></span>' ).append( '<span class="bg"></span>' );
	$("#nva-1 li a").each(function() {
		$( '<span class="over">' +  $(this).text() + '</span>' ).appendTo( this );
	});
	$("#nva-1 li a").hover(function() {
		$(".out",	this).stop().animate({'top':	'45px'},	250);
		$(".over",	this).stop().animate({'top':	'0px'},		250);
		$(".bg",	this).stop().animate({'top':	'0px'},		120);

	}, function() {
		$(".out",	this).stop().animate({'top':	'0px'},		250);
		$(".over",	this).stop().animate({'top':	'-45px'},	250);
		$(".bg",	this).stop().animate({'top':	'-45px'},	120);
	});
	$("#nva-1 li a").remove(function() {
		$(".out",	this).stop().animate({'top':	'45px'},	200);
		$(".over",	this).stop().animate({'top':	'0px'},		200);
	});
});

/**
 * 打开登录窗体
 */
function loginInfo(){
	var mask = document.getElementById("mask");
	mask.style.display = "block";
	var login = document.getElementById("login");
	login.style.display = "block";
}
/**
 * 关闭登录窗体
 */
function EscInfo(){
	var mask = document.getElementById("mask");
	mask.style.display = "none";
	var login = document.getElementById("login");
	login.style.display = "none";
}
function dianji(){
	var loginName = document.getElementById("loginName");
	loginName.value = "";
	loginName.border = "0px"
	}

/**
 * 登陆点击事件
 */

function clickLogin(){
	var loginName = document.getElementById("loginName");
	if(loginName.value == "请输入账号名或邮箱"){
		loginName.value = "";
	}
}
/**
 * 登陆移除事件
 * @return
 */
function mouserLogin(){
	var loginName = document.getElementById("loginName");
	if(loginName.value == "" || loginName.value == null){
		loginName.value = "请输入账号名或邮箱";
	}
}


/**
 * 用户验证不能为空
 * @return
 */
function confirmation(){
	var loginName = document.getElementById("loginName");
	var loginPwd = document.getElementById("loginPwd");
	var login = document.getElementById("login_1_1");
	if((!(loginPwd.value == null || loginPwd.value == "")) && (!(loginName.value == "" || loginName.value == null || loginName.value =="请输入账号名或邮箱"))){
		return true;
	}else{
		login.innerHTML="账号或密码不能为空";
		return false;
	}
}







