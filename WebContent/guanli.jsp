<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>管理员首页</title>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<img alt="40x40" src="image/logo.jpg" height="70" width="110" class="img-circle" />
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">SCF</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<!-- <li class="active">
							 <a href="#">Link</a>
						</li>
						<li>
							 <a href="#">Link</a>
						</li> -->
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">动态管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="addnews2.jsp">发布动态</a>
								</li>
								<li>
									 <a href="http://localhost:8080/SCF/SelectNews">查看动态</a>
								</li>
								
							</ul>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">公告管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="Addnotice2.jsp">发布公告</a>
								</li>
								<li>
									 <a href="http://localhost:8080/SCF/SellectAllNotice">查看公告</a>
								</li>
								
							</ul>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">资源管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="upload2.jsp">上传文件</a>
								</li>
								<li>
									 <a href="http://localhost:8080/SCF/SelectDocument">查看文件</a>
								</li>
								
							</ul>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">文章管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="addarticle2.jsp">发布文章</a>
								</li>
								<li>
									 <a href="http://localhost:8080/SCF/SellectArticle">查看文章</a>
								</li>
								
							</ul>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">留言管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="http://localhost:8080/SCF/SelectMess">查看留言</a>
								</li>
								
							</ul>
						</li>
					</ul>
				</div>
				
			</nav>
				<div class="row clearfix">
					<div class="col-md-12 column">
						<div class="jumbotron">
							<h1>Hello, 管理员!</h1>
							<p>这是一个简单的计算机学会网站。它包括信息分享和资源下载等内容。
                                                                               把它作为一个起点，通向互联网世界，创造更独特的东西。
                            </p>
							<p>
								<a class="btn btn-primary btn-large" href="#">管理员手册</a>
							</p>
						</div>
					</div>
				</div>
			</div>
	</div>
</div>
</body>
</html>