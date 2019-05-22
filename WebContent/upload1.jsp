<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>上传文件</title>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<h3>
				请上传文件
			</h3>
			<form role="form">
				<div class="form-group">
					 <label for="exampleInputEmail1">文件标题</label><input type="email" class="form-control" id="exampleInputEmail1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">文件简介</label><input type="password" class="form-control" id="exampleInputPassword1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputFile">文件</label><input type="file" id="exampleInputFile" />
					<p class="help-block">
						提示：仅支持文本格式.
					</p>
				</div>
				<div class="checkbox">
					 <label><input type="checkbox" />确定</label>
				</div> <button type="submit" class="btn btn-default">提交</button>
			</form>
		</div>
	</div>
</div>
</body>
</html>