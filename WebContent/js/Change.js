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




