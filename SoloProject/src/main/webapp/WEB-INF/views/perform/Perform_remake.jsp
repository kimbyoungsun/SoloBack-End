<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/YIGHeader.jsp"></jsp:include>
  
  <body>
    <section class="hero-home">
      <div class="swiper-container hero-slider">
        <div class="swiper-wrapper dark-overlay">
          <div class="swiper-slide" style="background-image:url(${path}/resources/img/photo/photo-1501621965065-c6e1cf6b53e2.jpg)"></div>
          <div class="swiper-slide" style="background-image:url(${path}/resources/img/photo/photo-1519974719765-e6559eac2575.jpg)"></div>
          <div class="swiper-slide" style="background-image:url(${path}/resources/img/photo/photo-1490578474895-699cd4e2cf59.jpg)"></div>
          <div class="swiper-slide" style="background-image:url(${path}/resources/img/photo/photo-1534850336045-c6c6d287f89e.jpg)"></div>
        </div>
      </div>
      <div class="container py-6 py-md-7 text-white z-index-20" style="position: relative; bottom: -270px;">
        <div class="row">
          <div style="padding-left: 15rem; padding-right: 15rem;">
            <div class="search-bar-y mt-5 p-3 p-lg-1 pl-lg-4">
              <form action="#">
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
          <div style="text-align: center; margin-bottom: 2rem; margin-top: 3rem;">
            <h1>RANGKING</h1>
          </div>
          <div style="text-align: center; margin-top: 1rem; margin-bottom: 1rem;">
            <span style="margin: 2rem;">
              <a href="">#뮤지컬</a>
            </span>
            <span style="margin: 2rem;">
              <a href="">#콘서트</a>
            </span>
            <span style="margin: 2rem;">
              <a href="">#연극</a>
            </span>
            <span style="margin: 2rem;">
              <a href="">#클래식</a>
            </span>
            <span style="margin: 2rem;">
              <a href="">#전시</a>
            </span>
          </div>
        </div>
        <!-- Slider main container-->
        <div class="container">
          <div class="row">
            <!-- blog item-->
            <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
              <div class="card shadow border-0 h-100"><a href="post.html"><img class="img-fluid" src="${path}/resources/img/yg/공연이미지4.jpg" alt="Modern, Well-Appointed Room"/></a>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">국립발레단 〈트리플 빌〉 ＆ 〈해설이 있는 전막발레 해적〉</a></h6>
                  </div>
                </div>
              </div>
            </div>
            <!-- blog item-->
            <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
              <div class="card shadow border-0 h-100"><a href="post.html"><img class="img-fluid" src="${path}/resources/img/yg/공연이미지1.jpg" alt="Cute Quirky Garden apt, NYC adjacent"/></a>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">한요한 정규 5집 [Shining Star] 앵콜 콘서트</a></h6>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
              <div class="card shadow border-0 h-100"><img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Sunny Private Studio-Apartment"/></a>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">2023 제2회 인디뮤직페스티벌 In-die-Autumn[인-디-오텀]</a></h6>
                  </div>
                </div>
              </div>
            </div>
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
      <div class="container">
        <div style="display: flex; text-align: center; margin-top: 2rem; margin-bottom: 2rem;">
          <h1 style="flex: 1;"><a href="" style="color: inherit; text-decoration: none;">콘서트</a></h1>
          <h1 style="flex: 1;"><a href="" style="color: inherit; text-decoration: none;">뮤지컬</a></h1>
          <h1 style="flex: 1;"><a href="" style="color: inherit; text-decoration: none;">연극</a></h1>
          <h1 style="flex: 1;"><a href="" style="color: inherit; text-decoration: none;">클래식</a></h1>
          <h1 style="flex: 1;"><a href="" style="color: inherit; text-decoration: none;">전시</a></h1>
          <h1 style="flex: 1;"><a href="" style="color: inherit; text-decoration: none;">아동</a></h1>
        </div>
        <div class="row">
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="page1.html">
                <img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Image 1">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="detail1.html">Card 1</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="page2.html">
                <img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Image 2">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="detail2.html">Card 2</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="page2.html">
                <img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Image 2">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="detail2.html">Card 2</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="page2.html">
                <img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Image 2">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="detail2.html">Card 2</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="page2.html">
                <img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Image 2">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="detail2.html">Card 2</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="page2.html">
                <img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Image 2">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="detail2.html">Card 2</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <!-- Add remaining 4 columns here with similar structure -->
        </div>
      </div>
    </section>
    <section>
      <div class="container">
        <div style="text-align: center; margin-bottom: 2rem; margin-top: 3rem;">
          <h1>지역별 공연</h1>
        </div>
        <div style="display: flex; text-align: center; margin-top: 2rem; margin-bottom: 2rem; ">
          <h6 style="flex: 1; border: 1px solid #DDDD; padding-top: 2rem; padding-bottom: 2rem;"><a href="" style="color: inherit; text-decoration: none;">전체</a></h6>
          <h6 style="flex: 1; border: 1px solid #DDDD; padding-top: 2rem; padding-bottom: 2rem;"><a href="" style="color: inherit; text-decoration: none;">서울</a></h6>
          <h6 style="flex: 1; border: 1px solid #DDDD; padding-top: 2rem; padding-bottom: 2rem;"><a href="" style="color: inherit; text-decoration: none;">경기/인천</a></h6>
          <h6 style="flex: 1; border: 1px solid #DDDD; padding-top: 2rem; padding-bottom: 2rem;"><a href="" style="color: inherit; text-decoration: none;">대전/충청/강원</a></h6>
          <h6 style="flex: 1; border: 1px solid #DDDD; padding-top: 2rem; padding-bottom: 2rem;"><a href="" style="color: inherit; text-decoration: none;">부산/대구/울산/경상</a></h6>
          <h6 style="flex: 1; border: 1px solid #DDDD; padding-top: 2rem; padding-bottom: 2rem;"><a href="" style="color: inherit; text-decoration: none;">광주/전라</a></h6>
          <h6 style="flex: 1; border: 1px solid #DDDD; padding-top: 2rem; padding-bottom: 2rem;"><a href="" style="color: inherit; text-decoration: none;">제주</a></h6>
        </div>
        <div class="row">
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="page1.html">
                <img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Image 1">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="detail1.html">Card 1</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="page2.html">
                <img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Image 2">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="detail2.html">Card 2</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="page2.html">
                <img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Image 2">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="detail2.html">Card 2</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="page2.html">
                <img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Image 2">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="detail2.html">Card 2</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="page2.html">
                <img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Image 2">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="detail2.html">Card 2</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <div class="col-2">
            <div class="card shadow border-0 h-100">
              <a href="page2.html">
                <img class="img-fluid" src="${path}/resources/img/yg/공연이미지3.jpg" alt="Image 2">
              </a>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title">
                    <a class="text-decoration-none text-dark" href="detail2.html">Card 2</a>
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <!-- Add remaining 4 columns here with similar structure -->
        </div>
      </div>
    </section>

   <jsp:include page="/WEB-INF/views/common/YIGFooter.jsp"></jsp:include>