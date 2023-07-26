<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>

    <section class="hero-home" style="background-color: #50a78b">
      <div class="container py-md-2 text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-7 pt-5">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">1인 가구 프로그램</h1>
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

    <!-- **************** MAIN CONTENT START **************** -->
    <div class="container">
      <div class="row mt-5 mb-5">
        <!-- **********상품 소개글 및 댓글 START********** -->
        <div class="col col-9">
          <!-- ****상품 소개글 시작**** -->
          <div class="px-3 py-3 border border-1 rounded-3 mb-3">
            <!-- 카로셀 시작 -->
            <div
              id="carousel"
              class="carousel slide"
              data-bs-ride="carousel"
              style="
                background-position: center center;
                background-repeat: no-repeat;
                background-size: contain;
                background-color: #0b3d2d;
              "
            >
              <!-- Indicators/dots -->
              <div class="carousel-indicators">
                <button
                  type="button"
                  data-bs-target="#carousel"
                  data-bs-slide-to="0"
                  class="active"
                ></button>
                <button
                  type="button"
                  data-bs-target="#carousel"
                  data-bs-slide-to="1"
                ></button>
              </div>

              <!-- carousel images -->
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <div
                    class="p-4 p-sm-5"
                    style="
                      background-image: url(https://1in.seoul.go.kr/contents/commoneditor/20210823165753f01a9ac9-a3d1-4e7d-8aa7-a3785a778475.png);
                      background-position: center center;
                      background-repeat: no-repeat;
                      background-size: contain;
                      height: 600px;
                    "
                  ></div>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div
                      class="p-4 p-sm-5"
                      style="
                        background-image: url(https://1in.seoul.go.kr/contents/commoneditor/2021082316580355126499-0f68-45c0-8f08-e507cbbd2ad0.png);
                        background-position: center center;
                        background-repeat: no-repeat;
                        background-size: contain;
                        height: 600px;
                      "
                    ></div>
                  </div>
                </div>
              </div>

              <!-- left and right control buttons -->
              <button
                class="carousel-control-prev"
                type="button"
                data-bs-target="#carousel"
                data-bs-slide="prev"
              >
                <span class="carousel-control-prev-icon"></span>
              </button>
              <button
                class="carousel-control-next"
                type="button"
                data-bs-target="#carousel"
                data-bs-slide="next"
              >
                <span class="carousel-control-next-icon"></span>
              </button>
            </div>
            <!-- 카로셀 끝 -->
          </div>
          <!-- ****상품 소개글 끝**** -->
        </div>
        <!-- **********상품 소개글 및 댓글 END********** -->

        <!-- **********요약정보 START********** -->
        <div class="col col-sm-3">
          <div class="px-3 py-3 border border-1 rounded-3">
            <!-- 요약정보 header START -->
            <div>
              <h3>요약정보</h3>
            </div>
            <!-- 요약정보 header END -->

            <!-- icon and info START -->
            <div class="container">
              <!-- 작성자 정보 -->
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                  <img
                    src="${path}/resources/img/icon/user.png"
                    alt="작성자 아이콘"
                    style="height: 40px; border-radius: 50%"
                  />
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">작성자</h6>
                  <span class="small">권수경</span>
                </div>
              </div>
              <!-- 작성시간 정보 -->
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                  <img
                    src="${path}/resources/img/icon/user.png"
                    alt="작성시간 아이콘"
                    style="height: 40px; border-radius: 50%"
                  />
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">작성시간</h6>
                  <span class="small">2023/07/05</span>
                </div>
              </div>
              <!-- 카테고리 정보 -->
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                  <img
                    src="${path}/resources/img/icon/user.png"
                    alt="카테고리 아이콘"
                    style="height: 40px; border-radius: 50%"
                  />
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">카테고리</h6>
                  <span class="small">디지털기기</span>
                </div>
              </div>
              <!-- 상태 정보 -->
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                  <img
                    src="${path}/resources/img/icon/user.png"
                    alt="상태 아이콘"
                    style="height: 40px; border-radius: 50%"
                  />
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">상태</h6>
                  <span class="small">상급</span>
                </div>
              </div>
              <!-- 위치 정보 -->
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                  <img
                    src="${path}/resources/img/icon/user.png"
                    alt="위치 아이콘"
                    style="height: 40px; border-radius: 50%"
                  />
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">위치</h6>
                  <span class="small">서울특별시 송파구</span>
                </div>
              </div>
              <!-- 가격 정보 -->
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                  <img
                    src="${path}/resources/img/icon/user.png"
                    alt="가격 아이콘"
                    style="height: 40px; border-radius: 50%"
                  />
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">가격</h6>
                  <span class="small">100,000원</span>
                </div>
              </div>
              <!-- 직거래 정보 -->
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                  <img
                    src="${path}/resources/img/icon/user.png"
                    alt="직거래 아이콘"
                    style="height: 40px; border-radius: 50%"
                  />
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">직거래</h6>
                  <span class="small">가능</span>
                </div>
              </div>
              <!-- 네고 정보 -->
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                  <img
                    src="${path}/resources/img/icon/user.png"
                    alt="네고 아이콘"
                    style="height: 40px; border-radius: 50%"
                  />
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">네고</h6>
                  <span class="small">가능</span>
                </div>
              </div>
            </div>
            <!-- icon and info END -->

            <!-- 찜 추가하기 버튼 START -->
            <div class="d-grid gap-2 mb-2">
              <a href="#" class="btn btn-custom"> 찜 추가하기 </a>
            </div>
            <!-- 찜 추가하기 버튼 END -->

            <!-- 목록으로 버튼 START -->
            <div class="d-grid gap-2 mb-2">
              <a href="#" class="btn btn-return-custom"> 목록으로 </a>
            </div>
            <!-- 목록으로 버튼 END -->
          </div>
        </div>
        <!-- **********요약정보 END********** -->
      </div>
    </div>
    <!-- **************** MAIN CONTENT END **************** -->
   <jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>