<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>云凯科技</title>
<!--// Stylesheets //-->
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/red.css" title="styles1" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="css/blue.css" title="styles2" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="css/gray.css" title="styles3" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="css/orange.css" title="styles4" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="css/green.css" title="styles5" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="css/orange-red.css" title="styles6" media="screen" />
<!--// Javascripts //-->
<script  src="js/jquery.min.js"></script>
<script  src="js/styleswitch.js"></script>
<script  src="js/animatedcollapse.js"></script>
<script  src="js/ddsmoothmenu.js"></script>
<script  src="js/jquery.nivo.slider.js"></script>
<script  src="js/jquery.infinite-carousel.js"></script>
<script  src="js/scrolltopcontrol.js"></script>
<script  src="js/functions.js"></script>
</head>

<body>
<!-- Wrapper Start -->
<div id="outer_wrapper"> 
  <!-- Top Bar Start -->
  <div id="top-bar" class="backcolr">
    	<div class="inner">
            <!-- Top Bar Text Start -->
            <c:if test="${sessionScope.u_name != null}" var="name1">
            	<a href="#" class="text">${ sessionScope.u_name}</a>
            </c:if>
            <c:if test="${sessionScope.u_name == null}" var="name1">
	            <a href="/yk/sources/pages/admin-login.jsp" class="text">进入后台</a>
	            <a href="/yk/sources/pages/reg.jsp" class="text">注册</a>
	            <a href="/yk/sources/pages/login.jsp" class="text">登录</a>
            </c:if>
            <!-- Top Bar Text End -->
        </div>
        <div class="clear"></div>
    </div>
  <!-- Top Bar End -->
  <!-- Header Start -->
  <div id="header">
    <div class="rays">
      <div class="inner"> 
        <!-- Logo Start -->
        <div class="logo">
          <h1 class="white">重庆云凯科技</h1>
        </div>
        <!-- Logo End -->
        <div class="right"> 
          <!-- Navigation Start -->
          <div class="navigation">
            <div id="smoothmenu1" class="ddsmoothmenu">
              <ul>
                <li><a href="home.jsp">首页</a></li>
                <li><a href="/yk/sources/pages/newsa">新闻动态</a></li>
                <li><a href="#">产品展示</a>
                  <ul class="backcolr">
                    <li class="current-menu-item"><a href="product-details.jsp">物联网系统</a></li>
                    <li><a href="#">门户网站</a></li>
                    <li><a href="#">实验室平台</a></li>
                  </ul>
                </li>
                <li><a href="/yk/sources/pages/messagea">此处留言</a></li>
              </ul>
              <div class="clear"></div>
            </div>
          </div>
          <!-- Navigation End -->
          <div class="clear"></div>
        </div>
      </div>
    </div>
  </div>
  <!-- Header End --> 
  <!-- Banner Start -->
  <div id="banner">
    <div class="slider-wrapper theme-default">
      <div id="slider" class="nivoSlider"> <a href="#"><img src="images/banner2.jpg" title="#banner2" alt="" /></a> <a href="#"><img src="images/banner3.jpg" title="#banner3" alt="" /></a> </div>
      <!-- Banner Caption Start -->
      <div id="banner1" class="nivo-html-caption">
        <div class="ban-capt-desc">
          <div class="ban-capt-mid">
            <div class="ban-capt-in">
              <h1 class="white">让数据创造价值</h1>
              <p> 云凯大数据平台采用以Hadoop技术架构、云计算、物联网及智能语音等技术<br />
                ，包括数据感知、数据存储、数据分析、数据检索、数据清洗、数据加工、数据挖掘、
                数据整合、数据接入、数据标准、数据交换平台、数据集市等功能模块。 </p>
            </div>
          </div>
        </div>
      </div>
      <!-- Banner Caption End --> 
      <!-- Banner Caption Start -->
      <div id="banner2" class="nivo-html-caption">
        <div class="ban-capt-desc">
          <div class="ban-capt-mid">
            <div class="ban-capt-in">
              <h1 class="white">关于云凯科技</h1>
              <p> 重庆云凯科技有限公司（简称：云凯科技)创立于2011年，是重庆本土领先的大数据解决方案提供商。公司致力于帮助政府和企业设计大数据顶层规划，为客户提供数据采集、存储、分析、挖掘、应用和可视化等大数据全产业链综合服务。云凯科技总部设于重庆，在成都、云南、贵州等地设有多家分公司。现有员工170余名，均来自互联网行业及知名企业。目前年软件开发及销售收入超过6000万。
                
                云凯科技依托微软、惠普、清华紫光等平台，在国内领先的大数据处理技术、云计算技术、数据挖掘技术、SAAS应用等领域，具有5年的潜心积累、研究和开发。云凯科技覆盖多个行业，参控股重庆云凯芯联科技有限公司、 重庆序贯科技有限公司、成都云凯软件有限责任公司、成都极点芯联科技有限公司，提供智慧社区、医疗健康、教育培训等多个行业的大数据解决方案，先后服务了包括重庆人社局、渝北区政府、绿地集团等各级政府和大中型企事业单位。 </p>
            </div>
          </div>
        </div>
      </div>
      <!-- Banner Caption End --> 
      <!-- Banner Caption Start -->
      <div id="banner3" class="nivo-html-caption">
        <div class="ban-capt-desc">
          <div class="ban-capt-mid">
            <div class="ban-capt-in">
              <h1 class="white">关于云凯科技</h1>
              <p> 重庆云凯科技有限公司（简称：云凯科技)创立于2011年，是重庆本土领先的大数据解决方案提供商。公司致力于帮助政府和企业设计大数据顶层规划，为客户提供数据采集、存储、分析、挖掘、应用和可视化等大数据全产业链综合服务。云凯科技总部设于重庆，在成都、云南、贵州等地设有多家分公司。现有员工170余名，均来自互联网行业及知名企业。目前年软件开发及销售收入超过6000万。
                
                云凯科技依托微软、惠普、清华紫光等平台，在国内领先的大数据处理技术、云计算技术、数据挖掘技术、SAAS应用等领域，具有5年的潜心积累、研究和开发。云凯科技覆盖多个行业，参控股重庆云凯芯联科技有限公司、 重庆序贯科技有限公司、成都云凯软件有限责任公司、成都极点芯联科技有限公司，提供智慧社区、医疗健康、教育培训等多个行业的大数据解决方案，先后服务了包括重庆人社局、渝北区政府、绿地集团等各级政府和大中型企事业单位。 </p>
            </div>
          </div>
        </div>
      </div>
      <!-- Banner Caption End --> 
    </div>
  </div>
  <!-- Banner End -->
  
  
  <<div id="contentsec">
    <!-- Fullwidth Box Start -->
    <div class="fullwidth box center">
      <h3 class="widget-head">云凯简介</h3>
      <div class="widget">
        <p>重庆云凯科技有限公司（简称：云凯科技)创立于2011年，是重庆本土领先的大数据解决方案提供商。公司致力于帮助政府和企业设计大数据顶层规划，为客户提供数据采集、存储、分析、挖掘、应用和可视化等大数据全产业链综合服务。云凯科技总部设于重庆，在成都、云南、贵州等地设有多家分公司。现有员工170余名，均来自互联网行业及知名企业。目前年软件开发及销售收入超过6000万。</p>
        <p>云凯科技依托微软、惠普、清华紫光等平台，在国内领先的大数据处理技术、云计算技术、数据挖掘技术、SAAS应用等领域，具有5年的潜心积累、研究和开发。云凯科技覆盖多个行业，参控股重庆云凯芯联科技有限公司、 重庆序贯科技有限公司、成都云凯软件有限责任公司、成都极点芯联科技有限公司，提供智慧社区、医疗健康、教育培训等多个行业的大数据解决方案，先后服务了包括重庆人社局、渝北区政府、绿地集团等各级政府和大中型企事业单位。</p>
      </div>
      <div class="clear"></div>
    </div>
    <!-- Fullwidth Box End --> 
    <!-- Fullwidth Box Start -->
    <div class="fullwidth box center">
      <h3 class="widget-head">团队介绍</h3>
      <div class="widget">
        <h3><strong>龚学勇(CEO):</strong></h3>
        <br>
        <p>云凯科技创始人,负责公司战略制定，兼管产品设计及研发部,2005-2015微软(中国) 重庆PSG区域总监。</p>
        <p>1997年获得吉林大学（原吉林工大）理学院获得工学学士，2012年获得重庆大学软件工程硕士、重庆大学软件工程云计算专业方向在读博士，先后就职于深圳金蝶软件、联邦快递FEDEX(新加坡)研发中心、BEA中国公司成都办事处、微软（中国）公共事业部西区、重庆分公司。</p>
        <p>在微软工作期间，龚学勇获得过微软 “SPOT AWARD”、全球最高成就奖、COE白金和黄金Club大奖等嘉奖，帮助重庆先后引入了“微软全球服务交付中心”、“微软大数据技术创新基地”等优秀合作项目。</p>
        <p>龚学勇在智能硬件、软件研发、移动互联网行业、智慧城市建设等方面有深刻的理解和行业经验，并拥有资源整合能力和国内外多次创业经验。</p>
      </div>
      <br>
      <div class="widget">
        <h3><strong>雷瑞忠(总经理）:</strong></h3>
        <br>
        <p>管理公司对内日常事务及管理解决方案销售团队。</p>
        <p>雷瑞忠拥有10年以上管理工作经验，具有优秀的领导能力，出色的人际交往和社会活动能力，有很强的号召力和感染力。他于2011年参与创建云凯科技有限公司，负责管理云凯科技软件外包、软硬件销售、日常管理等工作。</p>
      </div>
      <br>
      <div class="clear"></div>
    </div>
    <!-- Fullwidth Box End -->   
  </div>!-- Content Section Start -->
  
  <!-- Content Section End -->

  
  <!-- Footer Start -->
  <div id="footer">
    <div class="footer-rays">
      <div class="inner"> 
        <!-- Footer Logo - Navigation - Copyrights Start -->
        <div class="foot-navi-coopyrights">
          <div class="footlogo-nav"> 
            <!-- Footer Logo Start -->
            <div class="footlogo"> <a href="#"><img src="images/logo-foot.png" alt="" /></a> </div>
            <!-- Footer Logo End --> 
            <!-- Footer Navigation Start -->
            <div class="footnav">
              <p>联系电话:（023）63072876</p>
              <p>人力资源:cqhr@yun-kai.com</p>
              <p>媒体联系:yuqianqian@yun-kai.com</p>
              <p>公司地址:重庆渝北区黄山大道中段5号水星B座9楼6</p>
            </div>
            <!-- Footer Navigation End --> 
          </div>
        </div>
        <!-- Footer Logo - Navigation - Copyrights End --> 
        <!-- Follow Us - Go to Top Start -->
        <div class="followus"> 
          <!-- Go to Top Start -->
          <div class="gotop"> <a href="#top">&nbsp;</a> <span>返回顶部</span> </div>
          <!-- Go to Top End --> 
          <!-- Follow Us Start -->
          <div class="follow">
            <h5 class="white">相关链接：</h5><br>
            <a href="https://www.baidu.com/">大数据云平台</a><br>
            <a href="https://www.baidu.com">百度一下</a><br>
            <a href="https://www.baidu.com">互联网服务</a><br>
            
          </div>
          <!-- Follow Us End --> 
        </div>
        <!-- Follow Us - Go to Top End -->
        <div class="clear"></div>
      </div>
    </div>
  </div>
  <!-- Footer End --> 
</div>
<!-- Wrapper End -->
</body>
</html>
