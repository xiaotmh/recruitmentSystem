
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
	<!-- InstanceBegin template="/Templates/my51JobDwt.dwt" codeOutsideHTMLIsLocked="false" -->

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<!-- InstanceBeginEditable name="doctitle" -->
		<title>用户注册页面</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
		<script type="text/javascript" src="bootstrap/jquery.min.js"></script>
		<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>

		<style type="text/css">
			.menuReg {
				background-image: url(images/menu-bg1.gif);
				width: 1000px;
				height: 33px;
				margin: auto;
				background-repeat: repeat-x;
				font-size: 12px;
				color: #FFF;
				line-height: 28px;
			}
			
			.spanmenuReg {
				margin-left: 10px;
				margin-right: 10px;
			}
			
			.cenReg {
				width: 860px;
				height: 320px;
				margin: auto;
				margin-top: 30px;
				/*	border:1px solid #0F0;*/
				margin-bottom: 50px;
				background-image: url(images/reg_ext.png);
				background-size: 100% 100%;
			}
			
			.cen3Reg {
				width: 98%;
				height: 85%;
				float: left;
				font-size: 12px;
				color: #414141;
				font-family: "宋体";
			}
			
			.btnDivReg {
				width: 127px;
				height: 39px;
				margin: auto;
				margin-top: 20px;
				background-color: #0FF;
			}
			
			.tableReg {
				width: 600px;
				height: 150px;
				margin-left: 40px;
			}
			
			.crowReg {
				width: 760px;
				height: 50px;
				/*border:1px solid #0F0;*/
				line-height: 50px;
				margin-left: 50px;
				text-align: left;
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
					<ul class="nav navbar-nav">
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
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="userlogin" style="color: #fff;"><span class="glyphicon glyphicon-log-in"></span> 登录</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!--中间内容开始-->
		<div class="cenReg" id="reg">
			<div style="height: 40px;"></div>
			<div class="cen3Reg">
				<div class="crowReg">
					<span style="font-size:14px; color:#666666; font-weight:bold; font-family:'宋体';">会员信息：</span><img src="images/dot_line_1.gif" align="middle" id="line1"/>
				</div>
				<div class="tableReg">
					<form id="frm" action="/userinsert2">
						<div class="row">
							<div class="col-sm-6"> <img src="images/register-arrow.gif" style="margin-right: 10px;" />E-mail:&nbsp;&nbsp;<input type="text" id="email" style="width:150px;" /></div>
							<div class="col-sm-6">
								<a href="javascript:validateEmail()"><img src="images/register-check.gif" style="border:0px" /></a>请填写常用电子邮件</div>
						</div>
						<div class="row">
							<div class="col-sm-6"> <img src="images/register-arrow.gif" style="margin-right: 10px;" />会员名:&nbsp;&nbsp;<input type="text" id="userName" style="width:150px;"  name="uid"/></div>
							<div class="col-sm-6">
								<a href="javascript:validateUserName()"><img src="images/register-check.gif" style="border:0px;" /></a>会员名须以字母开头，至少6位</div>
						</div>
						<div class="row">
							<div class="col-sm-6"> <img src="images/register-arrow.gif" style="margin-right: 10px;" />密码:&nbsp;&nbsp;&nbsp;<input type="password" id="pwd1" onblur="validatePwd1()" name="upwd" style="width:150px" /></div>
							<div class="col-sm-6"> <span id="pwd1InnerHTML" align="left" style="padding-left:13px;" colspan="2">
                    	密码设置至少6位
                    </span></div>
						</div>
						<div class="row">
							<div class="col-sm-6"> <img src="images/register-arrow.gif" style="margin-right: 10px;" />重复密码:&nbsp;<input type="password" id="pwd2" onblur="validatePwd2()" style="width:150px" /></div>
							<div class="col-sm-6"> <span id="pwd2InnerHTML" colspan="2" align="left" style="padding-left:13px">
                    
                        </span> </div>
						</div>
						<br><img src="images/dot_line_2.gif" id="line2"/><br><br>
						<button type="submit" class="btn btn-success" >注册</button>
					</form>
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
		var w=$(window).width();
	if(w<860){
		$('#reg').width("100%");
		$('#footer').hide();
		$('#line1').hide();
		$('#line2').hide();
	}
	
			var submBtn = document.getElementById("subBtn");

			var flag1 = false; //邮箱验证是否成功的标志
			var flag2 = false; //用户名验证是否成功的标志
			var flag3 = false; //第一次密码验证是否成功的标志
			var flag4 = false; //第二次密码验证是否成功的标志

			function changepic() {
				submBtn.style.backgroundImage = "url(images/register-sm2.gif)";
			}

			function resetpic() {
				submBtn.style.backgroundImage = "url(images/register-sm1.gif)";
			}

			function submitData() {

				if(flag1 && falg2 && flag3 && flag4) {
					var frm = document.getElementById("frm");
					frm.submit();
				} else {
					alert("注册失败");
				}

			}

			var rightPwd1 = document.getElementById("rightPwd1");
			var wrongPwd1 = document.getElementById("wrongPwd1");
			var nullPwd1 = document.getElementById("nullPwd1");

			rightPwd1.style.left = (document.body.clientWidth - 250) / 2 + 45;

			wrongPwd1.style.left = (document.body.clientWidth - 250) / 2 + 45;

			nullPwd1.style.left = (document.body.clientWidth - 250) / 2 + 45;

			var rightPwd2 = document.getElementById("rightPwd2");
			var wrongPwd2 = document.getElementById("wrongPwd2");
			var nullPwd2 = document.getElementById("nullPwd2");

			rightPwd2.style.left = (document.body.clientWidth - 250) / 2 + 45;

			wrongPwd2.style.left = (document.body.clientWidth - 250) / 2 + 45;

			nullPwd2.style.left = (document.body.clientWidth - 250) / 2 + 45;

			function setPositions() {
				rightPwd1.style.left = (document.body.clientWidth - 250) / 2 + 45;

				wrongPwd1.style.left = (document.body.clientWidth - 250) / 2 + 45;

				nullPwd1.style.left = (document.body.clientWidth - 250) / 2 + 45;

				rightPwd2.style.left = (document.body.clientWidth - 250) / 2 + 45;

				wrongPwd2.style.left = (document.body.clientWidth - 250) / 2 + 45;

				nullPwd2.style.left = (document.body.clientWidth - 250) / 2 + 45;
			}

			onresize = setPositions;

			function validatePwd1() {
				var pwd1InnerHTML = document.getElementById("pwd1InnerHTML");

				var rule = /^.{6,}$/;
				var value = document.getElementById("pwd1").value;

				if(value == "") {
					pwd1InnerHTML.innerHTML = "<font color='red' style='font-size:12px;'>请输入密码</font>";
					return;
				}

				if(rule.test(value)) {
					pwd1InnerHTML.innerHTML = "<font color='#FF840D' style='font-size:12px;'>您输入的密码是合法的！</font>";
				} else {
					pwd1InnerHTML.innerHTML = "<font color='red' style='font-size:12px;'>请输入不少于6位的密码！</font>";
				}
			}

			function validatePwd2() {
				var value = document.getElementById("pwd2").value;
				var value0 = document.getElementById("pwd1").value;
				var pwd2InnerHTML = document.getElementById("pwd2InnerHTML");

				if(value == "") {
					pwd2InnerHTML.innerHTML = "<font color='red' style='font-size:12px;'>请输入确认密码！</font>";
					return;
				}

				if(value != value0) {
					pwd2InnerHTML.innerHTML = "<font color='red' style='font-size:12px;'>两次输入的密码不一致，请重新输入！</font>";
					return;
				}

				pwd2InnerHTML.innerHTML = "<font color='#FF840D' style='font-size:12px;'>请牢记您输入的密码！</font>";
			}

			function validateUserName() {

				var rule = /^[a-zA-Z]\w{5,}$/;

				var userName = document.getElementById("userName").value;
				if(userName == "") {
					alert("请输入会员名");
				} else {
					if(true) {//rule.test(userName)||
						alert("okay");
						//window.showModalDialog("checkuser.html", "_blank", "dialogWidth=250px; dialogHeight=100px; status=no;");
					} else {
						alert("请按规则输入会员名");
					}
				}
			}

			function validateEmail() {
				var email = document.getElementById("email").value;
				if(email == "") {
					alert("邮箱不能为空");
					return;
				}

				var rule = /^\w+@\w+(\.com)+(\.cn)?$/;

				if(rule.test(email)) {
					window.showModalDialog("checkemail.html", "_blank", "dialogWidth=250px; dialogHeight=100px; status=no;");
				} else {
					alert("请输入正确的邮箱地址");
				}

			}
			
			
			
		</script>
		<!-- InstanceEndEditable -->
	</body>
	<!-- InstanceEnd -->

</html>