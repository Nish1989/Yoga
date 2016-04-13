<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Pinball Website Template | Contact :: w3layouts</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="web/css/bootstrap.min.css">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@page
	import="java.util.ArrayList,java.util.List,java.util.Map,java.util.Iterator,java.util.Collections"%>
<%@page
	import="com.yoga.vo.BookInfoVo,com.yoga.config.ServerConfig,com.yoga.config.FileUtil"%>


<%

BookInfoVo bookInfoList = (BookInfoVo) request.getAttribute("bookInfoList");

String srcFile = (String) request.getAttribute("srcFile");


String[] monthList = ServerConfig.monthList;

String monthName = monthList[bookInfoList.getMonth()-1];


%>


<!-- Latest compiled and minified JavaScript -->
<script src="web/js/bootstrap.min.js"></script>

<link href="web/css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="web/images/fav-icon.png" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<!----webfonts---->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!----//webfonts---->
<!---start-click-drop-down-menu----->
<script src="web/js/jquery.min.js"></script>
<!----start-dropdown--->
<script type="text/javascript">
			var $ = jQuery.noConflict();
				$(function() {
					$('#activator').click(function(){
						$('#box').animate({'top':'0px'},500);
					});
					$('#boxclose').click(function(){
					$('#box').animate({'top':'-700px'},500);
					});
				});
				$(document).ready(function(){
				//Hide (Collapse) the toggle containers on load
				$(".toggle_container").hide(); 
				//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
				$(".trigger").click(function(){
					$(this).toggleClass("active").next().slideToggle("slow");
						return false; //Prevent the browser jump to the link anchor
				});
									
			});
		</script>
<!----//End-dropdown--->
</head>
<body>
	<!---start-wrap---->
	<!---start-header---->
	<div class="header">
		<div class="wrap">
			<div class="logo">
				<a href="/Yoga"><img src="web/images/logo.png" title="pinbal" />
				</a>

			</div>



			<div class="clear"></div>
		</div>
	</div>
	<!---//End-header---->
	<!---start-content---->
	<div class="content">


		<div style="margin-top: 8%;">

			<div id="loginbox" class="mainbox col-md-8 col-md-offset-2">
				<div class="panel panel-default" style="width: 100%; margin: auto;">


					<div class="panel-body">
						<iframe width="100%" height="450" frameborder="0" scrolling="no"
							marginheight="0" marginwidth="0" src=" <%=srcFile%>"></iframe>



						<nav>
							<ul class="pager">
								<li class="previous" style="font-size: 12px; font-weight: bold;"><a
									href="/Yoga"><span class="glyphicon glyphicon-backward"
										aria-hidden="true"></span> Back to Home</a>
								</li>

								<li style="font-size: 12px; font-weight: bold;"><%=monthName%>
									<%=bookInfoList.getYear()%> Edition</li>

								<li class="next" style="font-size: 12px; font-weight: bold;"><a
									href=" <%=srcFile%>" target="_blank">Maximise <span
										class="glyphicon glyphicon-forward" aria-hidden="true"></span>
								</a>
								</li>
							</ul>
						</nav>
					</div>




				</div>





			</div>





		</div>










	</div>

	<!---//End-wrap---->
</body>
</html>

