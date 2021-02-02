<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="kr.login.model.*" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<c:if test="${vo==null}">
    <<c:redirect url="login.jsp" />
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<title>반갑습니다. ${vo.mname}님</title>
<style type="text/css">
*{color:#fff}
</style>
</head>
<body>
<div style="background:#1e2833;">
    <div style="box-sizing:border-box;width:100%;height:58px;border-bottom:1px solid #434a52;text-align:center;:">
        <div style="background:#fff"><img src="images/logo.png"></div>
    </div>
    <div style="box-sizing:border-box;dispaly:table;">
        <div style="box-sizing:border-box;display:table-cell;width:30%;height:300px;">
            <div style="box-sizing:border-box;width:200px; height:100px;border:1px dotted #434a52;padding:10px;margin:10px;position:fixed;vertical-align:top;">
                <span>${vo.mname}님 와썹!.</span>
                <button name="logout" id="logout" class="btn btn-primary">나갈랩?</button>
            </div>
        </div>
        <div style="box-sizing:border-box;display:table-cell;width:70%;height:300px;text-align:center;border-left:1px solid #434a52;">
            <div style="margin:20px;box-sizing:border-box;color:#000;">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/A3UpNbM0nt0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
        </div>
    </div>
    <div style="box-sizing:border-box;height:50px;width:100%;border-top:1px solid #434a52;text-align:center;">
        <c:import url="footer.jsp" />
        <!--<jsp:include page="footer.jsp" />-->
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
$(document).ready( () => {
   $("#logout").click( () => {
       location.href="${cpath}/logout.do";
   });
});
</script>
</body>
</html>