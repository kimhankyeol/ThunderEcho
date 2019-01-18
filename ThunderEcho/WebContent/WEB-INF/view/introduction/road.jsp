<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <title>오시는길</title>
	    <meta name="description" content="">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="robots" content="all,follow">
	   <%@ include file="/WEB-INF/view/topCssJs.jsp"%>
	   
	   
	    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c449b1cbc3c291def2d6edada3e87082"></script>
		
	</head>
	<body>
	<!-- top -->
		<%@ include file="/WEB-INF/view/top.jsp" %>
	<!-- top end -->
	
	
	
	<!-- 회사사진 -->
	 <div class="main-block">
        <div class="container">
        	<div class="row" style="margin:1% auto">
	        		<h3 style="color:#E0EDC0">오시는길</h3>
	        		<hr/>
        	</div>
        	
          <div class="row">
            <div class="info col-lg-4" style="display:inline-block">
              <div class="logo" ><img src="/img/roadTest.jpg" alt="..."></div>
            </div>
        
            <div class="newsletter col-lg-8" >
              <ul class="list-unstyled">
                <li> 주소 : 서울특별시 강서구 우장산로 10길 112</li>
                <li style="padding-left: 6%"> (서울특별시 강서구 우장산동 산 60-1)</li>
                <li> 전화 : 1588-1588</li>
              </ul>
            </div>
          </div>
          
             <hr/>
	<!-- 회사사진 end  -->
	
	<!-- 지도 -->
			<div id="road" style="width:100%;height:350px;"></div>
	
          
          	<div class="row" style="margin:1% auto">
	        	<ul class="list-unstyled">
	        		<li>지하철</li>
	                <li> 5호선 까치산역 3벙 출구 한국폴리텍 서울강서캠퍼스 방향 500(보도9분)</li>
	                <li> 5호선 우장산역 3벙 출구 한국폴리텍 서울강서캠퍼스 방향 1km(보도15분)</li>
            	</ul>
        	</div>
          
        </div>
      </div>
      
	<!-- 지도 end-->
	
		<script>
			var mapContainer = document.getElementById('road'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
			
			var map = new daum.maps.Map(mapContainer, mapOption);
			
			// 마커가 표시될 위치입니다 
			var markerPosition  = new daum.maps.LatLng(33.450701, 126.570667); 
			
			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
			    position: markerPosition
			});
			
			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			
			var iwContent = '<div style="padding:5px;">ThunderEco! <br><a href="http://map.daum.net/link/map/ThunderEco,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="http://map.daum.net/link/to/ThunderEco,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			    iwPosition = new daum.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다
			
			// 인포윈도우를 생성합니다
			var infowindow = new daum.maps.InfoWindow({
			    position : iwPosition, 
			    content : iwContent 
			});
			  
			// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
			infowindow.open(map, marker); 
		</script>
	
	<!-- footer -->
	<%@ include file="/WEB-INF/view/footer.jsp" %>
    <%@ include file="/WEB-INF/view/bottomJs.jsp" %>
	<!-- footer end  -->
	</body>
</html>