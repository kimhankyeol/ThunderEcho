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
<title>1:1 문의</title>
</head>
<body>
<%@ include file="/WEB-INF/view/top.jsp" %>
<div class="subTitleBar">
	<div class="subTitleIn">
		<h2>1:1 문의</h2>
	</div>
</div>
<div class="container_cs_counsel">
	<div class="section_form">
		<div class="harf_area_left">
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
</div>
<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>
</body>
</html>