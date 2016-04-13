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
</script>
<!----webfonts---->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!----//webfonts---->
<!---start-click-drop-down-menu----->




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
						<!---//Start Search Column---->

						<div id="loginbox"
							class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

							<div class="panel panel-default"
								style="width: 80%; margin: auto; opacity: 0.9; filter: alpha(opacity =     90); margin-top: 4em;">

								<div class="panel-heading">Operations</div>

								<div class="panel-body">

									<form id="loginform" class="form-horizontal" method="post"
										action="#">

										<div style="margin-bottom: 4%">

											<select name="Operation" class="form-control"
												style="height: 40px;">
												
												<option value='Add'> <b>+</b> Add New Data</option>
												<option value='Delete'> <b>x</b> Delete Existing Data</option>
												
											</select>

										</div>
										
										<div class="btn-group">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
        Select icon <span class="caret"></span>
    </button>
    <ul class="dropdown-menu list-inline" role="menu">
        <li><span class="glyphicon glyphicon-cutlery"></span></li>
        <li><span class="glyphicon glyphicon-fire"></span></li>
        <li><span class="glyphicon glyphicon-glass"></span></li>
        <li><span class="glyphicon glyphicon-heart"></span></li>          
    </ul>
</div>

										<div style="margin-bottom: 4%">

											<input type="text" name="year" required="required"
												class="form-control" style="height: 40px;"
												placeholder="Year">

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




										<div class="input-group"
											style="width: 100%; margin-bottom: 3%">




											<button type="submit" id="go" class="btn btn-default"
												style="height: 40px; float: right;">
												<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
												Cancel
											</button>

											<button type="submit" id="go" class="btn btn-success"
												style="height: 40px; margin-right: 5%; float: right;">
												<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
												GO
											</button>




										</div>

									</form>



								</div>
							</div>
						</div>

						<!---//End Search Column---->
					</div>





					<!---//End Search Column---->


				</div>


			</div>
		</div>
	</div>



<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-4">.col-md-4</div>
          <div class="col-md-4 col-md-offset-4">.col-md-4 .col-md-offset-4</div>
        </div>
        <div class="row">
          <div class="col-md-3 col-md-offset-3">.col-md-3 .col-md-offset-3</div>
          <div class="col-md-2 col-md-offset-4">.col-md-2 .col-md-offset-4</div>
        </div>
        <div class="row">
          <div class="col-md-6 col-md-offset-3">.col-md-6 .col-md-offset-3</div>
        </div>
        <div class="row">
          <div class="col-sm-9">
            Level 1: .col-sm-9
            <div class="row">
              <div class="col-xs-8 col-sm-6">
                Level 2: .col-xs-8 .col-sm-6
              </div>
              <div class="col-xs-4 col-sm-6">
                Level 2: .col-xs-4 .col-sm-6
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
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

	function dataInfo(data) {

		alert(data);
	}
</script>


</html>

