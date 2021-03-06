<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="${basePath}static/css/manage.css" media="screen" rel="stylesheet" type="text/css" />
<script src="${basePath}static/common/jquery-1.7.2.min.js" type="text/javascript" ></script>
</head>
<body>
	<div class="manage_container">
		<div class="manage_head">
			<div class="manage_logo"><a href="http://www.jfinal.com">JFinal web framework</a></div>
			<div id="nav">
				<ul>
					<li><a href="${basePath}"><b>首页</b></a></li>
					<li><a href="${basePath}blog"><b>Blog管理</b></a></li>
				</ul>
			</div>
		</div>
		<div class="main">
<h1>Blog管理&nbsp;&nbsp;
<a href="${basePath}blog/add">创建Blog</a>
</h1>
<div class="table_box">
	<table class="list">
		<tbody>
			<tr>
				<th width="4%">id</th>
				<th width="35%">标题</th>
				<th width="12%">操作</th>
			</tr>
			<c:forEach items="${page.list}" var="blog">
			<tr>
				<td style="text-align:left;"><c:out value="${blog.id}" default=""/></td>
				<td style="text-align:left;">${blog.title}</td>
				<td style="text-align:left;">
					&nbsp;&nbsp;<a href="${basePath}blog/delete/${blog.id}">删除</a>
					&nbsp;&nbsp;<a href="${basePath}blog/edit/${blog.id}">修改</a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
		</div>
	</div>
</body>
</html>