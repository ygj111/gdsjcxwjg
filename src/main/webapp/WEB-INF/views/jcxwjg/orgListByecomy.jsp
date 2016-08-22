<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>机构数量汇总(按经济性质)</title>

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
 <script src="../js/highcharts/highcharts.js"></script>
 <script src="../js/highcharts/modules/exporting.js"></script>
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
<script type="text/javascript">
$(function () {
// 	var arrays = new Array();
// 	var orgStatistics;
// 	$.get("../statical/findByAreacodeAndLegalnature",
// 			  function(data){
// 				    for(var i=0;i<data.length;i++){
// 				    	orgStatistics = {
// 				    			areaname : data[i].areaname,
// 				    			legalnature : data[i].legalnature,
// 				    			total : data[i].total
// 				    	};
// 				    	arrays.push(orgStatistics);
// 				    }
// 			  });
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: '机构数量汇总(按经济性质)'
        },
        xAxis: {
		     labels: {
                rotation: 0,
                style: {
                    fontSize: '13px',
                    fontFamily: 'Verdana, sans-serif'
                }
            },
            categories: [${areasData}]
        },
        yAxis: {
            min: 0,
            title: {
                text: ''
            }
        },
		 legend: {
            enabled: false
        },
		credits: {
             text: '',
             href: ''
         },
        tooltip: {
            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> <br/>',
            shared: true
        },
        plotOptions: {
            column: {
               stacking: 'normal'
            }
        },
        series: [{
            name: '国有',
			color:'#9DDE58',
            data: [${gyData}]
        }, {
            name: '企业',
			color:'#FFCC03',
            data: [${qyData}]
        }, {
            name: '事业',
			color:'#03BAFC',
            data: [${syData}]
        }]
    });
});
		</script>
</head>

<body>		
	<!-- top nav -->
	<jsp:include page="${ctx}/main/nav_top"></jsp:include>
	<jsp:include page="${ctx}/main/nav_left"></jsp:include>
	 <div class="content" style="padding-left:10px;">
	      <div class="col-lg-12" style="border-bottom:1px dashed #DDDDDD;">
	       <table width="100%" border="0" cellspacing="0" cellpadding="0">
			  <tr>
			    <td width="50%" style="font-size:14px"><img src="../img/gdsjcxwjg/postion.png">&nbsp;您所在的位置是：检测机构  > 机构数量汇总(按经济性质)
			    
			    </td>
			    <td width="50%"><div class="top_bar" id="jnkc" height="28px" style="height:45px;line-height:45px;font-size:14px  " align="right"><script>setInterval("jnkc.innerHTML='<img src=\"../img/gdsjcxwjg/u11.png\">&nbsp;'+new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);</script></div></td>
			  </tr>
			</table>
				
		  </div>
		<div class="panel-body">
			<div id="main-content">
			 <br/> <br/>
			 <select style="width:153px">
		             <option value="year">2016</option> 
			         <option value="year">2015</option> 		       
		             <option value="year">2014</option> 
		             <option value="year">2013</option> 
		             <option value="year">2012</option>                  
                  </select>
                  <select style="width:153px">
		             <option value="year">第一季度</option> 
			         <option value="year">第二季度</option> 		       
		             <option value="year">第三季度</option> 
		             <option value="year">第四季度</option> 
		                            
                  </select>
                   <select style="width:153px">
		             <option value="year">第一季度</option> 
			         <option value="year">第二季度</option> 		       
		             <option value="year">第三季度</option> 
		             <option value="year">第四季度</option> 
		                            
                  </select>

               <div id="container" style="min-width:400px;height:400px;margin:0 auto;margin-top:5px"></div>


<table width="1000"  border="1"  align="center"  cellpadding="0"  cellspacing="1"  style="margin-top:30px; " >
   <tr >
    <td width="50" ></td>
    	 <c:forEach items="${areasStr}" var="area">
    	 	<td width="35"  nowrap="nowrap" style="padding:5px">
    	 		${area}
    	 	</td>
    	 </c:forEach>
  </tr>
  <tr >
    <td width="50"   nowrap="nowrap" style="padding:5px">国有</td>
    	<c:forEach items="${gy}" var="data">
    	 	<td>
    	 		${data}
    	 	</td>
    	 </c:forEach>
  </tr>
  <tr >
    <td nowrap="nowrap" style="padding:5px">企业</td>
    	<c:forEach items="${qy}" var="data">
    	 	<td>
    	 		${data}
    	 	</td>
    	 </c:forEach>
  </tr>
  <tr >
    <td nowrap="nowrap" style="padding:5px">事业</td>
	<c:forEach items="${sy}" var="data">
    	 	<td>
    	 		${data}
    	 	</td>
    	 </c:forEach>
  </tr>
</table>

			</div>
		</div>
	 </div>
    
	
</body>




</html>