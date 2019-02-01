<%@page import="poly.dto.NoticeDTO"%>
<%@page import="poly.util.CmmUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String userName =CmmUtil.nvl((String)session.getAttribute("userName")); %>
<% NoticeDTO nDTO =(NoticeDTO)request.getAttribute("nDTO"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>썬더에코-관리자</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<%@ include file="/WEB-INF/view/topCssJs.jsp" %>
 <script src="/ckeditor/ckeditor.js"></script>
<script>
    var editorConfig = {
        filebrowserUploadUrl : "/ckEditor/imgUpload.do", //이미지 업로드
    };

    CKEDITOR.on('dialogDefinition', function( ev ){
        var dialogName = ev.data.name;
        var dialogDefinition = ev.data.definition;

        switch (dialogName) {
            case 'image': //Image Properties dialog
            //dialogDefinition.removeContents('info');
            dialogDefinition.removeContents('Link');
            dialogDefinition.removeContents('advanced');
            break;
        }
    });
 window.onload = function(){
      ck = CKEDITOR.replace("content", editorConfig); //editor는 태그 아이디임
 };
</script>
<link rel="stylesheet" href="/css/adminNoticeList.css">
</head>
<body>
<%@ include file="/WEB-INF/view/top.jsp" %>
<%
if(userName.equals("관리자")){
%>
<!-- 본문 -->
<div class="subTitleBar">
	<div class="subTitleIn">
			<h2 style="color: #2a64b1">공지사항 수정</h2>
			<ul class="smap">
                 <li><a style="color:black;" href="/main.do"><i class="fa fa-home fa-fw"></i></a></li>
                 <li><i class="fa fa-chevron-right fa-fw"></i></li>
                 <li class="en"><a style="color:black" href="/thunderAdmin.do"><i class="fa fa-user-secret fa-fw"></i>Admin</a></li>
                 <li><i class="fa fa-chevron-right fa-fw"></i></li>
                 <li><a style="color:black" href="/noticeInsertView.do"><i class="fa fa-registered fa-fw"></i> 공지사항 등록</a></li>
       		</ul>
	</div>
</div>

 <div class="container" style="min-height: 80%;">
 <div class="width-100" style="border-top: 2px solid #333;">
	 <form id="noticeUpdate" action="/noticeUpdate.do">
	  <div class="form-group" style="margin-top: 10px; color: #2a64b1"><h3>제목</h3></div>
	  <input type="text" class="form-control" style="margin-bottom: 20px;" name="title" value="<%=nDTO.getNoticeTitle()%>"/>
	   <div class="form-group" style="color: #2a64b1"><h3>내용</h3></div>
		  <textarea name="content" id="content" rows="10" cols="80">
		     <%=nDTO.getNoticeContent() %>
		  </textarea>
		   <input type="hidden" name="noticeNo" value="<%=nDTO.getNoticeNo()%>"/>
	</form>
	  <input type="button" id="ntUpd" class="btn btn-success" value="수정"/>
	  <input type="button" onclick="javascript:back()" class="btn btn-danger" value="돌아가기"/>
	  
  </div> 
   </div>
<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>
<script>
function back(){
	location.href="/noticeDetail.do?noticeNo="<%=nDTO.getNoticeNo()%>;
}

$('#ntUpd').click(function(){
	if($('input[name=title]').val()==""){
		alert('공지사항 제목을 입력해주세요.')
		return false;
	}else if ($('input[name=content]').val()=="") {
		alert('내용을 입력해주세요.');
	}
	$('#noticeUpdate').submit();
});
</script>

<%} else { %>

	<h1 style="text-align: center">관리자가 아닙니다. </h1>
	<h2 style="text-align: center">관리자가 아니므로 로그인 해주시길 바랍니다.</h2>
	<button style="float:left" class="col-md-6 btn btn-success" onclick="javascript:adminLogin()">관리자 로그인 하러가기</button>
	<button style="wfloat:left" class="col-md-6 btn btn-success" onclick="javascript:thunderHome()">썬더에코 바로가기</button>
	<script>
		function adminLogin(){
			location.href="/thunderAdmin.do";
		}
		function thunderHome(){
			location.href="/main.do";
		}
		
	</script>
<%} %>



</body>
</html>