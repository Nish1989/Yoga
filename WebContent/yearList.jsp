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
<link href="dataTables/dataTables.bootstrap.css" rel="stylesheet" />
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
	import="java.util.ArrayList,java.util.List,java.util.Map,java.util.Set,java.util.Iterator,java.util.Collections,java.util.Arrays,org.apache.commons.collections4.MultiMap,org.apache.commons.collections4.map.MultiValueMap"%>
<%@page
	import="com.yoga.vo.BookInfoVo,com.yoga.config.ServerConfig,com.yoga.config.FileUtil"%>



<%
	MultiMap multiMap = (MultiMap) request
			.getAttribute("bookInfoMultiMap");

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






					<div class="row">



						<!-- Advanced Tables -->
						<div class="panel panel-default" style="font-size: 12px;">
							<!-- Default panel contents -->
							<div class="panel-heading">

								<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
								<b>Full Data Collection</b> - Click on Item to Open <span
									style="float: right; font-size: 14px; font-weight: bold;"><a
									href="/Yoga"><span class="glyphicon glyphicon-backward"
										aria-hidden="true"></span> Back to Home</a> </span>


							</div>
							<div class="panel-body">
								<div class="table-responsive" style="overflow-x: hidden;">
									<table class="table table-striped table-bordered table-hover"
										style="text-align: center;" id="dataTables-example">

										<thead>
											<tr>

												<th>Year</th>

												<th>Janaury</th>
												<th>February</th>
												<th>March</th>
												<th>April</th>
												<th>May</th>
												<th>June</th>
												<th>July</th>
												<th>August</th>
												<th>September</th>
												<th>October</th>
												<th>November</th>
												<th>December</th>

											</tr>
										</thead>
										<tbody>



											<%
											
											Set<Integer> keys = multiMap.keySet();

											// iterate through the key set and display key and values
											for (int key : keys) {
												
												%>
											<tr>

												<td><a class="btn btn-primary  btn-sm"
													href="FlipBook?year=<%=key%>" role="button"><span
														class="glyphicon glyphicon-share" aria-hidden="true"></span>
														<%=key%></a>
												</td>



												<%
												
												List<Integer> monthList = (List<Integer>) multiMap.get(key);
												
												for(int i =1; i<=12; i++)
												{
													
												if(monthList.contains(i))
												{
												
												%>

												<td><a class="btn btn-default  btn-sm"
													href="FlipBook?year=<%=key%>&&month=<%=i%>" role="button"><span
														class="glyphicon glyphicon-share" aria-hidden="true"></span>
												</a>
												</td>


												<%} else { %>

												<td><a class="btn btn-default  btn-sm alert-info" disabled="disabled"
													href="FlipBook?year=<%=key%>&&month=<%=i%>" role="button"><span
														class="glyphicon glyphicon-share" aria-hidden="true"></span>
												</a>
												</td>

												<%}
												
												} %>

											</tr>

											<%} %>







										</tbody>
									</table>
								</div>

							</div>
						</div>
						<!--End Advanced Tables -->







					</div>


					<!---//End Search Column---->


				</div>


			</div>
		</div>
	</div>

	<!---//End-wrap---->
</body>

<!-- METISMENU SCRIPTS -->
<script src="dataTables/jquery.dataTables.js"></script>
<script src="dataTables/dataTables.bootstrap.js"></script>
<script>
	$(document).ready(function() {
		$('#dataTables-example').dataTable();
	});
</script>


</html>

