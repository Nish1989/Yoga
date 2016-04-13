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

<script src="web/js/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="web/js/bootstrap.min.js"></script>
<link href="dataTables/dataTables.bootstrap.css" rel="stylesheet" />
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

					<div class="row">

						<!-- Advanced Tables -->
						<div class="panel panel-default" style="font-size: 12px;">
							<!-- Default panel contents -->
							<div class="panel-heading">

								<div class="row">
									<div class="col-md-9">
										<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
										<b>Full Data Collection</b>

									</div>
									<div class="col-md-3">

										<form id="adminForm" class="form-horizontal" method="post"
											action="admin">

											<button type="button" class="btn btn-success"
												data-toggle="modal" data-target="#addData">
												<span class="glyphicon glyphicon-plus"></span> Add Data
											</button>

											<button type="button" class="btn btn-danger"
												data-toggle="modal" data-target="#deleteData">
												<span class="glyphicon glyphicon-remove"></span> Delete Data
											</button>

										</form>

									</div>
								</div>




							</div>
							<div class="panel-body">
								<div class="table-responsive" style="overflow-x: hidden;">
									<table class="table table-striped table-bordered table-hover"
										style="text-align: center;" id="dataTables-example">

										<thead>
											<tr>

												<th>Year</th>
												<th>Month</th>
												<th>Total Pages</th>
												<th>Index Info</th>

											</tr>
										</thead>
										<tbody>

											<%
												Iterator<BookInfoVo> itr = bookInfoList.iterator();

												while (itr.hasNext())

												{

													BookInfoVo bookInfoVo = itr.next();
											%>

											<tr>

												<td><%=bookInfoVo.getYear()%></td>

												<td><%=bookInfoVo.getMonth()%></td>

												<td><%=bookInfoVo.getTotalPages()%></td>

												<td><%=bookInfoVo.getIndexInfo()%></td>



												<%
													}
												%>
											
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



	<!-- Modal -->
	<div class="modal fade" id="addData" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Add</h4>
				</div>
				<div class="modal-body">

					<div class="panel-group" id="accordion" role="tablist"
						aria-multiselectable="true">
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingOne">
								<h4 class="panel-title">
									<a role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne"> <span
										class="glyphicon glyphicon-plus" aria-hidden="true"></span> <b>Add
											Data</b> </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in"
								role="tabpanel" aria-labelledby="headingOne">

								<form id="addForm" class="form-horizontal" method="post"
									action="admin">

									<div class="panel-body">
										<div style="margin-bottom: 4%">

											<input type="text" name="year" required="required"
												class="form-control" style="height: 40px;"
												placeholder="Year">

										</div>

										<div style="margin-bottom: 4%">

											<select name="month" class="form-control"
												style="height: 40px;">
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

										<input type="hidden" name="operation" value="add"
											class="form-control" placeholder="Total Pages">

										<div style="margin-bottom: 4%">

											<input type="text" name="totalPages" required="required"
												class="form-control" style="height: 40px;"
												placeholder="Total Pages">

										</div>


										<div style="margin-bottom: 4%">

											<textarea class="form-control" id="indexInfo"
												name="indexInfo" required="required"
												placeholder="Index Info" rows="3"></textarea>

										</div>

										<div class="input-group"
											style="width: 100%; margin-bottom: 3%">

											<button data-dismiss="modal" class="btn btn-default btn-sm"
												style="float: right;">
												<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
												Cancel
											</button>

											<button id="addDataBtn" class="btn btn-success btn-sm"
												style="margin-right: 3%; float: right;">
												<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
												Add Data
											</button>

										</div>

									</div>
								</form>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingTwo">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapseTwo"
										aria-expanded="false" aria-controls="collapseTwo"> <span
										class="glyphicon glyphicon-open" aria-hidden="true"></span> <b>
											Upload Data Sheet</b> </a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingTwo">
								<div class="panel-body">


									<div class="input-group" style="width: 100%; margin-bottom: 3%">


										<form id="FileUploadServlet" enctype="multipart/form-data"
											class="form-horizontal" method="post" action="FileUploadServlet">


											<table class="table table-bordered">

												<tr>
													<td><input type="file" name="uploadFile"
														required="required" class="form-control"
														style="height: 40px;" placeholder="Total Pages">
													</td>

												</tr>

												<tr>
													<td>

														<div class="row">
															<div class="col-lg-6">

																<span style="font-size: 14px;"> <a
																	href="Import_Format.xls"> <span
																		class="glyphicon glyphicon-save" aria-hidden="true"></span>
																		<u>Download Input Data Templete</u> </a> </span>

																<!-- /input-group -->
															</div>
															<!-- /.col-lg-6 -->
															<div class="col-lg-6">
																<button data-dismiss="modal"
																	class="btn btn-default btn-sm" style="float: right;">
																	<span class="glyphicon glyphicon-remove"
																		aria-hidden="true"></span> Cancel
																</button>

																<button type="submit" id="go"
																	class="btn btn-success btn-sm"
																	style="margin-right: 3%; float: right;">
																	<span class="glyphicon glyphicon-open"
																		aria-hidden="true"></span> Upload
																</button>
																<!-- /input-group -->
															</div>
															<!-- /.col-lg-6 -->
														</div>
													</td>

												</tr>

											</table>

										</form>

									</div>


								</div>
							</div>
						</div>

					</div>


				</div>

			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="deleteData" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Delete</h4>
				</div>
				<div class="modal-body">

					<form id="deleteForm" class="form-horizontal" method="post"
						action="admin">

						<div class="panel-body">
							<div style="margin-bottom: 4%">

								<input type="text" name="year" required="required"
									class="form-control" style="height: 40px;" placeholder="Year">

							</div>

							<div style="margin-bottom: 4%">

								<select name="month" class="form-control" style="height: 40px;">
									<option value='0'>Delete All</option>
									<option value='1'>1. Janaury</option>
									<option value='2'>2. February</option>
									<option value='3'>3. March</option>
									<option value='4'>4. April</option>
									<option value='5'>5. May</option>
									<option value='6'>6. June</option>
									<option value='7'>7. July</option>
									<option value='8'>8. August</option>
									<option value='9'>9. September</option>
									<option value='10'>10. October</option>
									<option value='11'>11. November</option>
									<option value='12'>12. December</option>
								</select>

							</div>

							<input type="hidden" name="operation" value="delete"
								class="form-control" placeholder="Total Pages">


							<div class="input-group" style="width: 100%; margin-bottom: 3%">

								<button data-dismiss="modal" class="btn btn-default btn-sm"
									style="float: right;">
									<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
									Cancel
								</button>

								<button id="deleteDataBtn" class="btn btn-danger btn-sm"
									style="margin-right: 3%; float: right;">
									<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
									Delete Data
								</button>

							</div>

						</div>
					</form>

				</div>

			</div>
		</div>
	</div>




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

