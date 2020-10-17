<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >

<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>拉钩钩 登录</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
	<!--     Fonts and icons     -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
	<!-- CSS Files -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="assets/css/demo.css" rel="stylesheet" />
	<!-- Canonical SEO -->
	<link rel="canonical" href="" />
	<!--  Social tags      -->
	<meta name="keywords" content="">
	<meta name="description" content="">
	


</head>

<body class="login-page sidebar-collapse">
<%
	session.setAttribute("user",0);
%>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg bg-primary fixed-top navbar-transparent " color-on-scroll="400">
	<div class="container">
		<div class="dropdown button-dropdown">
			<a href="#pablo" class="dropdown-toggle" id="navbarDropdown" data-toggle="dropdown">
				<span class="button-bar"></span>
				<span class="button-bar"></span>
				<span class="button-bar"></span>
			</a>

		</div>
		<div class="navbar-translate">
			<a class="navbar-brand" href="#" rel="tooltip" data-placement="bottom">
				拉钩钩————专注于企业与在校学生的就业沟通
			</a>
			<button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-bar bar1"></span>
				<span class="navbar-toggler-bar bar2"></span>
				<span class="navbar-toggler-bar bar3"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse justify-content-end" data-nav-image="assets/img/blurred-image-1.jpg">
			<ul class="navbar-nav">
				<li class="nav-item">

					<a class="nav-link" href="#">回到主页</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#/issues">企业用户登录</a>
				</li>
				<li class="nav-item">


					<p class="d-lg-none d-xl-none">企业用户注册</p>
					</a>
				</li>
				<li class="nav-item">


					<p class="d-lg-none d-xl-none">后台管理系统</p>
					</a>
				</li>

			</ul>
		</div>
	</div>
</nav>
<!-- End Navbar -->
<div class="page-header" filter-color="purple"><%----%>
	<div class="page-header-image" style="background-image:url(assets/img/bg4.jpg)"></div><%----%>
	<div class="container">
		<div class="col-md-4 content-center">
			<div class="card card-login card-plain">
				<form class="form" method="" action="/userinsert2">

					<h1>拉钩钩</h1>
					<br/>
					<h3>个人用户注册</h3>
					<div class="header header-primary text-center">
						<div class="logo-container">
							<img src="assets/img/now-logo.png" alt="">
						</div>
					</div>
					<div class="content">
						<div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
							<input type="text" class="form-control txtLogin" placeholder="输入您的学号..."   name="uid">
						</div>
						<div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons text_caps-small"></i>
                                </span>
							<input placeholder="输入您的密码..." class="form-control pwdLogin" type="password" name="upwd"/>
						</div>

						<%--/////////////////////////////////////////////--%>
						<div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
							<input type="text" class="form-control txtLogin" placeholder="输入真实姓名..."   name="realname">
						</div>
						<div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
							<input type="text" class="form-control txtLogin" placeholder="输入您的年龄..."   name="age">
						</div>
						<div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
							<input type="text" class="form-control txtLogin" placeholder="输入您的性别..."   name="gender">
						</div>
						<div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
							<input type="text" class="form-control txtLogin" placeholder="输入您的邮箱..."   name="email">
						</div>
						<div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
							<input type="text" class="form-control txtLogin" placeholder="输入您的电话..."   name="phone">
						</div>
						<div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
							<input type="text" class="form-control txtLogin" placeholder="输入您的QQ..."   name="qq">
						</div>
						<div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
							<input type="text" class="form-control txtLogin" placeholder="输入您的专业..."   name="major">
						</div>
						<div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
							<input type="text" class="form-control txtLogin" placeholder="输入您的班级..."   name="classname">
						</div>
						<div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
							<input type="text" class="form-control txtLogin" placeholder="输入您的学历..."   name="edu">
						</div>
						<%--/////////////////////////////////////////////--%>
					</div>
					<div class="footer text-center">
						<button type="submit" class=" btn btn-primary btn-round btn-lg btn-block" >立即注册</button>
					</div>

					<div class="pull-right">
						<h6>
							<a href="logintest" class="link">个人用户登录</a>
						</h6>
					</div>
				</form>
			</div>
		</div>
		
	</div>
	<footer class="footer">
		<div class="container">
			<nav>
				<ul>
					<li>
						<a href="#">
							回到主页
						</a>
					</li>
					<li>
						<a href="#">
							企业用户登录
						</a>
					</li>
					<li>
						<a href="#">
							后台管理系统
						</a>
					</li>
					<li>
						<a href="#">
							关于本站
						</a>
					</li>

				</ul>
			</nav>
			<div class="copyright">
				&copy;
				<script>
					document.write(new Date().getFullYear())
				</script>, Designed by Tian. Coded by Tian
			</div>
		</div>
	</footer>
</div>
</body>
<!--   Core JS Files   -->
<script src="assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="assets/js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Share Library etc -->
<script src="assets/js/plugins/jquery.sharrre.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="assets/js/now-ui-kit.js?v=1.1.0" type="text/javascript"></script>

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