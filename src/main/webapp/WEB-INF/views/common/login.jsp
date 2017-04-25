<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vi">
<head>

<title>Login Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css">
</head>

<script>
$(function() {
	$("#error-login").delay(1000).slideUp(1000);
});
</script>

<body>
	<%@include file="header.jsp"%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default">
					<div class="panel-heading text-center">
						<h4>Đăng nhập</h4>
					</div>
					<div class="panel-body">
						<c:if test="${param.error == 'true'}">
							<div class="alert alert-danger alert-dismissable" id="error-login">
								<a href="#" class="close" data-dismiss="alert"
									aria-label="close">&times;</a> <strong>Lỗi!</strong> Tên đăng
								nhập hoặc mật khẩu không đúng.
							</div>
						</c:if>
						<c:url value="/login" var="loginUrl"/>
						<form class="form-horizontal" role="form" method="POST"
							action="${loginUrl}">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							<div class="form-group">
								<label class="col-md-4 control-label">Username</label>
								<div class="col-md-6">
									<input type="text" class="form-control" name="username"
										placeholder="Enter username" required>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-4 control-label">Password</label>
								<div class="col-md-6">
									<input type="password" class="form-control" name="password"
										placeholder="Enter your password" required>
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-6 col-md-offset-4">
									<button type="submit" class="btn btn-primary">Đăng
										nhập</button>

								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>