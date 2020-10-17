<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.entity.Rcmessage" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:wb="http://open.weibo.com/wb">
<style type="text/css">

    *{

        padding: 0;

        margin: 0;

    }

    li{

        list-style: none;

    }

    .gcs-pagination{

        margin: 50px;

        background: #ccc;

    }

    .gcs-pagination  li{

        float:  left;

    }

    .gcs-pagination a {

        text-decoration: none;

        padding: 5px 12px;

        margin: 2px;

        color: black;

        border: 1px solid lightgray;

    }

    .gcs-pagination a:hover{

        background: #CCCCCC;

    }

    .gcs-pagination a.cur{

        background: #4CAF50;

        color: #FFFFFF;

    }

</style>
<head>
    <script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="alternate" media="handheld"/>
    <!-- end 云适配 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>全国-公司列表-拉勾网-最专业的互联网招聘平台</title>
    <meta property="qc:admins" content="23635710066417756375"/>
    <meta content="全国condition-condition-公司列表-拉勾网-最专业的互联网招聘平台" name="description">
    <meta content="全国condition-公司列表-拉勾网-最专业的互联网招聘平台" name="keywords">
    <meta name="baidu-site-verification" content="QIQ6KC1oZ6"/>

    <!-- <div class="web_root"  style="display:none">h</div> -->
    <script type="text/javascript">
        var ctx = "h";
        console.log(1);
    </script>

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="Shortcut Icon" href="h/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="style/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="style/css/external.min.css"/>
    <link rel="stylesheet" type="text/css" href="style/css/popup.css"/>
    <script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
    <script src="style/js/ajaxfileupload.js" type="text/javascript"></script>
    <script type="text/javascript" src="style/js/additional-methods.js"></script>
    <script type="text/javascript" src="../bootstrap/bootstrap.min.js"></script>

    <!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var youdao_conv_id = 271546;
    </script>
    <script type="text/javascript" src="style/js/conv.js"></script>
</head>

<body>
<div id="body">
    <nav class="navbar navbar-default" role="navigation"
         style="background-image: url(../images/menu-bg1.gif);background-size:100% 120%;">
        <div class="container-fluid container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#example-navbar-collapse">
                    <span class="sr-only">切换导航</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="../images/logo.png" style="height: 28px;"></a>
            </div>
            <div class="collapse navbar-collapse" id="example-navbar-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="rcmessagelogin" style="color: #fff;"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a>
                    </li>
                    <li>
                        <a href="search" style="color: #fff;"><span class="glyphicon glyphicon-search"></span>&nbsp;职位搜索</a>
                    </li>
                    <li>
                        <a href="changeuserdetail" style="color: #fff;"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;修改我的个人信息</a>
                    </li>
                    <li>
                        <a href="overtoudi" style="color: #fff;"><span class="glyphicon glyphicon-comment"></span>&nbsp;查看老板回复</a>
                    </li>
                    <%--<li>
                        <a href="caogao" style="color: #fff;"><span class="glyphicon glyphicon-folder-open"></span>&nbsp;我的草稿</a>
                    </li>
                    <li>
                        <a href="selectallresume2" style="color: #fff;"><span class="glyphicon glyphicon-hdd"></span>&nbsp;其他公开简历</a>
                    </li>--%>
                    <li>
                        <a href="fail" style="color: #fff;"><span class="glyphicon glyphicon-headphones"></span>&nbsp;关于本站</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown ">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: #fff;">
                            <span class="	glyphicon glyphicon-user"></span> 当前登录用户为 <%=request.getSession().getAttribute("userid")%> <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="changeusrpwd" ><span class="glyphicon glyphicon-log-in"></span> 修改密码</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="changeuserdetail" ><span class="glyphicon glyphicon-log-in"></span> 修改个人资料</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="userlogin" ><span class="glyphicon glyphicon-log-in"></span> 退出登录</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- end #header -->
    <div class="container">

        <div class=" ">
            <div class="col-sm-9">
                <input type="hidden" id="city" name="city" value="全国"/>
                <input type="hidden" id="fs" name="fs" value=""/>
                <input type="hidden" id="ifs" name="ifs" value=""/>
                <input type="hidden" id="ol" name="ol" value=""/>
                <dl class="hc_tag">
                    <dt>
                        <!--  <h2 class="fl">热门公司</h2> -->
                        <ul class="workplace reset fr" id="workplaceSelect">
                            <li>
                                <a href="javascript:WorkCityAll('北京')" class="current">全国</a>
                                |
                            </li>
                            <li>
                                <a href="javascript: WorkCity('北京')">北京</a>
                                |
                            </li>
                            <li>
                                <a href="javascript:WorkCity('上海')">上海</a>
                                |
                            </li>
                            <li>
                                <a href="javascript:WorkCity('广州')">广州</a>
                                |
                            </li>
                            <li>
                                <a href="javascript:WorkCity('深圳')">深圳</a>
                                |
                            </li>
                            <li>
                                <a href="javascript:WorkCity('成都')">成都</a>
                                |
                            </li>
                            <li>
                                <a href="javascript:WorkCity('杭州')">杭州</a>
                                |
                            </li>
                            <li>
                                <a href="javascript:WorkCity('武汉')">武汉</a>
                                |
                            </li>
                            <li>
                                <a href="javascript:WorkCity('南京')">南京</a>
                                |
                            </li>
                            <li class="more">
                                <a href="javascript:void(0)">其他</a>
                                <div class="triangle citymore_arrow"></div>
                            </li>
                            <li id="box_expectCity" class="searchlist_expectCity dn">
                                <span class="bot"></span>
                                <span class="top"></span>
                                <dl>
                                    <dt>ABCDEF</dt>
                                    <dd>
                                        <a href="javascript:WorkCity('北京')"><span>北京</span></a>
                                        <a href="javascript:WorkCity('长春')"><span>长春</span></a>
                                        <a href="javascript:WorkCity('成都')"><span>成都</span></a>
                                        <a href="javascript:WorkCity('重庆')"><span>重庆</span></a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>GHIJ</dt>
                                    <dd>
                                        <a href="javascript:WorkCity('贵阳')"><span>贵阳</span></a>
                                        <a href="javascript:WorkCity('广州')"><span>广州</span></a>
                                        <a href="javascript:WorkCity('哈尔滨')"><span>哈尔滨</span></a>
                                        <a href="javascript:WorkCity('合肥')"><span>合肥</span></a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>KLMN</dt>
                                    <dd>
                                        <a href="javascript:WorkCity('昆明')"><span>贵阳</span></a>
                                        <a href="javascript:WorkCity('宁波')"><span>宁波</span></a>
                                        <a href="javascript:WorkCity('南昌')"><span>南昌</span></a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>OPQR</dt>
                                    <dd>
                                        <a href="javascript:WorkCity('青岛')"><span>青岛</span></a>
                                        <a href="javascript:WorkCity('泉州')"><span>泉州</span></a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>STUV</dt>
                                    <dd>
                                        <a href="javascript:WorkCity('上海')"><span>上海</span></a>
                                        <a href="javascript:WorkCity('石家庄')"><span>石家庄</span></a>
                                        <a href="javascript:WorkCity('沈阳')"><span>沈阳</span></a>
                                        <a href="javascript:WorkCity('深圳')"><span>深圳</span></a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>WXYZ</dt>
                                    <dd>
                                        <a href="javascript:WorkCity('武汉')"><span>武汉</span></a>
                                        <a href="javascript:WorkCity('无锡')"><span>无锡</span></a>
                                        <a href="javascript:WorkCity('温州')"><span>温州</span></a>
                                        <a href="javascript:WorkCity('西安')"><span>西安</span></a>
                                    </dd>
                                </dl>
                            </li>
                        </ul>
                    </dt>
                    <dd>
                        <dl>
                            <dt>薪资阶段：</dt>
                            <dd>
                                <a href="javascript:Money(2)">2k</a>
                                <a href="javascript:Money(5)">5k</a>
                                <a href="javascript:Money(10)">10k</a>
                                <a href="javascript:Money(15)">15k</a>
                            </dd>
                        </dl>
                        <dl>
                            <dt>行业领域：</dt>
                            <dd>
                                <a href="javascript:Work('移动互联网')">移动互联网</a>
                                <a href="javascript:Work('电子商务')">电子商务</a>
                                <a href="javascript:Work('社交')">社交</a>
                                <a href="javascript:Work('企业服务')">企业服务</a>
                                <a href="javascript:Work('O2O')">O2O</a>
                                <a href="javascript:Work('教育')">教育</a>
                                <a href="javascript:Work('文化艺术')">文化艺术</a>
                                <a href="javascript:Work('游戏')">游戏</a>
                                <a href="javascript:Work('在线旅游')">在线旅游</a>
                                <a href="javascript:Work('金融互联网')">金融互联网</a>
                                <a href="javascript:Work('健康医疗')">健康医疗</a>
                                <a href="javascript:Work('生活服务')">生活服务</a>
                                <a href="javascript:Work('硬件')">硬件</a>
                                <a href="javascript:Work('搜索')">搜索</a>
                                <a href="javascript:Work('安全')">安全</a>
                                <a href="javascript:Work('运动体育')">运动体育</a>
                                <a href="javascript:Work('云计算\大数据')">云计算\大数据</a>
                                <a href="javascript:Work('移动广告')">移动广告</a>
                                <a href="javascript:Work('分类信息')">分类信息</a>
                                <a href="javascript:Work('招聘')">招聘</a>
                            </dd>
                        </dl>
                        <!-- <dl>
                        <dt>热门标签：</dt>
                        <dd>
                                                                                                               <a href="javascript:void(0)">年底双薪</a>
                                                                                                                                                       <a href="javascript:void(0)">专项奖金</a>
                                                                                                                                                       <a href="javascript:void(0)">股票期权</a>
                                                                                                                                                       <a href="javascript:void(0)">绩效奖金</a>
                                                                                                                                                       <a href="javascript:void(0)">年终分红</a>
                                                                                                                                                       <a href="javascript:void(0)">带薪年假</a>
                                                                                                                                                       <a href="javascript:void(0)">交通补助</a>
                                                                                                                                                       <a href="javascript:void(0)">通讯津贴</a>
                                                                                                                                                       <a href="javascript:void(0)">午餐补助</a>
                                                                                                                                                       <a href="javascript:void(0)">定期体检</a>
                                                                                                                                                       <a href="javascript:void(0)">弹性工作</a>
                                                                                                                                                       <a href="javascript:void(0)">年度旅游</a>
                                                                                                                                                       <a href="javascript:void(0)">节日礼物</a>
                                                                                                                                                       <a href="javascript:void(0)">免费班车</a>
                                                                                                                                                       <a href="javascript:void(0)">帅哥多</a>
                                                                                                                                                       <a href="javascript:void(0)">美女多</a>
                                                                                                                                                       <a href="javascript:void(0)">领导好</a>
                                                                                                                                                       <a href="javascript:void(0)">扁平管理</a>
                                                                                                                                                       <a href="javascript:void(0)">管理规范</a>
                                                                                                                                                       <a href="javascript:void(0)">技能培训</a>
                                                                                                                                                       <a href="javascript:void(0)">岗位晋升</a>
                                                                                                                                                       <a href="javascript:void(0)">五险一金</a>
                                                                                                    </dd>
                    </dl> -->
                    </dd>
                </dl>
                <hr>
                <table class="table table-striped">

                     <center>
                         <h3>这里还没有符合条件的招聘信息哦QAQ</h3>
                     </center>
                </table>
                <div class="Pagination"></div>
            </div>
            <div class="col-sm-3">
                <div class="subscribe_side">
                    <span href="subscribe.html" target="_blank">
                        <div class="subpos"><span>欢迎</span> 使用</div>
                        <div class="c7">xx网会根据你的筛选条件，为你寻找到适合您的职位
                        </div>
                        <div class="count">已有
                            <em>3</em>
                            <em>4</em>
                            <em>2</em>
                            <em>1</em>
                            <em>0</em> 人使用
                        </div>
                        <i>我也要使用啦</i>
                    </span>
                </div>
                <div class="greybg qrcode mt20">
                    <img src="style/images/companylist_qr.png" width="242" height="242" alt="拉勾微信公众号二维码"/>
                    <span class="c7">扫描拉勾二维码，微信轻松搜工作</span>
                </div>
                <!-- <a href="h/speed/speed3.html" target="_blank" class="adSpeed"></a> -->
                <a href="h/subject/jobguide.html" target="_blank" class="eventAd">
                    <img src="style/images/subject280.jpg" width="280" height="135"/>
                </a>
                <a href="h/subject/risingPrice.html" target="_blank" class="eventAd">
                    <img src="style/images/rising280.png" width="280" height="135"/>
                </a>
            </div>
        </div>

        <input type="hidden" value="" name="userid" id="userid"/>

        <div class="clear"></div>
        <input type="hidden" id="resubmitToken" value=""/>
        <a id="backtop" title="回到顶部" rel="nofollow"></a>
    </div>
    <!-- end #container -->
</div>
<!-- end #body -->
<div id="footer">
    <div class="wrapper">
        <a href="fail" target="_blank" rel="nofollow">联系我们</a>
        <a href="fail" target="_blank">互联网公司导航</a>
        <a href="fail" target="_blank" rel="nofollow">拉钩钩微博</a>
        <a class="footer_qr" href="fail" rel="nofollow">拉钩钩微信<i></i></a>
        <div class="copyright">&copy;2019-2020 Lagougou
            <a target="_blank"
               href="fail">暂无备案号</a>
        </div>
    </div>
</div>

<script type="text/javascript" src="style/js/core.min.js"></script>
<script type="text/javascript" src="style/js/popup.min.js"></script>
<script type="text/javascript" >
    function WorkCity(str){
        window.location.href="bycity?wcity="+str;
    }
    function Work(str){
        window.location.href="bywork?wtype="+str;
    }
    function Money(str){
        window.location.href="byminmoney?minmoney="+str;
    }
    function WorkCityAll(str){
        window.location.href="rcmessagelogin";
    }
</script>
<!--  -->

</body>

</html>