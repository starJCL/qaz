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
<title>APP查询页面</title>
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

<style>
#hie { /* border: 1px solid orangered; */
	margin: 0px auto;
	position: absolute;
	top: 50px;
	right: 200px;
	display: none;
	z-index: 3;
}
</style>
<script type="text/javascript">

	function cha() {
		var a = $("#s").val();
		window.location = "/SMM_Project/appinfo/list?name=" + a + "&start=1";
	}
	
	function xiu(id,index) {
		window.location = "/SMM_Project/appinfo/getList?id="+id+"&index="+index;
	}
	
	function del(id,index) {
		if(confirm("确认删除吗？")){
			window.location = "/SMM_Project/appinfo/del/asd"+id+"712393?index="+index;
		}
		
	}
	
	function ins(sumPage) {
		window.location = "/SMM_Project/appinfo/insert.jsp";
	}
	
	function chu(a){
		$("#hie").show(400);
		
		var b = $("#"+a).attr("src");
		$("#hie").html("<img src=' "+b+" '/>");
		
	}
	function chu1(a){
		$("#hie").hide(400);
		
		
	}
	 function huan(){
		alert(1);
		var a = $("#s").val();
		window.location = "/SMM_Project/appinfo/list?name=" + a + "&start=1&a=1";
		$("#huan1").hide();
	
		
	} 
	
	 function huan1(){
		var a = $("#s").val();
		window.location = "/SMM_Project/appinfo/list?name=" + a + "&start=1&a=2";
		$("#huan").hide();
		
	} 
	
	function quan(){
	
		 /* debugger; */
		if($("#quan").prop("checked")==true){
			$("input[class='a']").each(function(i,item){
			$(item).prop("checked", true);  
				
			})
		
		}else{
			$("input[class='a']").each(function(i,item){
				$(item).prop("checked", false); 
			})
		
		} 
		
		
	}
	
	function del(){
		var str ="";
		$("input[class='a']").each(function(i,item){
			if($(item).prop("checked")==true){
					str+=$(item).val()+",";
				}
		})
		alert(str);
		if(str==""){
			alert("请选择删除的条数");
		return;
		}
		
		$.ajax({
			url : "/SMM_Project/cate/del",
			type : "get",
			data : {
				d : str
			},
			success : function(data) {
			
				if(data>0){
					alert("删除成功");
					window.location = "/SMM_Project/appinfo/list";
				}

			}
		
		})
		
	
	}

</script>
</head>
<body>

	<jsp:include page="../top.jsp"></jsp:include>
	<div id="hie"></div>
	<div class="templatemo-content-container">
		<!-- 搜索 -->
		<div class="row">
			<div class="col-lg-3">
				<div class="input-group">
					<input value="${name}" type="text" id="s" class="form-control"
						placeholder="Search for..."> <span class="input-group-btn">
						<button class="btn btn-default" onclick="cha()" type="button">搜索</button>
						<button class="btn btn-default" onclick="del()" type="button">批量删除</button>
					</span>
				</div>
			</div>
			<div class="col-lg-9"></div>
		</div>
		<div class="panel panel-default table-responsive">

			<table
				class="table table-striped table-bordered templatemo-user-table">
				<thead>
					<tr>
						<td><input style="display: block;" id="quan" onchange="quan()" type="checkbox" />全选</td>
						<td><a href="" class="white-text templatemo-sort-by">编号</a><br>
							<span id="huan" onclick="huan()">↓</span><br> <span
							id="huan1" onclick="huan1()">↑</span>
						</td>
						<td><a href="" class="white-text templatemo-sort-by">图片<span
								class="caret"></span> </a></td>
						<td><a href="" class="white-text templatemo-sort-by">服务器图片<span
								class="caret"></span> </a></td>
						<td><a href="" class="white-text templatemo-sort-by">软件名称
								<span class="caret"></span> </a></td>
						<td><a href="" class="white-text templatemo-sort-by">APK名称
								<span class="caret"></span> </a></td>
						<td><a href="" class="white-text templatemo-sort-by">支持ROM<span
								class="caret"></span> </a></td>
						<td><a href="" class="white-text templatemo-sort-by">界面语言
								<span class="caret"></span> </a></td>
						<td>创建日期</td>
						<td>开发者编号</td>
						<td>应用简介</td>
						<td>三级联动名称</td>
						<td>操作-··-<span onclick="ins()">添加</span>
						</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="info">
						<tr>
							<td><input class="a" style="display: block;"
								value="${info.id}" type="checkbox"  />
							</td>
							<td>${info.id}</td>
							<td><img id="img${info.id}" width="30px"
								onmouseover="chu('img${info.id}')"
								onmouseout="chu1('img${info.id}')"
								src="/SMM_Project/static/img/${info.logoPicPath }"></td>
							<td><img id="img${info.id}" width="30px"
								src="/SMM_Project/static/img/${info.logoLocPath }"></td>
							<td>${info.softwareName}</td>
							<td>${info.APKName}</td>
							<td>${info.supportROM}</td>
							<td>${info.interfaceLanguage}</td>
							<td><a href="">${info.creationDate}</a></td>
							<td><a href="" class="templatemo-link">${info.softwareSize}</a>
							</td>
							<td><a href="" class="templatemo-link">${info.appInfo}</a></td>
							<td><a href="" class="templatemo-link">${info.categoryLevel3Name}</a>
							</td>
							<td><span onclick="xiu(${info.id},${index})">修改</span> -- <span
								onclick="del(${info.id},${index})">删除</span>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<div class="pagination-wrap">
		<ul class="pagination">
			<li><a
				href="/SMM_Project/appinfo/list?name=${name}&start=1&a=${b}">首页</a>
			</li>
			<li><a
				href="/SMM_Project/appinfo/list?name=${name}&start=${index-1}&a=${b}">上一页</a>
			</li>
			<c:forEach begin="${begin}" end="${end}" var="a">
				<li <c:if test="${index==a}">class='active'</c:if>><a
					href="/SMM_Project/appinfo/list?name=${name}&start=${a}&a=${b}">${a}</a>
				</li>
			</c:forEach>
			<li><a
				href="/SMM_Project/appinfo/list?name=${name}&start=${index+1}&a=${b}">下一页</a>
			</li>
			<li><a
				href="/SMM_Project/appinfo/list?name=${name}&start=${sumPage}&a=${b}">末页</a>
			</li>
		</ul>
	</div>
	<jsp:include page="../floor.jsp"></jsp:include>
	<!-- JS -->
	<script type="text/javascript"
		src="/SMM_Project/js/jquery-1.11.2.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript"
		src="/SMM_Project/js/templatemo-script.js"></script>
	<!-- Templatemo Script -->
	<script>
		$(document).ready(
				function() {
					// Content widget with background image
					var imageUrl = $('img.content-bg-img').attr('src');
					$('.templatemo-content-img-bg').css('background-image',
							'url(' + imageUrl + ')');
					$('img.content-bg-img').hide();
				});
	</script>
</body>
</html>