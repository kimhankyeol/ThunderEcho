<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String msg =(String)request.getAttribute("msg");  // 앞에 스트링 없으면  getAttr 은 오브젝트를 받기떄문에 오류 뜸
	String url =(String)request.getAttribute("url");
%>

<html>
<head>
<script type="text/javascript">
alert("<%=msg%>");
location.href="<%=url%>";
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>