<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%@ page import="com.entity.Rcmessage" %>
<%@ page import="com.entity.Resume" %>
<%@ page import="com.entity.User" %>
<%@ page import="com.entity.EtuserDetail" %>
<!DOCTYPE html>
<html lang="zh">
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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>拉钩钩网后台管理系统</title>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
    <meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
    <meta name="author" content="yinqi">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/materialdesignicons.min.css" rel="stylesheet">
    <link href="css/style.min.css" rel="stylesheet">
</head>
    <%
    List<EtuserDetail> users  = (List<EtuserDetail>)request.getAttribute("lists");
       int pageNum=(Integer) request.getAttribute("page");
       int count = (Integer)request.getAttribute("count");

%>
<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">

            <!-- logo -->
            <div id="logo" class="sidebar-header">
                <a href="/adminlogin2"><h4><strong>后台 </strong></h4></a>
            </div>
            <div class="lyear-layout-sidebar-scroll">
                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <li class="nav-item active"> <a href="main.jsp"><i class="mdi mdi-home"></i> 欢迎来到后台管理系统</a> </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-palette"></i> 招聘信息管理</a>
                            <ul class="nav nav-subnav">
                                <li> <a href="/allrcmessage2">招聘信息查询</a> </li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-file-outline"></i>简历信息管理</a>
                            <ul class="nav nav-subnav">
                                <li> <a href="allresume2">简历信息查询</a> </li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-file-outline"></i>用户管理</a>
                            <ul class="nav nav-subnav">
                                <li> <a href="alluser2">用户密码修改</a> </li>
                                <li> <a href="alletuser2">企业用户密码修改</a> </li>
                                <li> <a href="alluserdetail2">用户详细信息修改</a> </li>
                                <li> <a href="alletuserdetail2">企业用户详细信息修改</a> </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <div class="sidebar-footer">
                    <p class="copyright">Copyright &copy; 2019. <a target="blank" href="http://lyear.itshubao.com">IT书包</a> All rights reserved.</p>
                </div>
            </div>

        </aside>
        <!--End 左侧导航-->

        <!--头部信息-->
        <header class="lyear-layout-header">

            <nav class="navbar navbar-default">
                <div class="topbar">

                    <div class="topbar-left">
                        <div class="lyear-aside-toggler">
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title"> 后台首页 </span>
                    </div>

                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="javascript:void(0)" data-toggle="dropdown">
                                <img class="img-avatar img-avatar-48 m-r-10" src="images/users/avatar.jpg" alt="笔下光年" />
                                <span>管理员<span class="caret"></span></span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li> <a href="adminlogin"><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                        <li class="dropdown dropdown-skin">
                            <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
                            <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
                                <li class="drop-title"><p>主题</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="sitetheme" value="default" id="sitetheme1" checked>
                    <label for="sitetheme1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sitetheme" value="dark" id="sitetheme2">
                    <label for="sitetheme2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sitetheme" value="translucent" id="sitetheme3">
                    <label for="sitetheme3"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>LOGO</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="logobg" value="default" id="logobg1" checked>
                    <label for="logobg1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logobg" value="color2" id="logobg2">
                    <label for="logobg2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logobg" value="color3" id="logobg3">
                    <label for="logobg3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logobg" value="color4" id="logobg4">
                    <label for="logobg4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logobg" value="color5" id="logobg5">
                    <label for="logobg5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logobg" value="color6" id="logobg6">
                    <label for="logobg6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logobg" value="color7" id="logobg7">
                    <label for="logobg7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logobg" value="color8" id="logobg8">
                    <label for="logobg8"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>头部</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="headerbg" value="default" id="headerbg1" checked>
                    <label for="headerbg1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="headerbg" value="color2" id="headerbg2">
                    <label for="headerbg2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="headerbg" value="color3" id="headerbg3">
                    <label for="headerbg3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="headerbg" value="color4" id="headerbg4">
                    <label for="headerbg4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="headerbg" value="color5" id="headerbg5">
                    <label for="headerbg5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="headerbg" value="color6" id="headerbg6">
                    <label for="headerbg6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="headerbg" value="color7" id="headerbg7">
                    <label for="headerbg7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="headerbg" value="color8" id="headerbg8">
                    <label for="headerbg8"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>侧边栏</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="sidebarbg" value="default" id="sidebarbg1" checked>
                    <label for="sidebarbg1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebarbg" value="color2" id="sidebarbg2">
                    <label for="sidebarbg2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebarbg" value="color3" id="sidebarbg3">
                    <label for="sidebarbg3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebarbg" value="color4" id="sidebarbg4">
                    <label for="sidebarbg4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebarbg" value="color5" id="sidebarbg5">
                    <label for="sidebarbg5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebarbg" value="color6" id="sidebarbg6">
                    <label for="sidebarbg6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebarbg" value="color7" id="sidebarbg7">
                    <label for="sidebarbg7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebarbg" value="color8" id="sidebarbg8">
                    <label for="sidebarbg8"></label>
                  </span>
                                </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                    </ul>

                </div>
            </nav>

        </header>
        <!--End 头部信息-->

        <!--页面主要内容-->
        <!--页面主要内容-->
        <main class="lyear-layout-content">

            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header"><h4>企业信息列表</h4></div>
                            <div class="card-body">
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addManager">
                                    <i class="mdi mdi-account-plus"></i>&nbsp;<strong>新增企业信息</strong>
                                </button>
                                <br>
                                <form  method="post">
                                    <table id="managerTable" class="table table-hover" >
                                        <thead>
                                        <tr>
                                            <th>企业编号</th>
                                            <th>企业名</th>
                                            <th>地址</th>
                                            <th>电话</th>
                                            <th>企业网站</th>
                                            <th>企业描述信息</th>
                                            <th>企业联系url</th>
                                            <th >操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <%
                                            for(int i=0;i<users.size();i++){
                                        %>
                                        <tr class="warning">
                                            <td ><input class="text " value="<%=users.get(i).getBid() %>" id="a<%=i%>" style="width:60px;" readonly="true"></td>
                                            <td ><input class="text " value="<%=users.get(i).getRealname() %>"  id="b<%=i%>" style="width:80px;" ></td>
                                            <td ><input class="text " value="<%=users.get(i).getAddress() %>"  id="c<%=i%>" style="width:120px;" ></td>
                                            <td ><input class="text " value="<%=users.get(i).getPhone() %>"  id="d<%=i%>" style="width:80px;" ></td>
                                            <td ><input class="text " value="<%=users.get(i).getWebsite() %>"  id="e<%=i%>" style="width:120px;" ></td>
                                            <td ><input class="text " value="<%=users.get(i).getInformation() %>"  id="f<%=i%>" style="width:200px;" ></td>
                                            <td ><input class="text " value="<%=users.get(i).getContact() %>"  id="g<%=i%>" style="width:200px;" ></td>
                                            <td>
                                                <button type="button" class="btn btn-warning" onclick="window.location.href='etuserdetailupdate?bid='+$('#a<%=i%>').val()+'&&realname='
                                                        +$('#b<%=i%>').val()+'&&address='+$('#c<%=i%>').val()
                                                        + '&&phone='+$('#d<%=i%>').val()+'&&website='+$('#e<%=i%>').val()+'&&information='+$('#f<%=i%>').val()+'&&contact='+$('#g<%=i%>').val()" >提交修改</button>
                                                <button type="button" class="btn btn-danger" onclick="window.location.href='etuserdetaildelete?bid='+$('#a<%=i%>').val()">删除</button>




                                                </td>
                                                <%
                                            }
                                        %>
                                        </tbody>
                                        </tr>

                                    </table>
                                    <ul class="gcs-pagination">

                                        <li><a href="alletuserdetail2?pageNum=1">首页</a></li>
                                        <%
                                            if(pageNum!=1){
                                        %>
                                        <li><a href="alletuserdetail2?pageNum=<%=pageNum-1%>">上一页</a></li>
                                        <%
                                            }
                                        %>
                                        <li><a href="alletuserdetail2?pageNum=<%=pageNum%>">当前页数:<%=pageNum%></a></li>
                                        <li><a href="#">总页数:<%=count%></a></li>
                                        <%
                                            if(pageNum!=count){
                                        %>
                                        <li><a href="alletuserdetail2?pageNum=<%=pageNum+1%>">下一页</a></li>
                                        <%
                                            }
                                        %>
                                        <li><a href="alletuser2?pageNum=<%=count%>">>尾页</a></li>

                                    </ul>
                                </form>
                                <!--  Modal for add manager -->
                                <div class="modal fade" id="addManager" tabindex="-1" role="dialog" aria-labelledby="addManager">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="exampleModalLabel"><i class="mdi mdi-account-plus"></i>&nbsp;<strong>新增企业信息</strong></h4>
                                            </div>
                                            <div class="modal-body">
                                                <form id="newManager" action="etuserdetailinsert" method="get">
                                                    <div class="form-group">
                                                        <label  class="control-label">企业账号</label>
                                                        <input type="text" class="form-control" name="bid" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">企业名</label>
                                                        <input type="text" class="form-control" name="realname" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">企业地址</label>
                                                        <input type="text" class="form-control" name="address" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">电话</label>
                                                        <input type="text" class="form-control" name="phone" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">企业网站</label>
                                                        <input type="text" class="form-control" name="website" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">企业详细信息</label>
                                                        <input type="text" class="form-control" name="information" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">企业联系url</label>
                                                        <input type="text" class="form-control" name="contact" >
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                        <button type="sumbit" class="btn btn-primary" >确定</button>
                                                    </div>
                                                </form>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!--  modal for check permissions -->
                                <div class="modal fade" id="checkManager" tabindex="-1" role="dialog" aria-labelledby="checkManager">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title">&nbsp;<strong>查看权限</strong></h4>
                                            </div>
                                            <div class="modal-body">
                                                <form>
                                                    <div class="form-group">
                                                        <label for="recipient-name" class="control-label">收件人：</label>
                                                        <input type="text" class="form-control" id="recipient-name">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="message-text" class="control-label">消息内容：</label>
                                                        <textarea class="form-control" id="message-text"></textarea>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                <button type="button" class="btn btn-primary">发送消息</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>

    </div>

    </main>
    <!--End 页面主要内容-->
</div>
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="js/main.min.js"></script>
<script type="text/javascript" src="js/manager/manager.js"></script>

</body>
