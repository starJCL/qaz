<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    	<!-- Left column -->
	<div class="templatemo-flex-row">
		<div class="templatemo-sidebar">
			<header class="templatemo-site-header">
				<div class="square"></div>
				<h1>${login}</h1>
			</header>
			<div class="profile-photo-container">
				<img src="/SMM_Project/images/profile-photo.jpg" alt="Profile Photo"
					class="img-responsive">
				<div class="profile-photo-overlay"></div>
			</div>
			<!-- Search box -->
			<form class="templatemo-search-form" role="search">
				<div class="input-group">
					<button type="submit" class="fa fa-search"></button>
					<input type="text" class="form-control" placeholder="Search"
						name="srch-term" id="srch-term">
				</div>
			</form>
			<div class="mobile-menu-icon">
				<i class="fa fa-bars"></i>
			</div>
			<nav class="templatemo-left-nav">
				<ul>
				<!-- 	<li><a href="#" class="active"><i class="fa fa-home fa-fw"></i>Dashboard</a>
					</li>
					<li><a href="data-visualization.html"><i
							class="fa fa-bar-chart fa-fw"></i>Charts</a>
					</li>
					<li><a href="data-visualization.html"><i
							class="fa fa-database fa-fw"></i>Data Visualization</a>
					</li>
					<li><a href="maps.html"><i class="fa fa-map-marker fa-fw"></i>Maps</a>
					</li> -->
					<li><a href="/SMM_Project/appinfo/list"><i
							class="fa fa-users fa-fw"></i>App管理列表</a>
					</li>
					<!-- <li><a href="preferences.html"><i
							class="fa fa-sliders fa-fw"></i>Preferences</a>
					</li>
					<li><a href="login.html"><i class="fa fa-eject fa-fw"></i>Sign
							Out</a>
					</li> -->
				</ul>
			</nav>
		</div>
		<!-- Main content -->
		<div class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-top-nav-container">
				<div class="row">
					<nav class="templatemo-top-nav col-lg-12 col-md-12">
						<ul class="text-uppercase">
							<li><a href="" class="active">发布人管理</a>
							</li>
							<li><a href="">审核人管理 </a>
							</li>
							<li><a href="">APP列表 </a>
							</li>
							<li><a href="login.html">APP类型管理</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
  </body>
</html>
