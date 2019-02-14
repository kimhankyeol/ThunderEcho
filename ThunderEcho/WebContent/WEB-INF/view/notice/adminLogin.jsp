<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>ThunderEco Admin Login(Safety)</title>
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/bootstrap.min.js"></script>
  </head>
  <style>
.cart-black-button {
    background: #222;
    border: none;
    color: #fff;
    text-align: center;
    padding: 10px 15px;
    font-weight: 300;
    font-size: 0.8em;
    min-width: 150px;
    text-align: center;
    cursor: pointer;
    margin: 5% 30%;
}
  </style>
<body>
	<div class="container" style="min-height: 80%; width: 400px; height: 750px; align-content: center;
    display: grid">
		<form class="form-signin" action="/thunderAdminLogin.do" method="post">
			<h2 class="form-signin-heading" style="text-align:center;">ThunderEco - 관리자</h2>
			<label for="userId" class="sr-only">관리자 아이디</label>
			<input type="text" name="userId" id="userId" class="form-control" placeholder="관리자 아이디">
			<label for="userPassword" class="sr-only">Password</label>
			<input type="password" name="userPassword" id="userPassword" class="form-control" placeholder="비밀번호">
			<button class="cart-black-button" type="submit">로그인</button>
		</form>
	</div>
</body>
</html>
