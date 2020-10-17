<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%@ page import="com.entity.Rcmessage" %>
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
    List<Rcmessage> rcmessages  = (List<Rcmessage>)request.getAttribute("lists");
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
                <a href="/adminlogin2"><h4><strong>拉钩钩网后台管理系统 </strong></h4></a>
            </div>
            <div class="lyear-layout-sidebar-scroll">
                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <li class="nav-item active"> <a href="#"><i class="mdi mdi-home"></i> 欢迎来到拉钩钩网后台管理系统</a> </li>
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
                                <li> <a href="alluser2">用户详情</a> </li>
                                <li> <a href="alletuser2">企业用户详情</a> </li>
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
                                <span>管理员 <span class="caret"></span></span>
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
                            <div class="card-header"><h4>管理员列表</h4></div>
                            <div class="card-body">
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addManager">
                                    <i class="mdi mdi-account-plus"></i>&nbsp;<strong>新增招聘信息</strong>
                                </button>
                                <br>
                                <form  method="post">
                                <table id="managerTable" class="table table-hover" >
                                    <thead>
                                    <tr>
                                        <th>企业编号</th>
                                        <th>企业名称</th>
                                        <th>工作类型</th>
                                        <th>工作性质</th>
                                        <th>最低薪资</th>
                                        <th>最高薪资</th>
                                        <th>工作城市</th>
                                        <th>工作经验</th>
                                        <th>学历</th>
                                        <th>职业要求</th>
                                        <th>详细地址</th>
                                        <th >操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                          for(int i=0;i<rcmessages.size();i++){
                                    %>
                                    <tr class="success">
                                        <td ><input class="text " value="<%=rcmessages.get(i).getEnid() %>" name="enid"  id="enid<%=i%>" style="width:60px;" ></td>
                                        <td ><input class="text " value="<%=rcmessages.get(i).getEnname() %>" name="enname" id="enname<%=i%>" style="width:80px;" ></td>
                                        <td ><input class="text " value="<%=rcmessages.get(i).getWtype() %>" name="wtype" id="wtype<%=i%>" style="width:40px;"></td>
                                        <td ><input class="text " value="<%=rcmessages.get(i).getWork() %>" name="work" id="work<%=i%>"     style="width:30px;"></td>
                                        <td ><input class="number" value="<%=rcmessages.get(i).getMinmoney() %>" name="minmoney"  id="minmoney<%=i%>"  style="width:30px;"></td>
                                        <td ><input class="number" value="<%=rcmessages.get(i).getMaxmoney() %>" name="maxmoney" id="maxmoney<%=i%>"  style="width:30px;"></td>
                                        <td ><input class="text " value="<%=rcmessages.get(i).getWorkcity() %>" name="workcity"  id="workcity<%=i%>" style="width:80px;"></td>
                                        <td ><input class="text " value="<%=rcmessages.get(i).getExperience() %>" name="experience"  id="experience<%=i%>" style="width:80px;"></td>
                                        <td ><input class="text " value="<%=rcmessages.get(i).getEducation() %>" name="education" id="education<%=i%>" style="width:80px;"></td>
                                        <td ><input class="text " value="<%=rcmessages.get(i).getMoremessage() %>" name="moremessage"  id="moremessage<%=i%>" style="width:80px;"></td>
                                        <td ><input class="text " value="<%=rcmessages.get(i).getWorkaddress() %>" name="workaddress" id="workaddress<%=i%>" style="width:80px;"></td>
                                        <td>
                                        <button type="button" class="btn btn-warning" onclick="window.location.href='rcmessageupdate?rmid=<%=rcmessages.get(i).getRmid() %>&&enid='+$('#enid<%=i%>').val()+'&&enname='+$('#enname<%=i%>').val() +'&&wtype='+$('#wtype<%=i%>').val()+
                                                '&&work='+$('#work<%=i%>').val()+'&&minmoney='+$('#minmoney<%=i%>').val()+'&&maxmoney='+$('#maxmoney<%=i%>').val()+'&&workcity='+$('#workcity<%=i%>').val()+
                                                '&&experience='+$('#experience<%=i%>').val()+'&&education='+$('#education<%=i%>').val()+'&&moremessage='+$('#moremessage<%=i%>').val()+'&&workaddress='+$('#workaddress<%=i%>').val() " >提交修改</button>
                                        <button type="button" class="btn btn-danger" onclick="window.location.href='rcmessagedelete?rmid=<%=rcmessages.get(i).getRmid()%>'">删除</button>
                                        </td>
                                    </tbody>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </table>
                                     <ul class="gcs-pagination">

                                        <li><a href="allrcmessage2?pageNum=1">首页</a></li>
                                        <%
                                            if(pageNum!=1){
                                        %>
                                        <li><a href="allrcmessage2?pageNum=<%=pageNum-1%>">上一页</a></li>
                                        <%
                                            }
                                        %>
                                        <li><a href="allrcmessage2?pageNum=<%=pageNum%>">当前页数:<%=pageNum%></a></li>
                                        <li><a href="#">总页数:<%=count%></a></li>
                                        <%
                                            if(pageNum!=count){
                                        %>
                                        <li><a href="allrcmessage2?pageNum=<%=pageNum+1%>">下一页</a></li>
                                        <%
                                            }
                                        %>
                                        <li><a href="allrcmessage2?pageNum=<%=count%>">>尾页</a></li>

                                    </ul>
                                </form>
                                <!--  Modal for add manager -->
                                <div class="modal fade" id="addManager" tabindex="-1" role="dialog" aria-labelledby="addManager">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="exampleModalLabel"><i class="mdi mdi-account-plus"></i>&nbsp;<strong>新增招聘信息</strong></h4>
                                            </div>
                                            <div class="modal-body">
                                                <form id="newManager" action="findwantjob2" method="post">
                                                    <div class="form-group">
                                                        <label  class="control-label">编号</label>
                                                        <input type="text" class="form-control" name="rmid" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">企业编号</label>
                                                        <input type="text" class="form-control" name="enid" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">企业名称</label>
                                                        <input type="text" class="form-control" name="enname" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">工作类型</label>
                                                        <input type="text" class="form-control" name="wtype" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label">性质</label>
                                                        <select id="projectPorperty" name="work">
                                                            <option >实习</option>
                                                            <option >全职</option>
                                                            <option >兼职</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">最低薪资</label>
                                                        <input type="text" class="form-control" name="minmoney" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">最高薪资</label>
                                                        <input type="text" class="form-control" name="maxmoney" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">工作城市</label>
                                                        <input type="text" class="form-control" name="workcity" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">工作经验</label>
                                                        <input type="text" class="form-control" name="experience" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">学历要求</label>
                                                        <input type="text" class="form-control" name="education" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">职业要求</label>
                                                        <input type="text" class="form-control" name="moremessage" >
                                                    </div>
                                                    <div class="form-group">
                                                        <label  class="control-label">详细地址</label>
                                                        <input type="text" class="form-control" name="workaddress" >
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