<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회사소개</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="robots" content="all,follow">
	<%@ include file="../topCssJs.jsp" %>
</head>
<body>
	<%@ include file="../top.jsp" %>
	<!-- 이미지 섹션 -->
	<section style="background:url(/img/intro.jpg) center center; height:500px;">
		<div>
			<!-- 이미지 들어가야함 -->
		</div>
		<div class="container" style="padding: inherit;">
			<div class="row">
				<div style="color:#ffffff;"class="col-lg-12 text-center"><!-- class에 text-white 적용 -->
					<h3>
						For the health and well-being of all human beings
					</h3>
					<h1>
						Thunder Eco
					</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- 내용 섹션 -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h3>
						Thunder Eco는?
					</h3>
				</div>
				<div class="col-lg-12">
					<p>제 4 에너지 물질 발생 장치인 "썬더폴트 방전 시스템"을 이용하여 우리의 삶에 가장 소중한 공기와 물을</p>
					<p>최상의 상태로 변환하여 온 인류의 건강과 행복에 꼭 필요한 제품을 제조하는 대기환경 및 수질환경 개선 전문회사입니다.</p>
				</div>
				<div class="col-lg-12 text-center">
					<h2 style="padding-bottom: 10%; padding-top:20px; color: green;">
						플라즈마 & 산화질소
					</h2>
					<div class="row text-left">
						<span class="col-md-6">
							<ul>
								<li><strong>강력한 활성 파동 에너지 생성</strong></li>
								<li><strong>고농도 산화질소(NO) 생성</strong></li>
								<li><strong>다량의 산소이온(음이온) 생성</strong></li>
								<li><strong>OH- Radical 생성</strong></li>
								<li><strong>이산화탄소(CO2) 저감으로 지구 온난화 현상 예방</strong></li>
							</ul>
						</span>
						<span class="col-md-6">
							<ul>
								<li><strong>대기 중 (초)미세먼지 중화</strong></li>
								<li><strong>인체의 동석 분해(Detox)</strong></li>
								<li><strong>공기정화로 상쾌함 제공</strong></li>
								<li><strong>강력한 살균 탈취력</strong></li>
							</ul>
						</span>
					</div>
					<h2 style="padding-bottom: 10%; padding-top:40px; color: green;">
						사업 영역
					</h2>
					<div style="padding-bottom: 10%;" class="row text-center">
						<span class="col-md-6">
							<strong style="display: block; padding-bottom: 10%;"><h3>공기살균탈취시스템</h3></strong>
							<img src="/img/intro_1.png">
							<!-- <img> -->
						</span>
						<span class="col-md-6">
							<strong style="display: block; padding-bottom: 10%;"><h3>친환경 안전 농수축산</h3></strong>
							<img src="/img/intro_2.png">
							<!-- <img> -->
						</span>
					</div>
					<div style="padding-bottom: 10%;" class="row text-center">
						<span class="col-md-6">
							<strong style="display: block; padding-bottom: 10%; "><h3>대기 및 수질 환경</h3></strong>
							<img src="/img/intro_3.png">
							<!-- <img> -->
						</span>
						<span class="col-md-6">
							<strong style="display: block;padding-bottom: 10%; "><h3>주방환경 개선</h3></strong>
							<img src="/img/intro_4.png">
							<!-- <img> -->
						</span>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../footer.jsp" %>
	<%@ include file="../bottomJs.jsp" %>
</body>
</html>