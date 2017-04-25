<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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