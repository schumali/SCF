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
<title>网站留言—韶关市计算机学会</title>
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
						<li >
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
						<li class="active">
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
				<h3>网站留言</h3>
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
						韶关市计算机学会
					</h3>
					<div class="contact_con message_con">
						<form action="Messageboad" method="post">
							<p>
								<font color="#ff7f24">*</font> 姓名：<input type="text"
									class="input-text" name="name" style="width: 200px;"
									required="">
							</p>
							<p>
								<font color="#ff7f24">*</font> 电话：<input type="text"
									class="input-text" name="phone" style="width: 200px;"
									required="">
							</p>
							<p>
								<span><font color="#ff7f24">*</font> 内容：</span>
								<textarea style="width: 400px; height: 90px;"
									name="content" required=""></textarea>
							</p>
							<div class="clearfix"></div>
							<input type="submit" class="button btn" value="提 交" name="submit">
						</form>
					</div>
				</div>
			</div>
		</div>
</div>
</body>
</html>