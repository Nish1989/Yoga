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

<%@page import="com.yoga.config.ServerConfig"%>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="web/css/bootstrap.min.css">


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

<%
	String msg = (String) request.getAttribute("msg");
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

					<div id="loginbox"
						class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

						<div class="panel panel-default"
							style="width: 80%; margin: auto; opacity: 0.9; filter: alpha(opacity =   90); margin-top: 4em;">

							<div class="panel-body">

								<form id="loginform" class="form-horizontal" method="post"
									action="FlipBook">

									<div
										style="width: 40%; margin-left: auto; margin-right: auto; margin-bottom: 4%;">

										<a href="index.html"><img src="web/images/icon.png"
											title="pinbal" /> </a>

									</div>


									<div style="margin-bottom: 4%">

										<input type="text" name="year" required="required"
											class="form-control" style="height: 40px;" placeholder="Year">

									</div>

									<div style="margin-bottom: 6%">

										<select name="month" class="form-control"
											style="height: 40px;">
											<option value='0'>-- Select Month --</option>
											<option value='1'>Janaury</option>
											<option value='2'>February</option>
											<option value='3'>March</option>
											<option value='4'>April</option>
											<option value='5'>May</option>
											<option value='6'>June</option>
											<option value='7'>July</option>
											<option value='8'>August</option>
											<option value='9'>September</option>
											<option value='10'>October</option>
											<option value='11'>November</option>
											<option value='12'>December</option>
										</select>

									</div>

									<%
										if (msg != null && msg.equalsIgnoreCase(ServerConfig.error_msg)) {
									%>

									<div style="font-size: 12px;" class="alert alert-danger"
										role="alert">
										<b> No Results Found. </b> Please Try Again
									</div>


									<%
										}
									%>



									<div class="input-group" style="width: 100%; margin-bottom: 3%">



										<span style="font-size: 10px;">

											<button type="submit" id="go" class="btn btn-success"
												style="height: 40px; float: left;">
												<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
												GO
											</button> <!-- <a href="yearList.jsp" class="btn btn-success" style="height:40px;float:left;" >
											<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>  GO!</a> -->

										</span> <span style="font-size: 10px;"> <a href="#"
											class="btn btn-default" style="height: 40px; float: right;"
											onclick="callFullList();"> <span
												class="glyphicon glyphicon-list" aria-hidden="true"></span>
												Full List</a> </span>


									</div>

								</form>



							</div>
						</div>
					</div>

					<!---//End Search Column---->


				</div>


			</div>
		</div>
	</div>

	<!---//End-wrap---->
</body>

<script type="text/javascript">
	function callFullList() {

		$('#loginform').submit();
	}
</script>


</html>

