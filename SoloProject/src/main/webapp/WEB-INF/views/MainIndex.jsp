<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>
    <section class="hero-home" style="background-color: #50a78b">
      <div class="container py-6 py-md-7 text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-5">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">
                <div>자취하는 당신</div>
                <div>생활력은 월장!</div>
              </h1>
            </div>
            <div class="p-lg-1 ps-lg-4">
              <form action="#" class="search-bar row">
                <div class="col d-flex align-items-center flex-grow-1">
                  <input
                    class="form-control border-0 shadow-0"
                    type="text"
                    name="search"
                    placeholder="키워드를 입력해 보세요."
                  />
                </div>

                <div class="col-lg-4 px-0 d-grid flex-grow-0">
                  <button
                    class="btn btn-primary rounded-pill h-100"
                    type="submit"
                  >
                    검색
                  </button>
                </div>
              </form>
            </div>
          </div>
          <div class="col text-center">
            <img
              class="figure position-relative"
              src="${path}/resources/img/kbs/maintheme.png"
              style="width: 35rem"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>
    
    <!-- 라이프 -->
    <section>
      <div class="container my-5">
        <div class="h3 fw-bold text-solo-6">라이프</div>
        <div class="h5 fw-bold text-solo-5">
          혼자 살면 재미없다? 누구보다 알차게 삶을 즐기는 당신을 위한
          라이프스타일
        </div>

        <div class="row">
          <div class="col d-flex">
            <div class="card border-0 bg-solo-1">
              <div class="container">
                <div class="mt-3 ms-3 fw-bold">슬기로운 문화생활</div>
                <div class="mt-3 ms-3 h4 fw-bold">공연</div>
                <div class="text-end">
                  <img
                    class="card-img-bottom mt-5 mb-3 mx-2"
                    src="${path}/resources/img/kbs/music 1.png"
                    alt="Card image cap"
                    style="width: 70% !important"
                  />
                </div>
              </div>
            </div>
          </div>
          <div class="col d-flex">
            <div class="card border-0 bg-solo-2">
              <div class="container">
                <div class="mt-3 ms-3 fw-bold">가장 편안한 영화관, 우리집</div>
                <div class="mt-3 ms-3 h4 fw-bold">OTT</div>
                <div class="text-end">
                  <img
                    class="card-img-bottom mt-5 mb-3 mx-2"
                    src="${path}/resources/img/kbs/tv 1.png"
                    alt="Card image cap"
                    style="width: 70% !important"
                  />
                </div>
              </div>
            </div>
          </div>
          <div class="col d-flex">
            <div class="card border-0 bg-solo-3">
              <div class="container">
                <div class="mt-3 ms-3 fw-bold">동네 맛집은 내가 접수한다</div>
                <div class="mt-3 ms-3 h4 fw-bold">식당 · 카페</div>
                <div class="text-end">
                  <img
                    class="card-img-bottom mt-5 mb-3 mx-2"
                    src="${path}/resources/img/kbs/cutlery 1.png"
                    alt="Card image cap"
                    style="width: 70% !important"
                  />
                </div>
              </div>
            </div>
          </div>
          <div class="col d-flex">
            <div class="card border-0 bg-solo-4">
              <div class="container">
                <div class="mt-3 ms-3 fw-bold">늘어나는 체력, 커지는 행복</div>
                <div class="mt-3 ms-3 h4 fw-bold">생활체육</div>
                <div class="text-end">
                  <img
                    class="card-img-bottom mt-5 mb-3 mx-2"
                    src="${path}/resources/img/kbs/sports 1.png"
                    alt="Card image cap"
                    style="width: 70% !important"
                  />
                </div>
              </div>
            </div>
          </div>
          <div class="col d-flex">
            <div class="card border-0 bg-solo-5">
              <div class="container">
                <div class="mt-3 ms-3 fw-bold">책은 마음의 양식!</div>
                <div class="mt-3 ms-3 h4 fw-bold">도서</div>
                <div class="text-end">
                  <img
                    class="card-img-bottom mt-5 mb-3 mx-2"
                    src="${path}/resources/img/kbs/book-stack 1.png"
                    alt="Card image cap"
                    style="width: 70% !important"
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- 1인가구 프로그램-->
    <section>
      <div class="container">
        <div class="row">
          <div class="h3 fw-bold col text-solo-6">1인가구 프로그램</div>
          <div class="col text-end">더보기</div>
        </div>
        <div>
          <div class="row">
            <div class="col d-flex">
              <div class="container">
                <div class="">
                  <img
                    class="figure figure-img"
                    src="${path}/resources/img/kbs/Rectangle 51.png"
                    alt="Card image cap"
                    style="width: 100% !important"
                  />
                </div>
                <div class="fw-bold h5">경기도 청년 1인가구 지원사업</div>
                <div class="fw-bold text-solo-6">2023.05.18. ~ 2023.06.04.</div>
                <div class="fw-bold text-solo-6">경기도</div>
              </div>
            </div>
            <div class="col d-flex">
              <div class="container">
                <div class="">
                  <img
                    class="figure figure-img"
                    src="${path}/resources/img/kbs/Rectangle 52.png"
                    alt="Card image cap"
                    style="width: 100% !important"
                  />
                </div>
                <div class="fw-bold h5">1인가구 생활 밀착형 프로그램</div>
                <div class="fw-bold text-solo-6">2023.05.18. ~ 2023.06.04.</div>
                <div class="fw-bold text-solo-6">경기도</div>
              </div>
            </div>
            <div class="col d-flex">
              <div class="container">
                <div class="">
                  <img
                    class="figure figure-img"
                    src="${path}/resources/img/kbs/Rectangle 53.png"
                    alt="Card image cap"
                    style="width: 100% !important"
                  />
                </div>
                <div class="fw-bold h5">동일이네 행복한 밥상</div>
                <div class="fw-bold text-solo-6">2023.05.18. ~ 2023.06.04.</div>
                <div class="fw-bold text-solo-6">경기도</div>
              </div>
            </div>
            <div class="col d-flex">
              <div class="container">
                <div class="">
                  <img
                    class="figure figure-img"
                    src="${path}/resources/img/kbs/Rectangle 54.png"
                    alt="Card image cap"
                    style="width: 100% !important"
                  />
                </div>
                <div class="fw-bold h5">1인가구 친구찾기 PET-프킬라</div>
                <div class="fw-bold text-solo-6">2023.05.18. ~ 2023.06.04.</div>
                <div class="fw-bold text-solo-6">경기도</div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div
        class="position-relative"
        style="
          background-color: rgb(216, 234, 97);
          width: 100%;
          height: 300px;
          top: -17.5rem;
          z-index: -1;
        "
      ></div>
    </section>

    <!--동네 거래 및 동네 핫스팟-->
    <section style="margin-top: -250px">
      <div class="container my-10 py-10">
        <div class="row">
          <div class="col">
            <div class="text-center h1 text-solo-6">동네 거래</div>
            <div class="text-center fw-bold text-solo-5">
              우리 동네에서 현명하게 살아가는 세 가지 방법
            </div>
            <div class="text-center fw-bold text-solo-5">
              중고/재능 거래부터 반려동물 위탁까지!
            </div>
          </div>

          <div class="col">
            <div class="text-center h1 fw-bold text-solo-6">동네 핫스팟</div>
            <div class="text-center fw-bold text-solo-5">
              요즘 우리 동네에서 사람들이 많이 찾는 곳은 어딜까?
            </div>
          </div>
        </div>

        <div class="row pb-7">
          <div class="col pt-4">
            <div class="text-center">
              <span
                class="btn bg-solo-5 nav-fill my-2"
                style="width: 21.875rem; vertical-align: middle"
              >
                <ul class="nav" style="vertical-align: middle">
                  <li class="d-flex mx-2">
                    <div class="fa fa-3x fa-shopping-bag mx-2"></div>
                  </li>
                  <li class="nav-justified mx-2">
                    <div class="text-start text-light card-text">
                      <span class="h6 fw-bold">동네 중고 거래</span>
                      <br />
                      <span class="fw-normal">진행 중인 거래 51건</span>
                    </div>
                  </li>
                  <li class="ms-4 text-end">
                    <div class="fa fa-3x fa-arrow-circle-right text-end"></div>
                  </li>
                </ul>
              </span>

              <span
                class="btn bg-solo-5 nav-fill my-2"
                style="width: 21.875rem; vertical-align: middle"
              >
                <ul class="nav" style="vertical-align: middle">
                  <li class="d-flex mx">
                    <div class="fa fa-3x fa-hands-helping mx-2"></div>
                  </li>
                  <li class="nav-justified mx-2">
                    <div class="text-start text-light card-text">
                      <span class="h6 fw-bold">반려동물 임보 위탁</span>
                      <br />
                      <span class="">진행 중인 거래 51건</span>
                    </div>
                  </li>
                  <li class="ms-4 text-end">
                    <div class="fa fa-3x fa-arrow-circle-right text-end"></div>
                  </li>
                </ul>
              </span>

              <span
                class="btn bg-solo-5 nav-fill my-2"
                style="width: 21.875rem; vertical-align: middle"
              >
                <ul class="nav" style="vertical-align: middle">
                  <li class="d-flex mx-2">
                    <div class="fa fa-3x fa-baby mx-2"></div>
                  </li>
                  <li class="nav-justified mx-2">
                    <div class="text-start text-light card-text">
                      <span class="h6 fw-bold card-text"
                        >반려동물 임보 위탁</span
                      >
                      <br />
                      <span class="card-text">진행 중인 거래 51건</span>
                    </div>
                  </li>
                  <li class="ms-4 text-end">
                    <div class="fa fa-3x fa-arrow-circle-right text-end"></div>
                  </li>
                </ul>
              </span>
            </div>
          </div>
          <div class="col">
            <div class="swiper-container my-slider mx-n2">
              <div class="swiper-wrapper pb-5 ms-3">
                <div class="swiper-slide h-auto px-2">
                  <div
                    class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"
                  >
                    <a class="tile-link" href="category.html"></a
                    ><img
                      class="bg-image"
                      src="${path}/resources/img/photo/new-york.jpg"
                      alt="Card image"
                    />
                    <div class="card-body overlay-content">
                      <h6 class="card-title text-shadow text-uppercase">
                        New York
                      </h6>
                      <p class="card-text text-sm">The big apple</p>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide h-auto px-2">
                  <div
                    class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"
                  >
                    <a class="tile-link" href="category.html"></a
                    ><img
                      class="bg-image"
                      src="${path}/resources/img/photo/new-york.jpg"
                      alt="Card image"
                    />
                    <div class="card-body overlay-content">
                      <h6 class="card-title text-shadow text-uppercase">
                        New York
                      </h6>
                      <p class="card-text text-sm">The big apple</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 지역별 공공 임대 주택 정보-->
    <section>
      <div class="container my-5">
        <div class="row">
          <div class="col h1 fw-bold text-solo-6">지역별 공공임대주택 정보</div>
          <div class="col text-end">더보기</div>
        </div>
      </div>
      <div class="container-fluid">
        <img width="100%" src="${path}/resources/img/kbs/RentalMap.png" alt="" />
        <div
          class="btn btn-danger position-relative"
          style="top: -4.5625rem; left: 26.25rem"
        >
          서울
        </div>

        <div
          class="btn btn-danger position-relative"
          style="top: -8.75rem; left: 3.125rem"
        >
          인천
        </div>

        <div
          class="btn btn-danger position-relative"
          style="top: -12.25rem; left: 36.0625rem"
        >
          경기
        </div>

        <div
          class="btn btn-danger position-relative"
          style="top: -27.6875rem; left: 6.0625rem"
        >
          강원
        </div>

        <div
          class="btn btn-danger position-relative"
          style="top: -17.3125rem; left: 49.625rem"
        >
          대전
        </div>

        <div
          class="btn btn-danger position-relative"
          style="top: -33.125rem; left: 45.625rem"
        >
          울산
        </div>

        <div
          class="btn btn-danger position-relative"
          style="top: -27.75rem; left: 54.25rem"
        >
          대구
        </div>

        <div
          class="btn btn-danger position-relative"
          style="top: -4.5rem; left: 48.25rem"
        >
          광주
        </div>

        <div
          class="btn btn-danger position-relative"
          style="top: -10.1875rem; left: 70.1875rem"
        >
          제주
        </div>

        <div
          class="btn btn-danger position-relative"
          style="top: -29.1875rem; left: 64.25rem"
        >
          부산
        </div>
      </div>
    </section>

    <!-- 뉴스 및 이주의 추천 영화-->
    <section>
      <div class="container my-5">
        <div class="row">
          <div class="col h3 fw-bold text-solo-6">1인 가구 관련 뉴스</div>
          <div class="col text-end">더보기</div>
          <div class="col-6"></div>
        </div>

        <div class="row">
          <div class="col my-3">
            <div>광주 동구 1인 가구 위한 요리 레시피 북 발간</div>
            <div>광주 동구 1인 가구 위한 요리 레시피 북 발간</div>
            <div>광주 동구 1인 가구 위한 요리 레시피 북 발간</div>
            <div>광주 동구 1인 가구 위한 요리 레시피 북 발간</div>
            <div>광주 동구 1인 가구 위한 요리 레시피 북 발간</div>
            <div>광주 동구 1인 가구 위한 요리 레시피 북 발간</div>
            <div>광주 동구 1인 가구 위한 요리 레시피 북 발간</div>
            <div>광주 동구 1인 가구 위한 요리 레시피 북 발간</div>
            <div>광주 동구 1인 가구 위한 요리 레시피 북 발간</div>
          </div>
          <div class="col position-relative" style="top: -50px">
            <ul class="list-group">
              <li class="list-group-item border-0">
                <img
                  class="mx-2"
                  src="${path}/resources/img/kbs/341036e74155a49eb4281dab 1.png"
                  style="width: 280px"
                  alt=""
                />
                <img
                  class="mx-2"
                  src="${path}/resources/img/kbs/341036e74155a49eb4281dab 2.png"
                  style="width: 280px"
                  alt=""
                />
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
<jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>

