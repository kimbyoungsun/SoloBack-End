<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>

    <section class="hero-home" style="background-color: #50a78b">
      <div class="container pt-md-3 text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-xl-7">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">서울시 핫 플레이스</h1>
            </div>
          </div>
          <div class="col text-center">
            <img
              class="position-relative"
              src="${path}/resources/img/kbs/basketball_court-pana.png"
              style="width: 30rem; left: 80px; top: -50px"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="text-center py-4">
          <div class="btn-group" role="group" aria-label="Basic example">
            <button
              type="button"
              class="btn rounded-0 border border-1"
              style="width: 18.75rem"
            >
              리스트로 보기
            </button>
            <button
              type="button"
              class="btn rounded-0 border border-1"
              style="width: 18.75rem"
            >
              지도로 보기
            </button>
          </div>
        </div>

        <div class="text-center">
          <div class="row" role="group" aria-label="Basic example">
            <button type="button" class="col btn rounded-0 border border-1">
              전체보기
            </button>
            <button type="button" class="col btn rounded-0 border border-1">
              관광특구
            </button>
            <button type="button" class="col btn rounded-0 border border-1">
              고궁 문화 유산
            </button>
            <button type="button" class="col btn rounded-0 border border-1">
              공원
            </button>
            <button type="button" class="col btn rounded-0 border border-1">
              발달상권
            </button>
            <button type="button" class="col btn rounded-0 border border-1">
              인구밀집지역
            </button>
          </div>
        </div>

        <div class="row py-3">
          <div class="col">총 113곳</div>
          <div class="col text-end">
            <a
              class="nav-link dropdown-toggle active text-end"
              id="hotplace"
              href="index.html"
              data-bs-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              정보</a
            >
            <div class="dropdown-menu" aria-labelledby="hotplace">
              <a class="dropdown-item" href="index.html">Rooms</a
              ><a class="dropdown-item" href="index-2.html">Restaurants</a
              ><a class="dropdown-item" href="index-3.html">Travel</a
              ><a class="dropdown-item" href="index-4.html"
                >Real Estate
                <span class="badge badge-info-light ms-1 mt-n1">New</span></a
              >
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col">
            <div class="card card-poster gradient-overlay hover-animate">
              <a href="" class="tile-link"></a>
              <img
                class="bg-image"
                src="https://data.seoul.go.kr/SeoulRtd/images/hotspot/%EA%B0%95%EB%82%A8%20MICE%20%EA%B4%80%EA%B4%91%ED%8A%B9%EA%B5%AC.jpg"
                alt=""
              />
              <div class="card-body overlay-content">
                <div class="row">
                  <div class="col">강남 MICE 관광특구</div>
                  <div class="col text-end">
                    <a href="#" class="btn btn-danger">복잡</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card card-poster gradient-overlay hover-animate">
              <a href="" class="tile-link"></a>
              <img
                class="bg-image"
                src="https://data.seoul.go.kr/SeoulRtd/images/hotspot/%EB%8F%99%EB%8C%80%EB%AC%B8%20%EA%B4%80%EA%B4%91%ED%8A%B9%EA%B5%AC.jpg"
                alt=""
              />
              <div class="card-body overlay-content">
                <div class="row">
                  <div class="col">동대문 관광특구</div>
                  <div class="col text-end">
                    <a href="#" class="btn btn-danger">복잡</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card card-poster gradient-overlay hover-animate">
              <a href="" class="tile-link"></a>
              <img
                class="bg-image"
                src="https://data.seoul.go.kr/SeoulRtd/images/hotspot/%EB%AA%85%EB%8F%99%20%EA%B4%80%EA%B4%91%ED%8A%B9%EA%B5%AC.jpg"
                alt=""
              />
              <div class="card-body overlay-content">
                <div class="row">
                  <div class="col">명동 관광특구</div>
                  <div class="col text-end">
                    <a href="#" class="btn btn-danger">복잡</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="w-100 my-3"></div>
          <div class="col">
            <div class="card card-poster gradient-overlay hover-animate">
              <a href="" class="tile-link"></a>
              <img
                class="bg-image"
                src="https://data.seoul.go.kr/SeoulRtd/images/hotspot/%EC%9D%B4%ED%83%9C%EC%9B%90%20%EA%B4%80%EA%B4%91%ED%8A%B9%EA%B5%AC.jpg"
                alt=""
              />
              <div class="card-body overlay-content">
                <div class="row">
                  <div class="col">이태원 관광특구</div>
                  <div class="col text-end">
                    <a href="#" class="btn btn-danger">복잡</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card card-poster gradient-overlay hover-animate">
              <a href="" class="tile-link"></a>
              <img
                class="bg-image"
                src="https://data.seoul.go.kr/SeoulRtd/images/hotspot/%EC%9E%A0%EC%8B%A4%20%EA%B4%80%EA%B4%91%ED%8A%B9%EA%B5%AC.jpg"
                alt=""
              />
              <div class="card-body overlay-content">
                <div class="row">
                  <div class="col">잠실 관광특구</div>
                  <div class="col text-end">
                    <a href="#" class="btn btn-danger">복잡</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card card-poster gradient-overlay hover-animate">
              <a href="" class="tile-link"></a>
              <img
                class="bg-image"
                src="https://data.seoul.go.kr/SeoulRtd/images/hotspot/%EC%A2%85%EB%A1%9C%C2%B7%EC%B2%AD%EA%B3%84%20%EA%B4%80%EA%B4%91%ED%8A%B9%EA%B5%AC.jpg"
                alt=""
              />
              <div class="card-body overlay-content">
                <div class="row">
                  <div class="col">종로·청계 관광특구</div>
                  <div class="col text-end">
                    <a href="#" class="btn btn-danger">복잡</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="w-100 my-3"></div>
          <div class="col">
            <div class="card card-poster gradient-overlay hover-animate">
              <a href="" class="tile-link"></a>
              <img
                class="bg-image"
                src="https://data.seoul.go.kr/SeoulRtd/images/hotspot/%ED%99%8D%EB%8C%80%20%EA%B4%80%EA%B4%91%ED%8A%B9%EA%B5%AC.jpg"
                alt=""
              />
              <div class="card-body overlay-content">
                <div class="row">
                  <div class="col">홍대 관광특구</div>
                  <div class="col text-end">
                    <a href="#" class="btn btn-danger">복잡</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card card-poster gradient-overlay hover-animate">
              <a href="" class="tile-link"></a>
              <img
                class="bg-image"
                src="https://data.seoul.go.kr/SeoulRtd/images/hotspot/%EA%B2%BD%EB%B3%B5%EA%B6%81.jpg"
                alt=""
              />
              <div class="card-body overlay-content">
                <div class="row">
                  <div class="col">경복궁</div>
                  <div class="col text-end">
                    <a href="#" class="btn btn-danger">복잡</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card card-poster gradient-overlay hover-animate">
              <a href="" class="tile-link"></a>
              <img
                class="bg-image"
                src="https://data.seoul.go.kr/SeoulRtd/images/hotspot/%EA%B4%91%ED%99%94%EB%AC%B8%C2%B7%EB%8D%95%EC%88%98%EA%B6%81.jpg"
                alt=""
              />
              <div class="card-body overlay-content">
                <div class="row">
                  <div class="col">광화문·덕수궁</div>
                  <div class="col text-end">
                    <a href="#" class="btn btn-danger">복잡</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- page button-->
        <nav aria-label="Page navigation example ">
          <ul
            class="pagination pagination-template d-flex justify-content-center my-5"
          >
            <li class="page-item">
              <a class="page-link" href="#">
                <i class="fa fa-angle-left"></i
              ></a>
            </li>
            <li class="page-item active">
              <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
              <a class="page-link" href="#">
                <i class="fa fa-angle-right"></i
              ></a>
            </li>
          </ul>
        </nav>
      </div>
    </section>
   <jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>