<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>
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
<h1>Blog管理 ---&gt; 创建Blog
</h1>
<div class="form_box">
	<form action="/blog/save" method="post">
	<%@ include file="_form.jsp"%>
	</form>
</div>
		</div>
	</div>
</body>
</html>
