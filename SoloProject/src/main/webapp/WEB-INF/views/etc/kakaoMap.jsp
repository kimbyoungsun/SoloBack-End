<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

   <style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>

    <section class="hero-home" style="background-color: #50a78b">
      <div class="container text-white z-index-20">
        <div class="row">
          <div class="col-xl-6">
            <div class="text-center text-lg-start">
              <h1 class="display-3 mt-7 fw-bold text-shadow">공공 임대주택 위치</h1>
            </div>
            <div class="p-lg-1 ps-lg-4">
            </div>
          </div>
          <div class="col text-center">
            <img
              class="figure"
              src="${path}/resources/img/kbs/basketball_court-pana.png"
              style="width: 30rem; left: 100px"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>

<section>
<div class="container">
        <div class="row pt-5">
          <div class="col">총 ${houseCount}곳</div>
          <div class="col text-end ">
           <div class="dropdown">
				<form id="searchForm" action="${path}/location/RentalHouse" method="get">
					<a id="sortDrop" class="btn btn-primary dropdown-toggle"
						id="homeDropdownMenuLink" href="index.html"
						data-bs-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 
							${category}	
						</a>

					<div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
						<button type=submit class="dropdown-item" name="category" value="서울특별시">서울특별시</button> 
						<button type=submit class="dropdown-item" name="category" value="부산광역시">부산광역시</button> 
						<button type=submit class="dropdown-item" name="category" value="대구광역시">대구광역시</button> 
						<button
							id="popularity" class="dropdown-item" name="category"  value="인천광역시" >인천광역시</button> 
							<button
							 id="release_date" class="dropdown-item" name="category"  value="광주광역시" >광주광역시 
						</button>
							<button
							 id="release_date" class="dropdown-item" name="category"  value="대전광역시" >대전광역시 
						</button>
						<button type=submit class="dropdown-item" name="category" value="울산광역시">울산광역시</button>
						<button type=submit class="dropdown-item" name="category" value="경기도">경기도</button>
						<button type=submit class="dropdown-item" name="category" value="세종특별자치시">세종특별자치시</button>
						<button type=submit class="dropdown-item" name="category" value="강원도">강원도</button>
						<button type=submit class="dropdown-item" name="category" value="충청북도">충청북도</button>
						<button type=submit class="dropdown-item" name="category" value="충청남도">충청남도</button>
						<button type=submit class="dropdown-item" name="category" value="전라북도">전라북도</button>
						<button type=submit class="dropdown-item" name="category" value="전라남도">전라남도</button>
						<button type=submit class="dropdown-item" name="category" value="경상북도">경상북도</button>
						<button type=submit class="dropdown-item" name="category" value="경상남도">경상남도</button>
						<button type=submit class="dropdown-item" name="category" value="제주특별자치도">제주특별자치도</button>
					</div>
				</form>
				</div>
          </div>
        </div>
        </section>
    <section>
      <div class="container">
        <div id="kakaoMap" class="py-5 my-5 rounded-3" style="width: 100%; height: 700px"></div>
      </div>
</section>
      <script
        type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=31153b79d643f0b6fa230d3c732f4a4e&libraries=services"
      ></script>
      <script>

      var mapContainer = document.getElementById("kakaoMap");
      var mapOption = {
          center: new kakao.maps.LatLng(${y}, ${x}),
          level: ${level}
      };
      var map = new kakao.maps.Map(mapContainer, mapOption);
		
      
      var addressList = [
          // 추가 주소들을 배열에 넣으세요
          ""
      ];

      <c:forEach var="map" items="${list}" >
      	addressList.push("${map.rnAdres}");
      </c:forEach>
      var geocoder = new kakao.maps.services.Geocoder();

      // 각 주소에 대한 마커와 인포윈도우를 생성합니다.
      addressList.forEach(function (address) {
          geocoder.addressSearch(address, function (result, status) {
              if (status === kakao.maps.services.Status.OK) {
                  var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
                  var marker = new kakao.maps.Marker({
                      position: coords,
                      map: map
                  });

                 var iwRemoveable = true;
                 var infowindow = new kakao.maps.InfoWindow({
                     content: '<div  style="width:300px;text-align:center;padding:15px 0;">'+address+'</div>',
                     removable : iwRemoveable
                 });

              
                  // 각 마커에 클릭 이벤트를 등록하여 인포윈도우를 표시합니다.
                  kakao.maps.event.addListener(marker, 'click', function () {
                      infowindow.open(map, marker);
                  });

              }
          });
      });
      </script>
    
 <jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>
