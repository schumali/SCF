<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布文章</title>
</head>
<body>
	<center>
		<h3>发布文章</h3>
		<%--数据提交到添加文章的Servlet --%>
		<form action="AddArticle" method="post">
			<table width="400px" border="1px">
				<tr>
					<td>文章标题</td>
					<td><input type="text" name="ntitle" /></td>
				</tr>
				<tr>
					<td>内容</td>
					<td><input type="text" name="ncontent" /></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="添加" /></td>

				</tr>

			</table>


		</form>

	</center>


</body>
</html>