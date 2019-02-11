<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ThunderEcho - 1:1 문의 내용 확인</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<%@ include file="/WEB-INF/view/topCssJs.jsp"%>
</head>
<style>
.wrap_confirm {
	overflow:hidden;
	height:auto;
	width:100%;
	border:1px solid #d2d2d2;
}
.confirm_input {
	width:100%;
	height:26px;
	border-color:#bfbfbf;
	margin-top:10px;
}
</style>
<body>
	<%@ include file="/WEB-INF/view/top.jsp"%>
	<section>
		<div class="container" style="min-height: 80%;">
			<div class="row">
				<div class="col-lg-12">
					<h3>문의 내용 확인</h3>	
				</div>
				<div class="col-lg-12">
					<hr>
				</div>
				<div class="col-lg-12">
					<h5>ThunderEco에 오신 것을 환영합니다.</h5>
					<p>아래의 양식을 작성하시면 1:1 문의에 대한 내용을 확인하실 수 있습니다.</p>
				</div>
				<div class="col-lg-12">
					<div class="row wrap_confirm">
						<div class="col-lg-6" style="margin-left:-15px;">
							<img src="/img/counselConfirm.png" style="height:auto; width:100%;" />
						</div>
						<div class="col-lg-6 row" style="margin:auto;">
							<form id="confirm" action="/counselConfirmList.do">
								<div class="col-md-6 row">
									<div class="col-sm-12 confirm_input">
										<input type="text" name="userName" placeholder="작성자 이름" />
									</div>
									<div class="col-sm-12 confirm_input">
										<input type="text" name="mobile" placeholder="전화번호" />
									</div>
									<div class="col-sm-12 confirm_input">
										<input type="text" name="email" placeholder="이메일" />
									</div>
								</div>
								<!-- 버튼 이미지로 만들어서 자리 맞추기 -->
								<div class="col-md-6 row">
									<input type="button" id="conf" value="찾기"> 
									<input type="button" onclick="javascript:back()" value="돌아가기"> 
									<input type="hidden" name="pagenum" value="1" /> 
									<input type="hidden" name="contentnum" value="10" />
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>	
	<%@ include file="/WEB-INF/view/footer.jsp"%>
	<%@ include file="/WEB-INF/view/bottomJs.jsp"%>
	<script>
		function back() {
			location.href = "/main.do";
		}
		$(function() {
			$('#conf').click(function() {
				if ($('input[name=userName]').val == "") {
					alert('이름을 입력해주세요');
					return false;
				}
				if ($('input[name=mobile]').val == "") {
					alert('전화 번호를 입력해주세요');
					return false;
				}
				if ($('input[name=email]').val == "") {
					alert('이메일을 입력해주세요');
					return false;
				}
				$('#confirm').submit();
			})
		})
	</script>
</body>
</html>