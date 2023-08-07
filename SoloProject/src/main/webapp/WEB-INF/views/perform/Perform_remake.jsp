<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/YIGHeader.jsp"></jsp:include>
  
  <body>
    <section>
    <section>
      <div class="container">
        <div class="h3 text-solo6 text-center my-3"></div>
        <!-- 최상단 스와이퍼 -->
        <form name="swiper"  action="${path}/perform/Perform_remake" method="get">
        <div class="swiper-container swiper-main">
          <div class="swiper-wrapper">
          <c:forEach var="item" items="${swiperList}">
            <div class="swiper-slide swiper-slide-main">
              <img
                style="height: 100%"
                src="${item.poster }"
                alt=""
              />
              <a href="perform/Perform_detail.jsp"></a>
            </div>
			</c:forEach>
          </div>
        </div>
        </form>
        <h1> ↑그냥 DB에서 poster 아무거나 꺼내오기</h1>
      </div>
    </section>
      <div class="container text-white z-index-20" style="position: relative; bottom:;">
        <div class="row">
          <div style="padding-left: 15rem; padding-right: 15rem;">
            <div class="search-bar-y mt-5 p-3 p-lg-1 pl-lg-4">
              <form action="${path}/perform/Perform_search" method="get">
                <div class="row">
                  <div class="col-lg-10 d-flex align-items-center form-group">
                    <input class="form-control border-0 shadow-0" type="text" name="search" placeholder="What are you searching for?">
                  </div>
                  <div class="col-lg-2">
                    <button class="btn btn-primary btn-block rounded-xl h-100" type="submit">Search </button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section> 
      <div class="container">
        <div class="row mb-5">
          <div style="text-align: center;  margin-top: 3rem;">
            <h1>최신 공연</h1>
            <h1>↓DB 날짜순 정렬</h1>
          </div>
        </div>
        <!-- Slider main container-->
        <div class="container">
        <!-- 최신 리스트 -->
          <div class="row">
        <c:forEach var="item" items="${list}">
            <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
              <div class="card shadow border-0 h-100"><a href="${path }Perform_detail?no=${item.mt20id}">
              <img class="img-fluid" src="${item.poster}" alt="Modern, Well-Appointed Room" style="width: 407.98px; height: 426.6px; object-fit: cover;">
              </a>
                <div class="card-body d-flex align-items-center" style= "hight: 90px;"> 
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="${path}Perform_detail?no=${item.mt20id}">${item.prfnm }</a></h6>
                  </div>
                </div>
              </div>
            </div>
          </c:forEach>
          </div>
          <div style="background-color: rgba(216, 234, 97, 0.6); width: 100%; height: 100px;">
          </div>
          <div>
            <img src="${path}/resources/img/yg/배너.png" alt="" style="width: 100%;">
          </div>
        </div>
      </div>
    </section>
    <section>
      <div id = "category" class="container">
      		<h1>↓라디오버튼 클릭시 이쪽만 장르별로 정렬</h1>
	        <form id="categoryForm" action="${path}/perform/Perform_remake" method="get">
			    <div style="display: flex; text-align: center; margin-top: 2rem; margin-bottom: 2rem;">
			        <label class="region_button" style="flex: 1;">
			            <input type="radio" id="concert" name="category" value="콘서트" onclick="submitCategoryForm()"> 콘서트
			        </label>
			        <label class="region_button" style="flex: 1;">
			            <input type="radio" id="musical" name="category" value="뮤지컬" onclick="submitCategoryForm()"> 뮤지컬
			        </label>
			        <label class="region_button" style="flex: 1;">
			            <input type="radio" id="play" name="category" value="연극" onclick="submitCategoryForm()"> 연극
			        </label>
			        <label class="region_button" style="flex: 1;">
			            <input type="radio" id="classical" name="category" value="클래식" onclick="submitCategoryForm()"> 클래식
			        </label>
			        <label class="region_button" style="flex: 1;">
			            <input type="radio" id="exhibition" name="category" value="무용" onclick="submitCategoryForm()"> 무용
			        </label>
			        <label class="region_button" style="flex: 1;">
			            <input type="radio" id="kids" name="category" value="기타" onclick="submitCategoryForm()"> 기타
			        </label>
			    </div>
			</form>
        <div class="row">
        <c:forEach var="item" items="${performList}">
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="${path }Perform_detail?no=${item.mt20id}">
                <img class="img-fluid" src="${item.poster}" alt="Modern, Well-Appointed Room"
    				 style="width: 196px;; height: 236.03px; object-fit: cover;">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="${path }Perform_detail?no=${item.mt20id}">${item.prfnm }</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          </c:forEach>
      	</div>
      </div>
    </section>
    <section>
      <div class="container">
        <div style="text-align: center; margin-bottom: 2rem; margin-top: 3rem;">
        	<h1>↓라디오버튼 클릭시 이쪽만 지역에 따라 변경</h1>
        	<h1>지역별 공연</h1>
    	</div>
	    <form id="regionForm" action="${path}/perform/Perform_remake" method="get">
		    <div style="display: flex; text-align: center; margin-top: 2rem; margin-bottom: 2rem;">
		        <label class="region_button" style="flex: 1;" onclick="submitRegionForm('전체')">
		            <input type="radio" name="region" value="서울">서울
		        </label>
		        <label class="region_button" style="flex: 1;" onclick="submitRegionForm('서울')">
		            <input type="radio" name="region" value="경기">경기
		        </label>
		        <label class="region_button" style="flex: 1;" onclick="submitRegionForm('경기/인천')">
		            <input type="radio" name="region" value="인천">인천
		        </label>
		        <label class="region_button" style="flex: 1;" onclick="submitRegionForm('대전/충청/강원')">
		            <input type="radio" name="region" value="충청">충청
		        </label>
		        <label class="region_button" style="flex: 1;" onclick="submitRegionForm('부산/대구/울산/')">
		            <input type="radio" name="region" value="부산">부산
		        </label>
		        <label class="region_button" style="flex: 1;" onclick="submitRegionForm('광주/전라')">
		            <input type="radio" name="region" value="전라">전라도
		        </label>
		        <label class="region_button" style="flex: 1;" onclick="submitRegionForm('제주')">
		            <input type="radio" name="region" value="제주">제주
		        </label>
		    </div>
		</form>
        <div class="row">
        <c:forEach var="item" items="${regionList}">
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="${path }Perform_detail?no=${item.mt20id}">
                <img class="img-fluid" src="${item.poster}" alt="Modern, Well-Appointed Room"
    				 style="width: 196px;; height: 236.03px; object-fit: cover;">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="${path }Perform_detail?no=${item.mt20id}">${item.prfnm }</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          </c:forEach>
          <!-- Add remaining 4 columns here with similar structure -->
        </div>
      </div>
    </section>
    
    
    <!-- 분야별 포스터 자바스크립트 -->
    <script>
	    function submitCategoryForm() {
	        document.getElementById('categoryForm').submit();
	    }
	</script>
    
    <!-- 지역버튼 자바스크립트 -->
	 <script>
	    function submitRegionForm() {
	        document.getElementById('regionForm').submit();
	    }
	</script>
	


   <jsp:include page="/WEB-INF/views/common/YIGFooter.jsp"></jsp:include>