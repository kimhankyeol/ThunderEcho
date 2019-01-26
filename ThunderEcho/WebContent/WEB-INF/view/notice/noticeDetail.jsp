<%@page import="poly.dto.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
function noticeDetail(){
	location.href="/noticeList.do";
}
</script>
<%@ include file="/WEB-INF/view/topCssJs.jsp" %>
</head>
<body>
 <%@ include file="/WEB-INF/view/top.jsp" %>
<div>제목:<%=nDTO.getNoticeTitle() %></div>
<div><%=nDTO.getNoticeContent() %></div>
<div><button onclick="noticeUpdateView()">수정</button><button onclick="noticeDetail()">취소</button></div>
<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>
</body>
</html>