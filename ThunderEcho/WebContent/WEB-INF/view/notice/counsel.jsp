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
	 <form action="/notice/counselProc.do" method="POST">
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
			<span class="counselColback"><input type="text" class="form-control" name="mobile" placeholder="연락처를 입력해주세요."/></span>
			<span class="form-group counselCol2">이메일</span>
			<span class="counselColback"><input type="text" class="form-control" name="email" placeholder="답변을 받을 이메일을 입력해주세요."/></span>
		</div>
		<center>
 		<button type="submit" class="btn btn-success" >등록</button>
	    <input type="button" onclick="javascript:back()" class="btn btn-danger" value="돌아가기"/>
		</center>
	</form>
  </div> 
</div>
<!-- <div class="container_cs_counsel" >
	<div class="section_form">
		<div class="harf_area_left" >
			 <form action="/notice/counselProc.do" method="POST">
				<div class="cs_table" style="width: 50%;">
					<ul>
						<li>
							<div class="cs_table_tr">
								<span class="td1">작성자</span>
								<span class="td2"><input name="user_nm" value="" type="text" class="input_normal"></span>
							</div>
						</li>
						<li class="article_phone">
							<div class="cs_table_tr">
								<span class="td1">휴대전화</span>
								<span class="td2">
									<input name="mobile1" value="" maxlength="3" type="text" class="input_normal"> -
									<input name="mobile2" value="" maxlength="4" type="text" class="input_normal"> -
									<input name="mobile3" value="" maxlength="4" type="text" class="input_normal">
								</span>
							</div>
						</li>
						<li class="article_tel">
							<div class="cs_table_tr">
								<span class="td1">전화번호</span>
								<span class="td2">
									<input name="phone1" value="" maxlength="3" type="text" class="input_normal"> -
									<input name="phone2" value="" maxlength="4" type="text" class="input_normal"> -
									<input name="phone3" value="" maxlength="4" type="text" class="input_normal">
								</span>
							</div>
						</li>
						<li class="article_email">
							<div class="cs_table_tr">
								<span class="td1">이메일</span>
								<span class="td2">
									<input name="email1" value="" type="text" class="input_normal"> @
									<input name="email2" value="" type="text" class="input_normal">
								</span>
							</div>
						</li>
						<li class="article_tit">
							<div class="cs_table_tr">
								<span class="td1">제목</span>
								<span class="td2">
								<input name="subject" type="text" class="input_normal">
								</span>
							</div>
						</li>
						<li class="article_inquiry">
							<div class="cs_table_tr">
								<p class="td1">질문 내용</p>
								<div class="td2">
									<textarea name="qa_msg" cols="100" rows="100" class="input_textarea"></textarea>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<button type="submit" class="btn">문의하기</button>
			</form> 
			
		</div>
	</div>
</div> -->
<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>
<script>
function back(){
	location.href="/main.do"
}
</script>
</body>
</html>