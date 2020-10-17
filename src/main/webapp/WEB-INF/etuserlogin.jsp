<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html >

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- InstanceBegin template="/Templates/my51JobDwt.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <!-- InstanceBeginEditable name="doctitle" -->
    <title>用户登录页面</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script type="text/javascript" src="bootstrap/jquery.min.js"></script>
    <script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
    <style type="text/css">
        .div0Login {
            width: 1000px;
            height: 33px;
            margin: auto;
            background-image: url(images/menu-bg1.gif);
            background-repeat: repeat-x;
            text-align: center;
        }

        .div1Login {
            width: 800px;
            height: 360px;
            top: 40px;
            position: relative;
            margin: auto;
            margin-bottom: 45px;
            /*border:1px dashed #00F;*/
        }

        .div11Login {
            float: left;
            height: 320px;
            width: 324px;
            position: relative;
            /*background-color:#0F0;*/
            background-image: url(images/login_ext.png);background-size:100% 100%;
        }



        .div113Login {
            width: 80%;
            height: 80%;
            top:10%;
            left: 10%;
            position: absolute;
            background-color: #FFFFF7;
        }



        .div12Login {
            font-family: "宋体";
            margin-top: 30px;
            margin-left: 10px;
            text-align: left;
            font-size: 12px;
            color: #414141;
            height: 290px;
            width: 420px;
            float: left;
            /*background-color:#0FF;*/
        }

        .div121Login {
            width: 80px;
            height: 70px;
            text-align: center;
            vertical-align: middle;
            /*border:1px solid #F00;*/
            display: inline-block;
        }

        .div122Login {
            height: 70px;
            width: 330px;
            /*border:1px solid #00F;*/
            float: right;
            line-height: 20px;
        }

        .span01Login {
            line-height: 26px;
            margin-left: 5px;
            margin-right: 5px;
            color: #FFF;
            font-size: 12px;
        }

        .span1Login {
            margin: 10px;
            display: block;
            color: #414141;
            font-size: 12px;
        }

        .span2Login {
            display: block;
            color: #414141;
            font-size: 12px;
        }

        .btn1Login {
            display: block;
            margin: auto;
            margin-top: 10px;
            margin-bottom: 10px;
            width: 100px;
            height: 33px;
            background-image: url(images/login-sm2.gif);
            border: 0px;
        }

        .btn1Login:hover {
            display: block;
            margin: auto;
            margin-top: 10px;
            margin-bottom: 10px;
            width: 100px;
            height: 33px;
            background-image: url(images/login-sm1.gif);
            border: 0px;
        }

        .btn2Login {
            margin: auto;
            margin-top: 10px;
            width: 158px;
            height: 26px;
            border: 0px;
            color: #f0ad4e;
            background: chartreuse;
        }

        .txtLogin {
            margin-top: 40px;
            width: 150px;
            height: 16px;
        }

        .pwdLogin {
            width: 150px;
            height: 16px;
        }
    </style>
    <!-- InstanceEndEditable -->
    <!-- InstanceBeginEditable name="head" -->
    <!-- InstanceEndEditable -->
    <style type="text/css">
        .spandwt {
            display: block;
            text-align: center;
            line-height: 25px;
            font-size: 12px;
            color: #414141;
            font-family: "宋体";
        }

        .divdwt {
            display: block;
            background-image: url(images/bottom-bg.gif);
            text-align: center;
            height: 35px;
            width: 1000px;
            color: #FFF;
            line-height: 30px;
            font-size: 12px;
            font-family: "宋体";
            margin: auto;
        }

        .adwt {
            color: #FFF;
            font-size: 12px;
            text-decoration: none;
            font-family: "宋体";
        }

        .adwt:hover {
            color: #FFF;
            font-size: 12px;
            text-decoration: none;
            font-family: "宋体";
        }

        .bodydwt {
            text-align: center;
        }

        .imgdwt {
            border: 0px;
        }

        .headdwt {
            width: 960px;
            height: 65px;
            margin: auto;
            /*居中*/
            position: relative;
            vertical-align: bottom;
            /*border:1px solid #000;*/
        }

        .headerleftdwt {
            /*border:1px solid #000;*/
            float: left;
            margin-bottom: 0px;
            height: 65px;
        }

        .headerrightdwt {
            /*border:1px solid #000;*/
            float: right;
            height: 31px;
            vertical-align: bottom;
            margin-top: 34px;
        }

        .imgheaderdwt {
            border: 0px;
        }
    </style>

</head>

<body>
<%
    session.setAttribute("etuserid",0);
%>
<nav class="navbar navbar-default" role="navigation" style="background-image: url(images/menu-bg1.gif);background-size:100% 120%;">
    <div class="container-fluid container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="images/logo.png" style="height: 28px;"></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">

            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="register2" style="color: #fff;"><span class="glyphicon glyphicon-user"></span> 注册</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<div class="bodydwt">
    <!--中间内容开始-->
    <div class="div1Login"    id="login_">
        <div class="div11Login"   id="login_ext">
            <!--center-->
            <div class="div113Login">
                <form action ="login2">
                    <span class="span1Login">会员名：<input class="txtLogin" type="text" name="uid"/></span>
                    <span class="span2Login"><span style="margin-right:12px">密</span>码：<input class="pwdLogin" type="password" name="upwd" /></span>
                    <button type="submit" class="btn btn-success" >登录</button>
                </form>
            </div>
        </div>
        <div class="div12Login"   id="login_ext2">
            <div class="div121Login">
                <img src="images/pic1.jpg" />
            </div>
            <div class="div122Login">
                <font style="font-weight:bold; color:#FF7000; display:block">我的简历</font>
                51job的简历中心，您可以在此创建自己专业的个性化简历。
            </div>
            <div class="div121Login">
                <img src="images/pic2.jpg" />
            </div>
            <div class="div122Login">
                <font style="font-weight:bold; color:#FF7000; display:block">找工作</font>
                在茫茫职场中如何找工作？51job的职位搜索器助您一臂之力！
            </div>
            <div class="div121Login">
                <img src="images/pic3.jpg" />
            </div>
            <div class="div122Login">
                <font style="font-weight:bold; color:#FF7000; display:block">在线申请</font>
                当您找到感兴趣的职位时，可以立即将您在51job上的简历在线投递给招聘单位。
            </div>
            <div class="div121Login">
                <img src="images/pic4.jpg" />
            </div>
            <div class="div122Login">
                <font style="font-weight:bold; color:#FF7000; display:block">我的搜索和订阅</font>
                设置并订阅您个性化的职位搜索器，51job会贴心的将理想的职位发送到您的信箱中。
            </div>
        </div>
    </div>
    <!--中间内容结束-->

    <!-- InstanceEndEditable -->
</div>
<div class="divdwt" id="footer">
    网站导航&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="usermain.jsp" class="adwt">网站首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="search.search.html" class="adwt">职位搜索</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="login.html" class="adwt">Myjob</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="register.jsp" class="adwt">用户注册</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="login.html" class="adwt">用户登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="intro.jsp" class="adwt">简历管理</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="company.html" class="adwt">招聘公司</a>
</div>
<div>
    <span class="spandwt">人才招聘&nbsp;Email:hr@51job.com</span>
    <span class="spandwt">个人求职&nbsp;Email:club@51job.com&nbsp;&nbsp;或垂询:800-820-5100</span>
    <span class="spandwt">未经本招聘网站同意，不得转载本网站之所有招聘信息及作品</span>
    <span class="spandwt">无忧工作网版权所有&copy;1999-2007</span>
    <span class="spandwt"><a href="usermain.jsp"><img src="images/bottom1.gif" class="imgdwt" /></a></span>
</div>

<!-- InstanceBeginEditable name="EditRegion4" -->

<script type="text/javascript">
    var pics = document.getElementsByName("pic");
    pics[0].innerHTML = "<img src='images/menu1-1.gif' class='imgheaderdwt' />";
</script>
<!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd -->

<script>
    var w=$(window).width();
    if(w<800){
        $('#login_ext').css("width",'100%');
        $('#login_ext2').hide();
        $('#login_').css("width",w+"px");
        $('#footer').hide();
    }

</script>
</html>