<%@ page import="java.util.List" %>
<%@ page import="com.entity.Resume" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>other_resume</title>
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
                    <a href="rcmessagelogin" style="color: #fff;">首页</a>
                </li>
                <li>
                    <a href="search" style="color: #fff;">职位搜索</a>
                </li>
                <li>
                    <a href="intro" style="color: #fff;">我的简历</a>
                </li>
                <li>
                    <a href="overtoudi" style="color: #fff;">查看老板回复</a>
                </li>
                <li>
                    <a href="caogao" style="color: #fff;">我的草稿</a>
                </li>
                <li>
                    <a href="selectallresume2" style="color: #fff;">其他简历</a>
                </li>
                <!--<li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    Java <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">jmeter</a>
                    </li>
                    <li>
                        <a href="#">EJB</a>
                    </li>
                    <li>
                        <a href="#">Jasper Report</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">分离的链接</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">另一个分离的链接</a>
                    </li>
                </ul>
            </li>-->
            </ul>

        </div>
    </div>
</nav>
<div style="margin: 0 auto;width: 1000px">
    <%
        List<Resume> list = (List<Resume>) request.getAttribute("resume");
    %>
    <form  method="post">
        <table id="managerTable" class="table table-hover">
            <thead>
            <tr>
                <th>姓名</th>
                <th>自身优势</th>
                <th>期望薪资</th>
            </tr>
            </thead>
            <%
                int pageNum=(Integer) request.getAttribute("page");
                int count = (Integer)request.getAttribute("count");
                if(list.size()>0){
                for (Resume resume : list) {
            %>
            <tbody>
            <tr>
                <td ><input class="text " value="<%=resume.getUname() %>" name="uname" readonly="true"></td>
                <td><input class="text "  value="<%=resume.getAdvantage() %>" name="advantage" readonly="true"></td>
                <td><input class="text " value="<%=resume.getWantmoney() %>" name="wantmoney" readonly="true"></td>
                <td><button type="button" class="btn btn-success" onclick="window.location.href='overresume?uname=<%=resume.getUname()%>&&advantage=<%=resume.getAdvantage() %>&&wantmoney=<%=resume.getWantmoney()%>' ">应用</button></td>
            </tr>
            <%
                }
                }else{
            %>
            <center>
                 <h1>亲，这里还没有你的简历呢</h1>
            </center>
            <%
                }
            %>
            <ul class="gcs-pagination">

                <li><a href="selectallresume2?pageNum=1">首页</a></li>
                <%
                    if(pageNum!=1){
                %>
                <li><a href="selectallresume2?pageNum=<%=pageNum-1%>">上一页</a></li>
                <%
                    }
                %>
                <li><a href="selectallresume2?pageNum=<%=pageNum%>">当前页数:<%=pageNum%></a></li>
                <li><a href="#">总页数:<%=count%></a></li>
                <%
                    if(pageNum!=count){
                %>
                <li><a href="selectallresume2?pageNum=<%=pageNum+1%>">下一页</a></li>
                <%
                    }
                %>
                <li><a href="selectallresume2?pageNum=<%=count%>">>尾页</a></li>

            </ul>

        </table>
    </form>

</div>
</body>
</html>
