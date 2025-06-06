<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Edit User</title>
<meta content="" name="description">
<meta content="" name="keywords">

<jsp:include page="AdminCss.jsp"></jsp:include>
</head>


<body>

	<jsp:include page="Admin/AdminHeader.jsp"></jsp:include>

	<jsp:include page="Admin/AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Edit User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Edit User</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->
		<section class="section">
			<div class="row justify-content-center">
				<div class="col-lg-6" style="max-width: 500px;">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Edit User Here</h5>

							<!-- Multi Columns Form -->
							<form class="row g-3" action="updateemployee" method="post">
								<div class="col-md-6">
									<label for="firstName" class="form-label">First Name</label> <input
										type="text" class="form-control" name="firstName"
										id="firstName" value="${user.firstName}">
								</div>
								<div class="col-md-6">
									<label for="lastName" class="form-label">Last Name</label> <input
										type="text" class="form-control" name="lastName" id="lastName"
										value="${user.lastName }">
								</div>
								<div class="row mb-3"
									style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
									<label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
									<div class="col-sm-10" style="padding-right: 0;">
										<input type="email" class="form-control" name="email"
											value="${user.email }">
									</div>
								</div>
								<div class="row mb-3"
									style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
									<label class="col-sm-5 col-form-label" for="typePhone">Contact
										number :</label>
									<div class="col-sm-7" style="padding-right: 0;">
										<input type="tel" id="typePhone" class="form-control"
											name="contactNo" value="${user.contactNo }">
									</div>
								</div>
								
								<fieldset class="row mb-3"
									style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
									<legend class="col-form-label col-sm-3 pt-0">Gender :</legend>
									<div class="col-sm-9 d-flex align-item-center">
										<div class="form-check me-3">
											<input class="form-check-input" type="radio" name="gender"
												id="male" value="male" ${user.gender == 'male' ? 'checked' : ''} > <label
												class="form-check-label" for="male"> Male </label>
										</div>
										<div class="form-check me-3">
											<input class="form-check-input" type="radio" name="gender"
												id="gridRadios2" value="female" ${user.gender == 'female' ? 'checked' : ''}> <label
												class="form-check-label" for="female"> Female </label>
										</div>
										<div class="form-check me-3">
											<input class="form-check-input" type="radio" name="gender"
												id="other" value="other" ${user.gender == 'other' ? 'checked' : ''}> <label
												class="form-check-label" for="other"> Other </label>
										</div>
									</div>
								</fieldset>
								<div class="row mb-3"
									style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
									<label for="inputDate" class="col-sm-7 col-form-label">Date
										Of Joining :</label>
									<div class="col-sm-5" style="padding-right: 0;">
										<input type="date" class="form-control" name="dateOfJoining" value="${user.dateOfJoining }">
									</div>
								</div>

								<div class="row mb-3"
									style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
									<label class="col-sm-4 col-form-label">Department : </label>
									<div class="col-sm-8" style="padding-right: 0;">
										<select class="form-select" name="departmentId"
											aria-label="Default select example">
											<option selected="">Select</option>
											<c:forEach items="${allDepartment}" var="de">
												<option value="${de.departmentId}" ${user.departmentID == de.departmentId ? 'selected' : ''}>${de.departmentName}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<select class="form-select" aria-label="Default select example"
									name="role">
									<option selected="">Select Role</option>
									<option value="Employee" ${user.role == 'Employee' ? 'selected' : ''}>Employee</option>
									<option value="HR" ${user.role == 'HR' ? 'selected' : ''}>HR</option>
									<option value="Project Manager" ${user.role == 'Project Manager' ? 'selected' : ''}>Project Manager</option>
								</select>
								<div class="text-center">
									<input type="hidden" name="userID" value="${user.userID}">
								</div>
								<div class="text-center" ">
									<button type="submit" class="btn btn-primary">Update</button>
									<button type="reset" class="btn btn-secondary">Reset</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>

	<jsp:include page="AdminFooter.jsp"></jsp:include>



	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>


	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>

</html>