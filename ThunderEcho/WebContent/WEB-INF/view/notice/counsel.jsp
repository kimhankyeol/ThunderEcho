<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="/WEB-INF/view/topCssJs.jsp" %>
<link rel="stylesheet" href="/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/noticeList.css">
<link rel="stylesheet" href="/css/counsel.css">
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
<title>1:1 문의</title>
</head>
<body>
<%@ include file="/WEB-INF/view/top.jsp" %>
<div class="subTitleBar">
	<div class="subTitleIn">
		<h2>1:1 문의</h2>
			<ul class="smap">
                 <li><a style="color:black;" href="/main.do"><i class="fa fa-home fa-fw"></i></a></li>
                 <li><i class="fa fa-chevron-right fa-fw"></i></li>
                 <li class="en"><i class="fa fa-info-circle fa-fw"></i>INFORMATION</li>
                 <li><i class="fa fa-chevron-right fa-fw"></i></li>
                 <li><a style="color:black" href="/notice/counsel.do"><i class="fa fa-list-alt fa-fw"></i> 1:1 문의</a></li>
       		</ul>
	</div>
</div>
<div class="container" style="min-height: 80%;">
 <div class="width-100" style="border-top: 2px solid #333;padding-top:20px">
	 <form id="counsel" action="/notice/counselProc.do" method="POST">
	   <div class="form-group counselCol1">제목</div>
	   <input type="text" class="form-control counselColback"  name="title" placeholder="제목을 입력하세요"/>
	   <span class="form-group counselCol2">작성자</span>
	   <span class="counselColback"><input type="text" class="form-control" name="userName" placeholder="작성자 성함을 입력해주세요"/></span>
	   <div class="form-group">
			<span class="counselCol1">분류</span>
			<select class="form-control" name="classfication" style="width:80%;float:left;margin-bottom:20px">
				<option value="buyItem">구매 문의</option>
				<option value="scheduleConsult">일정 상담</option>
				<option value="as">A/S 신청</option>
				<option value="refund">환불 및 반품 신청</option>
			</select>
	   </div>
	   <span class="form-group counselCol1">내용</span>
	   <span class="counselColback">
			  <textarea class="counselColback" name="content" id="content" rows="10" cols="80">
			  </textarea>
		</span>
		<div>
			<span class="form-group counselCol2">번호</span>
			<span class="counselColback"><input type="tel" class="form-control" name="mobile"  placeholder="연락처를 입력해주세요."/></span>
			<span class="form-group counselCol2">이메일</span>
			<span class="counselColback"><input type="email" class="form-control" name="email" placeholder="답변을 받을 이메일을 입력해주세요."/></span>
		</div>
		<center>
 		<input type="button" id="ntIns" class="btn btn-success"  value="등록">
	    <input type="button" onclick="javascript:back()" class="btn btn-danger" value="돌아가기"/>
		</center>
	</form>
  </div> 
</div>

<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>
<script>
function back(){
	location.href="/main.do"
}
$(function(){
	$('#ntIns').click(function(){
		var textbox = CKEDITOR.instances['content'].getData();
		if($('input[name=title]').val()==""){
			alert('제목을 입력해주세요.');
			return false;
		}else if($('input[name=userName]').val==""){
			alert('작성자 이름을 입력해주세요.');
			return false;
		}else if(textbox=="") {
			alert('내용을 입력해주세요.');
			return false;
		}else if($('input[name=mobile]').val==""){
			alert('전화번호를 입력해주세요.');
			return false;
		}else if($('input[name=email]').val=="") {
			alert('이메일을 입력해주세요.');
			return false;
		}
		if(confirm("문의내용을 등록하시겠습니까?")){
			$('#counsel').submit();
		}else{
			return;
		}
		
	});
})

</script>
</body>
</html>