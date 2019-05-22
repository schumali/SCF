<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>登陆</title>
</head>
<body>
<script type="text/javascript">
         function check() {
             if(document.getElementById("username").value=="") {
                 alert("没有输入用户名！");
                 return false;
             } else if(document.getElementById("password").value=="") {
                 alert("没有输入密码！");
                 return false;
             } else {
                 alert("提交成功！")
                 return true;
             }
         }
     </script>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<h3>
				欢迎登陆
			</h3>
			<form class="form-horizontal" role="form" action="http://localhost:8080/SCF/login" method="get">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label" >用户名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="username" style="width:300px" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="password"  style="width:300px"  />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							 <label><input type="checkbox" />记住我</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" onclick="check()" class="btn btn-default">登录</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>


</body>
</html>