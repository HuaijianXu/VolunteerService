<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>志愿者信息删除</title>
<style>
.a {
	border: 2px solid #a1a1a1;
	padding: 10px 40px;
	/* 	background:#dddddd; */
	width: px;
	border-radius: 25px;
}
#bk {
	border: 3px solid #a1a1a1;
	padding: 10px 60px;
	/* 	background:#dddddd; */
	width: px;
	border-radius: 25px;
}
	.tb, td {
		border: 1px solid black;
		font-size: 22px;
	}
	 .button {
    background-color:  #ff8433;
    border: none;
    color: white;
    padding: 5px 10px;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 2px 2px;
    cursor: pointer;
}
</style>
</head>
<body>
	<div align="center">
		<h1 style="color: red;">志愿者信息删除</h1>
		<a href="index.jsp">返回主页</a>
		<table class="tb">
			<tr>
				<td>志愿者姓名</td>
				<td>${course.name}</td>
			</tr>
			<tr>
				<td>性别</td>
				<td>${course.sex}</td>
			</tr>
			<tr>
				<td>民族</td>
				<td>${course.classroom}</td>
			</tr>
			<tr>
				<td>注册时间</td>
				<td>${course.time}</td>
			</tr>
			<tr>
				<td>年龄</td>
				<td>${course.age}</td>
			</tr>
			<tr>
				<td>政治面貌</td>
				<td>${course.mianmao}</td>
			</tr>
			<tr>
				<td>服务类型</td>
				<td>${course.fuwu}</td>
			</tr>
		</table>
		<div >
			<a onclick="return check()" href="CourseServlet?method=del&id=${course.id}"><input class ="button" type="submit" value="删除"></a>
		</div>
	</div>
	<script type="text/javascript">
		function check() {
			if (confirm("真的要删除吗？")){
				return true;
			}else{
				return false;
			}
		}
	</script>
</body>
</html>