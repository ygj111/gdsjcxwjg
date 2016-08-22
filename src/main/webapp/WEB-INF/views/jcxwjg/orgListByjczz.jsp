<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>机构数量汇总(按检测资质)</title>
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
 <script src="../js/highcharts/highcharts.js"></script>
 <script src="../js/highcharts/modules/exporting.js"></script>
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
            text: '机构数量汇总(按检测资质)'
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
                '<td style="padding:0"><b>{point.y} </b></td></tr>',
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
            name: '地基基础工程检测',
			color: '#4F81BD',
            data: [0,0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0,0, 0,0,0, 0, 0, 0]

        }, {
            name: '主体结构工程现场检测',
			color: '#C0504D',
            data: [0,0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0,0, 0,0,0, 0, 0, 0]

        }, {
            name: '建筑幕墙工程检测',
			color: '#9BBB59',
            data: [0,0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0,0, 0,0,0, 0, 0, 0]

        }, {
            name: '钢结构工程检测',
			color: '#8064A2',
            data: [0,0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0,0, 0,0,0, 0, 0, 0]

        },{
            name: '见证取样检测',
			color: '#4BACC6',
            data: [0,0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0,0, 0,0,0, 0, 0, 0]

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
			    <td width="50%" style="font-size:14px"><img src="../img/gdsjcxwjg/postion.png">&nbsp;您所在的位置是：检测机构  > 机构数量汇总(按检测资质)
			    
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
               <div id="container" style="min-width:400px;height:400px;margin:0 auto;margin-top:5px"></div>
                <table width="1000" height="69" border="1" align="center" cellpadding="0" cellspacing="1" bgcolor="#868686" style="margin-top:10px; ">
   <tr >
    <td width="44" bgcolor="#FFFFFF" nowrap style="padding:2px"></td>
    <td width="44" bgcolor="#FFFFFF" nowrap style="padding:2px">直属</td>
    <td width="43" bgcolor="#FFFFFF" nowrap style="padding:2px">广州市</td>
    <td width="43" bgcolor="#FFFFFF" nowrap style="padding:2px">深圳市</td>
    <td width="44" bgcolor="#FFFFFF" nowrap style="padding:2px">珠海市</td>
	<td width="44" bgcolor="#FFFFFF" nowrap style="padding:2px">佛山市</td>
    <td width="44" bgcolor="#FFFFFF" nowrap style="padding:2px">惠州市</td>
    <td width="43" bgcolor="#FFFFFF" nowrap style="padding:2px">东莞市</td>
    <td width="44" bgcolor="#FFFFFF" nowrap style="padding:2px">中山市</td>
    <td width="44" bgcolor="#FFFFFF" nowrap style="padding:2px">江门市</td>
    <td width="44" bgcolor="#FFFFFF" nowrap style="padding:2px">肇庆市</td>
    <td width="44" bgcolor="#FFFFFF" nowrap style="padding:2px">汕头市</td>
    <td width="43" bgcolor="#FFFFFF" nowrap style="padding:2px">韶关市</td>
    <td width="45" bgcolor="#FFFFFF" nowrap style="padding:2px">河源市</td>
    <td width="45" bgcolor="#FFFFFF" nowrap style="padding:2px">梅州市</td>
    <td width="45" bgcolor="#FFFFFF" nowrap style="padding:2px">汕尾市</td>
    <td width="45" bgcolor="#FFFFFF" nowrap style="padding:2px">阳江市</td>
    <td width="45" bgcolor="#FFFFFF" nowrap style="padding:2px">湛江市</td>
    <td width="45" bgcolor="#FFFFFF" nowrap style="padding:2px">茂名市</td>
    <td width="46" bgcolor="#FFFFFF" nowrap style="padding:2px">清远市</td>
    <td width="46" bgcolor="#FFFFFF" nowrap style="padding:2px">潮州市</td>
    <td width="46" bgcolor="#FFFFFF" nowrap style="padding:2px">揭阳市</td>
    <td width="46" bgcolor="#FFFFFF" nowrap style="padding:2px">云浮市</td>
  </tr>
  <tr>
    <td width="44"  bgcolor="#FFFFFF" nowrap style="padding:2px">地基基础工程检测</td>
	<td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
    <td width="44"  bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr >
    <td bgcolor="#FFFFFF" nowrap style="padding:2px">主体结构工程现场检测</td>
	<td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF" nowrap style="padding:2px">建筑幕墙工程检测</td>
	<td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
   <tr>
    <td bgcolor="#FFFFFF" nowrap style="padding:2px">钢结构工程检测</td>
	<td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
   <tr>
    <td bgcolor="#FFFFFF" nowrap style="padding:2px">见证取样检测</td>
	<td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
</table>
			</div>
		</div>
	 </div>
    

</body>




</html>