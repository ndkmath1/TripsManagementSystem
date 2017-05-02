<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.trips.util.DateTimeUtils"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<title>Trips Management System - Main Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
<!-- (Optional) Latest compiled and minified JavaScript translation files -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/i18n/defaults-*.min.js"></script>
<!-- Bootstrap date picker plugin-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/locales/bootstrap-datepicker.vi.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/home.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/loader.css">
<script src="${pageContext.request.contextPath}/resources/js/loader.js"></script>
</head>
<body>
	<div id="loader-container">
		<div id="loader"></div>
	</div>
	<div class="wrapper" style="display: none;">
		<%@ include file="../common/header.jsp"%>
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<div id="myCarousel" class="carousel slide text-center"
						data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
							<li data-target="#myCarousel" data-slide-to="3"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img
									src="${pageContext.request.contextPath}/resources/images/limousine-1.jpg"
									alt=''>
								<div class="carousel-caption">
									<h3>Chania</h3>
									<p>The atmosphere in Chania has a touch of Florence and
										Venice.</p>
								</div>
							</div>
							<div class="item">
								<img
									src="${pageContext.request.contextPath}/resources/images/limousine-2.jpg"
									alt=''>
								<div class="carousel-caption">
									<h3>Chania</h3>
									<p>The atmosphere in Chania has a touch of Florence and
										Venice.</p>
								</div>
							</div>
							<div class="item">
								<img
									src="${pageContext.request.contextPath}/resources/images/limousine-3.jpg"
									alt=''>
								<div class="carousel-caption">
									<h3>Chania</h3>
									<p>The atmosphere in Chania has a touch of Florence and
										Venice.</p>
								</div>
							</div>
							<div class="item">
								<img
									src="${pageContext.request.contextPath}/resources/images/limousine-4.jpg"
									alt=''>
								<div class="carousel-caption">
									<h3>Chania</h3>
									<p>The atmosphere in Chania has a touch of Florence and
										Venice.</p>
								</div>
							</div>
						</div>

						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel" role="button"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							role="button" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<div class="col-md-5">
					<div class="booking shadow-all">
						<div class="booking-content">
							<h4 class="booking-title">Đặt chỗ trực tuyến</h4>
							<form class="form" name="bookingForm" method="POST" action="">
								<div class="row">
									<div class="col-xs-6">
										<div class="form-group">
											<label for="select-origin">Điểm khởi hành</label>
											<div class="controls">
												<!--<i class="fa fa-bus text-primary"></i>-->
												<select name="selectOrigin" id="select-origin"
													class="selectpicker" data-live-search="true"
													data-width="100%">
													<option data-tokens="Hà Nội">Hà Nội</option>
													<option data-tokens="TP. Hồ Chí Minh">TP. Hồ Chí
														Minh</option>
													<option data-tokens="Đà Nẵng">Đà Nẵng</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-xs-6">
										<div class="form-group">
											<label for="select-destination">Điểm đến</label>
											<div class="controls">
												<!--<i class="fa fa-bus text-primary"></i>-->
												<select name="selectDestination" id="select-destination"
													class="selectpicker" data-live-search="true"
													data-width="100%">
													<option data-tokens="Hà Nội">Hà Nội</option>
													<option data-tokens="TP. Hồ Chí Minh">TP. Hồ Chí
														Minh</option>
													<option data-tokens="Đà Nẵng">Đà Nẵng</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-6">
										<div class="form-group">
											<label for="select-date">Ngày khỏi hành</label>
											<div class="controls">
												<!--<i class="fa fa-clock-o text-primary"></i>-->
												<input id="select-date" name="selectDate"
													placeholder=" dd/mm/yyyy"
													class="form-control date-readonly" value="${nextDate}" readonly=""
													type="text" data-provide="datepicker"
													data-date-format="dd/mm/yyyy" style="cursor: pointer">
											</div>
										</div>
									</div>
									<div class="col-xs-6">
										<div class="form-group">
											<label for="num-ticket">Số lượng vé</label>
											<div class="controls">
												<!--<i class="fa fa-ticket text-primary"></i>-->
												<input id="num-ticket" name="numOfTicket" placeholder="1"
													value="1" class="form-control" min="1" max="10"
													type="number" disabled>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<button class="btn btn-primary" type="submit">Đặt vé</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="item-block text-center">
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/images/footer-customer.png"
								alt="null">
						</div>
						<div>
							<h5>Hơn 20 triệu lượt khách</h5>
							<p>Nhà xe phục vụ hơn 20 triệu lượt khách/ bình quân 1 năm
								trên toàn quốc</p>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="item-block text-center">
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/images/footer-customer.png"
								alt="null">
						</div>
						<div>
							<h5>Hơn 20 triệu lượt khách</h5>
							<p>Nhà xe phục vụ hơn 20 triệu lượt khách/ bình quân 1 năm
								trên toàn quốc</p>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="item-block text-center">
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/images/footer-customer.png"
								alt="null">
						</div>
						<div>
							<h5>Hơn 20 triệu lượt khách</h5>
							<p>Nhà xe phục vụ hơn 20 triệu lượt khách/ bình quân 1 năm
								trên toàn quốc</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>