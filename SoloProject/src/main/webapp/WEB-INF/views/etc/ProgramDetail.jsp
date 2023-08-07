<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>

    <section class="hero-home" style="background-color: #50a78b">
      <div class="container  text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-5 pt-5">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">1인 가구 프로그램</h1>
            </div>
          </div>
          <div class="col text-center">
            <img
              class="figure"
              src="${path}/resources/img/kbs/image1.png"
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
            
            <div class="swiper-container my-swiper">
			  <!-- Additional required wrapper -->
			  <div class="swiper-wrapper">
			    <!-- Slides -->
			    <c:if test="${list.src1 != '-'}">
			    <div class="swiper-slide swiper-slide-items text-center">
			    <img alt="" src="https://1in.seoul.go.kr${list.src1}" style="height: 100%">
			    </div>
			    </c:if>
			    <c:if test="${list.src2 != '-'}">
			    <div class="swiper-slide swiper-slide-items text-center">
<img alt="" src="https://1in.seoul.go.kr${list.src2}"
 style="height: 100%">
</div>
			    </c:if>
			    <c:if test="${list.src3 != '-'}">
			    <div class="swiper-slide swiper-slide-items text-center">
<img alt="" src="https://1in.seoul.go.kr${list.src3}" style="height: 100%">
</div>
			    </c:if>
			    <c:if test="${list.src4 != '-'}">
			    <div class="swiper-slide swiper-slide-items text-center">
<img alt="" src="https://1in.seoul.go.kr${list.src4}" style="height: 100%">
</div>
			    </c:if>
			    <c:if test="${list.src5 != '-'}">
			    <div class="swiper-slide swiper-slide-items text-center">

<img alt="" src="https://1in.seoul.go.kr${list.src5}" style="height: 100%"></div>
			    </c:if>
			  </div>
			  <!-- If we need pagination -->
			  <div class="swiper-pagination"></div>
			
			  <!-- If we need navigation buttons -->
			  <div class="swiper-button-prev"></div>
			  <div class="swiper-button-next"></div>
			
			  <!-- If we need scrollbar -->
			  <div class="swiper-pagination"></div>
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
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">대상자</h6>
                  <span class="small">${list.sexdstn_nm}</span>
                </div>
              </div>
              <!-- 작성시간 정보 -->
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">시작시간</h6>
                  <span class="small">${list.progrs_de1 }</span>
                </div>
              </div>
              <!-- 카테고리 정보 -->
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">종료시간</h6>
                  <span class="small">${list.progrs_de2 }</span>
                </div>
              </div>
              <!-- 상태 정보 -->
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">나이대</h6>
                  <span class="small">${list.agrde_nm }</span>
                </div>
              </div>
              <!-- 위치 정보 -->
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">위치</h6>
                  <span class="small">${list.place_adres1} ${list.place_adres2}</span>
                  
                </div>
              </div>
              <!-- 가격 정보 -->
              <c:if test="${list.progrs_inqry != '' }">
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">문의 전화</h6>
                  <span class="small">${list.progrs_inqry}</span>
                </div>
              </div>
              </c:if>
              
              <!-- 직거래 정보 -->
              <c:if test="${list.rcept_mth_link != '' }">
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">신청링크</h6>
                  <span class="small">${list.rcept_mth_link }</span>
                </div>
              </div>
              </c:if>
              <!-- 네고 정보 -->
              <div class="d-flex align-items-center mb-2">
                <div
                  class="border-1 bg-light rounded-circle flex-shrink-0"
                  style="border: 3px solid #50a78b"
                >
                </div>
                <div class="ms-2">
                  <h6 class="mb-0">종류</h6>
                  <span class="small">${list.ty_nm }</span>
                </div>
              </div>
            </div>
            <!-- icon and info END -->

          </div>
        </div>
        <!-- **********요약정보 END********** -->
      </div>
    </div>
    <!-- **************** MAIN CONTENT END **************** -->
   <jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>