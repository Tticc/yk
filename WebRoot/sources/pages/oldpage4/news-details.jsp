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
	            <a href="#" class="text">进入后台</a>
	            <a href="#" class="text">注册</a>
	            <a href="/yk/sources/pages/admin-login.jsp" class="text">登录</a>
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
  
  <!-- Content Section Start -->
  <div id="contentsec">
    	<div class="inner">
        	
                <!-- Two Third Box Start -->
                <div class="box left">
                    <h2 class="widget-head-border colr">云凯应邀参加“电子科技大学2017届毕业生春季双选会”</h2>
                    <div class="blog">
                        <!-- Blog Post Start -->
                        <div class="post">
                            <div class="post-sec">
                                <div class="thumb">
                                    <!--<a href="#"><img src="images/post-big3.jpg" alt="" /></a> -->
                                </div>
                                <div class="post-desc">
                                    <p>
                                    3月29日，电子科技大学2017届毕业生春季双选会在校体育馆隆重举行，云凯科技PR策划宣传部、人力资源部以及成都技术部工作人员亲赴招聘会现场，为公司发展招贤纳才。

此次云凯主要招聘软件研发工程师、大数据工程师、java工程师等职务。招聘会现场，云凯工作人员耐心地向每位有意向的求职者详细介绍了云凯的发展历程及未来发展方向和广阔前景，吸引了大批求职者投递简历。

多年来，云凯非常重视人才培养，领导也多次亲赴参加全国各大重点高校毕业生招聘会广纳贤才，为公司的发展提供了强有力的人才保障！
                                    </p>
                                    
                                    <div class="post-opts">
                                        <p class="postby">发布人： <a href="#" class="txthover">Admin</a></p>
                                        <p class="post-time">发布时间：2017-04-01</p>
                                        <p class="tags">新闻类型: <a href="#">公司动态</a></p>
                                    </div>
                                    
                                </div>
                            </div>
                           
                       
                        <!-- Blog Post End -->
                    </div>
                </div>
                <!-- Two Third Box End -->
            </div>

        </div>
    </div>
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
