<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>机构数量汇总图表</title>
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
	
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: '机构数量汇总'
        },
        subtitle: {
            text: ''
        },
        xAxis: {
            type: 'category',
            labels: {
                rotation: 0,
                style: {
                    fontSize: '13px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        },
        yAxis: {
           // min: 0,
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
             headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0"> </td>' +
            '<td style="padding:0"><b>{point.y} </b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
       
        series: [{
            name: 'Population',
			color:'#4476B7',
            data: [${data}],
            dataLabels: {
                enabled: true,
                rotation: 0,
                color: '#000000',
                align: 'right',
                //format: '{point.y:.1f}', // one decimal
                y: 10, // 10 pixels down from the top
                style: {
                    fontSize: '13px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        }]
    });
});  







		</script>
		<!--  <script type="text/javascript">
	//根据年度统计该年度的投诉数
		function doAnnualStatistic(){
		   
			/* //1、获取年度	
			var year = $("#year option:selected").val();
			if(year == undefined || year == ""){
				year = "${curYear}";
			} */
			//2、根据年度统计该年度的投诉数并且将投诉数渲染到统计图表中
			$.ajax({
				url:"${ctx}/statical/orgList",
				//data:{"year": year},
				type:"get",
				dataType:"json",
				success:function(data){
					if(data != undefined && data != null){
						//将投诉统计数渲染到统计图表中
						var revenueChart = new FusionCharts({
					        "type": "line",
					        "renderAt": "chartContainer",
					        "width": "600",
					        "height": "400",
					        "dataFormat": "json",
					        "dataSource":  {
					          "chart": {
					            "caption": year + " 年年度投诉数统计图",
					            "xAxisName": "月  份",
					            "yAxisName": "投  诉  数",
					            "theme": "ocean"
					         },
					         "data": data.chartData
					      }
					
					  });
						revenueChart.render();
					} else {alert("获取年度投诉统计数据失败！");}
				},
				error: function(){alert("获取年度投诉统计数据失败！");}
			});
		}
		//当页面一进入时，统计的是当前年度的投诉数
		$(document).ready(doAnnualStatistic());  
	</script>	 -->
		 -->
		
		
</head>

<body>		
	<!-- top nav -->
	<jsp:include page="${ctx}/main/nav_top"></jsp:include>
	<jsp:include page="${ctx}/main/nav_left"></jsp:include>
	 <div class="content" style="padding-left:10px;">
	      <div class="col-lg-12" style="border-bottom:1px dashed #DDDDDD;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
			  <tr>
			    <td width="50%" style="font-size:14px"><img src="../img/gdsjcxwjg/postion.png">&nbsp;您所在的位置是：检测机构  > 机构数量汇总
			    
			    </td>
			    <td width="50%"><div class="top_bar" id="jnkc" height="28px" style="height:45px;line-height:45px;font-size:14px  " align="right"><script>setInterval("jnkc.innerHTML='<img src=\"../img/gdsjcxwjg/u11.png\">&nbsp;'+new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);</script></div></td>
			  </tr>
			</table>
		  </div>
		<div class="panel-body">
			<div id="main-content" >
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
		             <option value="month">月度</option> 
			         <option value="month">01</option> 		       
		             <option value="month">02</option> 
		             <option value="month">03</option> 
		             <option value="month">04</option> 
		             <option value="month">05</option> 
		             <option value="month">06</option> 
		             <option value="month">07</option> 
		             <option value="month">08</option> 
		             <option value="month">09</option> 
		             <option value="month">10</option> 
		             <option value="month">11</option>   
		              <option value="month">12</option>                
                  </select>
                  

               <div id="container" style="min-width:400px;height:400px;margin:0 auto;margin-top:5px"></div> 
			</div>
		</div>
	 </div>
    
     	
</body>




</html>