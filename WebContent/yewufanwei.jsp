<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>关于学会</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/* Custom Styles */
    ul.nav-tabs{
        width: 140px;
        margin-top: 20px;
        border-radius: 4px;
        border: 1px solid #ddd;
        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
    }
    ul.nav-tabs li{
        margin: 0;
        border-top: 1px solid #ddd;
    }
    ul.nav-tabs li:first-child{
        border-top: none;
    }
    ul.nav-tabs li a{
        margin: 0;
        padding: 8px 16px;
        border-radius: 0;
    }
    ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover{
        color: #fff;
        background: #0088cc;
        border: 1px solid #0088cc;
    }
    ul.nav-tabs li:first-child a{
        border-radius: 4px 4px 0 0;
    }
    ul.nav-tabs li:last-child a{
        border-radius: 0 0 4px 4px;
    }
    ul.nav-tabs.affix{
        top: 30px; /* Set the top position of pinned element */
    }
</style>
</head>
<body>
    <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div><a href="login.jsp"><img alt="40x40" src="image/logo.jpg" height="70" width="110" class="img-circle" /></a></div>
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">SCF</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li >
							 <a href="xuehui.jsp">首页</a>
						</li>
						<li class="active">
							 <a href="about.jsp">关于学会</a>
						</li>
						<li >
							 <a href="news.jsp">学会动态</a>
						</li>
						<li >
							 <a href="pub.jsp">学会公告</a>
						</li>
						<li >
							 <a href="downlown.jsp">下载中心</a>
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
				<h3>关于SCF</h3>
				<div class="dtree">
					<div class="dTreeNode">
						<img id="id0" src="images/2.gif"><a id="sd0"
							class="nodeSel" href="about.jsp">学会简介</a>
					</div>
				</div>
				<h3>学会章程</h3>
				<div class="dtree">
					<div class="dTreeNode">
						<img id="id0" src="images/2.gif"><a id="sd0"
							class="nodeSel" href="zongze.jsp" alt="总则">总则</a>
					</div>
				</div>
				<div class="dtree">
					<div class="dTreeNode">
						<img id="id0" src="images/2.gif"><a id="sd0"
							class="nodeSel" href="yewufanwei.jsp" alt="业务范围">业务范围</a>
					</div>
				</div>
				<div class="dtree">
					<div class="dTreeNode">
						<img id="id0" src="images/2.gif"><a id="sd0"
							class="nodeSel" href="zuzhijigouhefuzerenchanshengba.jsp"
							alt="组织机构和负责人产生、罢免">组织机构和负责人产生、罢免</a>
					</div>
				</div>
				
			</div>
			<div class="content_right pull-left col-lg-9">
				<h3>
					韶关市计算机学会<span class="pull-right">当前位置：<a href="/index.php">首页</a>
						&gt;&gt; <a href="about.jsp" title="关于HCF" target="_top">关于SCF</a>
						&gt;&gt; <a href="yewufanwei.jsp" title="业务范围" target="_top">业务范围</a></span>
				</h3>
				<p>第六条：本学会的业务范围：</p>
				<p>（一）开展计算机学术研究，活跃学术思想，促进学科和经济发展，促进科技合作；</p>
				<p>（二）开展技术咨询服务，普及计算机基础知识，推广先进技术，促进计算机在各个领域的应用；</p>
				<p>（三）组织开展计算机应用技术课题论证工作，为机关、企事业及社会各界提供计算机应用事业的规划和设想；</p>
				<p>（四）发现并推荐优秀科技人才，开展继续教育，组织计算机科技活动；</p>
				<p>（五）举办计算机学术活动，交流工作成果与学术论文，择优向全省和全国计算机学术年会推荐，
					组织会员参加全省和全国性的各种计算机学术会议和信息交流活动；</p>
				<p>（六）编辑出版计算机应用技术、软件开发等方面的科技刊物，举办各种技术讲座；</p>
				<p>（七）对重要的科学技术政策和计算机有关的各项建设事业提出合理化建议；</p>
				<p>（八）加强同珠三角兄弟学会的联络，促进相互间的交流；</p>
				<p>（九）发展团体会员和个人会员，建立和不断充实计算机事业人才库；</p>
				<p>（十）开展本市计算机软、硬件的理论研究、教学实践、应用开发、信息工程等方面的学术和技术的咨询服务活动以及专业培训与普及教育工作。</p>
			</div>
		</div>


	</div>
</body>
</html>