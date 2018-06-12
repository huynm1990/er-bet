<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Match</title>

</head>

<style>
.card {
	background: #fff none repeat scroll 0 0 !important;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.15) !important;
	margin-bottom: 30px !important;
	position: relative !important;
}

.table>tbody>tr>th {
	border-top: 1px solid #f0f0f0;
	line-height: 1.42857;
	padding: 10px;
	vertical-align: top;
}

.table body {
	color: #5e5e5e;
	font-family: roboto;
	font-size: 13px;
	line-height: 1.42857;
}
</style>

<c:import url="/WEB-INF/views/user-header.jsp" />
<script
	src="<spring:message code="domain"/>/resources/js/match-create.js"></script>
<script src="<spring:message code="domain"/>/resources/js/common.js"></script>
<script src="<spring:message code="domain"/>/resources/lib/bootstrap/js/bootstrap-datetimepicker.js"></script>
<link href="<spring:message code="domain"/>/resources/lib/bootstrap/css/bootstrap-datetimepicker.css"	rel="stylesheet">
<body class="toggled sw-toggled">
	<c:import url="/WEB-INF/views/admin-navbar.jsp" />
	<c:import url="/WEB-INF/views/admin/menu.jsp" />

	<section id="content">
	<div class="container">
		<div class="col-md-6">
			<div id="matchUpdate" class="row form-horizontal" style="">

				<div class="alert alert-danger alert-dismissible col-lg-12"
					id="errorMessage" role="alert"
					style="margin: 10px 0 !important; display: none;"></div>

				<div class="card">
					<div class="card-header bgm-deeppurple">
						<h4>Create Match</h4>
					</div>
					<div class="card-body card-padding">

						<div class="form-group">
							<label class="col-sm-4 control-label"> Team 1:</label>
							<div class="col-sm-8">
								<div class="fg-line select">
									<select id="team1Selected" class="form-control">
										<c:forEach var="team" items="${teams}">
											<option id="${team.id}">${team.name}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label"> Team 2:</label>
							<div class="col-sm-8">
								<div class="fg-line select">
									<select id="team2Selected" class="form-control">
										<c:forEach var="team" items="${teams}">
											<option id="${team.id}">${team.name}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>


						<div class="form-group">
							<label for="inputEmail3" class="col-sm-4 control-label">
								Match Type:</label>
							<div class="col-sm-8">
								<div class="fg-line">
									<select id="typeSelected" class="form-control">
										<c:forEach var="type" items="${types}">
											<option id="${type.id}">${type.name}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>

						<div class="input-group form-group">
							<span class="input-group-addon"><i class="md md-event"></i></span>
							<div class="dtp-container dropdown fg-line">
								<input type="text" id="matchTime"
									class="form-control " data-toggle="dropdown"
									placeholder="Click here..." aria-expanded="false">
							</div>
						</div>
					</div>
				</div>

				<div class="">
					<input type="email" class="form-control input-sm" id="matchId"
						placeholder="" style="display: none;">
					<button onclick="save()" class="btn bgm-blue">Save</button>
				</div>

			</div>
		</div>


	</div>
	</section>
</body>
</html>