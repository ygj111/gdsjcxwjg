<%@ page contentType="text/html;charset=UTF-8" %>

<nav class="navbar navbar-default navbar-static-top">
    <div class="container-fluid" id="header">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header" >
        <a href="#" class="navbar-brand toplogo">广东省建设工程质量检测管理及检测行为监管平台</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-top-links navbar-right">
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="padding: 15px;">
                <i class="fa fa-user fa-fw"></i>
                <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="#"><i class="fa fa-user fa-fw"></i> 用户信息</a>
                </li>
                <li><a href="#"><i class="fa fa-gear fa-fw"></i> 设置</a>
                </li>
                <li class="divider"></li>
                <li><a href="${ctx}/admin/logout"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
      </div>
      <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
  </nav>
 <div class="clear"></div> 
  <!--顶部导航-->  
   <div id="nav">
   
   <ul id="nav_box">
   <li><a href="${ctx}/admin/main" aria-expanded="true">首页</a></li>
   <li><a href="${ctx}/statical/orgList">检测机构</a></li>
   <!-- <li class="changeli"><a href="javascript:;">委托办理</a></li> -->
   <li><a href="http://arp.ccqm.cn/gdsjcxwjg/%E6%A3%80%E6%B5%8B%E6%8A%A5%E5%91%8A%E6%B1%87%E6%80%BB%E5%9B%BE%E8%A1%A8.html">检测数据</a></li>
   <li><a href="http://arp.ccqm.cn/gdsjcxwjg/%E6%97%A0%E8%B5%84%E8%B4%A8%E6%A3%80%E6%B5%8B%E6%9C%BA%E6%9E%84%E6%95%B0%E9%87%8F%E6%B1%87%E6%80%BB.html">检测行为</a></li>
   <li><a href="${ctx}/fact/factList">诚信评价</a></li>
   <li><a href="http://arp.ccqm.cn/gdsjcxwjg/%E5%90%84%E5%B8%82%E7%9B%91%E7%9D%A3%E5%B9%B3%E5%8F%B0.html">各市监督平台</a></li>
   <li><a href="http://arp.ccqm.cn/gdsjcxwjg/%E6%9B%9D%E5%85%89%E5%8F%B0.html">曝光台</a></li>
   <li><a href="http://arp.ccqm.cn/gdsjcxwjg/%E6%B2%9F%E9%80%9A%E5%B9%B3%E5%8F%B0.html">沟通平台</a></li>
   <li><a href="http://arp.ccqm.cn/gdsjcxwjg/%E6%9C%BA%E6%9E%84%E4%BF%A1%E6%81%AF%E4%B8%8A%E6%8A%A5.html">数据上传</a></li>
   </ul>
   
   </div>
<script type="text/javascript">
	$(document).ready(function(){
		$("#nav_box li").click(function(){
			$(this).addClass('changeli').siblings().removeClass('changeli');
		});
	
	});
</script>
<div class="clear"></div>  
