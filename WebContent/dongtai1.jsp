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
<title>动态—韶关市计算机学会</title>
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
							 <a href="Tnotice.jsp">学会公告</a>
						</li>
						<li >
							 <a href="download.jsp">下载中心</a>
						</li>
						<li >
							 <a href="tech.jsp">技术交流</a>
						</li>
						<li >
							 <a href="message.jsp">网站留言</a>
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
					<h2>CCF长沙举办“高性能计算技术禁运后我们该怎么办”论坛</h2>
					<div class="info">
						<small><span>时间：2017-11-12</span> <span>点击：<script
									type="text/javascript"
									src="/index.php?c=api&amp;a=hits&amp;id=67&amp;hits=95"></script>11次
						</span><span><script type="text/javascript" language="javascript">
							;
							function ContentSize(size) {
								document.getElementById('MyContent').style.fontSize = size
										+ 'px';
							};
						</script></span><span
							id="scj"><a href="javascript:addfavorite('67','scj');"
								style="color: #595959 !important;" rel="external nofollow"></a></span></small>
					</div>
					<div style="border-bottom: 1px #ccc dashed;">
						<div id="MyContent">
							<div id="news1" style="display:;">
								<p>2017年9月26日下午，CCF长沙会员活动中心（简称：CCF长沙）联合YOCSEF长沙在国防科学技术大学主办了CLUB“高性能计算技术禁运后我们该怎么办”。来自国防科技大学、湖南大学、湖南工业大学、中南林业大学、湖南商学院、涉外经济学院、湖南财政经济学院、长沙科协等高校和单位的老师参加了此次CLUB。国防科技大学计算机学院副院长、CCF长沙主席卢凯教授主持了本次活动。</p>
								<p>卢凯首先向大家介绍了与高性能计算技术禁运的相关情况。2015年4月9日，美国商务部突然决定对中国四家国家超级计算机中心（国防科技大学、湖南大学超算中心、天津超算中心和广州超算中心）禁售“至强”（XEON）芯片以及与芯片相关的各种技术。在这种形势下，很多人都怀疑天河二号以后的发展将被扼杀。卢凯作为天河高性能计算机系统副总设计师，针对大家的疑问，由浅入深向大家介绍了美国对我们实行高性能技术禁运后对我们的影响以及天河二号的发展计划。通过他的报告，天河二号的更多细节以及关于中国超级计算机的许多疑惑，都得到了正面解答。大家对天河二号的下一步的发展有了全新认识。随后各位老师就一些技术和应用问题与卢凯进行了热烈的交流与讨论。</p>
								<p>报告完后，与会人员参观了连续5次蝉联世界超级计算机TOP500冠军的天河二号。一踏进天河二号机房，大家纷纷怀着崇拜与敬仰的心情与天河二号合影留念，然后细细地走过天河二号的每一个角落，了解这位连续5次为中国在世界超级计算机TOP500上夺得第一的计算机的每一个细节。参观过程中卢凯一直耐心地给大家介绍天河二号的主要技术以及一些相关的全自主产品。</p>
							</div>
							<div class="cpage pull-right">
								<a style="background: #036EB7; color: #fff; display: none;"
									class="conpage" rel="external nofollow">1</a><a
									href="/xingyedongtai/67-2.html" style="display: none;"
									rel="external nofollow">2</a>
							</div>
							<script>
								$(function() {
									$(".conpage").css("display", "inline");
									$(".conpage").next().css("display",
											"inline");
									$(".conpage").next()
											.addClass('conpagenext');
									$(".conpagenext").next().css("display",
											"inline");
								})
							</script>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="articlekey">
						<strong>标 签：</strong> <a href="#" rel="external nofollow">长沙</a> <a
							href="#" rel="external nofollow">技术</a>
					</div>
					<div class="articlebook">
						<p>
							<strong>下一篇：</strong><a href="/xingyedongtai/66.html">CNCC专题论坛聚焦之
								智慧健康与大数据</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>