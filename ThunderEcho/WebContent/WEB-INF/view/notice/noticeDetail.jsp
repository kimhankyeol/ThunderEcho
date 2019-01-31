<%@page import="poly.util.CmmUtil"%>
<%@page import="poly.dto.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String userName =CmmUtil.nvl((String)session.getAttribute("userName")); %>
<%NoticeDTO nDTO = (NoticeDTO)request.getAttribute("nDTO"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function noticeUpdateView(){
	location.href="/noticeUpdateView.do?noticeNo=<%=nDTO.getNoticeNo()%>";
}
function adminNoticeDetail(){
	location.href="/adminNoticeList.do?pagenum=1&contentnum=10";
}
function noticeDetail(){
	location.href="/noticeList.do?pagenum=1&contentnum=10";
}
</script>
<%@ include file="/WEB-INF/view/topCssJs.jsp" %>
</head>
<body>
 <%@ include file="/WEB-INF/view/top.jsp" %>
<div>제목:<%=nDTO.getNoticeTitle() %></div>
<div><%=nDTO.getNoticeContent() %></div>
<%
if(userName.equals("관리자")){
%>
<div><button class="btn btn-success" onclick="noticeUpdateView()">수정</button><button class="btn btn-danger" onclick="adminNoticeDetail()">돌아가기</button></div>
<%}else{ %>
<button class="cart-black-button" onclick="noticeDetail()">돌아가기</button>
<%} %>
<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>
</body>
</html>