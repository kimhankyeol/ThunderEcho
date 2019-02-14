<%@page import="poly.util.StringUtil"%>
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
function qnaAnswer(){
	location.href="/qnaAnswer.do?qnaNo=<%=nDTO.getQnaNo()%>";
}
function qnaList(){
	location.href="/adminQnaList.do?pagenum=1&contentnum=10&classfication=all";
}
function qnaDetail(){
	history.back();
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
		<h2 style="font-size:1.75rem;"> 1:1 문의 내용</h2>
			<ul class="smap">
                 <li><a style="color:black;" href="/main.do"><i class="fa fa-home fa-fw"></i></a></li>
                 <li><i class="fa fa-chevron-right fa-fw"></i></li>
                  <li class="en"><a style="color:black" href="/thunderAdmin.do"><i class="fa fa-user-secret fa-fw"></i>Admin</a></li>
                 <li><i class="fa fa-chevron-right fa-fw"></i></li>
                 <li><a style="color:black" href="/adminQnaList.do?pagenum=1&contentnum=10&classfication=all"><i class="fa fa-list-alt fa-fw"></i> 1:1 문의 내용</a></li>
       		</ul>
	</div>
</div>
<div class="container" style="min-height: auto;">
	<div class="width-100" style="padding-bottom: 30px;">
		<div class="detailWrap">
			<div class="detailInner">
				 <span><%=nDTO.getNoticeTitle()%></span>
				  <span><%=StringUtil.stringQna(nDTO.getClassfication().toString()) %></span>	
				 <span>분류<i class="fa fa-hand-pointer-o fa-fw"></i></span>
				 <span><%=DateUtil.DateFormatter(nDTO.getRegDate().toString())%></span>	
				 <span>등록일<i class="fa fa-registered fa-fw"></i></span>
			</div>
		</div>
	</div>
	<div class="width-100" style="padding-bottom: 30px; border-bottom: 2px solid black">
		<div>고객 성함 : <%=nDTO.getUserName() %></div>
		<div>고객 연락처 : <%=nDTO.getMobile() %></div>
		<div>고객 이메일 : <%=nDTO.getEmail() %></div>
	</div>
	<div style="margin: 20px 0;">
		<%=nDTO.getNoticeContent() %>
	</div>
</div>
	<%
if(userName.equals("관리자")){
%>
 <div class="container">
 	<div class="width-100" style="border-top: 2px solid #333;padding-top:20px">
 		<div style="text-align:center; padding:15px;">
			<input type="button" class="cart-black-button" onclick="javascript:qnaAnswer()" value="답변하기">
			<input type="button" class="cart-black-button" onclick="javascript:qnaList()" style="background: rgba(0, 0, 0, 0.50)" value="돌아가기">
		</div>
	</div>
</div>
<%}else{ %>
 <div class="container">
 	<div class="width-100" style="border-top: 2px solid #333;padding-top:20px">
		<div style="text-align:center; padding:15px;"><input type="button" class="cart-black-button" onclick="qnaDetail()" value="돌아가기"></div>
	</div>>
</div>
<%} %>

<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>
</body>
</html>