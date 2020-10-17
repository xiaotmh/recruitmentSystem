<%@ page import="com.controller.UserController" %>
<%@ page import="com.entity.Usercollection" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<!-- InstanceBegin template="/Templates/my51JobDwt.dwt" codeOutsideHTMLIsLocked="false" -->

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<!-- InstanceBeginEditable name="doctitle" -->
		<title>我的收藏</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
		<script type="text/javascript" src="bootstrap/jquery.min.js"></script>
		<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
		<style type="text/css">
			.div0Intro {
				background-image: url(images/menu-bg1.gif);
				background-repeat: repeat-x;
				width: 1000px;
				height: 33px;
				margin: auto;
				color: #FFF;
				font-size: 12px;
				line-height: 28px;
			}
			
			.span0Intro {
				margin-left: 10px;
				margin-right: 10px;
			}
			
			.div1Intro {
				width: 80%;
				margin-left: 10%;
				height: auto;
				/*border:1px solid #F00;*/
				margin: auto;
			}
			
			.div11Intro {
				float: left;
				width: 19%;
				height: auto;
				border: 1px #CCC dashed;
				background-color: #FFFFF7;
				text-align: left;
			}
			
			.div12Intro {
				float: left;
				width: 78%;
				height: auto;
				/*border:solid 1px #00F;*/
				text-align: left;
				padding-top: 15px;
				margin-left: 30px;
			}
			
			.div111Intro {
				/*	width:180px;*/
				height: 16px;
				/*border:#000 1px dashed;*/
				margin-left: 30px;
				vertical-align: middle;
				/*margin-bottom:10px;
	margin-top:10px;*/
			}
			
			.span11InnerIntro {
				line-height: 16px;
				height: 16px;
				text-align: left;
				font-size: 12px;
				font-weight: bold;
				margin-left: 10px;
			}
			
			.div112Intro {
				width: 180px;
				height: 16px;
				/*border:#000 1px dashed;*/
				margin-left: 30px;
				vertical-align: middle;
				margin-bottom: 8px;
				margin-top: 8px;
			}
			
			.span12InnerIntro {
				color: #414141;
				line-height: 16px;
				height: 16px;
				text-align: left;
				font-size: 12px;
				margin-left: 10px;
			}
			
			.img1Intro {
				margin: 10px;
				cursor: pointer;
			}
			
			.img2Intro {
				margin-top: 10px;
				margin-bottom: 10px;
				margin-left: 0px;
				width: 100%;
			}
			
			.btn1Intro {
				width: 100px;
				height: 33px;
				border: 0px;
				background-image: url(images/login-sm2.gif);
			}
			
			.btn1Intro:hover {
				width: 100px;
				height: 33px;
				border: 0px;
				background-image: url(images/login-sm1.gif);
			}
			
			.star1Intro {
				color: #F60;
				margin-right: 5px;
			}
			
			#form label {
				font-size: 12px;
				color: #414141;
				font-weight: normal;
				text-align: left;
			}
			
			#form label span {
				color: red;
				margin-right: 2px;
			}
			
			#form input {
				height: 30px;
			}
			
			#form select {
				height: 30px;
			}
			
			.tablediv1Intro {
				width: 698px;
				/*border:1px dashed #000;*/
				margin-bottom: 15px;
			}
			
			.tablediv2Intro {
				width: 698px;
				/*border:1px dashed #000;*/
				margin-bottom: 15px;
			}
			
			.tablediv3Intro {
				width: 698px;
				/*border:1px dashed #000;*/
				margin-bottom: 15px;
			}
			
			.table1Intro {
				width: 690px;
				height: 300px;
			}
			
			.table2Intro {
				width: 550px;
				height: 250px;
			}
			
			.table3Intro {
				width: 550px;
				height: 190px;
			}
			
			.textarea1Intro {
				width: 450px;
				height: 45px;
			}
			
			.aIntro {
				color: #414141;
				font-size: 12px;
				text-decoration: none;
			}
			
			.aIntro:hover {
				color: #F60;
				font-size: 12px;
				text-decoration: none;
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
	</head>

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
					<li>
						<a href="collection" style="color: #fff;"><span class="glyphicon glyphicon-star"></span>&nbsp;查看我的收藏</a>
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
								<a href="changeusrpwd" ><span class="glyphicon glyphicon-wrench"></span> 修改密码</a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="changeuserdetail" ><span class="glyphicon glyphicon-credit-card"></span> 修改个人资料</a>
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

		<!--中间内容开始-->
		<div class="container">
			<div class=" row">
				<!--中间内容左边开始-->
				<div class="col-sm-3" style="border-right:1px dotted #d4d3d3;border-radius: 10px;">
					<img src="images/intro-left1.gif" onclick="pop1()" class="img1Intro" />
					<div id="pop0" class="div111Intro"><img src="images/register-arrow.gif" /><span class="span11InnerIntro">我的简历</span></div>
					<img src="images/intro-left2.gif" onclick="pop2()" class="img1Intro" />
					<div id="pop21" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro"><a href="#point1" class="aIntro">基本个人信息</a></span></div>
					<div id="pop22" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro"><a href="#point2" class="aIntro">工作经验</a></span></div>
					<div id="pop23" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro"><a href="#point2" class="aIntro">教育经历</a></span></div>
					<div id="pop24" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro"><a href="#point2" class="aIntro">培训经历</a></span></div>
					<div id="pop25" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro">语言能力</span></div>
					<div id="pop26" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro"><a href="#point2" class="aIntro">求职意向/自我评价</a></span></div>
					<div id="pop27" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro">附加信息</span></div>
					<div id="pop28" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro">证书</span></div>
					<div id="pop29" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro">附件</span></div>
					<img src="images/intro-left3.gif" onclick="pop3()" class="img1Intro" />
					<div id="pop10" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro"><a href="#point3" class="aIntro">高级人才附加信息</a></span></div>
					<div id="pop11" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro"><a href="#point3" class="aIntro">IT技能</a></span></div>
					<div id="pop12" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro"><a href="#point3" class="aIntro">项目经验</a></span></div>
					<img src="images/intro-left3.gif" onclick="pop4()" class="img1Intro" />
					<div id="pop13" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro"><a href="shoucang" class="aIntro">我的收藏</a></span></div>
				</div>
				<!--中间内容左边结束-->
				<%
					List<Usercollection> lists = (List<Usercollection> )request.getAttribute("collection");
				%>
				<!--中间内容右边开始-->
				<div class="col-sm-9">
					<div class="div111Intro"><img src="images/register-arrow.gif" /><span class="span11InnerIntro"><a name="point1">我的收藏</a></span></div>
					<img src="images/border.JPG" class="img2Intro" />
					<%
						int pageNum=(Integer) request.getAttribute("page");
						int count = (Integer)request.getAttribute("count");
						Date date = new Date();
						int uid =0 ;
						for(Usercollection usercollection :lists){
							uid = usercollection.getUid();
					%>
					<div  style="padding:20px 40px;">
						  <div class="row" style="background:#DFF0D8;padding: 20px 20px;border-radius: 10px;">
						    <div class="col-sm-1">
						      <img src="https://static.runoob.com/images/mix/img_avatar.png" class="media-object" style="width:60px">
						    </div>
						    <div class="col-sm-6">
						      <h4 class="media-heading"><%=usercollection.gettreatment()%></h4>
						      <p><%=usercollection.getEnname()%>/<%=usercollection.getWorkadress()%>/<%=usercollection.getMoney()%></p>
						    </div>
						     <div class="col-sm-4">
						     	<p><small>收藏时间： <%=date.getHours()%>:<%=date.getMinutes()%>:<%=date.getSeconds()%></small></p>
								<a class="btn-link " href="deleteconllection?rmid=<%=usercollection.getRmid()%>">取消收藏</a>
								<a class="btn-sm btn-warning toudi" href="rcmessagemore?rmid=<%=usercollection.getRmid()%>">投递简历</a>
							</div>
						  </div>
						<br>
						<br>
					</div>
					<%
						}
					%>
					<ul class="gcs-pagination">

						<li><a href="collection?pageNum=1&&uid=<%= uid%>">首页</a></li>
						<%
							if(pageNum!=1){
						%>
						<li><a href="collection?pageNum=<%=pageNum-1%>&&uid=<%= uid%>">上一页</a></li>
						<%
							}
						%>
						<li><a href="collection?pageNum=<%=pageNum%>&&uid=<%= uid%>">当前页数:<%=pageNum%></a></li>
						<li><a href="#">总页数:<%=count%></a></li>
						<%
							if(pageNum!=count){
						%>
						<li><a href="collection?pageNum=<%=pageNum+1%>&&uid=<%=uid%>">下一页</a></li>
						<%
							}
						%>
						<li><a href="collection?pageNum=<%=count%>&&uid=<%= uid%>">>尾页</a></li>

					</ul>
				</div>
				<!--中间内容右边结束-->
			</div>
		</div>
		<!--中间内容结束-->

		<!-- InstanceEndEditable -->
		</div>
		<div class="divdwt" style="clear: both;display: none;">
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
			/*2222222222222222222222222222222222222级联样式结束22222222222222222222222222222222222222*/
			var pop0 = document.getElementById("pop0");
			var pop21 = document.getElementById("pop21");
			var pop22 = document.getElementById("pop22");
			var pop23 = document.getElementById("pop23");
			var pop24 = document.getElementById("pop24");
			var pop25 = document.getElementById("pop25");
			var pop26 = document.getElementById("pop26");
			var pop27 = document.getElementById("pop27");
			var pop28 = document.getElementById("pop28");
			var pop29 = document.getElementById("pop29");
			var pop10 = document.getElementById("pop10");
			var pop11 = document.getElementById("pop11");
			var pop12 = document.getElementById("pop12");

			//pop0.style.display="none";
			//pop21.style.display="none";
			//pop22.style.display="none";
			//pop23.style.display="none";
			//pop24.style.display="none";
			//pop25.style.display="none";
			//pop26.style.display="none";
			//pop27.style.display="none";
			//pop28.style.display="none";
			//pop29.style.display="none";
			//pop10.style.display="none";
			//pop11.style.display="none";
			//pop12.style.display="none";

			function pop1() {

				if(pop0.style.display == "none") {
					pop0.style.display = "block";
				} else {
					pop0.style.display = "none";
				}
			}

			function pop2() {

				if(pop21.style.display == "block") {
					pop21.style.display = "none";
					pop22.style.display = "none";
					pop23.style.display = "none";
					pop24.style.display = "none";
					pop25.style.display = "none";
					pop26.style.display = "none";
					pop27.style.display = "none";
					pop28.style.display = "none";
					pop29.style.display = "none";
				} else {
					pop21.style.display = "block";
					pop22.style.display = "block";
					pop23.style.display = "block";
					pop24.style.display = "block";
					pop25.style.display = "block";
					pop26.style.display = "block";
					pop27.style.display = "block";
					pop28.style.display = "block";
					pop29.style.display = "block";
				}

			}

			function pop3() {

				if(pop10.style.display == "block") {
					pop10.style.display = "none";
					pop11.style.display = "none";
					pop12.style.display = "none";
				} else {
					pop10.style.display = "block";
					pop11.style.display = "block";
					pop12.style.display = "block";
				}

			}

			function pop4() {

				if(pop13.style.display == "block") {
					pop13.style.display = "none";

				} else {
					pop13.style.display = "block";

				}

			}
			
			$('.toudi').click(function(){
				$('#choose_intro').modal('show');
			})
		</script>
		<!-- InstanceEndEditable -->
		<!-- 模态框（Modal） -->
<div class="modal fade" id="choose_intro" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">请选择您的简历</h4>
            </div>
            <div class="modal-body">
            	<table class="table table-striped">
   
				  <tbody>
				    <tr>
				      <td><input type="radio"></td>
				      <td>简历1</td>
				      <td>创建时间 20-20-20 00:00:00</td>
				    </tr>
				     <tr>
				      <td><input type="radio"></td>
				      <td>简历2</td>
				      <td>创建时间 20-20-20 00:00:00</td>
				    </tr>
				      
				     
				  </tbody>
				</table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">投递</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
	</body>
	<!-- InstanceEnd -->

</html>