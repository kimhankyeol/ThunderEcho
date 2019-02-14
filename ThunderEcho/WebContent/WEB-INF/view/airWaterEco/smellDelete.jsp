<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html style="overflow:auto;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에어파파1</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="robots" content="all,follow">
	<%@ include file="../topCssJs.jsp" %>
<style>
.effect-table {
	display: block;
	margin: auto;
	width:85%;
	max-width:85%;
	background-color:transparent;
	padding-left: 10%;
    padding-right: 10%
}
.effect-table td, .effect-table th {
	padding:.75rem;
	vertical-align:middle;
} 

.effect-table td p {
	margin-bottom:0;
}
.text-vertical {
	display:block;
	margin:auto;
}
span{
	padding-left:10%;
}
.pc_break {
	display : inline-block !important;
}
.m_break {
	display : none !important;
	}
ul li a:hover, ul li a:focus {
	color: #fff; 
	font-weight: bold; 
	background-color:#deecbf; 
	text-decoration:none;
}
ul li a h5 {
	margin:0;
	padding: 10px 0;
}
.item-img {
	width: 600px;
	text-align: center;
	vertical-align: middle;
	display: inline-block;
}
.item-price {
	width: 440px;
	vertical-align: middle;
	display: inline-block;
}
@media (max-width: 992px) {
	span{
		padding-left:0px;
		padding-bottom:10%;
	}
	.tab-content section {
		padding: 50px 0 0 0;
	}
	.m_break {
		display : inline-block !important;
	}
	.pc_break {
		display : none !important;
	}
	.effect-table {
		padding-left: 0%;
   	 padding-right: 0%;
	}
	.item-img {
		width: 100%;
		margin-bottom: 10%;
	}
	.item-price {
		width: 100%;
		text-align: center;
	}
}
</style>
</head>
<body style="position: static; width: 100%;">
	<%@ include file="../top.jsp" %>
	<!-- 상품 섹션 -->
	<section style="background:#d9d9d9;" class="divider">
		<div style="width:100%; max-width:1140px; margin:0 auto;">
		<!-- 상품 이미지 -->
			<div class="item-img">
				<img src="/img/intro_1.png">
			</div>
		<!-- 상품 가격정보 -->
			<div class="item-price">
				<div style="max-width:100%;">
					<p>상품 고유번호</p>
					<h2 class="h1 text-uppercase no-margin">상품정보</h2>
					<p>100,000원</p>
					<a href="#" class="btn btn-template wide shop-now">문의하기<i class="icon-bag"></i></a>
				</div>
			</div>
		</div>
	</section>
	<!-- 내용 섹션 -->
	<section style="padding: 50px 0 0 0;">
		<div role="tabpanel">
			<div class="container">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist" style="text-align:center;">
					<li role="presentation" class="hover" style="width: 33%; align-self: center;"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" style="width:100%;"><h5>제품소개</h5></a></li>
					<li role="presentation" class="hover" style="width: 33%; align-self: center;"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab" style="width:100%;"><h5>제품스펙</h5></a></li>
					<li role="presentation" class="hover" style="width: 33%; align-self: center;"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab" style="width:100%;"><h5>성능분석</h5></a></li>
				</ul>
			</div>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- 제품상세 탭 시작 -->
				<div role="tabpanel" class="tab-pane active" id="home" style="padding-top:20px;">
					<!-- <h3 style="text-align:center; padding-top:20px;">제품소개</h3> --><!-- 해당 머릿글 삭제하는게 예뻐 보일 듯 -윤영 -->
					<div style="background:url(/img/airpapa1.jpg) center center; padding:100px 0;">
						<div class="container" style="padding:inherit;">
							<div class="row">
								<div style="color:#ffffff;"class="col-lg-12 text-center">
									<h1>
										고농도악취제거시스템
									</h1>
									<h5>
										썬더볼트방전시스템과 활성이온수<br class="m_break"> 생성기술 및 마이크로버블 기술이<br class="pc_break"><br class="m_break">
										융합된 환경난제를 해결할 <br class="m_break">미래지향형 신기술
									</h5>
								</div>
							</div>
						</div>
					</div>
					<!-- 제품 영향 -->
					<section style="padding:50px 0;">
						<h4 style="text-align:center; display: block;">
							고농도악취제거시스템의 영향
						</h4>
						<h5 style="text-align:center; display: block;">
							악취제거 뿐만 아니라 대기 중 또는 <br class="m_break">실내공기질을 크게 개선하여<br class="m_break">
							<br class="pc_break">
							인체의 해독·면역기능 <br class="m_break">강화에 기여합니다.
						</h5>
						<div class="row" style="padding-top:20px;">
							<table class="effect-table">
								<tbody>
									<tr>
										<td style="font-size: 300%; text-align:center; width:20%;">
											<b>1</b>
										</td>
										<td>
											<b>실내 공기질 개선 및 강력한 살균작용</b>
											<p>바이러스 감염 예방 및 스트레스성 장기 기능 저하 예방</p>
										</td>
									</tr>
									<tr>
										<td style="font-size: 300%; text-align:center;">
											<b>2</b>
										</td>
										<td>
											<b>강력한 항산화제(SOD)인 산화질소(NO) 발생</b>
											<p>체내 활성산소 수치를 저하시키며, 혈관을 확장</p>
											<small>신진대사를 촉진하며 면역체계 기능을 강화</small>
											<small>성인병(질병)을 예방</small>
										</td>
									</tr>
									<tr>
										<td style="font-size: 300%; text-align:center;">
											<b>3</b>
										</td>
										<td>
											<b>신진대사 촉진 및 면역체계 기능 강화</b>
											<p>악취제거시스템의 기능에 의한 활성산소 수치 저하, 혈관 순화 촉진</p>
										</td>
									</tr>
									<tr>
										<td colspan="2" style="text-align:center;">
											<small style="color: red;">
											음용수의 경우 수중에 산화질소를 클로이드 상태로 <br class="m_break">
											유지하여 흡입함으로 공기 흡입보다 2배 이상의 효과를 <br class="m_break">
											단시간 내에 볼 수 있습니다.
											</small>
											<small>
											(출처 : 1998년 노벨생리의학상 수상자 루이스 <br class="m_break">이그나로박사 논문 중 발췌)
											</small>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</section>
					<!-- 제품 장점 -->
					<section style="padding:50px 0;">
						<h4 style="text-align:center; display: block;">
							고농도악취제거시스템의 장점
						</h4>
						<div class="container" style="padding-top:20px;">
							<div class="row">
								<div class="col-lg-12 text-center">
									<img src="/img/smellDelete4.png" style="height:auto; max-width:80%;" />
								</div>
							</div>
							<div class="row" style="padding-top:60px;">
								<div class="col-lg-4 text-center">
									<img src="/img/smellDelete1.png" style="height:auto; max-width:100%;" />
								</div>
								<br class="m_break">
								<div class="col-lg-4 text-center">
									<img src="/img/smellDelete2.png" style="height:auto; max-width:100%;" />
								</div>
								<br class="m_break">
								<div class="col-lg-4 text-center">
									<img src="/img/smellDelete3.png" style="height:auto; max-width:100%;" />
								</div>
							</div>
						</div>
					</section>
				</div>
				<!-- 제품상세 탭 종료 -->
				<!-- 제품스펙 탭 시작 -->
				<div role="tabpanel" class="tab-pane" id="profile">
					<section style="padding:50px 0;">
						<h4 style="text-align:center; display: block;">
							고농도악취제거시스템 FLOW
						</h4>
						<div class="container" style="padding-top:20px;">
							<div class="row">
								<div class="col-lg-12 text-center">
									<img src="/img/smellDeleteSpec1.png" style="height:auto; max-width:100%;" />
								</div>
								<div class="col-lg-12 text-center">
									<img src="/img/smellDeleteSpec2.png" style="height:auto; max-width:100%;" />
								</div>
							</div>
						</div>
					</section>
					<section>
						<h4 style="text-align:center; display: block;">
							대기 중의 고농도 악취제거 원리
						</h4>
						<div class="container">
							<div class="row">
								<div class="col-lg-12 text-center">
									<img src="/img/smellDeleteFlow.png" style="height:auto; max-width:100%;" />
								</div>
								<div class="col-lg-12 text-center">
									<img src="/img/smellDeleteFlowDetail.png" style="height:auto; max-width:100%;" />
								</div>
							</div>
						</div>
					</section>
				</div>
				<!-- 제품스펙 탭 종료 -->
				<!-- 성능분석 탭 시작 -->
				<div role="tabpanel" class="tab-pane" id="messages">
					<section style="padding:50px 0;">
				   		<h4 style="text-align:center; display: block;">
				   			고농도악취제거시스템 가동 결과
				   		</h4>
				   		<div class="container">
				   			<div class="row text-center">
				   				<div class="col-lg-6">
				   					<img src="/img/smellResult4.png" style="height:auto; max-width:100%;" />
				   				</div>
				   				<div class="col-lg-6 text-vertical">
				   					<img src="/img/smellResult5.png" style="height:auto; max-width:100%;" />
				   				</div>
				   			</div>
				   		</div>
				   	</section>
				   	<section style="padding:50px 0;">
				   		<h4 style="text-align:center; display: block;">
				   			고농도악취제거시스템 수치 측정 결과
				   		</h4>
				   		<div class="container">
				   			<div class="row text-center">
				   				<div class="col-lg-4">
				   					<img src="/img/smellResult1.png" style="height:auto; max-width:100%;" />
				   				</div>
				   				<div class="col-lg-4">
				   					<img src="/img/smellResult2.png" style="height:auto; max-width:100%;" />
				   				</div>
				   				<div class="col-lg-4">
				   					<img src="/img/smellResult3.png" style="height:auto; max-width:100%;" />
				   				</div>
				   				<div class="col-lg-12">
				   					<small>
				   						음이온 2,000,000 이상, 산화질소 6.5ppm, 7.5ppm
				   					</small>
				   				</div>
				   			</div>
				   		</div>
				   	</section>
				   	<section style="padding:50px 0;">
				   		<h4 style="text-align:center; display: block;">
				   			고농도 악취제거시스템 조립 광경
				   		</h4>
				   		<div class="container">
				   			<div class="row text-center">
				   				<div class="col-lg-6">
				   					<img src="/img/smellAssem1.png" style="height:auto; max-width:100%;" />
				   				</div>
				   				<div class="col-lg-6">
				   					<img src="/img/smellAssem2.png" style="height:auto; max-width:100%;" />
				   				</div>
				   			</div>
				   		</div>
				   	</section>
					<!-- 성능분석 탭 종료 -->
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../footer.jsp" %>
	<%@ include file="../bottomJs.jsp" %>
</body>
</html>