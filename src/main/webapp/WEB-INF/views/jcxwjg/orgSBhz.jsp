<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>检测设备汇总</title>
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
	<script type="text/javascript">
$(function () {
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: '机构数量汇总(按工商注册类型)'
        },
        subtitle: {
            text: ''
        },
        xAxis: {
            categories: [
                 "直属",
			    '广州市',
                '深圳市',
                '珠海市',
				'佛山市',
                '惠州市',
                '东莞市',
                '中山市',
                '江门市',
                '肇庆市',
                '汕头市',
                '韶关市',
                '河源市',
                '梅州市',
                '汕尾市',
                '阳江市',
                '湛江市',
                '茂名市',
                '清远市',
                '潮州市',
                '揭阳市',
                '云浮市'
            ],
			labels: {
                rotation: 0,
                style: {
                    fontSize: '13px',
                    fontFamily: 'Verdana, sans-serif'
                }
            },
            crosshair: true
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
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: '全民所有制',
			color: '#02B7FA',
            data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4,9]

        }, {
            name: '集体所有制',
			color: '#FFC802',
            data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4,8]

        }, {
            name: '有限责任制',
			color: '#9BDB55',
            data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4,7]

        }, {
            name: '股份合作制',
			color: '#614C7B',
            data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4,8]

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
			    <td width="50%" style="font-size:14px"><img src="../img/gdsjcxwjg/postion.png">&nbsp;您所在的位置是：检测机构  > 检测设备汇总
			    
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
                   <img src="../img/cs/u1_4.png">
			</div>
		</div>
	 </div>
    

</body>




</html>