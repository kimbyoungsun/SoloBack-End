<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KSKHeader.jsp"></jsp:include>    
        <section class="hero-home">
            <div class="swiper-container hero-slider">
              <div class="swiper-slide" style="background-color: #50a78b"></div>
            </div>
            <div class="container py-6 text-white z-index-20">
              <div class="row">
                <div class="col-xl-6">
                  <div class="text-center text-lg-start" style="padding-top: 4.5rem">
                    <h1 class="display-3 fw-bold text-shadow">동네 재능 거래</h1>
                  </div>
                  <div class="text-center text-lg-start">
                    <h2 class="display-8-custom fw-normal">도움이 필요한가요?<br>당신의 가장 가까운 이웃에게 부탁해요!</h2>
                  </div>
                <div class="p-lg-1 ps-lg-4">
                  <form action="#">
                    <div class="row">
                      <div class="col-lg-6 search-bar">
                        <div class="row">
                          <div class="col d-flex align-items-center">
                            <input
                              class="form-control border-0 shadow-0"
                              type="text"
                              name="search"
                              placeholder="키워드를 입력해 보세요."
                            />
                          </div>
    
                          <div class="col-lg-3 px-0 d-grid">
                            <button
                              class="btn btn-primary rounded-pill h-100"
                              type="submit"
                            >
                              검색
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
              <div class="col-xl-6" style="overflow:hidden;">
                <img style="width:100%; height: 100%;" src="${path}/resources/img/trace/trace02.png" alt="동네 재능 거래 일러스트" />
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
                <div id="carousel" class="carousel slide" data-bs-ride="carousel"
                  style="background-position: center center; background-repeat: no-repeat; background-size: contain; background-color: #0b3d2d;">
        
                  <!-- Indicators/dots -->
                  <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active"></button>
                    <button type="button" data-bs-target="#carousel" data-bs-slide-to="1"></button>
                  </div>
        
                  <!-- carousel images -->
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <div class="p-4 p-sm-5"
                        style="background-image: url(img/trace/trace-talentt01.jpg); 
                                    background-position: center center; background-repeat: no-repeat; background-size: contain; height: 600px;">
                      </div>
                    </div>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <div class="p-4 p-sm-5"
                          style="background-image: url(img/trace/trace-talent02.jpg);
                                 background-position: center center; background-repeat: no-repeat; background-size: contain; height: 600px;"> </div>
                      </div>
                    </div>
                  </div>

                  <!-- left and right control buttons -->
                  <button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                  </button>
                  <button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                  </button>
        
                </div>
                <!-- 카로셀 끝 -->

                <!-- 상품 설명 시작 -->
                <div class="mt-4">
                  <div class="row">
                    <div class="col-8 px-3"><h5>각종 포스터 제작해드립니다</h5></div>
                    <div class="col-lg-4 px-3 text-end"><h5>협의 후 결정</h5></div>
                  </div>
                  <hr>
                  <div>
                    <p>경력 7년차 디자이너입니다. 행사, 판촉물 등 다양한 포스터 만들어드립니다.<br>
                    포트폴리오는 사진 참고하시면 됩니다.<br>
                    댓글 남겨주시면 이메일로 상담하고 가격은 협의로 결정합니다.<br> 
                    문의 환영해요!<br>
                    </p>
                  </div>
                </div>
                <!-- 상품 설명 끝-->

                <!-- 댓글, 찜, 조회수 시작 -->
                <div>
                  <p>댓글 2 · 찜 2 · 조회 10</p>
                </div>
                <!-- 댓글, 찜, 조회수 끝 -->
              </div>
              <!-- ****상품 소개글 끝**** -->

              <!-- ****상품 소개글 수정/삭제 버튼 시작**** -->
              <div class="text-end">
                <a href="#" class="btn btn-success-custom">수정</a>
                <a href="#" class="btn btn-cancel-custom">삭제</a>
              </div>
              <!-- ****상품 소개글 수정/삭제 버튼 끝**** -->

              <!-- ****댓글 card 시작**** -->
              <div class="card border mb-4 mt-3">
                <!-- 댓글 card header -->
                <div class="card-header" style="background-color: #50a78b; color:#fff;">
                    댓글
                </div>
                <!-- 댓글 card body -->
                <div class="card-body container">
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0">
                      <img src="${path}/resources/img/icon/user.png" alt="유저 프로필 이미지" style="height: 40px; border-radius: 50%;" />
                    </div>
                    <div class="row ms-2 container">
                      <div class="col-10">
                        <h6 class="mb-0">김대훈</h6>
                        <span class="small">행사 포스터 제작 문의하고 싶습니다. 제 이메일은 abcd1234@gmail.com입니다.</span>
                      </div>
                      <div class="col-2">
                        <a href="#" class="btn btn-custom" style="height: auto; white-space: nowrap;">
                          댓글 달기
                        </a>
                      </div>
                    </div>
                  </div>
                  <hr>
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0">
                      <img src="${path}/resources/img/icon/user.png" alt="유저 프로필 이미지" style="height: 40px; border-radius: 50%;" />
                    </div>
                    <div class="row ms-2 container">
                      <div class="col-10">
                        <h6 class="mb-0">이종민</h6>
                        <span class="small">행사 포스터 제작하고 싶습니다! efgh5678@gmail.com으로 연락주세요!</span>
                      </div>
                      <div class="col-2">
                        <a href="#" class="btn btn-custom" style="height: auto; white-space: nowrap;">
                          댓글 달기
                        </a>
                      </div>
                    </div>
                  </div>
                  <hr>
                </div>
              </div>
              <!-- ****댓글 card 끝**** -->

              <!-- ****댓글 작성란 시작**** -->
              <form class="mb-4">
                <div class="d-flext align-items-start">
                  <textarea class="form-control" rows="3" placeholder="댓글을 남겨보세요!"></textarea>
                  <div class="mt-2" style="float: right;">
                    <button type="submit" class="btn btn-custom ms-3"
                    style="height: auto; white-space: nowrap;">댓글 등록하기</button>
                  </div>
                </div>
              </form>
              <!-- ****댓글 작성란 끝**** -->
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
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 3px solid #50a78b;">
                      <img src="${path}/resources/img/icon/user.png" alt="작성자 아이콘" style="height: 40px; border-radius: 50%;" />
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">작성자</h6>
                      <span class="small">윤일권</span>
                    </div>
                  </div>
                  <!-- 작성시간 정보 -->
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 3px solid #50a78b;">
                      <img src="${path}/resources/img/icon/user.png" alt="작성시간 아이콘" style="height: 40px; border-radius: 50%;" />
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">작성시간</h6>
                      <span class="small">2023/07/05</span>
                    </div>
                  </div>
                  <!-- 카테고리 정보 -->
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 3px solid #50a78b;">
                      <img src="${path}/resources/img/icon/user.png" alt="카테고리 아이콘" style="height: 40px; border-radius: 50%;" />
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">카테고리</h6>
                      <span class="small">디자인</span>
                    </div>
                  </div>
                  <!-- 재능 판매/구매 정보 -->
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 3px solid #50a78b;">
                      <img src="${path}/resources/img/icon/user.png" alt="재능 판매 및 구매 아이콘" style="height: 40px; border-radius: 50%;" />
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">재능 판매/구매</h6>
                      <span class="small">판매</span>
                    </div>
                  </div>
                  <!-- 위치 정보 -->
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 3px solid #50a78b;">
                      <img src="${path}/resources/img/icon/user.png" alt="위치 아이콘" style="height: 40px; border-radius: 50%;" />
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">위치</h6>
                      <span class="small">인천광역시 미추홀구</span>
                    </div>
                  </div>
                  <!-- 가격 정보 -->
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 3px solid #50a78b;">
                      <img src="${path}/resources/img/icon/user.png" alt="가격 아이콘" style="height: 40px; border-radius: 50%;" />
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">가격</h6>
                      <span class="small">협의 후 결정</span>
                    </div>
                  </div>
                  <!-- 대면 여부 정보 -->
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 3px solid #50a78b;">
                      <img src="${path}/resources/img/icon/user.png" alt="대면 여부 아이콘" style="height: 40px; border-radius: 50%;" />
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">대면 여부</h6>
                      <span class="small">비대면</span>
                    </div>
                  </div>
                </div>
                <!-- icon and info END -->
        
                <!-- 찜 추가하기 버튼 START -->
                <div class="d-grid gap-2 mb-2">
                  <a href="#" class="btn btn-custom">
                    찜 추가하기
                  </a>
                </div>
                <!-- 찜 추가하기 버튼 END -->
        
                <!-- 목록으로 버튼 START -->
                <div class="d-grid gap-2 mb-2">
                  <a href="#" class="btn btn-return-custom">
                    목록으로
                  </a>
                </div>
                <!-- 목록으로 버튼 END -->
              </div>
            </div>
            <!-- **********요약정보 END********** -->
          </div>
        </div>
<!-- **************** MAIN CONTENT END **************** -->

       <jsp:include page="/WEB-INF/views/common/KSKFooter.jsp"></jsp:include>