<%@page import="cn.journeydrip.listener.SessionCounter"%>
<%@page import="cn.journeydrip.entity.visted"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US">
<head>
<meta charset="UTF-8">
<title>站长统计</title>

<link rel="stylesheet" href="../journeydrip/css/reset.css" />
<link rel="stylesheet" href="../journeydrip/css/style.css" />
<script src="../journeydrip/js/jquery.js"></script>
<script type="text/javascript" src=".../journeydrip/js/functions.js"></script>

<script>
function sho(){
	var chara=$("#chara").val();
	if($("#chara").val()==""){
		alert("不能为空");
	}else{
 		 $.ajax({
 			 type:"POST",
 			 url:"svisted",
 			 data:{"chara":chara},
	   		 dataType:"json",
 			 success:function suc(data){
 				  var str="";//定义用于拼接的字符串
               /*  $.each(data,function (index,value) {
                 })*/
 				        for (var i=0;i<data.length;i++){
 				           //拼接表格的行和列
 				           str ="<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+data[i].username+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>"+data[i].date+"</td></tr>";
 				            //追加到table中
 				         $("#showdiv").append(str);      
 				   }
 			 },
 			 error:function fail(){
 				 alert("回答错误");	 
 			 
 			 }
				});
		}
	}
</script>



</head>
<body class="about">

	<div class="space"></div>
	<div class="elastic">
		<!-- 头部信息栏#header -->
		<div id="header" class="grid-clear">
			<div class="grid main-menu-block">
				<ul id="main-menu">
					<li><a href="sindex" class="settings-txt">主页</a></li>
					<li><a href="dongmanlist.html" class="settings-txt">动漫</a>
						<ul>
							<li><span class="top_area">&nbsp;</span></li>
							<li><a href="index2.html" class="settings-txt">日漫</a></li>
							<li><a href="portfolio.html" class="settings-txt">国漫</a></li>
							<li><a href="portfolio.html" class="settings-txt">欧美漫</a></li>
							<li><a href="portfolio.html" class="settings-txt">同人漫</a></li>
							<li><a href="dongmanlist.html" class="settings-txt">更多</a></li>
							<li><span class="bottom_area">&nbsp;</span></li>
						</ul></li>
					<li><a href="gamelist.html" class="settings-txt">游戏</a>
						<ul>
							<li><span class="top_area">&nbsp;</span></li>
							<li><a href="columns.html" class="settings-txt">单机游戏</a></li>
							<li><a href="404.html" class="settings-txt">网络游戏</a></li>
							<li><a href="index2.html" class="settings-txt">手机游戏</a></li>
							<li><a href="gamelist.html" class="settings-txt">更多</a></li>
							<li><span class="bottom_area">&nbsp;</span></li>
						</ul></li>
					<li><a href="novellist.html" class="settings-txt">小说</a>
						<ul>
							<li><span class="top_area">&nbsp;</span></li>
							<li><a href="columns.html" class="settings-txt">小说</a></li>
							<li><a href="404.html" class="settings-txt">江湖逸闻</a></li>
							<li><a href="index2.html" class="settings-txt">汉服设计</a></li>
							<li><a href="novellist.html" class="settings-txt">更多</a></li>
							<li><span class="bottom_area">&nbsp;</span></li>
						</ul></li>
					<li><a href="blog.html" class="settings-txt">设计</a>
						<ul>
							<li><span class="top_area">&nbsp;</span></li>
							<li><a href="index2.html" class="settings-txt">插画</a></li>
							<li><a href="portfolio.html" class="settings-txt">风格</a></li>
							<li><a href="portfolio.html" class="settings-txt">编码</a></li>
						</ul></li>
					<li><a href="contact.html" class="settings-txt">我的账户</a>
						<ul>
							<li><span class="top_area">&nbsp;</span></li>
							<li><a href="index2.html" class="settings-txt">账号信息</a></li>
							<li><a href="portfolio.html" class="settings-txt">我的博客</a></li>
							<li><a href="portfolio.html" class="settings-txt">我的文件夹</a></li>
							<li><span class="bottom_area">&nbsp;</span></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- 头部信息栏#header -->
		<div class="grid" id="logo">
			<span class="japan blue f15 settings-text">JourneyDrip</span>
		</div>
	</div>

	<div id="all_page_header">
		<div class="bg_wood_page circle-inline-border"></div>
		<div class="elastic inline-border settings-clr no-second"
			id="page_header">
			<h1 class="over5">站长统计</h1>

		</div>
	</div>
	<!-- end of page header description -->


	<div class="content elastic">
		<div class="column-grid">
			<div class="space"></div>

			<div class="column-grid">
				<h1 class="title-line blue settings-text">
					<span class="current-bg pr5"> <img
						src="../journeydrip/images/analy.jpg" width="419" height="520"
						align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在线人数
					</span>
				</h1>
				<div align="left">&nbsp;</div>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前一共有<%=SessionCounter.getActiveSessions()%>人在线
				</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>

				<h1 class="title-line blue settings-text">
					<span class="current-bg pr5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历史访问</span>
				</h1>
				<div class="space"></div>
				<p>&nbsp;</p>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<font size=3>站长的最大特征是?</font> <input type="text" id="chara"
					name="chara" value="记录回答可见"
					onfocus='if(this.value=="记录回答可见"){this.value="";}; ' onblur="sho()">
				</input><br />


				<table>
					<tr>
						&nbsp;
						<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
						<th>访问时间</th>
					</tr>

				</table>
					<div id="showdiv"></div>
				<p>
					&nbsp;
				</p>
			</div>
		</div>

	</div>



	<!-- 页面的底层 -->
	<div id="footer" class="circle-inline-border">
		<div class="elastic">
			<div class="top_footer">
				<div class="footer_widget">
					<h3 class="general-font">关于</h3>
					<ul>
						<li><a href="statement.form">免费声明</a></li>
						<li><a href="about.form">关于我们</a></li>
						<li><a href="contact.form">联系我们</a></li>
						<li><a href="sanalyze">站长统计</a></li>
					</ul>
				</div>
				<!-- 底下盒子1 -->

				<div class="footer_widget">
					<h3 class="general-font">站内导航</h3>
					<ul>

						<li><a href="dongmanlist.html">经典动漫</a></li>
						<li><a href="gamelist.html">游戏资讯</a></li>
						<li><a href="#">沁人音乐</a></li>
						<li><a href="#">古风尘寰</a></li>
						<li><a href="https://github.com/zqd-carlos/journeydrip">精良设计</a></li>
					</ul>
				</div>
				<!-- 底下盒子2 -->

				<div class="footer_widget">
					<h3 class="general-font">友情链接</h3>
					<ul>
						<li><a href="sindex">点滴之途</a></li>
						<li><a href="http://www.bilibili.com">bilibili</a></li>
						<li><a href="http://www.baidu.com">百度一下</a></li>
						<li><a href="http://www.fengchedm.com">风车动漫</a></li>
						<li><a href="http://geek.prdsarea.com">尼特部落</a></li>
					</ul>
				</div>
				<!-- 底下盒子3 -->
				<div class="clear"></div>

				<div class="footer_image">
					<img class="inline-border active"
						src="../journeydrip/images/slider/footer_home.jpg" alt="这里是底下图片"
						width="450" height="250" />
				</div>
			</div>


			<!--底层用来写备案信息等-->
			<div class="bottom_footer">
				<div class="left">
					<p>&copy; Copyright &copy; 2019.www.journeyprid.cn.
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [备案信息:苏ICP备19022684号]</p>
				</div>
				<div class="right area2"></div>
				<div class="clear"></div>
			</div>
		</div>
		<!-- end of elastic -->
	</div>


</body>
</html>