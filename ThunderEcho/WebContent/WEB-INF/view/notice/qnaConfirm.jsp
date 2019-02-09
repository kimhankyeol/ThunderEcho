<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Hub - Bootstrap 4 Ecommerce Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <%@ include file="/WEB-INF/view/topCssJs.jsp" %>
<title>ThunderEcho-문의내용확인</title>

</head>
<body>
 <%@ include file="/WEB-INF/view/top.jsp" %>
 <div class="container" style="min-height: 80%;">
 <form id="confirm" action="/counselConfirmList.do">
<div>작성자이름:<input type="text" name="userName"/></div>
<div>전화번호:<input type="text" name="mobile"/></div>
<div>이메일:<input type="text" name="email"/></div>
<input type="button" id="conf" value="찾기" >
<input type="button" onclick="javascript:back()"  value="돌아가기" >
<input type="hidden" name="pagenum" value="1"/>
<input type="hidden" name="contentnum" value="10"/>
</form>
 </div>

<%@ include file="/WEB-INF/view/footer.jsp" %>
 <%@ include file="/WEB-INF/view/bottomJs.jsp" %>
 <script>
 function back(){
	 location.href="/main.do";
 }
 $(function(){
	 $('#conf').click(function(){
		 if($('input[name=userName]').val==""){
			 alert('이름을 입력해주세요');
			 return false;
		 }
		 if($('input[name=mobile]').val==""){
			 alert('전화 번호를 입력해주세요');
			 return false;
		 }
		 if($('input[name=email]').val==""){
			 alert('이메일을 입력해주세요');
			 return false;
		 }
		 $('#confirm').submit();
	 })
 })
 </script>
</body>
</html>