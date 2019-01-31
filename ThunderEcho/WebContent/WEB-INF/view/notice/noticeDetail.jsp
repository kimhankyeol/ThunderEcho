<%@page import="poly.util.DateUtil"%>
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
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
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
<link rel="stylesheet" href="/css/noticeList.css">
<link rel="stylesheet" href="/css/noticeFont.css">
</head>
<body>
 <%@ include file="/WEB-INF/view/top.jsp" %>
 <div class="subTitleBar">
	<div class="subTitleIn">
		<h2><img src="/img/notice.jpg" alt="공지사항"></h2>
			<ul class="smap">
                 <li><a style="color:black;" href="/main.do"><i class="fa fa-home fa-fw"></i></a></li>
                 <li><i class="fa fa-chevron-right fa-fw"></i></li>
                 <li class="en"><i class="fa fa-info-circle fa-fw"></i>INFORMATION</li>
                 <li><i class="fa fa-chevron-right fa-fw"></i></li>
                 <li><a style="color:black" href="/noticeList.do?pagenum=1&contentnum=10"><i class="fa fa-list-alt fa-fw"></i> 공지사항</a></li>
       		</ul>
	</div>
</div>
<div class="container" style="min-height: 80%;">
	<div class="width-100" style="padding-bottom: 30px;">
		<div class="detailWrap">
			<div class="detailInner">
				 <span><%=nDTO.getNoticeTitle()%></span>
				  <span><%=nDTO.getReadCount() %> 회</span>	
				 <span>조회수<i class="fa fa-hand-pointer-o fa-fw"></i></span>
				 <span><%=DateUtil.DateFormatter(nDTO.getRegDate().toString())%></span>	
				 <span>등록일<i class="fa fa-registered fa-fw"></i></span>
			</div>
		</div>
	</div>
	<div>
		<%=nDTO.getNoticeContent() %>
	</div>
</div>
	<%
if(userName.equals("관리자")){
%>
<div class="container">
	<div style="width: 100%;">
		<button class="btn btn-success" onclick="javascript:noticeUpdateView()" style="width: 45%; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 10% ;float:left;">수정</button>
		<button class="btn btn-danger" onclick="javascript:adminNoticeDetail()" style="width: 45%; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 10%;">돌아가기</button>
	</div>
</div>
<%}else{ %>
<div class="container"><button class="btn btn-danger" onclick="noticeDetail()">돌아가기</button></div>
<%} %>

<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>
</body>
</html>