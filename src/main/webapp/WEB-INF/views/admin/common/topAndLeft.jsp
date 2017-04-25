<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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