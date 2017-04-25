<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <title>Trips Management System - Admin Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="http://mottie.github.io/tablesorter/css/theme.default.css" rel="stylesheet">
    <link rel="stylesheet" href="https://mottie.github.io/tablesorter/css/theme.blue.css">
    <script src="https://mottie.github.io/tablesorter/js/jquery.tablesorter.js"></script>
    <script src="https://mottie.github.io/tablesorter/js/widgets/widget-storage.js"></script>
    <script src="https://mottie.github.io/tablesorter/js/widgets/widget-filter.js"></script>
    <link rel="stylesheet" href="https://mottie.github.io/tablesorter/css/theme.blue.css">
    <script src="${pageContext.request.contextPath}/resources/js/admin.tablesorter.js"></script>
    <!-- HTML includes are done by JavaScript -->
    <script src="http://www.w3schools.com/lib/w3data.js"></script>
    <!-- Add my css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css">
    <link rel="stylesheet" href="../../css/animated-menu-icon.css">
    <!-- Add icon for title page -->
    <link rel="shortcut icon" type="image/png" href="../../icon/ic_title1.png">
    <!-- fullscreen mode -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.fullscreen-min.js"></script>

</head>
<body>

<%@ include file="common/topAndLeft.jsp" %>

<div id="main-content">
    <div class="center-content">
        <div class="user-detail">
            <div class="list shadow-all">
                <div id="creator-subheader">
                    <div class="creator-subheader-content">
                        <h2>Danh sách tài khoản</h2>
                        <span id="creator-subheader-item-count" class="badge-creator">100</span>
                    </div>
                    <div class="creator-subheader-controls">
                        <form>
                            <div class="input-group">
                                <input id="search-text" type="text" class="form-control clear-border-radius" name="searchText" placeholder="Search...">
                                <div class="input-group-btn">
                                    <button class="btn btn-default clear-border-radius" type="submit">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="clear"></div>
                <hr>
                <table class="table table-hover tablesorter" id="myTable">
                    <thead>
                    <tr>
                        <th>
                            <input type="checkbox" name="select-all" value="">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default select-action">Action</button>
                                <button type="button" class="btn btn-default dropdown-toggle caret-action"
                                        data-toggle="dropdown">
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Delete</a></li>
                                    <li><a href="#">More</a></a></li>
                                </ul>
                            </div>
                        </th>
                        <th>#</th>
                        <th>Picture</th>
                        <th>Firstname</th>
                        <th>Lastname</th>
                        <th>Email</th>
                        <th>Address</th>

                    </tr>
                    </thead>
                    <tbody>
                    <!--<tr class="filters">-->
                    <!--<th><input type="text" class="form-control" placeholder="Action" disabled></th>-->
                    <!--<th><input type="text" class="form-control" placeholder="#" ></th>-->
                    <!--<th><input type="text" class="form-control" placeholder="Picture" disabled></th>-->
                    <!--<th><input type="text" class="form-control" placeholder="Firstname"></th>-->
                    <!--<th><input type="text" class="form-control" placeholder="Lastname" ></th>-->
                    <!--<th><input type="text" class="form-control" placeholder="Email" ></th>-->
                    <!--<th><input type="text" class="form-control" placeholder="Address"></th>-->
                    <!--</tr>-->
                    <tr>
                        <td>
                            <input type="checkbox" name="selected[]" value="">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default select-action">Action</button>
                                <button type="button" class="btn btn-default dropdown-toggle caret-action"
                                        data-toggle="dropdown">
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="javascript:void(0)">Delete</a></li>
                                    <li><a href="user-detail.html">View Detail</a></a></li>
                                </ul>
                            </div>
                        </td>
                        <td>1</td>
                        <td><img class="profile-picture" src="${pageContext.request.contextPath}/resources/images/profile.png" alt="profile picture"></td>
                        <td>John</td>
                        <td>Doe</td>
                        <td>john@example.com</td>
                        <td>Hanoi, Vietnam</td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" name="selected[]" value="">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default select-action">Action</button>
                                <button type="button" class="btn btn-default dropdown-toggle caret-action"
                                        data-toggle="dropdown">
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="javascript:void(0)">Delete</a></li>
                                    <li><a href="user-detail.html">View Detail</a></a></li>
                                </ul>
                            </div>
                        </td>
                        <td>2</td>
                        <td><img class="profile-picture" src="${pageContext.request.contextPath}/resources/images/profile.png" alt="profile picture"></td>
                        <td>Mark</td>
                        <td>Zuckerberg</td>
                        <td>mark@example.com</td>
                        <td>California, US</td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" name="selected[]" value="">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default select-action">Action</button>
                                <button type="button" class="btn btn-default dropdown-toggle caret-action"
                                        data-toggle="dropdown">
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="javascript:void(0)">Delete</a></li>
                                    <li><a href="user-detail.html">View Detail</a></a></li>
                                </ul>
                            </div>
                        </td>
                        <td>3</td>
                        <td><img class="profile-picture" src="${pageContext.request.contextPath}/resources/images/profile.png" alt="profile picture"></td>
                        <td>Bill</td>
                        <td>Gate</td>
                        <td>bill@example.com</td>
                        <td>Silicon Valey, US</td>
                    </tr>
                    </tbody>
                </table>
                <div>
                    <ul class="pagination pull-right">
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li class="disabled"><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!--<div style=" background-color: #1abb9c; height: 500px; margin: 20px;">-->

    <!--</div>-->

</div>

<%@ include file="common/footer.jsp" %>

</body>
</html>