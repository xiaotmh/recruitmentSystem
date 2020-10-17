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
    <title>拉钩钩网-最专业的校内招聘平台</title>
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

        <div class=" ">

<%
    List<Rcmessage> list = (List<Rcmessage>) request.getSession().getAttribute("lrrr");

    System.out.println("jsp网页端通过enid:"+request.getSession().getAttribute("enid"));
    System.out.println(" jsp网页端查到了lrrr的sieze为"+((List<Rcmessage>) request.getSession().getAttribute("lrrr")).size());
    System.out.println(" jsp网页端查到了lrrr"+request.getSession().getAttribute("lrrr").toString());
    int pageNum=(Integer) request.getAttribute("page");
    System.out.println(" jsp网页端page:"+pageNum);
    int count = (Integer)request.getAttribute("count");
    System.out.println(" jsp网页端count"+count);
%>
            <div class="col-sm-9">
                <input type="hidden" id="city" name="city" value="全国"/>
                <input type="hidden" id="fs" name="fs" value=""/>
                <input type="hidden" id="ifs" name="ifs" value=""/>
                <input type="hidden" id="ol" name="ol" value=""/>

                <hr>
                <table class="table table-striped">
                    <caption>您目前已经发出了<%=list.size()%>条招聘信息,如下：</caption>
                    <thead>
                    <tr>
                        <th>公司&职位</th>
                        <th>工作地点</th>
                        <th>职业要求</th>
                        <th>学历要求</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%


                        if(list.size()>=1)
                        {
                            for (Rcmessage rcmessage : list) {
                    %>



                    <tr>
                        <td>
                            <h4>
                              <%=rcmessage.getEnname()%>
                           <small>
                                <%=rcmessage.getWtype()%></small></h4></td>
                        <td>
                            <h4><%=rcmessage.getWorkaddress()%></h4>
                        </td>
                        <td>
                            <h4><%=rcmessage.getMoremessage()%></h4>
                        </td>
                        <td><h4><%=rcmessage.getEducation()%></h4>
                       <%
                            int rmid = rcmessage.getRmid();
                        %>
                        </td>


                        <td>
                            <button class="btn btn-primary"
                                    onclick="window.location.href='etuserchangercm?rmid=<%=rmid%>'">修改
                            </button>
                            <button class="btn btn-warning"
                                    onclick="window.location.href='rcmessagedeletenew?rmid=<%=rmid%>'">删除
                            </button>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
                <%
                }
                else
                {
                %>
                <div class="col-sm-9">
                    <h1>对不起，您还没有发布职位</h1>
                </div>
                <%

                    }

                %>

               <%-- <ul class="gcs-pagination">

                    <li><a href="allrcmessage?pageNum=1">首页</a></li>
                    <%
                        if(pageNum!=1){
                    %>
                    <li><a href="allrcmessage?pageNum=<%=pageNum-1%>">上一页</a></li>
                   <%
                       }
                   %>
                    <li><a href="allrcmessage?pageNum=<%=pageNum%>">当前页数:<%=pageNum%></a></li>
                    <li><a href="#">总页数:<%=count%></a></li>
                    <%
                      if(pageNum!=count){
                    %>
                    <li><a href="allrcmessage?pageNum=<%=pageNum+1%>">下一页</a></li>
                    <%
                        }
                    %>
                    <li><a href="allrcmessage?pageNum=<%=count%>">>尾页</a></li>

                </ul>--%>
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
                    <img src="style/images/companylist_qr.png" width="242" height="242" alt="拉钩钩微信公众号二维码"/>
                    <span class="c7">扫描拉钩钩二维码，微信轻松搜工作</span>
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
        window.location.href="bycity2?wcity="+str;
    }
    function Work(str){
        window.location.href="bywork2?work="+str;
    }
    function Money(str){
        window.location.href="byminmoney2?minmoney="+str;
    }
    function WorkCityAll(str){
        window.location.href="rcmessagelogin";
    }
</script>
<!--  -->

</body>

</html>