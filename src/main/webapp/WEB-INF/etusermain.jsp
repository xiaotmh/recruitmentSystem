﻿<%@ page import="com.entity.EtuserDetail" %>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">

	<head>
		<script type="text/javascript" async="" src="style/js/conversion.js"></script>
		<script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
		<style type="text/css"></style>
		<meta content="no-siteapp" http-equiv="Cache-Control">
		<link media="handheld" rel="alternate">
		<!-- end 云适配 -->
		<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
		<title>发布新职位-招聘服务-拉勾网-最专业的互联网招聘平台</title>
		<meta content="23635710066417756375" property="qc:admins">
		<meta name="description" content="拉勾网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在拉勾网">
		<meta name="keywords" content="拉勾,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
		<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

		<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
		<script type="text/javascript">
			var ctx = "http://www.lagou.com";
			console.log(1);
		</script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

		<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
		<link href="style/css/style.css" type="text/css" rel="stylesheet">
		<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
		<link href="style/css/popup.css" type="text/css" rel="stylesheet">
		<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
		<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
		<script src="style/js/additional-methods.js" type="text/javascript"></script>
		<script type="text/javascript" src="../bootstrap/bootstrap.min.js"></script>
		<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
		<script type="text/javascript">
			var youdao_conv_id = 271546;
		</script>
		<script src="style/js/conv.js" type="text/javascript"></script>
		<script src="style/js/ajaxCross.json" charset="UTF-8"></script>
		<style type="text/css">
			.BMap_mask {
				background: transparent url(style/images/img/blank.gif);
			}
			
			.BMap_noscreen {
				display: none;
			}
			
			.BMap_button {
				cursor: pointer;
			}
			
			.BMap_zoomer {
				background-image: url(style/images/img/mapctrls1d3.gif);
				background-repeat: no-repeat;
				overflow: hidden;
				font-size: 1px;
				position: absolute;
				width: 7px;
				height: 7px;
			}
			
			.BMap_stdMpCtrl div {
				position: absolute;
			}
			
			.BMap_stdMpPan {
				width: 44px;
				height: 44px;
				overflow: hidden;
				background: url(style/images/img/mapctrls2d0.png) no-repeat;
			}
			
			.BMap_ie6 .BMap_stdMpPan {
				background: none;
			}
			
			.BMap_ie6 .BMap_smcbg {
				left: 0;
				width: 44px;
				height: 464px;
				filter: progid: DXImageTransform.Microsoft.AlphaImageLoader(src="style/images/img/mapctrls2d0.png");
			}
			
			.BMap_ie6 .BMap_stdMpPanBg {
				z-index: -1;
			}
			
			.BMap_stdMpPan .BMap_button {
				height: 15px;
				width: 15px;
			}
			
			.BMap_panN,
			.BMap_panW,
			.BMap_panE,
			.BMap_panS {
				overflow: hidden;
			}
			
			.BMap_panN {
				left: 14px;
				top: 0;
			}
			
			.BMap_panW {
				left: 1px;
				top: 12px;
			}
			
			.BMap_panE {
				left: 27px;
				top: 12px;
			}
			
			.BMap_panS {
				left: 14px;
				top: 25px;
			}
			
			.BMap_stdMpZoom {
				top: 45px;
				overflow: hidden;
			}
			
			.BMap_stdMpZoom .BMap_button {
				width: 22px;
				height: 21px;
				left: 12px;
				overflow: hidden;
				background-image: url(style/images/img/mapctrls2d0.png);
				background-repeat: no-repeat;
				z-index: 10;
			}
			
			.BMap_ie6 .BMap_stdMpZoom .BMap_button {
				background: none;
			}
			
			.BMap_stdMpZoomIn {
				background-position: 0 -221px;
			}
			
			.BMap_stdMpZoomOut {
				background-position: 0 -265px;
			}
			
			.BMap_ie6 .BMap_stdMpZoomIn div {
				left: 0;
				top: -221px;
			}
			
			.BMap_ie6 .BMap_stdMpZoomOut div {
				left: 0;
				top: -265px;
			}
			
			.BMap_stdMpType4 .BMap_stdMpZoom .BMap_button {
				left: 0;
				overflow: hidden;
				background: -webkit-gradient(linear, 50% 0, 50% 100%, from(rgba(255, 255, 255, 0.85)), to(rgba(217, 217, 217, 0.85)));
				z-index: 10;
				-webkit-border-radius: 22px;
				width: 34px;
				height: 34px;
				border: 1px solid rgba(255, 255, 255, 0.5);
				-webkit-box-shadow: 0 2px 3.6px #CCC;
				display: -webkit-box;
				-webkit-box-align: center;
				-webkit-box-pack: center;
				-webkit-box-sizing: border-box;
			}
			
			.BMap_stdMpType4 .BMap_smcbg {
				position: static;
				background: url(style/images/img/mapctrls2d0_mb.png) 0 0 no-repeat;
				-webkit-background-size: 24px 32px;
			}
			
			.BMap_stdMpType4 .BMap_stdMpZoomIn {
				background-position: 0 0;
			}
			
			.BMap_stdMpType4 .BMap_stdMpZoomIn .BMap_smcbg {
				width: 24px;
				height: 24px;
				background-position: 0 0;
			}
			
			.BMap_stdMpType4 .BMap_stdMpZoomOut {
				background-position: 0 0;
			}
			
			.BMap_stdMpType4 .BMap_stdMpZoomOut .BMap_smcbg {
				width: 24px;
				height: 6px;
				background-position: 0 -25px;
			}
			
			.BMap_stdMpSlider {
				width: 37px;
				top: 18px;
			}
			
			.BMap_stdMpSliderBgTop {
				left: 18px;
				width: 10px;
				overflow: hidden;
				background: url(style/images/img/mapctrls2d0.png) no-repeat -23px -226px;
			}
			
			.BMap_stdMpSliderBgBot {
				left: 19px;
				height: 8px;
				width: 10px;
				top: 124px;
				overflow: hidden;
				background: url(style/images/img/mapctrls2d0.png) no-repeat -33px bottom;
			}
			
			.BMap_ie6 .BMap_stdMpSliderBgTop,
			.BMap_ie6 .BMap_stdMpSliderBgBot {
				background: none;
			}
			
			.BMap_ie6 .BMap_stdMpSliderBgTop div {
				left: -23px;
				top: -226px;
			}
			
			.BMap_ie6 .BMap_stdMpSliderBgBot div {
				left: -33px;
				bottom: 0;
			}
			
			.BMap_stdMpSliderMask {
				height: 100%;
				width: 24px;
				left: 10px;
				cursor: pointer;
			}
			
			.BMap_stdMpSliderBar {
				height: 11px;
				width: 19px;
				left: 13px;
				top: 80px;
				overflow: hidden;
				background: url(style/images/img/mapctrls2d0.png) no-repeat 0 -309px;
			}
			
			.BMap_stdMpSliderBar.h {
				background: url(style/images/img/mapctrls2d0.png) no-repeat 0 -320px;
			}
			
			.BMap_ie6 .BMap_stdMpSliderBar,
			.BMap_ie6 .BMap_stdMpSliderBar.h {
				background: none;
			}
			
			.BMap_ie6 .BMap_stdMpSliderBar div {
				top: -309px;
			}
			
			.BMap_ie6 .BMap_stdMpSliderBar.h div {
				top: -320px;
			}
			
			.BMap_zlSt,
			.BMap_zlCity,
			.BMap_zlProv,
			.BMap_zlCountry {
				position: absolute;
				left: 34px;
				height: 21px;
				width: 28px;
				background-image: url(style/images/img/mapctrls2d0.png);
				background-repeat: no-repeat;
				font-size: 0;
				cursor: pointer;
			}
			
			.BMap_ie6 .BMap_zlSt,
			.BMap_ie6 .BMap_zlCity,
			.BMap_ie6 .BMap_zlProv,
			.BMap_ie6 .BMap_zlCountry {
				background: none;
				overflow: hidden;
			}
			
			.BMap_zlHolder {
				display: none;
				position: absolute;
				top: 0;
			}
			
			.BMap_zlHolder.hvr {
				display: block;
			}
			
			.BMap_zlSt {
				background-position: 0 -380px;
				top: 21px;
			}
			
			.BMap_zlCity {
				background-position: 0 -401px;
				top: 52px;
			}
			
			.BMap_zlProv {
				background-position: 0 -422px;
				top: 76px;
			}
			
			.BMap_zlCountry {
				background-position: 0 -443px;
				top: 100px;
			}
			
			.BMap_ie6 .BMap_zlSt div {
				top: -380px;
			}
			
			.BMap_ie6 .BMap_zlCity div {
				top: -401px;
			}
			
			.BMap_ie6 .BMap_zlProv div {
				top: -422px;
			}
			
			.BMap_ie6 .BMap_zlCountry div {
				top: -443px;
			}
			
			.BMap_stdMpType1 .BMap_stdMpSlider,
			.BMap_stdMpType2 .BMap_stdMpSlider,
			.BMap_stdMpType3 .BMap_stdMpSlider,
			.BMap_stdMpType4 .BMap_stdMpSlider,
			.BMap_stdMpType2 .BMap_stdMpZoom,
			.BMap_stdMpType3 .BMap_stdMpPan,
			.BMap_stdMpType4 .BMap_stdMpPan {
				display: none;
			}
			
			.BMap_stdMpType3 .BMap_stdMpZoom {
				top: 0;
			}
			
			.BMap_stdMpType4 .BMap_stdMpZoom {
				top: 0;
			}
			
			.BMap_cpyCtrl a {
				font-size: 11px;
				color: #7979CC;
			}
			
			.BMap_scaleCtrl {
				height: 23px;
				overflow: hidden;
			}
			
			.BMap_scaleCtrl div.BMap_scaleTxt {
				font-size: 11px;
				font-family: Arial, sans-serif;
			}
			
			.BMap_scaleCtrl div {
				position: absolute;
				overflow: hidden;
			}
			
			.BMap_scaleHBar img,
			.BMap_scaleLBar img,
			.BMap_scaleRBar img {
				position: absolute;
				width: 37px;
				height: 442px;
				left: 0;
			}
			
			.BMap_scaleHBar {
				width: 100%;
				height: 5px;
				font-size: 0;
				bottom: 0;
			}
			
			.BMap_scaleHBar img {
				top: -437px;
				width: 100%;
			}
			
			.BMap_scaleLBar,
			.BMap_scaleRBar {
				width: 3px;
				height: 9px;
				bottom: 0;
				font-size: 0;
				z-index: 1;
			}
			
			.BMap_scaleLBar img {
				top: -427px;
				left: 0;
			}
			
			.BMap_scaleRBar img {
				top: -427px;
				left: -5px;
			}
			
			.BMap_scaleLBar {
				left: 0;
			}
			
			.BMap_scaleRBar {
				right: 0;
			}
			
			.BMap_scaleTxt {
				text-align: center;
				width: 100%;
				cursor: default;
				line-height: 18px;
			}
			
			.BMap_omCtrl {
				background-color: #fff;
				overflow: hidden;
			}
			
			.BMap_omOutFrame {
				position: absolute;
				width: 100%;
				height: 100%;
				left: 0;
				top: 0;
			}
			
			.BMap_omInnFrame {
				position: absolute;
				border: 1px solid #999;
				background-color: #ccc;
				overflow: hidden;
			}
			
			.BMap_omMapContainer {
				position: absolute;
				overflow: hidden;
				width: 100%;
				height: 100%;
				left: 0;
				top: 0;
			}
			
			.BMap_omViewMv {
				border-width: 1px;
				border-style: solid;
				border-left-color: #84b0df;
				border-top-color: #adcff4;
				border-right-color: #274b8b;
				border-bottom-color: #274b8b;
				position: absolute;
				z-index: 600;
			}
			
			.BMap_omViewInnFrame {
				border: 1px solid #3e6bb8;
			}
			
			.BMap_omViewMask {
				width: 1000px;
				height: 1000px;
				position: absolute;
				left: 0;
				top: 0;
				background-color: #68c;
				opacity: .2;
				filter: progid: DXImageTransform.Microsoft.Alpha(opacity=20);
			}
			
			.BMap_omBtn {
				height: 13px;
				width: 13px;
				position: absolute;
				cursor: pointer;
				overflow: hidden;
				background: url(style/images/img/mapctrls1d3.gif) no-repeat;
				z-index: 1210;
			}
			
			.anchorBR .BMap_omOutFrame {
				border-top: 1px solid #999;
				border-left: 1px solid #999;
			}
			
			.quad4 .BMap_omBtn {
				background-position: -26px -27px;
			}
			
			.quad4 .BMap_omBtn.hover {
				background-position: 0 -27px;
			}
			
			.quad4 .BMap_omBtn.BMap_omBtnClosed {
				background-position: -39px -27px;
			}
			
			.quad4 .BMap_omBtn.BMap_omBtnClosed.hover {
				background-position: -13px -27px;
			}
			
			.anchorTR .BMap_omOutFrame {
				border-bottom: 1px solid #999;
				border-left: 1px solid #999;
			}
			
			.quad1 .BMap_omBtn {
				background-position: -39px -41px;
			}
			
			.quad1 .BMap_omBtn.hover {
				background-position: -13px -41px;
			}
			
			.quad1 .BMap_omBtn.BMap_omBtnClosed {
				background-position: -26px -41px;
			}
			
			.quad1 .BMap_omBtn.BMap_omBtnClosed.hover {
				background-position: 0 -41px;
			}
			
			.anchorBL .BMap_omOutFrame {
				border-top: 1px solid #999;
				border-right: 1px solid #999;
			}
			
			.quad3 .BMap_omBtn {
				background-position: -27px -40px;
			}
			
			.quad3 .BMap_omBtn.hover {
				background-position: -1px -40px;
			}
			
			.quad3 .BMap_omBtn.BMap_omBtnClosed {
				background-position: -40px -40px;
			}
			
			.quad3 .BMap_omBtn.BMap_omBtnClosed.hover {
				background-position: -14px -40px;
			}
			
			.anchorTL .BMap_omOutFrame {
				border-bottom: 1px solid #999;
				border-right: 1px solid #999;
			}
			
			.quad2 .BMap_omBtn {
				background-position: -40px -28px;
			}
			
			.quad2 .BMap_omBtn.hover {
				background-position: -14px -28px;
			}
			
			.quad2 .BMap_omBtn.BMap_omBtnClosed {
				background-position: -27px -28px;
			}
			
			.quad2 .BMap_omBtn.BMap_omBtnClosed.hover {
				background-position: -1px -28px;
			}
			
			.anchorR .BMap_omOutFrame {
				border-bottom: 1px solid #999;
				border-left: 1px solid #999;
				border-top: 1px solid #999;
			}
			
			.anchorL .BMap_omOutFrame {
				border-bottom: 1px solid #999;
				border-right: 1px solid #999;
				border-top: 1px solid #999;
			}
			
			.anchorB .BMap_omOutFrame {
				border-top: 1px solid #999;
				border-left: 1px solid #999;
				border-right: 1px solid #999;
			}
			
			.anchorT .BMap_omOutFrame {
				border-bottom: 1px solid #999;
				border-right: 1px solid #999;
				border-left: 1px solid #999;
			}
			
			.anchorNon .BMap_omOutFrame,
			.withOffset .BMap_omOutFrame {
				border: 1px solid #999;
			}
			
			.BMap_zoomMask0,
			.BMap_zoomMask1 {
				position: absolute;
				left: 0;
				top: 0;
				width: 100%;
				height: 100%;
				background: transparent url(style/images/img/blank.gif);
				z-index: 1000;
			}
			
			.BMap_contextMenu {
				position: absolute;
				border-top: 1px solid #adbfe4;
				border-left: 1px solid #adbfe4;
				border-right: 1px solid #8ba4d8;
				border-bottom: 1px solid #8ba4d8;
				padding: 0;
				margin: 0;
				width: auto;
				visibility: hidden;
				background: #fff;
				z-index: 10000000;
			}
			
			.BMap_cmShadow {
				position: absolute;
				background: #000;
				opacity: .3;
				filter: alpha(opacity=30);
				visibility: hidden;
				z-index: 9000000;
			}
			
			div.BMap_cmDivider {
				border-bottom: 1px solid #adbfe4;
				font-size: 0;
				padding: 1px;
				margin: 0 6px;
			}
			
			div.BMap_cmFstItem {
				margin-top: 2px;
			}
			
			div.BMap_cmLstItem {
				margin-bottom: 2px;
			}
			
			.BMap_shadow img {
				border: 0 none;
				margin: 0;
				padding: 0;
				height: 370px;
				width: 1144px;
			}
			
			.BMap_pop .BMap_top {
				border-top: 1px solid #ababab;
				background-color: #fff;
			}
			
			.BMap_pop .BMap_center {
				border-left: 1px solid #ababab;
				border-right: 1px solid #ababab;
				background-color: #fff;
			}
			
			.BMap_pop .BMap_bottom {
				border-bottom: 1px solid #ababab;
				background-color: #fff;
			}
			
			.BMap_shadow,
			.BMap_shadow img,
			.BMap_shadow div {
				-moz-user-select: none;
				-webkit-user-select: none;
			}
			
			.BMap_checkbox {
				background: url(style/images/img/mapctrls1d3.gif);
				vertical-align: middle;
				display: inline-block;
				width: 11px;
				height: 11px;
				margin-right: 4px;
				background-position: -14px 90px;
			}
			
			.BMap_checkbox.checked {
				background-position: -2px 90px;
			}
			
			.BMap_pop .BMap_top img,
			.BMap_pop .BMap_center img,
			.BMap_pop .BMap_bottom img {
				display: none;
			}
			
			@media print {
				.BMap_noprint {
					display: none;
				}
				.BMap_noscreen {
					display: block;
				}
				.BMap_mask {
					background: none;
				}
				.BMap_pop .BMap_top img,
				.BMap_pop .BMap_center img,
				.BMap_pop .BMap_bottom img {
					display: block;
				}
			}
			
			.BMap_vectex {
				cursor: pointer;
				width: 11px;
				height: 11px;
				position: absolute;
				background-repeat: no-repeat;
				background-position: 0 0;
			}
			
			.BMap_vectex_nodeT {
				background-image: url(style/images/img/nodeT.gif);
			}
			
			.BMap_vectex_node {
				background-image: url(style/images/img/node.gif);
			}
			
			.iw {
				width: 100%;
				-webkit-box-sizing: border-box;
				border: .3em solid transparent;
				-webkit-background-clip: padding;
			}
			
			.iw_rt {
				position: relative;
				height: 46px;
				width: 195px;
				-webkit-box-sizing: border-box;
				display: -webkit-box;
				-webkit-box-align: center;
				margin: 2px 5px 0 2px;
				background-color: rgba(0, 0, 0, 0.8);
				-webkit-box-shadow: 2px 2px 7px rgba(0, 0, 0, 0.3);
				-webkit-border-radius: 2px;
				color: #fff;
			}
			
			.iw_rt:after {
				content: "";
				position: absolute;
				left: 50%;
				bottom: -8px;
				width: 0;
				height: 0;
				border-left: 5px solid transparent;
				border-top: 8px solid rgba(0, 0, 0, 0.8);
				border-right: 5px solid transparent;
				margin: 0 0 0 -6px;
			}
			
			.iw_s {
				text-align: center;
				vertical-align: middle;
				height: 100%;
				-webkit-box-sizing: border-box;
			}
			
			.iw_rt .iw_s1 {
				color: #cbcbcb;
			}
			
			.iw_rt b {
				color: #fff;
				font-weight: bold;
			}
			
			.iw_rt_gr {
				margin-left: -4px;
			}
			
			.iw_busline {
				margin: 32px 0 0 -3px;
			}
			
			.iw_busline .iw_cc {
				text-align: center;
				white-space: nowrap;
				text-overflow: ellipsis;
				overflow: hidden;
				padding: 0 6px;
			}
			
			.iw_r {
				-webkit-box-ordinal-group: 3;
			}
			
			.iw_r,
			.iw_l {
				height: 100%;
				font-size: 4.5em;
				text-align: center;
				color: #747474;
				border: none;
				-webkit-box-sizing: border-box;
				-webkit-border-radius: 0;
				line-height: .7em;
				border: 1px solid rgba(255, 255, 255, 0.2);
				width: 41px;
			}
			
			.iw_r {
				border-style: none none none solid;
			}
			
			.iw_l {
				border-style: none solid none none;
			}
			
			.iw_search,
			.iw_l {
				background: url("style/images/img/u20LgruGtNFM8lqnNtfK2JqN3CVeW1gzWj9jThd0xd59R8BBgAAiefGO1Bt1gAAAABJRU5ErkJggg==") no-repeat 50% 50%;
				-webkit-background-size: 19px 19px;
			}
			
			.iw_line_s,
			.iw_r {
				background: url("style/images/img/wCKLRHq20vjSoVNKWunH4rTBDv5Cv7NKeKfvvU2nINzHAuexzUA7KQTkoB6UxDicKvcqfQQYABaiUBxugCsr20AAAAAElFTkSuQmCC") no-repeat 50% 50%;
				-webkit-background-size: 19px 19px;
			}
			
			.iw_line {
				height: 64px;
				width: 228px;
				padding: 0 11px;
				line-height: 20px;
			}
			
			.iw_bustrans .iw_cc {
				text-align: center;
			}
			
			.iw_c {
				color: #FFFFFF;
				text-decoration: none;
				overflow: hidden;
				display: -webkit-box;
				-webkit-box-align: center;
				-webkit-box-flex: 1;
			}
			
			.iw_cc {
				-webkit-box-sizing: border-box;
				width: 100%;
				border: none;
			}
			
			.gray_background {
				filter: alpha(opacity=50);
				-moz-opacity: 0.5;
				-khtml-opacity: 0.5;
				opacity: 0.5
			}
			
			.light_gray_background {
				filter: alpha(opacity=70);
				-moz-opacity: 0.7;
				-khtml-opacity: 0.7;
				opacity: 0.7
			}
			
			.panoInfoBox {
				cursor: pointer;
			}
			
			.panoInfoBox {
				position: relative;
				width: 323px;
				height: 101px;
				margin-bottom: 4px;
				cursor: pointer;
			}
			
			.panoInfoBox .panoInfoBoxTitleBg {
				width: 323px;
				height: 19px;
				position: absolute;
				left: 0;
				bottom: 0;
				z-index: 2;
				background-color: #000;
				opacity: .7;
			}
			
			.panoInfoBox .panoInfoBoxTitleContent {
				font-size: 12px;
				color: #fff;
				position: absolute;
				bottom: 2px;
				left: 5px;
				z-index: 3;
				text-decoration: none;
			}
			
			.RouteAddressOuterBkg {
				position: relative;
				padding: 32px 4px 4px 3px;
				background-color: #ffdd99;
			}
			
			.RouteAddressInnerBkg {
				padding: 3px 5px 8px 8px;
				background-color: #ffffff;
			}
			
			#RouteAddress_DIV1 {
				margin-top: 5px;
			}
			
			.RouteAddressTip {
				position: absolute;
				width: 340px;
				top: 0px;
				text-align: center;
				height: 30px;
				line-height: 30px;
				color: #994c00;
			}
			
			.route_tip_con {
				position: absolute;
				top: 145px;
			}
			
			.route_tip_con .route_tip {
				position: absolute;
				width: 233px;
				height: 29px;
				color: #803300;
				text-align: center;
				line-height: 29px;
				border: #cc967a solid 1px;
				background: #fff2b2;
				z-index: 100000;
			}
			
			.route_tip_con .route_tip span {
				position: absolute;
				top: 0;
				right: 0;
				_right: -1px;
				width: 14px;
				height: 13px;
				background: url(style/images/img/addrPage.png) no-repeat 0 -121px;
				cursor: pointer;
			}
			
			.route_tip_con .route_tip_shadow {
				width: 233px;
				height: 29px;
				position: absolute;
				left: 1px;
				top: 1px;
				background: #505050;
				border: 1px solid #505050;
				opacity: 0.2;
				filter: alpha(opacity=20)
			}
			
			.sel_body_body_page {
				margin: 5px 0
			}
			
			.sel_n {
				margin-top: 5px;
				overflow: hidden;
			}
			
			.sel_n .sel_top {
				background: url(style/images/img/bgs.gif) no-repeat 0 -418px;
				height: 4px;
				font-size: 0px;
			}
			
			.sel_n .sel_body_top {
				height: 32px;
				width: 100%;
				background: url(style/images/img/addrPage.png) no-repeat 0 -41px;
			}
			
			.sel_n .sel_body_title {
				float: left;
				width: 100%;
				height: 31px;
			}
			
			.sel_n .sel_body_sign {
				margin-top: 1px;
				width: 30px;
				height: 31px;
				float: left;
				background: url(style/images/img/bgs.gif) no-repeat -79px -387px;
			}
			
			.sel_n .sel_body_name {
				margin: 0 20px 0 30px;
				padding: 8px 7px 7px;
				font-size: 14px;
				color: #FA8722;
			}
			
			.sel_n .sel_body_button {
				float: left;
				width: 55px;
				margin-left: -55px;
				padding-top: 8px;
			}
			
			.sel_n .sel_body_button a {}
			
			.sel_n .sel_bottom {
				background: url(style/images/img/bgs.gif) no-repeat 0 -415px;
				height: 4px;
				font-size: 0px;
			}
			
			.sel_n .sel_body_body {
				padding: 3px 0 0 0
			}
			
			.sel_n1 {
				margin-top: 5px;
				width: 329px;
				overflow: hidden;
			}
			
			.sel_n1 .sel_top {
				background: url(style/images/img/bgs.gif) no-repeat 0 -418px;
				height: 4px;
				font-size: 0px;
			}
			
			.sel_n1 .sel_body_top {
				height: 31px;
				width: 100%;
				background: url(style/images/img/sel_body_n_top.gif) repeat-x;
			}
			
			.sel_n1 .sel_body_top {
				height: 32px;
				width: 100%;
				background: url(style/images/img/addrPage.png) no-repeat 0 -41px
			}
			
			.sel_n1 .sel_body_title {
				float: left;
				width: 100%;
				height: 31px;
				cursor: pointer;
			}
			
			.sel_n1 .sel_body_sign {
				margin-top: 1px;
				width: 30px;
				height: 31px;
				float: left;
				background: url(style/images/img/bgs.gif) no-repeat -79px -387px;
			}
			
			.sel_n1 .sel_body_name {
				margin: 0 20px 0 30px;
				padding: 8px 7px 7px;
				font-size: 14px;
				color: #FA8722;
			}
			
			.sel_n1 .sel_body_button {
				float: left;
				width: 20px;
				height: 31px;
				margin-left: -23px;
				background: url(style/images/img/bgs.gif) no-repeat -253px -382px;
				overflow: hidden;
				zoom: 1;
				cursor: pointer;
			}
			
			.sel_n1 .sel_body_button a {
				display: none;
			}
			
			.sel_n1 .sel_body_body {
				display: none
			}
			
			.sel_n1 .sel_bottom {
				background: url(style/images/img/bgs.gif) no-repeat 0 -415px;
				height: 4px;
				font-size: 0px;
			}
			
			.sel_y {
				margin-top: 5px;
				overflow: hidden;
			}
			
			.sel_y .sel_top {
				background: url(style/images/img/bgs.gif) no-repeat 0 -439px;
				height: 4px;
				zoom: 1;
				font-size: 0px;
			}
			
			.sel_y .sel_body_top {
				height: 32px;
				width: 100%;
				background: url(style/images/img/addrPage.png) no-repeat 0 0
			}
			
			.sel_y .sel_body_title {
				float: left;
				width: 100%;
				height: 31px;
				cursor: pointer;
			}
			
			.sel_y .sel_body_sign {
				margin-top: 1px;
				width: 30px;
				height: 31px;
				float: left;
				background: url(style/images/img/bgs.gif) no-repeat -167px -384px;
			}
			
			.sel_y .sel_body_name {
				margin: 0 20px 0 30px;
				padding: 8px 7px 7px;
				font-size: 14px;
				color: #5B7BCB;
			}
			
			.sel_y .sel_body_button {
				float: left;
				width: 20px;
				height: 31px;
				margin-left: -20px;
				background: url(style/images/img/bgs.gif) no-repeat -269px -297px;
				cursor: pointer;
			}
			
			.sel_y .sel_body_button a {
				display: none;
			}
			
			.sel_y .sel_body_body {
				display: none;
				height: 0px
			}
			
			.sel_y .sel_body_body_div {}
			
			.sel_y .sel_bottom {
				background: url(style/images/img/bgs.gif) no-repeat 0 -436px;
				height: 4px;
				font-size: 0px;
			}
			
			.sel_y .sel_body_body_page {
				display: none;
				height: 0px;
			}
			
			.sel_x {
				margin-top: 5px;
				width: 329px;
				overflow: hidden;
			}
			
			.sel_x .sel_top {
				background: url(style/images/img/bgs.gif) no-repeat 0 -418px;
				height: 4px;
				font-size: 0px;
			}
			
			.sel_x .sel_body_top {
				height: 32px;
				width: 100%;
				background: url(style/images/img/addrPage.png) no-repeat 0 -41px;
			}
			
			.sel_x .sel_body_title {
				float: left;
				width: 100%;
				height: 31px;
			}
			
			.sel_x .sel_body_sign {
				margin-top: 1px;
				width: 30px;
				height: 31px;
				float: left;
				background: url(style/images/img/bgs.gif) no-repeat -122px -384px;
			}
			
			.sel_x .sel_body_name {
				margin: 0 20px 0 30px;
				padding: 8px 7px 7px;
				font-size: 14px;
				color: #FA8722;
			}
			
			.sel_x .sel_body_button {
				float: left;
				width: 55px;
				margin-left: -55px;
				padding-top: 8px;
			}
			
			.sel_x .sel_body_button a {}
			
			.sel_x .sel_body_body {}
			
			.sel_x .sel_body_body_div {
				padding: 5px 5px 0 5px;
			}
			
			.sel_x .sel_bottom {
				background: url(style/images/img/bgs.gif) no-repeat 0 -415px;
				height: 4px;
				font-size: 0px;
			}
			
			.sel_x1 {
				margin-top: 5px;
				width: 329px;
				overflow: hidden;
			}
			
			.sel_x1 .sel_top {
				background: url(style/images/img/bgs.gif) no-repeat 0 -418px;
				height: 4px;
				font-size: 0px;
			}
			
			.sel_x1 .sel_body_top {
				height: 32px;
				width: 100%;
				background: url(style/images/img/addrPage.png) no-repeat 0 -41px
			}
			
			.sel_x1 .sel_body_title {
				float: left;
				width: 100%;
				height: 31px;
				cursor: pointer;
			}
			
			.sel_x1 .sel_body_sign {
				margin-top: 1px;
				width: 30px;
				height: 31px;
				float: left;
				background: url(style/images/img/bgs.gif) no-repeat -122px -384px;
			}
			
			.sel_x1 .sel_body_name {
				margin: 0 20px 0 30px;
				padding: 8px 7px 7px;
				font-size: 14px;
				color: #FA8722;
			}
			
			.sel_x1 .sel_body_button {
				float: left;
				width: 55px;
				height: 31px;
				margin-left: -55px;
			}
			
			.sel_x1 .sel_body_button a {
				display: none;
			}
			
			.sel_x1 .sel_body_body {
				display: none;
				height: 0px;
			}
			
			.sel_x1 .sel_body_body_div {
				padding: 5px 5px 0 5px;
			}
			
			.sel_x1 .sel_bottom {
				background: url(style/images/img/bgs.gif) no-repeat 0 -415px;
				height: 4px;
				font-size: 0px;
			}
			
			.sel_body_citylist {
				height: 100px;
				padding: 0 0 0 5px
			}
			
			.sel_body_resitem {
				table-layout: fixed;
				overflow-x: hidden;
				overflow-y: hidden;
			}
			
			.sel_body_resitem table {
				margin-right: 5px;
			}
			
			.sel_body_resitem tr {
				cursor: pointer;
			}
			
			.sel_body_resitem th {
				padding-top: 5px;
				padding-left: 5px;
				text-align: left;
				vertical-align: top;
				width: 22px;
			}
			
			.sel_body_resitem th div.iconbg {
				background: url(style/images/img/markers_new_ie6.png) no-repeat scroll 0 0;
				height: 29px;
				width: 24px;
			}
			
			.sel_body_resitem th div.icon {
				cursor: pointer
			}
			
			.sel_body_resitem th div#no_0_1,
			.sel_body_resitem th div#no_1_1 {
				background-position: 0 -64px
			}
			
			.sel_body_resitem th div#no_0_2,
			.sel_body_resitem th div#no_1_2 {
				background-position: -24px -64px
			}
			
			.sel_body_resitem th div#no_0_3,
			.sel_body_resitem th div#no_1_3 {
				background-position: -48px -64px
			}
			
			.sel_body_resitem th div#no_0_4,
			.sel_body_resitem th div#no_1_4 {
				background-position: -72px -64px
			}
			
			.sel_body_resitem th div#no_0_5,
			.sel_body_resitem th div#no_1_5 {
				background-position: -96px -64px
			}
			
			.sel_body_resitem th div#no_0_6,
			.sel_body_resitem th div#no_1_6 {
				background-position: -120px -64px
			}
			
			.sel_body_resitem th div#no_0_7,
			.sel_body_resitem th div#no_1_7 {
				background-position: -144px -64px
			}
			
			.sel_body_resitem th div#no_0_8,
			.sel_body_resitem th div#no_1_8 {
				background-position: -168px -64px
			}
			
			.sel_body_resitem th div#no_0_9,
			.sel_body_resitem th div#no_1_9 {
				background-position: -192px -64px
			}
			
			.sel_body_resitem th div#no_0_10,
			.sel_body_resitem th div#no_1_10 {
				background-position: -216px -64px
			}
			
			.sel_body_resitem td {
				line-height: 160%;
				padding: 3px 0 3px 3px;
				vertical-align: top;
			}
			
			.sel_body_resitem div.ra_td_title {
				float: left;
				margin-right: 40px;
			}
			
			.sel_body_resitem div.ra_td_button {
				float: right;
				width: 40px;
			}
			
			.sel_body_resitem div.ra_td_button input {
				height: 18px;
				font-size: 12px;
				width: 40px;
			}
			
			.sel_body_resitem div.clear {
				clear: both;
				height: 0px;
				width: 100%;
			}
			
			.sel_body_resitem td .selBtn {
				width: 70px;
				height: 29px;
				background: url(style/images/img/addrPage.png) no-repeat -21px -81px;
				text-align: center;
				line-height: 29px;
				visibility: hidden;
				color: #b35900;
				display: inline-block;
				*display: inline;
				*zoom: 1;
			}
			
			.sel_body_resitem td .list_street_view_poi {
				display: inline-block;
				float: none;
				margin-right: 6px;
				position: static;
				*vertical-align: -3px;
				_vertical-align: -5px;
				*display: inline;
				*zoom: 1;
			}
			
			.selInfoWndBtn {
				width: 70px;
				height: 29px;
				background: url(style/images/img/addrPage.png) no-repeat -21px -81px;
				text-align: center;
				line-height: 29px;
				margin: 0 auto;
				cursor: pointer;
				color: #b35900
			}
			
			.sel_body_body td a {
				text-decoration: none;
				cursor: auto;
			}
			
			.sel_body_body td a:hover,
			.sel_body_body td a:focus {
				text-decoration: underline;
			}
		</style>
		<link rel="stylesheet" href="style/css/ui.css">
		<link rel="stylesheet" href="style/css/window.css">
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
				<div class="col-sm-3">
					<div class="sidebar">
						<span class="btn_create" href="create.html" >快发布你的新职位吧</span>
					<div class="subscribe_side mt20">
						<div class="f14">想收到更多更好的简历？</div>
						<div class="f18 mb10">就用拉勾招聘加速助手 </div>
						<div>咨询：
							<a class="f16" href="mailto:jessica@lagou.com">jessica@lagou.com</a>
						</div>
						<div class="f18 ti2em">010-57286512</div>
					</div>
					<div class="subscribe_side mt20">
						<div class="f14">加入互联网HR交流群</div>
						<div class="f18 mb10">跟同行聊聊</div>
						<div class="f24">338167634</div>
					</div>
				</div>
				<!-- end .sidebar -->
				</div>
				<div class="col-sm-9">
					<div class="content ">
					<dl class="company_center_content">
						<dt>
                        <h1>
                            <em></em>
                                                       		发布新职位
                           	                        </h1>
                    </dt>
						<dd>
							<%
								Integer uid=0;
								 uid= (Integer) session.getAttribute("uid");
								EtuserDetail etuserdetail = (EtuserDetail) session.getAttribute("etuserdetail");

							%>
							<form action="/findwantjob" method="post" id="jobForm">
								<input type="hidden" value="" name="id">
								<input type="hidden" value="create" name="preview">
								<input type="hidden" value="25927" name="companyId">
								<input type="hidden" value="c29d4a7c35314180bf3be5eb3f00048f" name="resubmitToken">
								<table class="btm">
									<tbody>
									<%
										if(uid!=0){
									%>
									<tr>
										<td><span class="redstar">*</span></td>
										<td>企业编号</td>
										<td>
											<input type="text"  name="enid"  value="<%=uid%>" readonly="readonly">
										</td>
									</tr>
									<%
										}else{
									%>
									<tr>
										<td><span class="redstar">*</span></td>
										<td>企业编号</td>
										<td>
											<input type="text"  name="enid"  placeholder="请输入企业账号" readonly="readonly">
										</td>
									</tr>
									<%
										}
									%>

									<tr>
										<td><span class="redstar">*</span></td>
										<td>企业名称</td>
										<td>
											<input type="text" placeholder="请输入企业名称，如：腾讯" value="<%=etuserdetail.getRealname()%>" name="enname" readonly="readonly">
										</td>
									</tr>
										<tr>
											<td width="25"><span class="redstar">*</span></td>
											<td width="85">职位类别</td>
											<td>
												<input type="text"placeholder="请输入您要发布的职位名称" name="wtype">

											</td>
										</tr>
									</tbody>
								</table>

								<table class="btm">
									<tbody>
										<tr>
											<td width="25"><span class="redstar">*</span></td>
											<td width="85">工作性质</td>
											<td>
												<ul class="profile_radio clearfix reset">
													<li>
														全职<em></em>
														<input type="radio" name="work" value="全职">
													</li>
													<li>
														兼职<em></em>
														<input type="radio" name="work" value="兼职">
													</li>
													<li>
														实习<em></em>
														<input type="radio" name="work" value="实习">
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td><span class="redstar">*</span></td>
											<td>月薪范围</td>
											<!--<h3><span>(最高月薪不能大于最低月薪的2倍)</span></h3> -->
											<td>
												<div class="salary_range">
													<div>
														<input type="text" placeholder="最低月薪" value="" id="salaryMin" name="minmoney">
														<span>k</span>
													</div>
													<div>
														<input type="text" placeholder="最高月薪" value="" id="salaryMax" name="maxmoney">
														<span>k</span>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><span class="redstar">*</span></td>
											<td>工作城市</td>
											<td>
												<input type="text" placeholder="请输入工作城市，如：北京"  name="workcity" >
											</td>
										</tr>
									</tbody>
								</table>

								<table class="btm">
									<tbody>
										<tr>
											<td width="25"><span class="redstar">*</span></td>
											<td width="85">工作经验</td>
											<td>
												<input type="hidden" id="experience" value="" name="experience">
												<input type="button" value="请选择工作经验" id="select_experience" class="selectr selectr_380">
												<div class="boxUpDown boxUpDown_380 dn" id="box_experience" style="display: none;">
													<ul>
														<li>
															不限
														</li>
														<li>
															应届毕业生
														</li>
														<li>
															1年以下
														</li>
														<li>
															1-3年
														</li>
														<li>
															3-5年
														</li>
														<li>
															5-10年
														</li>
														<li>
															10年以上
														</li>
													</ul>
												</div>
											</td>
										</tr>
										<tr>
											<td><span class="redstar">*</span></td>
											<td>学历要求</td>
											<!--<h3><span>(最高月薪不能大于最低月薪的2倍)</span></h3> -->
											<td>
												<input type="hidden" id="education" value="" name="education">
												<input type="button" value="请选择学历要求" id="select_education" class="selectr selectr_380">
												<div class="boxUpDown boxUpDown_380 dn" id="box_education" style="display: none;">
													<ul>
														<li>
															不限
														</li>
														<li>
															大专
														</li>
														<li>
															本科
														</li>
														<li>
															硕士
														</li>
														<li>
															博士
														</li>
													</ul>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
										<tr>
											<td><span class="redstar">*</span></td>
											<td>职位描述</td>
											<br>
											<td>
												<span class="c9 f14">(建议分条描述工作职责等)</span>
												<textarea name="moremessage" id="positionDetail"  ></textarea>

											</td>
										</tr>
								        <br>
										<tr>
											<td>工作地址</td>
											<td>
												<input type="text" placeholder="请输入详细的工作地址" value="" name="workaddress" class="input_520" id="positionAddress">
												<input type="hidden" value="" name="positionLng" id="lng">
												<input type="hidden" value="" name="positionLat" id="lat">
											</td>
										</tr>
								<table>
									<tbody>
										<tr>
											<td width="25"><span class="redstar">*</span></td>
										</tr>
										<tr>
											<td width="25"></td>
											<td colspan="2">
												<input type="submit" value="发布" id="formSubmit" class="btn_32">
											</td>
										</tr>
									</tbody>
								</table>
							</form>
						</dd>
					</dl>
				</div>
				</div>

				<!-- end .content -->

				</div>
</div>
<!------------------------------------- end ----------------------------------------->
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

<!-- old -->
<script src="style/js/jquery.tinymce.js " type="text/javascript "></script>
<script>
$(function(){
		
	/***********************************************
	** textarea 编辑器
	*/
	$('textarea.tinymce').tinymce({
		// Location of TinyMCE script
		script_url : ctx+'/js/tinymce/jscripts/tiny_mce/tiny_mce.js',

		// General options
		theme : "advanced ",
		language : "zh-cn ",
		plugins : "paste,autolink,lists,style,layer,save,advhr,advimage,advlink,iespell,inlinepopups,preview,media,searchreplace,contextmenu,fullscreen,noneditable,visualchars,nonbreaking ",

		// Theme options
		theme_advanced_buttons1 : "bold,italic,underline,|,justifyleft,justifycenter,justifyright,|,bullist,numlist,|,outdent,indent,|,undo,redo,|,link,unlink,|,hr,fullscreen,image ",
		theme_advanced_toolbar_location : "top ",
		theme_advanced_toolbar_align : "left ",
		theme_advanced_statusbar_location : "none ",//定义输入框下方是否显示状态栏，默认不显示
		theme_advanced_resizing : false,
		paste_auto_cleanup_on_paste: true,
		paste_as_text: true,
		auto_cleanup_word:true,
		paste_remove_styles: true,
		contextmenu: "copy cut paste ",
        force_br_newlines: true,
        force_p_newlines: false,
        apply_source_formatting: false,
        remove_linebreaks: false,
        convert_newlines_to_brs: true,

		// Example content CSS (should be your site CSS)
		content_css : ctx+"/js/tinymce/examples/css/content.css ",

		// Drop lists for link/image/media/template dialogs
		template_external_list_url : "lists/template_list.js ",
		external_link_list_url : "lists/link_list.js ",

		// Replace values for the template plugin
		template_replace_values : {
			username : "Some User ",
			staffid : "991234 "
		},
		onchange_callback: function(editor){
	        tinyMCE.triggerSave();
	        var editorContent = tinyMCE.get(editor.id).getContent();
		    if(editorContent.length &gt; 20){
				$("# " + editor.id).valid();
		    }
	    } 
	});
	
	$('#workAddress').focus(function(){
		$('#beError').hide();
	});
});
</script>
<!-- end old -->

<script src="style/js/jobs.min.js " type="text/javascript "></script>
<script src="http://api.map.baidu.com/api?v=2.0&amp;ak=A2c1a1ff1fe0750e3290660295aac602 " type="text/javascript "></script><script src="http://api.map.baidu.com/getscript?v=2.0&amp;ak=A2c1a1ff1fe0750e3290660295aac602&amp;services=&amp;t=20140617153133 " type="text/javascript "></script>





<script src="style/js/core.min.js " type="text/javascript "></script>
<script src="style/js/popup.min.js " type="text/javascript "></script>

<!--  -->



	</body></html>