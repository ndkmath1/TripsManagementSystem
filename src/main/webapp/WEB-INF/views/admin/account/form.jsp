<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<title>${accountFormTitle}</title>
<%@ include file="../common/head.jsp" %>
</head>
<body>

	<%@ include file="../common/topAndLeft.jsp"%>

	<div id="main-content">
		<div class="center-content">
			<div class="user-detail">
				<div class="user-detail-top shadow">
					<!--  
					<ul>
						<li class="tab-active">Thông tin tài khoản</li>
						<li>Lịch sử hoạt động</li>
					</ul> -->
					<h4>Thông tin tài khoản</h4>
					<div class="account-info">
						<c:url value="/admin/account/save" var="formUrl" />
						<form:form action="${formUrl}" method="POST"
							modelAttribute="accountForm" class="form-horizontal">
							<form:hidden path="id" />
							<spring:bind path="email">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label class="control-label col-sm-2 col-sm-offset-2"
										for="email">Email:</label>
									<div class="col-sm-6">
										<form:input path="email" type="text" class="form-control"
											id="email" placeholder="Email" />
										<form:errors path="email" class="control-label" />
									</div>
								</div>
							</spring:bind>
							<c:set var="pwdHasBindError">
								<form:errors path="password" />
							</c:set>
							<div
								class="form-group ${not empty pwdHasBindError ? 'has-error' : '' }">
								<label class="control-label col-sm-2 col-sm-offset-2" for="pwd">Mật
									khẩu:</label>
								<div class="col-sm-6">
									<form:input path="password" type="password"
										class="form-control" id="pwd" placeholder="Password" />
									<form:errors path="password" class="control-label" />
								</div>
							</div>
							<spring:bind path="confirmPassword">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label class="control-label col-sm-2 col-sm-offset-2"
										for="confirmPassword">Mật khẩu:</label>
									<div class="col-sm-6">
										<form:input path="confirmPassword" type="password"
											class="form-control" id="confirmPassword"
											placeholder="Confirm password" />
										<form:errors path="confirmPassword" class="control-label" />
									</div>
								</div>
							</spring:bind>
							<div class="form-group">
								<label class="control-label col-sm-2 col-sm-offset-2" for="name">Tên:</label>
								<div class="col-sm-6">
									<form:input path="name" type="text" class="form-control"
										id="name" placeholder="Name" />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2 col-sm-offset-2"
									for="phoneNumber">Số điện thoại:</label>
								<div class="col-sm-6">
									<form:input path="phoneNumber" type="text" class="form-control"
										id="phoneNumber" placeholder="Phone number" />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2 col-sm-offset-2"
									for="address">Địa chỉ:</label>
								<div class="col-sm-6">
									<form:input path="address" type="text" class="form-control"
										id="address" placeholder="Address" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-4 col-sm-8">
									<button type="submit" class="btn btn-default">Lưu lại</button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../common/footer.jsp"%>

</body>
</html>