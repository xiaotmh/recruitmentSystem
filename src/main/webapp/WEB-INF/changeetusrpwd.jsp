<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.entity.Rcmessage" %>
<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:wb="http://open.weibo.com/wb">

<head>
    <script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="alternate" media="handheld"/>
    <!-- end 云适配 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>修改您的密码</title>
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
                        <a href="allrcmessage" style="color: #fff;"><span class="glyphicon glyphicon-home"></span>&nbsp;查看已发布的招聘信息</a>
                    </li>
                    <li>
                        <a href="selectallresume" style="color: #fff;"><span class="glyphicon glyphicon-inbox">&nbsp;收到的简历</span></a>
                    </li>
                    <li>
                        <a href="changeetuserdetail" style="color: #fff;"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;修改企业信息</a>
                    </li>
                    <li>
                        <a href="etusermain" style="color: #fff;"><span class="glyphicon glyphicon-comment"></span>&nbsp;发布新的招聘信息</a>
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
                            <span class="	glyphicon glyphicon-user"></span> 当前登录用户为 <%=request.getSession().getAttribute("enid")%> <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="changeetusrpwd" ><span class="glyphicon glyphicon-wrench"></span> 修改密码</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="changeetuserdetail" ><span class="glyphicon glyphicon-credit-card"></span> 修改企业资料</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="etuserlogin" ><span class="glyphicon glyphicon-log-in"></span> 退出登录</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <!-- end #header -->







        <div class="container">

            <div class="col-sm-9">

                <!--修改密码部分开始-->




                <label ><h1>在这里修改您的密码</h1></label>
                <br/>
                <br/>
                <br/>
                <form class="" role="form" method="get" action="/changeetusrpwdnow">


                    <%--<div class="form-group">
                        <label  class="col-sm-2 control-label"><span>*</span>您的学号:</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" required="required" maxlength="10" name="uid" readonly="readonly" value="<%=uid%>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label"><span>*</span>姓名:</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" required="required" maxlength="10" name="uname" >
                        </div>
                    </div>--%>
                    <div class="col-sm-5" style="height: 60px">
                        <label for="bid" class="control-label" style="font-size: larger;" >您当前登录用户为 &nbsp </label>
                    </div>
                    <div class="col-sm-4" style="height: 60px">

                        <input type="text" class="form-control col-sm-4" id="bid" name="bid" style="width: 250px;margin-top: 0px;"   value="<%=request.getSession().getAttribute("etuserid")%>" readonly="readonly">
                    </div>
                    <div class="col-sm-5" style="height: 60px">
                        <label for="bpwd" class="control-label" style="font-size: larger;" >请输入旧的密码</label>
                    </div>
                    <div class="col-sm-4" style="height: 60px">

                        <input type="password" class="form-control col-sm-4" id="bpwd" name="bpwd"  style="width: 250px; margin-top: 0px;"  placeholder="请输入密码">
                    </div>
                    <div class="col-sm-5" style="height: 60px">
                        <label for="newbpwd" class="control-label" style="font-size: larger;" >请输入新的密码</label>
                    </div>
                    <div class="col-sm-4" style="height: 60px">

                        <input type="password" class="form-control col-sm-4" id="newbpwd" style="width: 250px; margin-top: 0px;"  name="newbpwd" placeholder="请输入密码">
                    </div>
                    <div class="col-sm-offset-2 col-lg-2">
                        <button  class="btn btn-default" onclick="window.location.href='etuserupdate2?eid='+$('#uid').val()+ '&&epwdold='+$('#inputOldPassword').val()+ '&&epwdold='+$('#inputNewPassword').val()">修改</button>

                    </div>
                </form>
                <div class="col-sm-offset-2 col-lg-2">
                    <button  class="btn btn-default"  onclick="javascript:window.location.href='allrcmessage'">返回</button>
                </div>
                　<%--///////////////////////////////////////////////////--%>

                <%--//////////////////////////////////////////--%>




                <!--修改密码内容结束-->

                <input type="hidden" value="" name="userid" id="userid"/>

                <div class="clear"></div>
                <input type="hidden" id="resubmitToken" value=""/>
                <a id="backtop" title="回到顶部" rel="nofollow"></a>

                <!-- end #container -->
            </div>













            <div class="col-sm-3">
            <div class="subscribe_side">
                    <span href="subscribe.html" target="_blank">
                        <div class="subpos"><span>欢迎</span> 使用</div>
                        <div class="c7">拉钩钩网会根据你的筛选条件，为你寻找到适合您的职位
                        </div>
                        <div class="count">已有
                            <%

                                int rr1 = new Random().nextInt(9) + 1;
                                int rr2 = new Random().nextInt(9) + 1;
                                int rr3 = new Random().nextInt(9) + 1;
                                int rr4 = new Random().nextInt(9) + 1;
                                int rr5 = new Random().nextInt(9) + 1;
                            %>
                            <em><%=rr1%></em>
                            <em><%=rr2%></em>
                            <em><%=rr3%></em>
                            <em><%=rr4%></em>
                            <em><%=rr5%></em> 人使用
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
</div>
<script type="text/javascript" src="style/js/core.min.js"></script>
<script type="text/javascript" src="style/js/popup.min.js"></script>

<!--  -->


</body>

</html>