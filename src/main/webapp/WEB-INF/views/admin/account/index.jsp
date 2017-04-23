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

<h1>${encoding}</h1>

<div id="top-nav" class="shadow">
    <div class="pull-left">
        <a href="javascript:void(0)" class="site-title">
            <!--<div class="menu-container" onclick="myFunction(this)">-->
            <!--<div class="bar1"></div>-->
            <!--<div class="bar2"></div>-->
            <!--<div class="bar3"></div>-->
            <!--</div>-->
            <!--<span class="glyphicon glyphicon-home"></span>-->
            <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>
            <span>Trips Management System</span>
        </a>
    </div>
    <div class="admin pull-right flex">
        <div class="admin-name">
            <img class="img-circle" src="${pageContext.request.contextPath}/resources/images/profile.jpg"
                 alt="null">
            <span>John Doe <i class="glyphicon glyphicon-chevron-down" style="font-size: 10px;"></i></span>
        </div>
        <ul class="admin-content shadow">
            <li>
                <a href="#">
                    <span>Profile</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span>Settings</span>
                    <span class="badge bg-red pull-right">50%</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span>Help</span>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/logout">
                    <span>Logout</span>
                    <span class="glyphicon glyphicon-log-out pull-right"></span>
                </a>
            </li>
        </ul>
    </div>
    <div class="pull-right" id="env-content">
        <i class="glyphicon glyphicon-envelope envelope">
            <span class="badge">9</span>
        </i>
    </div>
</div>

<div id="left-nav" class="right-nav-shadow">
    <div class="profile">
        <div class="profile-pic">
            <img class="img-circle profile-image" src="${pageContext.request.contextPath}/resources/images/profile.jpg"
                 alt="null">
        </div>
        <div class="profile-info">
            <span>Welcome,</span>
            <h2>John Doe</h2>
        </div>
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    </div>
    <div style="clear: both;"></div>
    <div id="left-nav-content">
        <ul>
            <li class="list-active">
                <div class="left-nav-content-main">
                    <i class="glyphicon glyphicon-cog fa"></i>
                    Quản lý tài khoản
                    <span class="glyphicon glyphicon-chevron-down gl-right"></span>
                </div>
                <ul class="child-menu" style="display: block">
                    <li class="current-page"><a href="index.html">Danh sách tài khoản</a></li>
                    <li><a href="javascript:void(0)">Thêm tài khoản</a></li>
                </ul>
            </li>
            <li>
                <div class="left-nav-content-main">
                    <i class="glyphicon glyphicon-cog fa"></i>
                    Quản lý lộ trình
                    <span class="glyphicon glyphicon-chevron-down gl-right"></span>
                </div>
                <ul class="child-menu">
                    <li class=""><a href="#">Danh sách lộ trình</a></li>
                    <li><a href="#">Dashboard 1</a></li>
                    <li><a href="#">Dashboard 1</a></li>
                </ul>
            </li>
            <li>
                <div class="left-nav-content-main">
                    <i class="glyphicon glyphicon-cog fa"></i>
                    Quản lý lịch chạy
                    <span class="glyphicon glyphicon-chevron-down gl-right"></span>
                </div>
                <ul class="child-menu">
                    <li><a href="#">Lịch chạy</a></li>
                    <li><a href="#">Lịch chạy tuần</a></li>
                </ul>
            </li>
            <li>
                <div class="left-nav-content-main">
                    <i class="glyphicon glyphicon-cog fa"></i>
                    Quản lý tài xế
                    <span class="glyphicon glyphicon-chevron-down gl-right"></span>
                </div>
                <ul class="child-menu">
                    <li class=""><a href="#">Danh sách tài xế</a></li>
                    <li><a href="#">Dashboard 1</a></li>
                    <li><a href="#">Dashboard 1</a></li>
                </ul>
            </li>
            <li>
                <div class="left-nav-content-main">
                    <i class="glyphicon glyphicon-cog fa"></i>
                    Quản lý xe
                    <span class="glyphicon glyphicon-chevron-down gl-right"></span>
                </div>
                <ul class="child-menu">
                    <li class=""><a href="#">Danh sách xe</a></li>
                    <li><a href="#">Dashboard 1</a></li>
                    <li><a href="#">Dashboard 1</a></li>
                    <li><a href="#">Dashboard 1</a></li>
                    <li><a href="#">Dashboard 1</a></li>
                </ul>
            </li>
            <li>
                <div class="left-nav-content-main">
                    <i class="glyphicon glyphicon-cog fa"></i>
                    Thống kê
                    <span class="glyphicon glyphicon-chevron-down gl-right"></span>
                </div>
                <ul class="child-menu">
                    <li class=""><a href="#">Thống kê doanh thu</a></li>
                    <li><a href="#">Dashboard 1</a></li>
                    <li><a href="#">Dashboard 1</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <div id="bottom-left-nav">
        <a href="#">
            <span class="glyphicon glyphicon-cog"></span>
        </a>
        <a href="javascript:void(0)">
            <span class="glyphicon glyphicon-fullscreen" onclick="$(document).fullScreen(true)" title="Full Screen Mode"></span>
        </a>
        <a href="#">
            <span class="glyphicon glyphicon-eye-close"></span>
        </a>
        <a href="#">
            <span class="glyphicon glyphicon-off"></span>
        </a>
    </div>
</div>

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

<footer class="footer">
    <p style="padding-right: 20px;">Developed by Khanh Nguyen</p>
</footer>

<script>
    function openNav() {
        document.getElementById("left-nav").style.width = "17.7%";
        document.getElementById("main-content").style.marginLeft = "17.7%";
//        document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
    }

    function closeNav() {
        document.getElementById("left-nav").style.width = "0";
        document.getElementById("main-content").style.marginLeft = "0";
//        document.body.style.backgroundColor = "white";
    }

</script>
<script src="${pageContext.request.contextPath}/resources/js/admin.js"></script>

</body>
</html>