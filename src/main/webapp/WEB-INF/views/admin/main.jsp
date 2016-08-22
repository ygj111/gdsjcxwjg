<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理控制台</title>
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
<!--[if lt IE 9]>
<script type="text/javascript" src="../assets/bootstrap/html5shiv.min.js" ></script>
<script type="text/javascript" src="../assets/bootstrap/respond.min.js" ></script>
		<![endif]-->

</head>
<body>
	<!-- top nav -->
<jsp:include page="${ctx}/main/nav_top"></jsp:include>
<div class="main">
<img src="../img/cs/u0.png">
 <!-- 1===================================== -->  
 <!-- <div class="biaoge">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/1.png">
       </div>
       <div class="bgright">
         <span>上年度机构数量增长率较快的城市(前8名)</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
			</tr>
         </tbody>
       </table>
       </div>
   </div>
   
   <div class="biaoge2">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/1.png">
       </div>
       <div class="bgright">
         <span>新增的机构</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
                                    
									
		</tbody>
       </table>
       </div>
   </div>
 2=====================================  
 
 <div class="biaoge">
       <div class="bgtop" >
       <div class="bgleft" >
       <img src="../img/gdsjcxwjg/2.png">
       </div>
       <div class="bgright" >
         <span>报告修改率较快的城市(前8名)</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
			</tr>
         </tbody>
       </table>
       </div>
   </div>
   
   <div class="biaoge2">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/2.png">
       </div>
       <div class="bgright">
         <span>报告修改率较快的机构</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
                                    
									
		</tbody>
       </table>
       </div>
   </div>
 
  3=====================================  
  <div class="biaoge">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/3.png">
       </div>
       <div class="bgright">
         <span>报告不合格率较高的城市(前8名)</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
			</tr>
         </tbody>
       </table>
       </div>
   </div>
   
   <div class="biaoge2">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/3.png">
       </div>
       <div class="bgright">
         <span>报告不合格率较高的机构</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
                                    
									
		</tbody>
       </table>
       </div>
   </div>
  
  
 4=====================================  
   
   <div class="biaoge">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/4.png">
       </div>
       <div class="bgright">
         <span>使用无资质人员较多的城市(前8名)</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
			</tr>
         </tbody>
       </table>
       </div>
   </div>
   
   <div class="biaoge2">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/4.png">
       </div>
       <div class="bgright">
         <span>使用无资质人员较多的机构</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
                                    
									
		</tbody>
       </table>
       </div>
   </div>
   
   
 5=====================================  
 <div class="biaoge">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/5.png">
       </div>
       <div class="bgright">
         <span>使用超检定期设备的城市(前8名)</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
			</tr>
         </tbody>
       </table>
       </div>
   </div>
   
   <div class="biaoge2">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/5.png">
       </div>
       <div class="bgright">
         <span>使用超检定期设备的机构</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
                                    
									
		</tbody>
       </table>
       </div>
   </div>
   6=====================================  
  <div class="biaoge">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/6.png">
       </div>
       <div class="bgright">
         <span>无资质检测的城市(前8名)</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
			</tr>
         </tbody>
       </table>
       </div>
   </div>
   
   <div class="biaoge2">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/6.png">
       </div>
       <div class="bgright">
         <span>无资质检测的机构</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
                                    
									
		</tbody>
       </table>
       </div>
   </div>
  
  
 7=====================================  
   <div class="biaoge">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/7.png">
       </div>
       <div class="bgright">
         <span>超资质检测的城市(前8名)</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
			</tr>
         </tbody>
       </table>
       </div>
   </div>
   
   <div class="biaoge2">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/7.png">
       </div>
       <div class="bgright">
         <span>超资质检测的机构</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
                                    
									
		</tbody>
       </table>
       </div>
   </div>
   
   
   
 8=====================================  
 <div class="biaoge">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/8.png">
       </div>
       <div class="bgright">
         <span>挂靠检测人员较多的城市(前8名)</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
			</tr>
         </tbody>
       </table>
       </div>
   </div>
   
   <div class="biaoge2">
       <div class="bgtop">
       <div class="bgleft">
       <img src="../img/gdsjcxwjg/8.png">
       </div>
       <div class="bgright">
         <span>挂靠检测人员较多的机构</span>
         </div>
       </div>
       <div class="bgmain">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tbody>
			<tr>
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
            <tr class="trbg">
				<td></td>
				<td></td>
                <td></td>
				<td></td>
			</tr>
                                    
									
		</tbody>
       </table>
       </div>
   </div> -->
 
   
   
   
 <!-- ===================================== -->  
 
 
</div>
</body>
</html>