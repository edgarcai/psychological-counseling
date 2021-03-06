<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>首页</title>
	<!-- zui -->
	<link href="css/zui-theme.css" rel="stylesheet">
	<link href="css/zui.css" rel="stylesheet">
	<script src="js/jquery-3.3.1.js"></script>
	<script src="js/zui.js"></script>
	<script src="js/zui.lite.js"></script>
    <!--自定义-->
    <link href="css/invite.css" rel="stylesheet">
    <link href="css/mystyle.css" rel="stylesheet">
    
</head>

<body>
	<!--head-->
	<header id="header">
        <nav class="navbar contianer">
            <div class="container">
                <input type="checkbox" id="nav-toggle" class="nav-toggle"/>
                <label for="nav-toggle">
                    <span class="menu-icon">
                        <svg viewBox="0 0 18 15" width="18px" height="15px">
                            <path fill="white" d="M18,1.484c0,0.82-0.665,1.484-1.484,1.484H1.484C0.665,2.969,0,2.304,0,1.484l0,0C0,0.665,0.665,0,1.484,0 h15.031C17.335,0,18,0.665,18,1.484L18,1.484z"/>
                            <path fill="white" d="M18,7.516C18,8.335,17.335,9,16.516,9H1.484C0.665,9,0,8.335,0,7.516l0,0c0-0.82,0.665-1.484,1.484-1.484 h15.031C17.335,6.031,18,6.696,18,7.516L18,7.516z"/>
                            <path fill="white" d="M18,13.516C18,14.335,17.335,15,16.516,15H1.484C0.665,15,0,14.335,0,13.516l0,0 c0-0.82,0.665-1.484,1.484-1.484h15.031C17.335,12.031,18,12.696,18,13.516L18,13.516z"/>
                        </svg>
                    </span>
                </label>
                <ul class="nav-list">
                    <li class="logo">
                    <!--logo-->
                        <img src="images/logo-head-white.png" alt="明心心理">
                    </li>
                    <li onclick="changeActive(this)" class="list active"><a href="index.html">首页</a></li>
                    <li onclick="changeActive(this)" class="list"><a href="consult-list.html">咨询</a></li>
                    <li onclick="changeActive(this)" class="list"><a href="listen-list.html">倾听</a></li>
                    <li onclick="changeActive(this)" class="list"><a href="course-list.html">课程</a></li>
                    <li onclick="changeActive(this)" class="list"><a href="passage-list.html">阅读</a></li>
                    <li class="search"><div>
                            <form class="navbar-form navbar-left" role="search">
                                <div class="form-group">
                                        <input id="inputSearchExample3" type="search" class="form-control search-input" placeholder="搜索">
                                        <label for="inputSearchExample3" class="input-control-icon-left search-icon"><i class="icon icon-search"></i></label>
                                </div>
                                <button type="submit" class="btn btn-default">搜索</button>
                            </form>
                        </div></li>
                    <li class="list" id="list"><a class="login" href="login.jsp">登录/注册</a></li>
                </ul>  
            </div>
        </nav>
    </header>
    <%@ include file="tip.jsp" %>
	<!--内容-->
	<div class="contains index-contain">
		<!--轮播-->
		<div id="myNiceCarousel" class="carousel slide" data-ride="carousel">
			<!-- 圆点指示器 -->
			<ol class="carousel-indicators">
				<li data-target="#myNiceCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myNiceCarousel" data-slide-to="1"></li>
				<li data-target="#myNiceCarousel" data-slide-to="2"></li>
			</ol>

			<!-- 轮播项目 -->
			<div class="carousel-inner">
				<div class="item active">
					<img alt="First slide" src="http://zui.sexy/docs/img/slide1.jpg">
					<div class="carousel-caption">
						<h3>我是第一张幻灯片</h3>
						<p>:)</p>
					</div>
				</div>
				<div class="item">
					<img alt="Second slide" src="http://zui.sexy/docs/img/slide2.jpg">
					<div class="carousel-caption">
						<h3>我是第二张幻灯片</h3>
						<p>0.0</p>
					</div>
				</div>
				<div class="item">
					<img alt="Third slide" src="http://zui.sexy/docs/img/slide3.jpg">
					<div class="carousel-caption">
						<h3>我是第三张幻灯片</h3>
						<p>最后一张咯~</p>
					</div>
				</div>
			</div>

			<!-- 项目切换按钮 -->
			<a class="left carousel-control" href="#myNiceCarousel"
				data-slide="prev"> <span class="icon icon-chevron-left"></span>
			</a> <a class="right carousel-control" href="#myNiceCarousel"
				data-slide="next"> <span class="icon icon-chevron-right"></span>
			</a>
		</div>
		<!--END 轮播-->
		<!--第一行-->
		<div class="row1">
			<!--模块1：公司介绍-->
			<div class="intro panel">
				<div class="panel-body">
					<div class="title">北京明心悦智文化传播有限公司</div>
					<!--图片-->
					<img src="images/building.jpg" alt="" class="center-block">
					<!--介绍-->
					<p>起创于工作在一线的心理咨询师团队，是一家专注于心理健康知识传播与心理辅导的咨询机构；公司致力于推广心理健康知识普及与应用，为个人或组织提供专业的心理健康服务，公司拥有多名国家级心理咨询师及特邀专家顾问。</p>
				</div>
			</div>
			<!--模块2：动态新闻-->
			<div class="news panel">
				<div class="panel-body">
					<!--导航-->
					<ul class="nav nav-secondary">
						<li class="active"><a href="your/nice/url">最新动态</a></li>
						<li><a href="your/nice/url">最热活动</a></li>
						<li><a href="your/nice/url">公益进行时</a></li>
					</ul>
					<!--内容列表-->
					<div class="news-contain">
						<ul>
							<c:forEach items="${dynamics }" var="dynamic">
								<li><span class="tag"><a href="#">[公益]&nbsp;</a></span><a
									href="#">${dynamic.dynamicTitle }</a><span class="tag">&nbsp;[12-16]</span></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<!--模块3：特色服务-->
			<div class="service panel">
				<div class="panel-body">
					<div class="board-title-h1">特色服务</div>
					<div class="service-contain">
						<!--父母学堂-->
						<div class="service-block">
							<a href="#"> <img src="images/parents.png" alt=""> <span
								class="name">父母学堂</span>
							</a>
						</div>
						<!--妈妈学堂-->
						<div class="service-block">
							<a href="#"> <img src="images/mother.png" alt=""> <span
								class="name">妈妈学堂</span>
							</a>
						</div>
						<!--儿童训练-->
						<div class="service-block">
							<a href="#"> <img src="images/child-training.png" alt="">
								<span class="name">儿童训练</span>
							</a>
						</div>
						<!--自我成长-->
						<div class="service-block">
							<a href="#"> <img src="images/growing-up.png" alt=""> <span
								class="name">自我成长</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--第二行-->
		<div class="row2">
			<!--心理咨询-->
			<div class="consultation panel">
				<div class="panel-body">

					<div class="title">
						<span class="board-title-h1">心理咨询</span>
						<!--导航-->
						<c:forEach items="${types }" var="type">
							<a href="javascript:void(0);" class="selectConsulter">${type.typetableName }</a>
						</c:forEach>
						<a href="javascript:void(0);" class="more">&gt;&gt;更多</a>
					</div>
					
					<div id="consulterWrapper">
						<c:forEach items="${consulters }" var="consulter" varStatus="s">
							<div class="consultor">
								<!--头像-->
								<img src="${consulter.user.userHeadPath }" alt="">
								<div>
									<!--名字-->
									<span><a href="#">${consulter.user.userRealName }</a></span>
									<!--资质-->
									<span class="tag">${consulter.authenticationAptitudeName }</span><br />
									<!--咨询人次-->
									<span class="tag">咨询人次&nbsp;<span class="stress">${counts[s.index] }</span></span>
									<!--好评率-->
									<span class="tag">好评率<span class="stress">${consulter.teacherPraiseRate }%</span></span>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>

			<!--即时倾听-->
			<div class="index-listening panel">
				<div class="panel-body">
					<div>
						<span class="board-title-h1">及时倾听</span> <a href="#" class="more">&gt;&gt;更多</a>
					</div>
					<c:forEach items="${listeners }" var="listener">
						<div class="index-listener">
							<div class="head">
								<!--头像-->
								<img src="${listener.user.userHeadPath }" alt="">
								<!--状态-->
								<span class="label label-badge label-danger">可咨询</span>
							</div>
							
							<div class="index-listener-intr">
								<!--名字-->
								<span><a href="">${listener.user.userRealName }</a></span>
								<!--性别-->
								<span class="tag">${listener.user.userSex }</span>
								<!--年龄-->
								<span class="tag">${listener.age }</span><br />
								<!--倾听时长-->
								<span class="tag">共倾听<span class="time">${listener.teacherListenTime }分钟</span></span>
								<button class="btn btn-link" type="button" onclick="alert('helli')">向我倾诉</button>
							</div>
						</div>
						
					</c:forEach>
					

				</div>
			</div>
		</div>
	</div>
	<!--END 内容-->
	<div class="section2">
		<div class="contains index-contain">
			<!--第三行-->
			<div class="row3">
				<!--心理课程-->
				<div>
					<div class="board-title-h1">心理课程</div>
					<!--导航-->
					<div>
						<c:forEach items="${types }" var="type">
							<a href="javascript:void(0);" class="selectCourse">${type.typetableName }</a>
						</c:forEach>
					
					</div>
					<!--内容-->
					<div class="course-contain" id="courseWrapper">
						<!--课程-->
						<!--推荐课程：第一行-->
						
						<div class="recommend-course" >
							<c:forEach items="${courses }" var="course" varStatus="s">
								<c:if test="${s.index lt 2 }">
									<a class="card" href="###">
										<img src="${course.courseImgPath }" alt="">
										<div class="caption">${course.courseName }</div>
									</a>
								</c:if>
							</c:forEach>
						</div>
						
						<!--推荐课程：第二行-->
						<div class="recommend-course-small">
						
							<c:forEach items="${courses }" var="course" varStatus="s">
								<c:if test="${s.index gt 1 }">
									<a class="card course" href="###"> 
										<img src="${course.courseImgPath }" alt="">
										<div class="card-heading">
											<strong>${course.courseName }</strong>
										</div>
										<div class="card-content text-muted">${course.teacher.user.userRealName }</div>
									</a>								
								</c:if>
							</c:forEach>
							
						</div>
					</div>
				</div>
			</div>
			<!--第四行-->
			<div class="row4 panel passage-list-body">
				<!--心理文章-->
				<div class="panel-body">
					<div class="title">
						<span class="board-title-h1">心理文章</span> <a href="#"
							class="more tag">&gt;&gt;更多</a>
					</div>
					
					<c:forEach items="${articles }" var="article">
						<div class="passage-block">
							文章图片
							<img src="${article.articleImgPath }" alt="！！这里写文章的名字！！">  <!-- 文章图片 -->
							文章名
							<a class="title" href="passage.html">${article.articleName }</a><br />
							文章作者
							<a class="writer" href="consulter.html">${article.teacher.user.userRealName }</a><br />
							文章介绍
							<p>${article.articleIntroduction }</p>
						</div>
					</c:forEach>
						
<!-- 							<div class="passage-block"> -->
<!-- 								文章图片 -->
<!-- 								<img src="images/passage.jpeg" alt="！！这里写文章的名字！！">  文章图片 -->
<!-- 								文章名 -->
<!-- 								<a class="title" href="passage.html">结婚前，听听咨询师给你的3个建议&nbsp;|&nbsp;心事博物馆</a><br /> -->
<!-- 								文章作者 -->
<!-- 								<a class="writer" href="consulter.html">黄小希</a><br /> -->
<!-- 								文章介绍 -->
<!-- 								<p>你和你的家人相处融洽，除了血亲之外，还有几十年的相处默契，她作为一个新加入的人，要让她用自己的节奏慢慢熟悉这个新的家庭。</p> -->
<!-- 							</div>  -->
						
						
					
				</div>
			</div>
		</div>
	</div>
	<div class="footer" id="footer">
		<div class="container footer-contain">
			<div class="up-part" id="up-part">
				<!--社交账号-->
				<div id="footer-social-account">
					<span class="footer-title-h1">社交账号</span></br> </br> <a
						onmouseout="hideCode()"
						onmouseover="showCode('images/qq-code.png','交流群',this)"><i
						class="icon icon-qq"></i></a> <a onmouseout="hideCode()"
						onmouseover="showCode('images/wechat-code.jpg','公众号',this)"><i
						class="icon icon-wechat"></i></a>
					<div id="code">
						<div id="code-title">
							<h4></h4>
						</div>
						<div id="code-img"></div>
					</div>
					<script>
						var templet = "<div id='code-title'><h4></h4></div><div id='code-img'></div>";
						function showCode(url, title, obj) {
							var left = $(".footer-title-h1:first").position().left;
							$("#code-img")
									.html(
											"<img class='code center-block' src='"+url+"' alt=''/>");
							$("#code").css("left", left);
							$("#code-title").children(":first").html(title);
							$("#code").css("background-color",
									"rgb(223, 223, 223)");
						}
						function hideCode() {
							$("#code").html(templet);
							$("#code").css("background-color", "none");
						}
					</script>
				</div>
				<!--相关链接-->
				<div id="footer-link">
					<span class="footer-title-h1">相关链接</span></br> </br> <a
						href="http://www.baidu.com">百度</a></br> <a href="http://www.zhihu.com">知乎</a></br>
					<a href="http://www.baidu.com">百度</a></br> <a
						href="http://www.zhihu.com">知乎</a>
				</div>

				<!--联系我们-->
				<div id="footer-contact">
					<span class="footer-title-h1">联系我们</span></br> </br> <i
						class="icon icon-phone"></i> <span class="tel">01-81596313</span>
					<i class="icon icon-mobile"></i> <span class="phone">183016083</span></br>
					<i class="icon icon-map-marker"></i> <span class="add">北京市通州区天时名&nbsp;苑5号楼1单元801</span>
				</div>
				<!--我要反馈-->
				<div class="feedback">
					<a class="footer-title-h1" href="#">我要反馈</a></br> </br> <a
						class="footer-title-h1" href="#">关于我们</a></br> <a
						class="footer-title-h1" href="#">加入我们</a></br>
				</div>
			</div>
			<hr>
			<!--备案信息-->
			<div class="button-part">
				<span class="footer-icp">©2018&nbsp;北京明心心理事务所京&nbsp;ICP&nbsp;证&nbsp;1****1&nbsp;号京公网安备&nbsp;1**********1&nbsp;号什么什么经营许可证</span>
			</div>
			</br>
			<!-- <span class="footer-icp"></span></div> -->
		</div>
	</div>
	</div>
	<!--返回顶部按钮-->
	<div id="back-to-top">
		<button id="back-to-top-btn" class="btn btn-primary" type="button"
			onclick="toTop();" onmousemove="showText();" onmouseout="hideText()">
			<i class="icon icon-hand-up"></i>
		</button>
		<script>
			function showText() {
				$("#back-to-top-btn").html(
						'回到顶部<i class="icon icon-hand-up"></i>');
			}
			function hideText() {
				$("#back-to-top-btn").html('<i class="icon icon-hand-up"></i>');
			}
			function toTop() {
				$('html , body').animate({
					scrollTop : 0
				}, 'slow');
			}
		</script>
	</div>
	<script>
		window.onload = function() {
			$('#back-to-top-btn').hide();
			$(window).scroll(function() {
				// console.log($(this).scrollTop());
				//当window的scrolltop距离大于1时，go to 
				if ($(this).scrollTop() > 100) {
					$('#back-to-top-btn').fadeIn();
				} else {
					$('#back-to-top-btn').fadeOut();
				}
			});

			$("#footer").css("height", window.innerHeight * 0.56);
			$("#back-to-top-btn").css("top", window.innerHeight * 0.8);
			$("#back-to-top-btn").css("left", window.innerWidth * 0.9);
		}
		
	</script>
	<!-- jQuery (ZUI中的Javascript组件依赖于jQuery) -->
	<script src="js/jquery-1.11.0.min.js"></script>
	<!-- ZUI Javascript组件 -->
	<script src="js/zui.min.js"></script>
	<script type="text/javascript">
		var $selectConsulters = $(".selectConsulter");
		$selectConsulters.click(function() {
			var ajax = new XMLHttpRequest();
			var condition = $(this).html();
			ajax.open("GET", "selectConsulter?condition=" + condition, true);
			ajax.send();
			
			ajax.onreadystatechange = function() {
				if (ajax.readyState == 4 && ajax.status == 200) {
					console.log("responseText: " + ajax.responseText);
					document.getElementById("consulterWrapper").innerHTML = ajax.responseText;
				}
			}
		});
		
		var $selectCourses = $(".selectCourse");
		$selectCourses.click(function(){
			var ajax = new XMLHttpRequest();
			var condition = $(this).html();
			ajax.open("GET", "selectCourse?condition=" + condition, true);
			ajax.send();
			
			ajax.onreadystatechange = function() {
				if (ajax.readyState == 4 && ajax.status == 200) {
					console.log("responseText: " + ajax.responseText);
					$("#courseWrapper").html(ajax.responseText);
				}
			}
		});
	</script>
	
	
</body>
</html>