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
<title>下载—韶关市计算机学会</title>
<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" >
//文档加载完后，获取所有动态信息
    $(function(){
    	//加载完后，要执行的代码就写在这匿名函数
    	$.get("http://localhost:8080/SCF/SelectAllFile",function(result){})
    	//遍历result（json数组）
    	for(var i=0;i<result.length;i++){
    		$("#dl").append("<div class='list_down_img pull-left'><img src='images/MYSQL.png' height='100' width='100'></div><div class='list_down_til pull-left'><p class='title'>"+result[i].dname+"</p><p class='time'>大小：<span>"+result[i].dsize+"</span>&nbsp;</p><p><a href='Download' class='down'><u>点击下载</u></a>&nbsp;</p></div><div class='clearfix'></div><div class='con'><p>"+result[i].dname+"</p></div>")
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
						<li >
							 <a href="news.jsp">学会动态</a>
						</li>
						<li >
							 <a href="notice.jsp">学会公告</a>
						</li>
						<li class="active">
							 <a href="downloanfile.jsp">下载中心</a>
						</li>
						<li >
							 <a href="tech.jsp">技术交流</a>
						</li>
						<li >
							 <a href="messboad.jsp">网站留言</a>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> <button type="submit" class="btn btn-default">搜索</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a href="address.jsp">联系我们</a>
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
				<h3>联系我们</h3>
				<ul>
					<li><span class="glyphicon glyphicon-chevron-right"></span> 电
						话：0762-1234567</li>
					<li><span class="glyphicon glyphicon-chevron-right"></span> 邮
						箱：youxiang@163.com</li>
					<li><span class="glyphicon glyphicon-chevron-right"></span> QQ
						：123456789</li>
					<li><span class="glyphicon glyphicon-chevron-right"></span> 传
						真：12345678</li>
					<li><span class="glyphicon glyphicon-chevron-right"></span>
						手机号：12345678910</li>
				</ul>
				
			</div>
			<div class="col-md-9 column">
				<div class="content_right pull-left col-lg-9">
					<h3>
						韶关市计算机学会<span class="pull-right">当前位置：<a href="xuehui,jsp">首页</a>
							&gt;&gt; <a href="download.jap" title="下载中心"
							target="_top">下载中心</a> &gt;&gt; 详情
						</span>
					</h3>
					<div class="downlist" id="dl">
						<div class="list_down_img pull-left">
							<img src="images/MYSQL.png" height="100"
								width="100">
						</div>	
						<div class="list_down_til pull-left">
							<p class="title">MySQL5.1参考手册官方简体中文版</p>
							<p class="time">大小：<span>2.53MB</span>&nbsp;</p>
							<p><a href="Download" class="down"><u>点击下载</u></a>&nbsp;</p>
						</div>
						<div class="clearfix"></div>
						<div class="con">
							<p>MySQL是一个关系型数据库管理系统，由瑞典 MySQL AB 公司开发，目前属于 Oracle</p>
						</div>
					</div>
					
					<div class="clearfix"></div>
					<div class="articlekey" style="margin-left: 5px;">
						<strong>标 签：</strong><a href="#" rel="external nofollow">参考手册</a><a
							href="#" rel="external nofollow">中文版</a><a href="#"
							rel="external nofollow">MySQL</a>
					</div>
					
					<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"6","bdPos":"right","bdTop":"180"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
				</div>
			</div>
		</div>
</div>
</body>
</html>