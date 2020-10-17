<%@ page import="com.entity.Resume" %>
<%@ page import="com.entity.Rcmessage" %>
<%@ page import="com.entity.UserDetail" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml"
>
<!-- InstanceBegin template="/Templates/my51JobDwt.dwt" codeOutsideHTMLIsLocked="false" -->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!-- InstanceBeginEditable name="doctitle" -->
	<title>查看招聘信息收到的简历</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />

	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
	<%--Integer uid, String uname, String advantage, Integer wantmoney, Integer status, Integer enid,String faild--%>
	<script type="text/javascript">
		function no() {
			var a=$("#faild").val();
			if(a==null||a==""){
				alert("请填写拒绝理由！")
			}else{
				window.location.href="resive?uid="+$('#uid').val()+"&uname="+$('#uname').val()+"&advantage="+$('#advantage').val()+
				"&wantmoney="+$('#wantmoney').val()+ "&faild="+$('#faild').val()+ "&enid="+$('#enid').val();
			}
		}
		function yes() {
			var a="";

				window.location.href="resive?uid="+$('#uid').val()+"&uname="+$('#uname').val()+"&advantage="+$('#advantage').val()+
						"&wantmoney="+$('#wantmoney').val()+ "&faild="+$('#faild').val();

		}
	</script>
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

		#form label{
			font-size: 12px;
			color: #414141;
			font-weight: normal;
			text-align: left;
		}
		#form label span{
			color:red;
			margin-right: 2px;
		}
		#form input{
			height: 30px;
		}
		#form select{
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
					<a href="allrcmessage" style="color: #fff;"><span class="glyphicon glyphicon-home"></span>&nbsp;查看已发布的招聘信息</a>
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



<!--中间内容开始-->
<div class="container">
	<div class=" row">
		<!--中间内容左边开始-->
		<div class="col-sm-3" style="border-right:1px dotted #d4d3d3;border-radius: 10px;">

			<div id="pop0" class="div111Intro"><img src="images/register-arrow.gif" /><span class="span11InnerIntro">收到的简历信息：</span></div>

			<div id="pop21" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro">基本个人信息</span></div>

			<div id="pop23" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro">姓名</span></div>
			<div id="pop24" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro">优势</span></div>
			<div id="pop25" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro">期望薪资</span></div>
			<div id="pop26" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro">年龄</span></div>
			<div id="pop22" class="div112Intro"><img src="images/intro-1.gif" align="middle" /><span class="span12InnerIntro">性别</span></div>
		</div>
		<!--中间内容左边结束-->
		<!--中间内容右边开始-->

		<%
			Resume resume= (Resume) session.getAttribute("resume");
			UserDetail ud=(UserDetail) session.getAttribute("userdetail");
			if(resume!=null&&ud!=null){

		%>
		<div class="col-sm-9">

			<form class="form-horizontal" role="form" id="form" action="resive" name="myfrom" >
				<div class="div111Intro"><img src="images/register-arrow.gif" /><span class="span11InnerIntro"><a name="point1">用户编号为<%=resume.getUid()%>的用户“<%=resume.getUname()%>”发来的简历</a></span></div>
				<img src="images/border.JPG" class="img2Intro" />
			<div class="form-group" style="display: none;">
					<label  class="col-sm-2 control-label"><span>*</span>账号id:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" required="required" maxlength="10" name="uid"  id="uid" value="<%=resume.getUid()%>" readonly="readonly">
					</div>
				</div>

				<div class="form-group">
					<label  class="col-sm-2 control-label"><span>*</span>姓名:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" required="required" maxlength="10" name="uname" id="uname" value="<%=resume.getUname()%>" readonly="readonly">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label"><span>*</span>自身优势:</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" required="required" maxlength="10" name="advantage" id="advantage" value="<%=resume.getAdvantage()%>" readonly="readonly">
					</div>

				</div>

				<div class="form-group">
					<label  class="col-sm-2 control-label"><span>*</span>期望薪资:</label>
					<div class="col-sm-3">
						<input type="number" class="form-control" required="required" maxlength="10" name="wantmoney" id="wantmoney" value="<%=resume.getWantmoney()%>" readonly="readonly">
					</div>
				</div>

                <div class="form-group" style="display: none;">
                    <label  class="col-sm-2 control-label"><span>*</span>所投企业编号</label>
                    <div class="col-sm-3">
                        <input type="number" class="form-control" required="required" maxlength="10" name="enid" id="enid" value="<%=resume.getEnid()%>" readonly="readonly">
                    </div>
                </div>

				<%--//////////////////////////////--%>

				<div class="form-group">
					<label  class="col-sm-2 control-label"><span>*</span>年龄:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" required="required" maxlength="20"  value="<%=ud.getAge()%>" readonly="readonly">
					</div>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label"><span>*</span>性别:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" required="required" maxlength="20" value="<%=ud.getGender()%>" readonly="readonly">
					</div>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label"><span>*</span>邮箱:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" required="required" maxlength="20"  value="<%=ud.getEmail()%>" readonly="readonly">
					</div>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label"><span>*</span>电话:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" required="required" maxlength="20"  value="<%=ud.getPhone()%>" readonly="readonly">
					</div>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label"><span>*</span>QQ:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" required="required" maxlength="20"  value="<%=ud.getQq()%>" readonly="readonly">
					</div>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label"><span>*</span>专业:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" required="required" maxlength="20" value="<%=ud.getMajor()%>" readonly="readonly">
					</div>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label"><span>*</span>班级名:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" required="required" maxlength="20" value="<%=ud.getClassname()%>" readonly="readonly">
					</div>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label"><span>*</span>教育背景:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" required="required" maxlength="20" value="<%=ud.getEdubackground()%>" readonly="readonly">
					</div>
				</div>













				<%--///////////////////////////--%>


				<div class="form-group">
					<label  class="col-sm-2 control-label"><span>*</span>拒绝理由:</label>
					<div class="col-sm-3">
                        <textarea type="text" class="form-control"  maxlength="10" name="faild" id="faild" placeholder="如果拒绝，请告知理由。。。"></textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-success">邀请面试</button>
						<button type="button" class="btn btn-danger" onclick="no()">拒绝</button>
					</div>
				</div>
			</form>
		</div>
		<%
		}
		%>
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


	</script>
	<!-- InstanceEndEditable -->
</body>

<!-- InstanceEnd -->

</html>