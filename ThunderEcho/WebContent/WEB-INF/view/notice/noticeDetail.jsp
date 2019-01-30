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
<link rel="stylesheet" href="/css/noticeList.css">
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
	<div class="width-100">
		<div class="searchWrap">
			<div style="padding-top: 10px;margin-bottom: 10px;">
				 <span style="font-size: 1.75rem; font-family: Noto Sans Medium"><%=nDTO.getNoticeTitle()%></span>
				  <span style="font-family:Noto Sans Regular;font-size:15px; float:right; padding-top: 10px" ><%=nDTO.getReadCount() %></span>	
				 <span style="font-family:Noto Sans Regular;font-size:15px; float:right; padding-top: 10px">조회수<i class="fa fa-hand-pointer-o fa-fw"></i></span>
				 <span style="font-family:Noto Sans Regular;font-size:15px; float:right; padding-right:10px; padding-top: 10px" ><%=nDTO.getRegDate() %></span>	
				 <span style="font-family:Noto Sans Regular;font-size:15px; float:right; padding-top: 10px">등록일<i class="fa fa-registered fa-fw"></i></span>
					
			</div>
		</div>
	</div>
</div>

<div>제목:<%=nDTO.getNoticeTitle() %></div>
<div class="container" style="min-height:80%"><%=nDTO.getNoticeContent() %></div>
<%
if(userName.equals("관리자")){
%>
<div><button class="btn btn-success" onclick="noticeUpdateView()">수정</button><button class="btn btn-danger" onclick="adminNoticeDetail()">돌아가기</button></div>
<%}else{ %>
<button class="btn btn-danger" onclick="noticeDetail()">돌아가기</button>
<%} %>
<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>
</body>
</html>