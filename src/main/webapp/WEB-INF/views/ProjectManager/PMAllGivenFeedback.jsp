<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Goals</title>
<meta content="" name="description">
<meta content="" name="keywords">

<jsp:include page="../AdminCss.jsp"></jsp:include>

</head>
<body class="">
	<jsp:include page="ProjectManagerHeader.jsp"></jsp:include>
	<jsp:include page="ProjectManagerSidebar.jsp"></jsp:include>
	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="employeehome">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->
		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">
				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<!-- Reports -->
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">All Goals Assignd By Me</h5>
								<!-- Bordered Table -->
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>No</th>
											<th>Feedback Date</th>
											<th>Employee Name</th>
											<th>Appraisal</th>
											<th>Feedback</th>
											<th>Type</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="counter" value="1" />
										<c:forEach items="${givenFeedbacks}" var="f">
											<tr>
												<td>${counter}</td>
												<td>${f.feedbackDate}</td>
												<td>${employeeNames[f.employeeId]}</td>
												<td>${appraisals[f.appraisalId]}</td>
												<td>${f.feedbackText}</td>
												<td>${f.type}</td>
											</tr>
											<c:set var="counter" value="${counter + 1}" />
										</c:forEach>
										<c:if test="${empty givenFeedbacck}">
													<tr>
														<td colspan="6">No Feedbacks Found.</td>
													</tr>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">
										Reports <span>/Today</span>
									</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center active"><i
		class="bi bi-arrow-up-short"></i></a>
	<!-- Template Main JS File -->
	<!-- <script src="assets/js/main.js"></script> -->

	<jsp:include page="../AdminFooter.jsp"></jsp:include>

	<jsp:include page="../AdminJs.jsp"></jsp:include>

</body>

</html>