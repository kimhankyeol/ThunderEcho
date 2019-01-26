<%@page import="poly.dto.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% List<NoticeDTO> nList = (List<NoticeDTO>)request.getAttribute("nList"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/view/topCssJs.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/view/top.jsp" %>
<table>
<tr>
<td>게시판 번호</td>
<td>게시판 제목</td>
<td>게시판 작성자</td>
<td>작성일</td>
</tr>
<%for (int i=0 ; i<nList.size(); i++){ %>
<tr>
<td><%=nList.get(i).getNoticeNo()%></td>
<td><a href="/noticeDetail.do?noticeNo=<%=nList.get(i).getNoticeNo()%>"><%=nList.get(i).getNoticeTitle()%></a></td>
<td>관리자</td>
<td><%=nList.get(i).getRegDate()%></td>
</tr>
<%} %>
</table>

<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>
</body>
</html>