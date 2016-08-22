<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>检测机构名单</title>
<script type="text/javascript">
</script>
<script type="text/javascript" src="../assets/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="../assets/jsviews.min.js"></script>
<script type="text/javascript" src="../assets/jquery.validate.min.js"></script>
<script type="text/javascript" src="../assets/jquery.form.js"></script>
<script type="text/javascript" src="../assets/jquery.pagination.js"></script>

<!--bootstrap-->
<script type="text/javascript">
</script>
<script type="text/javascript" src="../assets/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="../assets/jsviews.min.js"></script>
<script type="text/javascript" src="../assets/jquery.validate.min.js"></script>
<script type="text/javascript" src="../assets/jquery.form.js"></script>
<script type="text/javascript" src="../assets/jquery.pagination.js"></script>
<!--bootstrap-->
<script type="text/javascript"
	src="../assets/bootstrap/bootstrap.min.js"></script>
<link rel="stylesheet" href="../assets/bootstrap/bootstrap.min.css" />
<!--font-awsome-->
<link rel="stylesheet"
	href="../assets/fontawesome/css/font-awesome.min.css" />
<!--mentisMenu-->
<!--echarts-->
<script type="text/javascript" src="../assets/echart/echarts.min.js"></script>

<!--jquery ui-->
<script type="text/javascript"	src="../assets/jQuery-ui/jquery-ui-1.9.2.custom.min.js"></script>
<script type="text/javascript"	src="../assets/jQuery-ui/jquery-ui-i18n.js"></script>
<link rel="stylesheet" href="../assets/jQuery-ui/jquery-ui-1.10.0.custom.css" />
<!--splitter
<script type="text/javascript"
	src="../assets/jcubic-jquery.splitter/jquery.splitter-0.14.0.js"></script>
<link rel="stylesheet"
	href="../assets/jcubic-jquery.splitter/jquery.splitter.css" />-->
<!--jstree-->
<script type="text/javascript"
	src="../assets/jstree-3.3.0/jstree.min.js"></script>
<link rel="stylesheet"
	href="../assets/jstree-3.3.0/themes/default/style.min.css" />

<!--thePage-->
<link rel="stylesheet" href="../css/thePage.css" />
<link rel="stylesheet" href="../css/gdsjcxwjg.css">
<style type="text/css">
		<!--
		body,td,th {
			font-size: 12px;
	        color: #606060;
		}
		-->
</style>
<!--[if lt IE 9]>
<script type="text/javascript" src="../assets/bootstrap/html5shiv.min.js" ></script>
<script type="text/javascript" src="../assets/bootstrap/respond.min.js" ></script>
		<![endif]-->

</head>

<body>		
	<!-- top nav -->
	<jsp:include page="${ctx}/main/nav_top"></jsp:include>
	<jsp:include page="${ctx}/main/nav_left"></jsp:include>
	  <div class="content" style="padding-left:10px;">
	      <div class="col-lg-12" style="border-bottom:1px dashed #DDDDDD;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
			  <tr>
			    <td width="50%" style="font-size:14px"><img src="../img/gdsjcxwjg/postion.png">&nbsp;您所在的位置是：检测机构  > 检测机构名单
			    
			    </td>
			    <td width="50%"><div class="top_bar" id="jnkc" height="28px" style="height:45px;line-height:45px;font-size:14px  " align="right"><script>setInterval("jnkc.innerHTML='<img src=\"../img/gdsjcxwjg/u11.png\">&nbsp;'+new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);</script></div></td>
			  </tr>
			</table>
		  </div>
		<div class="panel-body">
			<div id="main-content">
			<br/>
			     <table width="1000" height="69" border="1" align="center" cellpadding="0" cellspacing="1" bgcolor="#868686" style="text-align:center;margin-top:30px;">
				   <tr >
				    <td width="20" bgcolor="#FFFFFF" nowrap style="padding:2px">序号</td>
				    <td width="200" bgcolor="#FFFFFF" nowrap style="padding:2px">机构名称</td>
				    <td width="43" bgcolor="#FFFFFF" nowrap style="padding:2px">所属城市</td>
				    <td width="43" bgcolor="#FFFFFF" nowrap style="padding:2px">经济性质</td>
				    <td width="44" bgcolor="#FFFFFF" nowrap style="padding:2px">工商注册类型</td>
				  </tr>
				  <c:if test="${!empty enterpriseList}">
						<c:forEach items="${enterpriseList}" var="s" varStatus="status">
				  <tr>
				    <td width="20"  bgcolor="#FFFFFF" nowrap style="padding:2px">${status.index+1 }</td>
					<td width="44"  bgcolor="#FFFFFF" align="left">${s[0] }</td>
				    <td width="44"  bgcolor="#FFFFFF">${s[1] }</td>
				    <td width="44" bgcolor="#FFFFFF">${s[3] }</td>
				    <td width="44" bgcolor="#FFFFFF">${s[4] }</td>
				  </tr>
				  </c:forEach>
				  </c:if>
				 
				</table>
			</div>
		</div>
	 </div>
    

</body>




</html>