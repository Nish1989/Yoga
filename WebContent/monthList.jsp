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


<!-- Latest compiled and minified JavaScript -->
<script src="web/js/bootstrap.min.js"></script>

<link href="web/css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="web/images/fav-icon.png" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

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
		$('#activator').click(function() {
			$('#box').animate({
				'top' : '0px'
			}, 500);
		});
		$('#boxclose').click(function() {
			$('#box').animate({
				'top' : '-700px'
			}, 500);
		});
	});
	$(document).ready(function() {
		//Hide (Collapse) the toggle containers on load
		$(".toggle_container").hide();
		//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
		$(".trigger").click(function() {
			$(this).toggleClass("active").next().slideToggle("slow");
			return false; //Prevent the browser jump to the link anchor
		});

	});
</script>
<!----//End-dropdown--->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@page
	import="java.util.ArrayList,java.util.List,java.util.Map,java.util.Iterator,java.util.Collections,java.util.Arrays"%>
<%@page
	import="com.yoga.vo.BookInfoVo,com.yoga.config.ServerConfig,com.yoga.config.FileUtil"%>


<%
	List<BookInfoVo> bookInfoList = (List<BookInfoVo>) request
			.getAttribute("bookInfoList");

	String[] monthList = ServerConfig.monthList;
%>




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
		<div class="wrap">
			<div class="contact-info">
				<div class="map">

					<!---//Start Search Column---->


					<div class="well well-sm">

						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
						<b><%=bookInfoList.get(0).getYear()%> Editions</b> <span
							style="float: right; font-size: 14px; font-weight: bold;"><a
							href="/Yoga"><span class="glyphicon glyphicon-backward"
								aria-hidden="true"></span> Back to Home</a> </span>

					</div>



					<%
						Iterator<BookInfoVo> bookInfoListItr = bookInfoList.iterator();
						while (bookInfoListItr.hasNext()) {

							BookInfoVo bookInfoVo = bookInfoListItr.next();

							String srcFile = FileUtil.flipBookFilePathBuilder(
									bookInfoVo.getYear(), bookInfoVo.getMonth());

							String monthName = monthList[bookInfoVo.getMonth() - 1];
					%>


					<!---//Start Month Column---->

					<div class="col-sm-6 col-md-4">
						<div class="panel panel-default" style="overflow: hidden;">
							<div class="panel-heading">

								<form class="form-horizontal" method="post" action="FlipBook">

									<span class="glyphicon glyphicon-book" aria-hidden="true"></span>
									<%=monthName%>
									<span style="margin-left: 30%;"> <input type="hidden"
										name="year" value="<%=bookInfoVo.getYear()%>" /> <input
										type="hidden" name="month" value="<%=bookInfoVo.getMonth()%>" />

										<button type="submit" class="btn btn-default">
											<span class="glyphicon glyphicon-share" aria-hidden="true"></span>
											Open Book
										</button> </span>

								</form>
							</div>

							<div class="panel-body" style="height: 120px; overflow: auto;">


								<table class="table table-bordered" style="font-size: 12px;">

									<tr>
										<th>#</th>
										<th>Table of Contents</th>
										<th>No</th>

									</tr>



									<%
										if (bookInfoVo.getIndexInfo() != null) {

												List<String> tableValue = new ArrayList<String>(
														Arrays.asList(bookInfoVo.getIndexInfo().split(",")));

												Iterator<String> tableValueItr = tableValue.iterator();

												int count = 0;

												while (tableValueItr.hasNext()) {
													
													if(count == 0)
													{
														%>
									<tr>
										<td><%=tableValueItr.next() %></td>

										<%
													} else {
														
														String content = tableValueItr.next();
														
														String pageNo = tableValueItr.next();
														
														String magazinePage = FileUtil.flipBookFilePathBuilder(bookInfoVo.getYear(), monthName, pageNo);
														
														%>
										<td><a href="<%=magazinePage %>" target="_blank"><%=content %></a>
										</td>

										<td><%=pageNo %>
									</tr>

									<%
														
														count = -1;
													}
													
													count = count + 1;
													
												}

											}
									%>





								</table>


							</div>
						</div>
					</div>

					<!---//end Month Column---->


					<%
						}
					%>













				</div>


			</div>
		</div>
	</div>

	<!---//End-wrap---->
</body>


</html>

