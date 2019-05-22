<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<title>新闻—韶关市计算机学会</title>
<script type="text/javascript" src="../js/jquery-1.11.0.js"></script>
<script type="text/javascript" >
//文档加载完后，获取所有动态信息
    $(function(){
    	//加载完后，要执行的代码就写在这匿名函数
    	$.get("http://localhost:8080/SCF/allCategoryServlet",function(result){})
    	//遍历result（json数组）
    	for(var i=0;i<result.length;i++){
    		$("#ct").append("<li><a href='#'>"+result[i].ntitle+"</a></li>")
    	} 
    },"json")
</script>
<body>
    <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div><a href="login.html"><img alt="40x40" src="image/logo.jpg" height="70" width="110" class="img-circle" /></a></div>
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">SCF</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li >
							 <a href="xuehui.jsp">首页</a>
						</li>
						<li >
							 <a href="about.jsp">关于学会</a>
						</li>
						<li class="active">
							 <a href="news.jsp">学会动态</a>
						</li>
						<li >
							 <a href="notice.jsp">学会公告</a>
						</li>
						<li >
							 <a href="download.jsp">下载中心</a>
						</li>
						<li >
							 <a href="tech.jsp">技术交流</a>
						</li>
						<li >
							 <a href="messageboad.jsp">网站留言</a>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> <button type="submit" class="btn btn-default">搜索</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a href="#">联系我们</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">其它<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="#">Action</a>
								</li>
								<li>
									 <a href="#">Another action</a>
								</li>
								<li>
									 <a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">Separated link</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				
			</nav>
			<div class="carousel slide" id="carousel-204425">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-204425">
					</li>
					<li data-slide-to="1" data-target="#carousel-204425">
					</li>
					<li data-slide-to="2" data-target="#carousel-204425">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="image/xui.jpg" />
						<div class="carousel-caption">
							<h4>
								First Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="image/xuihui.jpg" />
						<div class="carousel-caption">
							<h4>
								Second Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="image/yejing.jpg" />
						<div class="carousel-caption">
							<h4>
								Third Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-204425" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-204425" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
		<div class="row clearfix">
			<div class="content_left pull-left col-lg-3">
				<h3>学会动态</h3>
				<div class="dtree">
					<div class="dTreeNode">
						<img id="id0" src="images/2.gif"><a id="sd0"
							class="nodeSel" href="/xuehuixinwen.html" alt="学会新闻">学会新闻</a>
					</div>
				</div>
				<div class="dtree">
					<div class="dTreeNode">
						<img id="id0" src="images/2.gif"><a id="sd0"
							class="nodeSel" href="/xingyedongtai.html" alt="行业动态">行业动态</a>
					</div>
				</div>
				<div class="dtree">
					<div class="dTreeNode">
						<img id="id0" src="images/2.gif"><a id="sd0"
							class="nodeSel" href="/shishijujiao.html" alt="时事聚焦">时事聚焦</a>
					</div>
				</div>
				<div class="dtree">
					<div class="dTreeNode">
						<img id="id0" src="images/2.gif"><a id="sd0"
							class="nodeSel" href="/kexuejishu.html" alt="科学技术">科学技术</a>
					</div>
				</div>
			</div>
			<div class="col-md-9 column">
				<div class="content_right pull-left col-lg-9">
					<script>
						function addfavorite(id, obj) {
							$('#' + obj).html('处理中');
							jQuery.post(sitepath + '?c=api&a=addfavorite&r='
									+ Math.random(), {
								id : id
							}, function(data) {
								$('#' + obj).html(data);
							});
						}
					</script>
				
					<h2>韶关市计算机学会2018年学术年会顺利召开</h2>
					<div class="info">
						<small><span >时间：2019-01-10</span> <span>点击：<script
									type="text/javascript"
									src="/index.php?c=api&amp;a=hits&amp;id=159&amp;hits=1"></script>65次
						</span><span><script type="text/javascript" language="javascript">
							;
							function ContentSize(size) {
								document.getElementById('MyContent').style.fontSize = size
										+ 'px';
							};
						</script></span><span
							id="scj"><a href="javascript:addfavorite('159','scj');"
								style="color: #595959 !important;" rel="external nofollow"></a></span></small>
					</div>
					<div style="border-bottom: 1px #ccc dashed ;">
						<div id="MyContent">
							<div id="news1" style="display:;">
								<p style="text-indent: 32px">
									<span style="font-size: 16px">2019</span><span
										style="font-size: 16px; font-family: 宋体">年</span><span
										style="font-size: 16px">1</span><span
										style="font-size: 16px; font-family: 宋体">月</span><span
										style="font-size: 16px">8</span><span
										style="font-size: 16px; font-family: 宋体">日下午，韶关市计算机学会</span><span
										style="font-size: 16px">2018</span><span
										style="font-size: 16px; font-family: 宋体">年学术年会在行政楼</span><span
										style="font-size: 16px">C108</span><span
										style="font-size: 16px; font-family: 宋体">召开。此次会议由韶关市计算机学会主办，韶关职业技术学院承办，深圳视界信息技术有限公司、广州腾科网络科技有限公司协办，会议主题为“人工智能”，旨在更好地促进韶关市人工智能技术的发展和人才培养。</span>
								</p>
								<p style="text-indent: 32px">
									<span style="font-size: 16px; font-family: 宋体">会议由韶关市计算机学会秘书长周永福主持。会议邀请了两位高校的学者做了主题报告，分别为华南理工大学计算机学院教授、博士生导师余志文博士的《人工智能概念、发展与未来》，惠州学院信息科学与技术学院副教授曾志博士的《人工智能</span><span
										style="font-size: 16px">AI</span><span
										style="font-size: 16px; font-family: 宋体">——机器视觉未来之路》。</span>
								</p>
								<p style="text-align: center;">
									<img src="images/4.jpg" width="600/">
								</p>
								
								<p style="text-indent: 32px">
									<span style="font-size: 16px; font-family: 宋体">会议还邀请了两位来自企业的工程师进行主题报告，分别为腾科</span><span
										style="font-size: 16px">IT</span><span
										style="font-size: 16px; font-family: 宋体">教育集团公司副总经理、首席讲师、新技术与研发部总监方少群的《人工智能</span><span
										style="font-size: 16px">+</span><span
										style="font-size: 16px; font-family: 宋体">未来已来——华为人工智能解决方案》、深圳视界信息技术有限公司八爪鱼培训总监袁烨的《商务数据分析与处理产教融合解决方案》，并进行了相关产品展示，整场年会学术氛围浓厚。</span>
								</p>
								
								<p style="text-indent: 32px">
									<span style="font-size: 16px; font-family: 宋体">本次年会的召开得到与会专家及企业高管的特别关注，会议共同探讨了人工智能相关领域的最新进展，展示了学术界及企业界重要的理论、技术成果及最新产品的应用，为全体会员搭建起了学术交流的平台，促进了韶关市人工智能技术的发展和人才培养。</span>
								</p>
							</div>
							<div class="cpage pull-right">
								<a style="background: #036EB7; color: #fff; display: none;"
									class="conpage" rel="external nofollow">1</a><a
									href="/kexuejishu/142-2.html" style="display: none;"
									rel="external nofollow">2</a><a href="/kexuejishu/142-3.html"
									style="display: none;" rel="external nofollow">3</a>
							</div>
							<script>
$(function(){
$(".conpage").css("display","inline");
$(".conpage").next().css("display","inline");
$(".conpage").next().addClass('conpagenext');
$(".conpagenext").next().css("display","inline");})</script>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="articlekey">
						<strong>标 签：</strong> <a href="#" rel="external nofollow">2018</a>
						<a href="#" rel="external nofollow">年会</a> <a href="#"
							rel="external nofollow">人工智能</a>
					</div>
					<div class="articlebook">
						<p>
							<strong>下一篇：</strong><a href="/xuehuixinwen/158.html">韶关市计算机学会2016年学术年会顺利召开</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>