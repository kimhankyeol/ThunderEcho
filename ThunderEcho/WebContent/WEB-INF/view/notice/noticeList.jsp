<%@page import="poly.dto.NoticeDTO"%>
<%@page import="poly.dto.PagingDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% List<NoticeDTO> nList = (List<NoticeDTO>)request.getAttribute("nList"); %>
<% PagingDTO pDTO = (PagingDTO)request.getAttribute("paging"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<%@ include file="/WEB-INF/view/topCssJs.jsp" %>
<!-- 나중에 css 추가  -->
<link rel="stylesheet" href="/font-awesome-4.7.0/css/font-awesome.min.css">
<style>
/*공지사항 바*/
.subTitleBar {
	width: 100%;
	height: 95px;
	/*background: #cce3c3;*/
	background:white;
}

.subTitleBar div.subTitleIn {
	width: 1100px;
	height: 91px;
	margin: 0 auto;
	position: relative;
}


.subTitleBar h2 {
	font: bold 36px Avenir, Arial, georgia;
	color: #222222;
	padding-top: 30px;
	position: relative;
}

@media screen and (max-width:960px) {
	 ul.smap {
		display: none;
	}
	.subTitleBar div.subTitleIn { width:96%; margin:0 auto; padding-top:0; }
}

ul.smap {
	position: absolute ;
    right: 0; top: 60px ;

	
}
ul.smap li {
	vertical-align: middle;
	float: left;
	height: 16px;
	line-height: 16px;
	margin: 0 2.5px;
}

nav ul, li {
	list-style: none;
}

.en {
	font-family: arial, HelveticaNeue, DroidSans, Sans-serif, Helvetica;
}
</style>
<!-- 테이블 css -->
<style>
.width-100{
width:100%
}

.noticeStyle1>td:nth-child(1){
	padding: 13px 20px;
    font-size: 15px;
    line-height: 16px;
    color: #333;
    font-family: 'Noto Sans Light';
    width:10%;
	text-align: center
}
.noticeStyle1>td:nth-child(2){
	padding: 13px 20px;
    font-size: 15px;
    line-height: 16px;
    color: #333;
    font-family: 'Noto Sans Light';
    width:60%;
	text-align: center
}

.noticeStyle1>td:nth-child(3){
	padding: 13px 20px;
    font-size: 15px;
    line-height: 16px;
    color: #333;
    font-family: 'Noto Sans Light';
    width:10%;
	text-align: center
}

.noticeStyle1>td:nth-child(4){
	padding: 13px 20px;
    font-size: 15px;
    line-height: 16px;
    color: #333;
    font-family: 'Noto Sans Light';
    width:20%;
	text-align: center
}



.noticeStyle2>td:nth-child(1){
	padding: 13px 0;
    border-bottom: 1px solid #ebebeb;
    font-size: 14px;
    line-height: 16px;
    text-align: center;
    color: #666;
    font-family: 'Noto Sans Regular';
}
.noticeStyle2>td:nth-child(2){
    padding: 13px 0;
    border-bottom: 1px solid #ebebeb;
    font-size: 14px;
    line-height: 16px;
    text-align: center;
    color: #2a64b1;
    font-family: 'Noto Sans Regular';
    cursor:pointer;
}
.noticeStyle2>td:nth-child(3){
	padding: 13px 0;
    border-bottom: 1px solid #ebebeb;
    font-size: 14px;
    line-height: 16px;
    text-align: center;
    color: #666;
    font-family: 'Noto Sans Regular';
}
.noticeStyle2>td:nth-child(4){
	 padding: 13px 0;
    border-bottom: 1px solid #ebebeb;
    font-size: 14px;
    line-height: 16px;
    text-align: center;
    color: #666;
    font-family: 'Noto Sans Regular';
}
</style>



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
                 <li><a style="color:black" href="/noticeList.do"><i class="fa fa-list-alt fa-fw"></i> 공지사항</a></li>
       		</ul>
	</div>

</div>
<div class="container">
		<table class="width-100">
			<tr class="noticeStyle1">
				<td><a style="color:black">번호</a></td>
				<td><a style="color:black;text-align: left">제목</a></td>
				<td><a style="color:black">작성자</a></td>
				<td><a style="color:black">작성일</a></td>
			</tr>
		<%for (int i=0 ; i<nList.size(); i++){ %>
			<tr class="noticeStyle2">
				<td><%=nList.get(i).getNoticeNo()%></td>
				<td onclick="javascript:noticeDetail('<%=nList.get(i).getNoticeNo()%>')"><%=nList.get(i).getNoticeTitle()%></td>
				<td>관리자</td>
				<td><%=nList.get(i).getRegDate()%></td>
			</tr>
		<%} %>
	</table>
		
</div>

<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>
</body>
</html>