<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>APP修改页面</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<link href="/SMM_Project/css/font-awesome.min.css" rel="stylesheet">
<link href="/SMM_Project/css/bootstrap.min.css" rel="stylesheet">
<link href="/SMM_Project/css/templatemo-style.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript">
	
</script>
</head>
<body>
	<jsp:include page="../top.jsp"></jsp:include>
	<div class="templatemo-content-container">
		<div class="templatemo-content-widget white-bg">
            <h2 class="margin-bottom-10">修改你的APP</h2>
            <form action="/SMM_Project/appinfo/update" class="templatemo-login-form" method="get" enctype="multipart/form-data">
            <input type="hidden" name = 'id' value="${list.id}">
            <input type="hidden" name = 'index' value="${index}">
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputFirstName">版本名字</label>
                    <input type="text" class="form-control" id="inputFirstName"  name="APKName" value="${list.APKName}" placeholder="John">                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputLastName">apk名字</label>
                    <input type="text" class="form-control" id="inputLastName"  name="softwareName"  value="${list.softwareName}" placeholder="Smith">                  
                </div> 
              </div>
			  
			   <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputFirstName">支持版本</label>
                    <input type="text" class="form-control" id="inputFirstName"  name="supportROM"   value="${list.supportROM} "placeholder="John">                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputLastName">语言</label>
                    <input type="text" class="form-control" id="inputLastName"   name="interfaceLanguage"  value="${list.interfaceLanguage}" placeholder="Smith">                  
                </div> 
              </div>
			  
			   <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputFirstName">一级分类</label>
                    <select class="form-control">
					   <option></option>
					     <option></option>
						   <option></option>
					</select> 
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputFirstName">二级分类</label>
                    <select class="form-control">
					   <option></option>
					     <option></option>
						   <option></option>
					</select> 
                </div>			
              </div>
			  
			   <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputFirstName">三级分类</label>
                    <select class="form-control">
					   <option></option>
					     <option></option>
						   <option></option>
					</select> 
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputFirstName">图片</label>
                    <input type="file" class="form-control">
                </div>			
              </div>

              <div class="form-group text-right">
                <button type="submit" class="templatemo-blue-button">修改</button>
                <button type="reset" class="templatemo-white-button">重置</button>
              </div>                           
            </form>
          </div>
	</div>
	<jsp:include page="../floor.jsp"></jsp:include>
	<!-- JS -->
	<script type="text/javascript"
		src="/SMM_Project/js/jquery-1.11.2.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript"
		src="/SMM_Project/js/templatemo-script.js"></script>
	<!-- Templatemo Script -->

</body>
</html>