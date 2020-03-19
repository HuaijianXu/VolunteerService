<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页</title>
<style>
	.a{
		font-size: 26px;
		margin-top: 20px;
	}
</style>
</head>
<body>
	<div align="center">
		<h1 style="color: red;">青年志愿者服务网</h1>
		<div class="a">
			<a href="add.jsp">志愿者登记信息</a>
		</div>
		<div class="a">
			<a href="CourseServlet?method=list">修改志愿者信息</a>
		</div>
		<div class="a">
			<a href="del.jsp">删除志愿者信息</a>
		</div>
		<div class="a">
			<a href="search.jsp">查询志愿者信息</a>
		</div>
		<div class="a">
			<a href="CourseServlet?method=searchlist">志愿者信息浏览</a>
		</div>
	</div>
</body>
</html>