<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
<body>
<%@ include file="/WEB-INF/view/top.jsp" %>

<!-- 본문 -->
<form action="/noticeInsert.do">
  <div>제목</div>
  <input type="text" name="title" placeholder="제목을 입력하세요"/>
  <textarea name="content" id="content" rows="10" cols="80">
      
  </textarea>
  <button type="submit">등록</button>
</form>





<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>


</body>
</html>