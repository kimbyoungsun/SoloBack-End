<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/YIGHeader.jsp"></jsp:include>

    <section class="hero-home">
      <div class="swiper-container hero-slider">
        <div class="swiper-wrapper dark-overlay">
          <div
            class="swiper-slide"
            style="
              background-image: url(${path}/resources/img/photo/photo-1501621965065-c6e1cf6b53e2.jpg);
            "
          ></div>
          <div
            class="swiper-slide"
            style="
              background-image: url(${path}/resources/img/photo/photo-1519974719765-e6559eac2575.jpg);
            "
          ></div>
          <div
            class="swiper-slide"
            style="
              background-image: url(${path}/resources/img/photo/photo-1490578474895-699cd4e2cf59.jpg);
            "
          ></div>
          <div
            class="swiper-slide"
            style="
              background-image: url(${path}/resources/img/photo/photo-1534850336045-c6c6d287f89e.jpg);
            "
          ></div>
        </div>
      </div>
      <div class="container py-6 py-md-7 text-white z-index-20">
        <div class="row">
          <div class="col-xl-10">
            <div class="text-center text-lg-start">
              <p
                class="subtitle letter-spacing-4 mb-2 text-secondary text-shadow"
              >
                The best holiday experience
              </p>
              <h1 class="display-3 fw-bold text-shadow">Stay like a local</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <div class="search-bar my-5 p-3 p-lg-1 ps-lg-4">
      <form action="#">
        <div class="row">
          <div class="col-lg-10 d-flex align-items-center form-group">
            <input
              class="form-control border-0 shadow-0"
              type="text"
              name="search"
              placeholder="What are you searching for?"
            />
          </div>
          
          <div class="col-lg-2 d-grid">
            <button
              class="btn btn-primary rounded-pill h-100"
              type="submit"
            >
              Search 
            </button>
          </div>
        </div>
      </form>
    </div>
    <div style="text-align: center; margin-bottom: 2rem; margin-top: 3rem;">
      <h1>RANGKING</h1>
    </div>
    <div style="text-align: center; margin-top: 1rem; margin-bottom: 1rem;">
      <span style="margin: 2rem;">
        #뮤지컬
      </span>
      <span style="margin: 2rem;">
        #콘서트
      </span>
      <span style="margin: 2rem;">
        #연극
      </span>
      <span style="margin: 2rem;">
        #클래식
      </span>
      <span style="margin: 2rem;">
        #전시
      </span>
    </div>
    <div class="container">
      <!-- Slider main container-->
      <div class="swiper-container swiper-container-mx-negative swiper-init pt-3" data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}">
        <!-- Additional required wrapper-->
        <div class="swiper-wrapper pb-5">
          <!-- Slides-->
          <div class="swiper-slide h-auto px-2">
            <!-- place item-->
            <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/yg/공연이미지4.jpg" alt="Modern, Well-Appointed Room"/><a class="tile-link" href="detail-rooms.html"></a>
                  <div class="card-img-overlay-top text-right"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"> </use>
                      </svg></a></div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">국립발레단 〈트리플 빌〉 ＆ 〈해설이 있는 전막발레 해적〉</a></h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2">
            <!-- place item-->
            <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/yg/공연이미지1.jpg" alt="Cute Quirky Garden apt, NYC adjacent"/><a class="tile-link" href="detail-rooms.html"></a>
                  <div class="card-img-overlay-top text-right"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"> </use>
                      </svg></a></div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">한요한 정규 5집 [Shining Star] 앵콜 콘서트</a></h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2">
            <!-- place item-->
            <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/yg/공연이미지2.jpg" alt="Modern Apt - Vibrant Neighborhood!"/><a class="tile-link" href="detail-rooms.html"></a>
                  <div class="card-img-overlay-top text-right"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"> </use>
                      </svg></a></div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">2023 창원 락 페스타</a></h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2">
            <!-- place item-->
            <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Sunny Private Studio-Apartment"/><a class="tile-link" href="detail-rooms.html"></a>
                  <div class="card-img-overlay-top text-right"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"> </use>
                      </svg></a></div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">2023 제2회 인디뮤직페스티벌 In-die-Autumn[인-디-오텀]</a></h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2">
        <!-- If we need pagination-->
        <div class="swiper-pagination"></div>
      </div>
    </div>

  
   <jsp:include page="/WEB-INF/views/common/YIGFooter.jsp"></jsp:include>
