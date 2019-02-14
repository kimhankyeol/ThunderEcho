<%@page import="poly.util.DateUtil"%>
<%@page import="poly.util.CmmUtil"%>
<%@page import="poly.dto.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h2 style="font-size:1.75rem;">공지사항</h2>
			<ul class="smap">
                 <li><a style="color:black;" href="/main.do"><i class="fa fa-home fa-fw"></i></a></li>
                 <li><i class="fa fa-chevron-right fa-fw"></i></li>
                 <li class="en"><i class="fa fa-info-circle fa-fw"></i>INFORMATION</li>
                 <li><i class="fa fa-chevron-right fa-fw"></i></li>
                 <li><a style="color:black" href="/noticeList.do?pagenum=1&contentnum=10"><i class="fa fa-list-alt fa-fw"></i> 공지사항</a></li>
       		</ul>
	</div>
</div>
<div class="container" style="min-height: auto;">
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
	<div style="margin: 20px 0;">
		<%=nDTO.getNoticeContent() %>
	</div>
</div>
	<%
if(userName.equals("관리자")){
%>
<div class="container" style="clear:both">
	<div style="width: 100%;">
		<div style="text-align:center; padding:15px;">
			<input type="button" class="cart-black-button" onclick="javascript:noticeUpdateView()" value="수정">
			<input type="button" class="cart-black-button" onclick="javascript:adminNoticeDetail()" style="background: rgba(0, 0, 0, 0.50)" value="돌아가기">
		</div>
	</div>
</div>
<%}else{ %>
 <div class="container">
	<div class="width-100" style="border-top: 2px solid #333;padding-top:20px">
		<div style="text-align:center; padding:15px;"><input type="button" class="cart-black-button" onclick="noticeDetail()" value="돌아가기"></div>
	</div>
</div>
<%} %>

<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>
</body>
</html>