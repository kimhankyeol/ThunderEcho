<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
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
	width:80%;
	max-width:80%;
	background-color:transparent;
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
</style>
</head>
<body>
	<%@ include file="../top.jsp" %>
	<!-- 상품 섹션 -->
	<section style="background: url(/img/airpapa.png);" class="divider">
		<div class="row" style="text-align:right;">
			<div class="col-lg-6"style="max-width:100%;">
				<p>상품 고유번호</p>
				<h2 class="h1 text-uppercase no-margin">상품정보</h2>
				<p>100,000원</p>
				<a href="#" class="btn btn-template wide shop-now">문의하기<i class="icon-bag"></i></a>
			</div>
		</div>
	</section>
	<!-- 내용 섹션 -->
	<section>
		<div>
			<div role="tabpanel">
				<div class="container">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist" style="text-align:center;">
						<li role="presentation" class="active" style="width: 33%;"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">제품소개</a></li>
						<li role="presentation" style="width: 33%;"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">제품스펙</a></li>
						<li role="presentation" style="width: 33%;"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">성능분석</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content">
				 		<!-- 제품상세 탭 시작 -->
				    	<div role="tabpanel" class="tab-pane active" id="home" style="padding-top:20px;">
					    	<!-- <h3 style="text-align:center; padding-top:20px;">제품소개</h3> --><!-- 해당 머릿글 삭제하는게 예뻐 보일 듯 -윤영 -->
						 	<section style="background:url(/img/airpapa1.jpg) center center;">
								<div class="row">
									<div style="color:#ffffff;"class="col-lg-12 text-center">
										<h5>
											고농도 산화질소를 함유한 플라스마를 생성하는 공기살균, 탈취 시스템
										</h5>
										<h1>
											에어파파
										</h1>
										<h5>
											공기정화, 살균, 악취제거, 초미세먼지 제거, 면역력 증강
										</h5>
									</div>
								</div>
							</section>
							<!-- 제품 효과 -->
							<section>
								<h5 style="text-align:center; display: block;">
									오염공기와 반응하여 배합된 혼합 광물질과의 융합코어 기술에 의하여 수산기와 다량의 산소이온이 발생하고
								</h5>
								<h5 style="text-align:center; display: block;">
									탁월한 공기정화 기능, 초미세먼지를 중화시키고 제거								
								</h5>
								<div class="row" style="padding-top:20px;">
									<table class="effect-table">
										<tbody>
											<tr>
												<td style="font-size: 300%; text-align:center; width:20%;">
													<b>1</b>
												</td>
												<td>
													<b>새집, 헌집 증후군 물질 제거</b>
													<p>암모니아, 폼알데히드, 자일렌, 톨루엔 등 유해물질을 제거하여 증상 완화</p>
												</td>
											</tr>
											<tr>
												<td style="font-size: 300%; text-align:center;">
													<b>2</b>
												</td>
												<td>
													<b>바이러스 및 병원성 세균 살균</b>
													<p>슈퍼박테리아, 폐렴균, 대장균, 황색포도상구균, 녹농균, 곰팡이균 등 99.9% 살균</p>
												</td>
											</tr>
											<tr>
												<td style="font-size: 300%; text-align:center;">
													<b>3</b>
												</td>
												<td>
													<b>다량의 음이온(산소이온) 발생</b>
													<p>초미세먼지제거, 저항력 증가, 혈액정화 작용</p>
												</td>
											</tr>
										</tbody>
									</table>
									<!-- 아래 내용 테이블로 대체 -->
									<!-- 
									
									<div class="col-md-3" style="text-align:center;">
										<strong style="font-size: 300%;">1</strong>
									</div>
									<div class="col-md-9" style="text-align:left;">
										<b>새집, 헌집 증후군 물질 제거</b>
										<p>암모니아, 폼알데히드, 자일렌, 톨루엔 등 유해물질을 제거하여 증상 완화</p>
									</div>
									<div class="col-md-3" style="text-align:center;">
										<strong style="font-size: 300%;">2</strong>
									</div>
									<div class="col-md-9" style="text-align:left;">
										<b>바이러스 및 병원성 세균 살균</b>
										<p>슈퍼박테리아, 폐렴균, 대장균, 황색포도상구균, 녹농균, 곰팡이균 등 99.9% 살균</p>
									</div>
									<div class="col-md-3" style="text-align:center;">
										<strong style="font-size: 300%;">3</strong>
									</div>
									<div class="col-md-9" style="text-align:left;">
										<b>다량의 음이온(산소이온) 발생</b>
										<p>초미세먼지제거, 저항력 증가, 혈액정화 작용</p>
									</div>
									
									 -->
								</div>
							</section>
							<!-- 주요 적용/설치 장소 -->
							<section >
								<div class="container" style="background-color: grey;">
									<div class="row">
										<div class="col-lg-12" style="text-align:center;">
											<h3 style="padding:20px;">주요 적용/설치 장소</h3>
										</div>
										<div class="col-lg-6 text-vertical">
											<span style="padding-left:10%;">
												<b>공동생활 / 노약자</b><br/>
												요양원, 양로원, 유치원, 영유아/노약자 부양 주택 등<br/>
												면역력이 약해, 보다 건강한 공기가 필요한 장소
											</span>
										</div>
										<div class="col-lg-6">
											<img src="/img/detailAirpapa1.jpg" style="width:100%; padding-right:10%;"/>
										</div>
										<div class="col-lg-12">
											<hr style="padding-top:12px; padding-bottom:12px;">
										</div>
										<div class="col-lg-6 text-vertical">
											<span style="padding-left:10%;">
												<b>의료 / 산업</b><br/>
												공기청정기로 해결되지 못하는 독소, 독성 물질 발생 또는<br/>
												병원균 제거가 필요한 장소
											</span>
										</div>
										<div class="col-lg-6">
											<img src="/img/detailAirpapa1.jpg" style="width:100%; padding-right:10%;"/>
										</div>
										<div class="col-lg-12">
											<hr style="padding-top:12px; padding-bottom:12px;">
										</div>
										<hr style="padding-top:12px; padding-bottom:12px;">
										<div class="col-lg-6 text-vertical">
											<span style="padding-left:10%;">
												<b>지하 / 주거 / 공공장소</b><Br/>
												각종 냄새로 인한 악취, 곰팡이 발생 구역의 냄새 또는<br/>
												쾌적한 실내공기 유지를 위한 장소
											</span>
										</div>
										<div class="col-lg-6">
											<img src="/img/detailAirpapa1.jpg" style="width:100%; padding-right:10%;"/>
										</div>
										<div class="col-lg-12">
											<hr style="padding-top:12px; padding-bottom:12px;">
										</div>
										
										<!-- 
										
										<div class="col-lg-12 row">
											<span class="col-lg-6" style="padding-left:10%;">
												<b>공동생활 / 노약자</b><br/>
												요양원, 양로원, 유치원, 영유아/노약자 부양 주택 등<br/>
												면역력이 약해, 보다 건강한 공기가 필요한 장소
											</span>
											<span class="col-lg-6">
												<img src="/img/detailAirpapa1.jpg" style="height:20%; width:100%; padding-left:15%; padding-right:5%;"/>
											</span>
										</div>
										<div class="col-lg-12 row">
											<span class="col-lg-6" style="padding-left:10%;">
												<b>의료 / 산업</b><br/>
												공기청정기로 해결되지 못하는 독소, 독성 물질 발생 또는<br/>
												병원균 제거가 필요한 장소
											</span>
											<span class="col-lg-6">
												<img src="/img/detailAirpapa1.jpg" style="height:20%; width:100%; padding-left:15%; padding-right:5%;"/>
											</span>
										</div>
										<div class="col-lg-12 row">
											<span class="col-lg-6" style="padding-left:10%;">
												<b>지하 / 주거 / 공공장소</b><Br/>
												각종 냄새로 인한 악취, 곰팡이 발생 구역의 냄새 또는<br/>
												쾌적한 실내공기 유지를 위한 장소
											</span>
											<span class="col-lg-6">
												<img src="/img/detailAirpapa1.jpg" style="height:20%; width:100%; padding-left:15%; padding-right:5%;"/>
											</span>
										</div>
										
										 -->
									</div>
								</div>
							</section>
					    </div>
						<!-- 제품상세 탭 종료 -->
					    <!-- 제품스펙 탭 시작 -->
					    <div role="tabpanel" class="tab-pane" id="profile">
							<!-- <h3 style="text-align:center; padding-top:20px;">제품스펙</h3> --> <!-- 여기도 없는게 예쁠 듯 -->
							<section>
								<div class="row">
									<div class="table-responsive">
								  		<table class="table">
								    		<tbody>
								    			<tr>
								    				<td>면적</td>
								    				<td>82~115(25~35평)</td>
								    			</tr>
								    			<tr>
								    				<td>모델번호</td>
								    				<td>airpapa(멸균기), SPR-190122</td>
								    			</tr>
								    			<tr>
								    				<td>크기</td>
								    				<td>160mm*350mm*800mm</td>
								    			</tr>
								    			<tr>
								    				<td>무게</td>
								    				<td>20kg</td>
								    			</tr>
								    			<tr>
								    				<td>전력</td>
								    				<td>220V, 60Hz, 70wh</td>
								    			</tr>
								    			<tr>
								    				<td>오존 레벨</td>
								    				<td>0.00ppm</td>
								    			</tr>
											</tbody>
										</table>
									</div>
								</div>
							</section>
						</div>
						<!-- 제품스펙 탭 종료 -->
						<!-- 성능분석 탭 시작 -->
					    <div role="tabpanel" class="tab-pane" id="messages">
							<!-- <h3 style="text-align:center; padding-top:20px;">성능분석</h3> --><!-- 없는게 아무래도 좋아 -윤영 -->
							<div class="main-block text-center" style="padding-top:20px;">
								<div class="row">
									<div class="site-links col-md-6">
										<h5 class="text-uppercase">대장균</h5>
										<img src="/img/testCertficarion.png"/>
										<ul class="list-unstyled">
											<li>kcl 시험성적서</li>
										</ul>
									</div>
									<div class="site-links col-md-6">
										<h5 class="text-uppercase">살구균</h5>
										<img src="/img/testCertficarion.png"/>
										<ul class="list-unstyled">
											<li>kcl 시험성적서</li>
										</ul>
									</div>
									<div class="site-links col-md-6">
										<h5 class="text-uppercase">황생균</h5>
										<img src="/img/testCertficarion.png"/>
										<ul class="list-unstyled">
											<li>kcl 시험성적서</li>
										</ul>
									</div>
									<div class="site-links col-md-6">
										<h5 class="text-uppercase">황색포도구상균</h5>
										<img src="/img/testCertficarion.png"/>
										<ul class="list-unstyled">
											<li>kcl 시험성적서</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- 성능분석 탭 종료 -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../footer.jsp" %>
	<%@ include file="../bottomJs.jsp" %>
</body>
</html>