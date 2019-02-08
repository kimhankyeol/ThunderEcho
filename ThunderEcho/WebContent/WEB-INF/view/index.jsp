<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Hub - Bootstrap 4 Ecommerce Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <%@ include file="topCssJs.jsp" %>
 	
 	<style type="text/css">
		.main-height {
			height: 100%
		}
	</style>
  </head>
    <%@ include file="top.jsp" %>
    <!-- Hero Section-->
    <section class="hero hero-home no-padding">
      <!-- Hero Slider-->
      <div class="owl-carousel owl-theme hero-slider">
        <div style="background: url(/img/mainTest.png); background-position: center; height:1000px;" class="item d-flex align-items-center main-height">
          <div class="container">
            <div class="row">
              <div class="col-lg-6">
                <h1 class="main-hfs">에어파파</h1>
                <ul class="main-pfs"> 
                  <li><strong>AirPapa</strong></li>
                  <li><strong>24</strong> pages, <strong>6</strong> colour variants</li>
                  <li><strong>SCSS</strong> sources </li>
                  <li>frequent & <strong>free updates</strong></li>
                </ul><a href="#" class="btn btn-template wide shop-now">자세히 보기<i class="icon-bag"> </i></a>
              </div>
            </div>
          </div>
        </div>
        
        <div style="background: url(/img/mainTest2.jpg); background-position: center; height:1000px;" class="item d-flex align-items-center main-height">
          <div class="container">
            <div class="row">
              <div class="col-lg-6 text-white">
                <h1 class="main-hfs">친환경 돈사 시스템</h1>
                <p class="main-pfs">산화질소를 포함한 플라스마 생성 기술을 통한 악취 제거 및 병원성 세균 멸균 친환경 동물 복지형 축사 시스템.</p><a href="#" class="btn btn-template wide shop-now">자세히 보기<i class="icon-bag">  </i></a>
              </div>
            </div>
          </div>
        </div>
        <div style="background: url(/img/mainTest3.jpg); background-position: center; height:1000px;" class="item d-flex align-items-center main-height">
          <div class="container">
            <div class="row">
              <div class="col-lg-6 text-white">
                <h1 class="main-hfs">친환경 수산 시스템</h1>
                <p class="main-pfs ">수소 클러스터 작용을 통한 이온화 작용, 전자유기작용 및 활성기체를 생성하여 산화, 환원, 응집반응으로 수질정화, 살균하여 최상의 수질상태 유지 시스템</p><a href="#" class="btn btn-template wide shop-now">자세히 보기<i class="icon-bag">           </i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- 멋쟁이 흑인 다른 곳에서 쓸거얌-->
    <!--<section style="background: url(https://d19m59y37dris4.cloudfront.net/hub/1-4-0/img/divider-bg.jpg);" class="divider">
      <div class="container"> 
        <div class="row">
          <div class="col-lg-6">
            <p>Old Collection                  </p>
            <h2 class="h1 text-uppercase no-margin">Huge Sales</h2>
            <p>At our outlet stores</p><a href="#" class="btn btn-template wide shop-now">Shop Now<i class="icon-bag"></i></a>
          </div>
        </div>
      </div>
    </section>-->
	<%@ include file="footer.jsp" %>
    <%@ include file="bottomJs.jsp" %>
  </body>

</html>