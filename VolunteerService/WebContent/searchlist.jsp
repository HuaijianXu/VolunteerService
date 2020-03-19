<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>志愿者信息浏览</title>
<style>
	.a{
		margin-top: 20px;
	}
	.b{
		font-size: 20px;
		width: 160px;
		color: white;
		background-color: greenyellow;
	}
	.tb, td {
		border: 1px solid black;
		font-size: 22px;
	}
</style>
</head>
<body>
	<div align="center">
		<h1 style="color: red;">志愿者信息列表</h1>
		<a href="index.jsp">返回主页</a>
		<table class="tb">
			<tr>
				<td>id</td>
				<td>姓名</td>
				<td>性别</td>
				<td>民族</td>
				<td>注册时间</td>
				<td>年龄</td>
				<td>政治面貌</td>
				<td>服务类型</td>
			</tr>
			<!-- forEach遍历出adminBeans -->
			<c:forEach items="${courses}" var="item" varStatus="status">
				<tr>
					<td>${item.id}</td>
					<td><a>${item.name}</a></td>
					<td>${item.sex}</td>
					<td>${item.classroom}</td>
					<td>${item.time}</td>
					<td>${item.age}</td>
					<td>${item.mianmao}</td>
					<td>${item.fuwu}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>