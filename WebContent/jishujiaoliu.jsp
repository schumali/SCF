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
<title>技术交流—韶关市计算机学会</title>
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
						<li class="active">
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
						韶关市计算机学会
					</h3>
					<h2>Notepad++ 使用心得</h2>
					<div class="info">
						<small><span>时间：2015-12-27</span> <span><script
									type="text/javascript"
									src="/index.php?c=api&amp;a=hits&amp;id=146&amp;hits=194"></script>
						</span> <span><script type="text/javascript" language="javascript">function ContentSize(size){ document.getElementById('MyContent').style.fontSize=size+'px';}</script><a
								href="javascript:addfavorite('146','scj');"
								style="color: #595959 !important;" rel="external nofollow"></a></span></small>
					</div>
					<div style="border-bottom: 1px #ccc dashed;">
						<div id="MyContent">
							<div id="news1" style="display:;">
								<p>作为一个菜鸟程序员，一直很喜欢windows平台下的notepad++,轻巧，可定制性强，感觉很好用。下面讲一下我使用notepad++时的一些心得</p>
								<p>快捷键</p>
								<p>这个是比较基础的，我们可以在设置-&gt;管理快捷键中修改。比较常见的比方说：</p>
								<p>上下移动当前行ctrl+shift+up/down;</p>
								<p>复制当前行 ctrl + D;</p>
								<p>函数参数提示 ctrl+shift+space</p>
								<p>行注释、区块注释 ….</p>
								<p>需要注意的是，很多时候我们发现快捷键设置了没有用，比方说ctrl+alt，这是因为和其他软件比方说输入法、QQ之类的快捷键产生了冲突，这时候我们需要将快捷键修改成未被其他软件占用的热键。</p>
								自动完成和字符编码 &nbsp; &nbsp;
								<p>曾经有朋友因为notepad++没有自动完成功能而转投其他IDE，但其实小巧的notepad++也是有这个功能的，在设置-&gt;首选项里，如下图所示：</p>
								<p style="text-align: center">
									<img src="images/jishu.png"
										title="201208302317402.png">
								</p>
								<p>在web编程时，字符编码是很需要注意的一点，一般现在流行的都是utf-8编码，我们可以在设置-&gt;新建里面，选择默认的编码。如果不做改变的话，默认为ANSI编码。</p>
							</div>
							<div class="cpage pull-right">
								<a style="background: #036EB7; color: #fff; display: none;"
									class="conpage" rel="external nofollow">1</a><a
									href="/kexuejishu/142-2.html" style="display: none;"
									rel="external nofollow">2</a><a href="/kexuejishu/142-3.html"
									style="display: none;" rel="external nofollow">3</a>
							</div>
							<script>$(function(){
$(".conpage").css("display","inline");
$(".conpage").next().css("display","inline");
$(".conpage").next().addClass('conpagenext');
$(".conpagenext").next().css("display","inline");})</script>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="articlebook">
					</div>
					<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"6","bdPos":"right","bdTop":"180"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
				</div>
			</div>
		</div>
</div>
</body>
</html>