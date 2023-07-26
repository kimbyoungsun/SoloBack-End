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
                    <div class="text-center text-lg-start pt-5">
                        <h1 class="display-3 fw-bold text-shadow">회원정보</h1>
                    </div>
                    <div class="text-center text-lg-start">
                        <h2 class="display-8-custom fw-normal">회원정보·이메일·비밀번호 변경</h2>
                    </div>
                </div>
                <div class="col-xl-6">
                    <img style="width:100%;" src="${path}/resources/img/account/account01.png" alt="마이페이지 일러스트" />
                </div>
            </div>
        </div>
    </section>


    <!-- **************** MAIN CONTENT START **************** -->
    <main>
        <section class="pt-5">
            <div class="container">
                <div class="row">

                    <!-- Sidebar START -->
                    <div class="col-lg-4 col-xl-3">
                        <!-- Responsive offcanvas body START -->
                        <div class="offcanvas-lg offcanvas-end" tabindex="-1" id="offcanvasSidebar">

                            <!-- Offcanvas body -->
                            <div class="offcanvas-body p-3 p-lg-0">
                                <div class="card w-100">
                                    <!-- Edit profile button -->
                                    <div class="position-absolute top-0 end-0 p-3">
                                        <a href="#" class="text-primary-hover" data-bs-toggle="tooltip"
                                            data-bs-title="Edit profile">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>
                                    </div>

                                    <!-- Card body START -->
                                    <div class="card-body p-3">
                                        <!-- Avatar and content -->
                                        <div class="text-center mb-3">
                                            <!-- Avatar -->
                                            <div class="avatar avatar-xl mb-2">
                                                <img class="rounded-circle border border-2 border-white"
                                                    src="${path}/resources/assets/images/avatar/01.jpg" alt="">
                                            </div>
                                            <h6 class="mb-0">테스트계정</h6>
                                            <a href="#" class="text-reset text-hover-custom small">test@email.com</a>
                                            <hr>
                                        </div>

                                        <!-- Sidebar menu item START -->
                                        <ul class="nav nav-pills-primary-soft flex-column">
                                            <li class="nav-item">
                                                <a class="nav-link active text-custom" href="AccountProfile.html"><i
                                                        class="bi bi-person fa-fw me-2"></i>회원정보</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-custom" href="AccountBookings.html"><i
                                                        class="bi bi-ticket-perforated fa-fw me-2"></i>내 예약정보</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-custom" href="AccountWishlist.html"><i
                                                        class="bi bi-heart fa-fw me-2"></i>찜 목록</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-custom" href="AccountReview.html"><i
                                                        class="bi bi-pencil-square fa-fw me-2"></i>내 리뷰</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-custom" href="AccountSetting.html"><i
                                                        class="bi bi-gear fa-fw me-2"></i>설정</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-danger bg-danger-soft-hover" href="#"><i
                                                        class="fas fa-sign-out-alt fa-fw me-2"></i>로그아웃</a>
                                            </li>
                                        </ul>
                                        <!-- Sidebar menu item END -->
                                    </div>
                                    <!-- Card body END -->
                                </div>
                            </div>
                        </div>
                        <!-- Responsive offcanvas body END -->
                    </div>
                    <!-- Sidebar END -->

                    <!-- Main content START -->
                    <div class="col-lg-8 col-xl-9 mb-5">


                        <div class="vstack gap-4">
                            <!-- Notifications START -->
                            <div class="card border">
                                <!-- Card header -->
                                <div class="card-header border-bottom">
                                    <h4 class="card-header-title">설정</h4>
                                </div>

                                <!-- Form START -->
                                <form class="card-body">

                                    <!-- Switch -->
                                    <div
                                        class="form-check form-switch form-check-md d-flex justify-content-between mb-4 ps-0">
                                        <label class="form-check-label ps-0 pe-4" for="checkPrivacy1">로그인 시 이메일로
                                            알림</label>
                                        <input class="form-check-input flex-shrink-0" type="checkbox" id="checkPrivacy1"
                                            checked>
                                    </div>

                                    <!-- Switch -->
                                    <div
                                        class="form-check form-switch form-check-md d-flex justify-content-between mb-4 ps-0">
                                        <label class="form-check-label ps-0 pe-4" for="checkPrivacy2">예약 지원 알림
                                            설정</label>
                                        <input class="form-check-input flex-shrink-0" type="checkbox" id="checkPrivacy2"
                                            checked>
                                    </div>

                                    <!-- Switch -->
                                    <div
                                        class="form-check form-switch form-check-md d-flex justify-content-between mb-4 ps-0">
                                        <label class="form-check-label ps-0 pe-4" for="checkPrivacy3">예약 프로모션에 대한 이메일
                                            전송</label>
                                        <input class="form-check-input flex-shrink-0" type="checkbox" id="checkPrivacy3"
                                            checked>
                                    </div>

                                    <!-- Switch -->
                                    <div
                                        class="form-check form-switch form-check-md d-flex justify-content-between mb-4 ps-0">
                                        <label class="form-check-label ps-0 pe-4" for="checkPrivacy7">북마크 관련 키워드
                                            알림</label>
                                        <input class="form-check-input flex-shrink-0" type="checkbox" id="checkPrivacy7"
                                            checked>
                                    </div>

                                    <!-- Switch -->
                                    <div
                                        class="form-check form-switch form-check-md d-flex justify-content-between mb-4 ps-0">
                                        <label class="form-check-label ps-0 pe-4" for="checkPrivacy4">공개 프로필 표시
                                            설정</label>
                                        <input class="form-check-input flex-shrink-0" type="checkbox"
                                            id="checkPrivacy4">
                                    </div>

                                    <!-- Switch -->
                                    <div
                                        class="form-check form-switch form-check-md d-flex justify-content-between mb-4 ps-0">
                                        <label class="form-check-label ps-0 pe-4" for="checkPrivacy6">모든 온라인 결제에 대한 SMS
                                            설정</label>
                                        <input class="form-check-input flex-shrink-0" type="checkbox"
                                            id="checkPrivacy6">
                                    </div>

                                    <!-- Button -->
                                    <div class="d-sm-flex justify-content-end">
                                        <button type="button" class="btn btn-sm btn-custom me-2 mb-0">저장</button>
                                        <a href="#" class="btn btn-sm btn-custom4 mb-0">취소</a>
                                    </div>
                                </form>
                                <!-- Form END -->
                            </div>
                            <!-- Notifications END -->

                            <!-- Security settings START -->
                            <div class="card border">
                                <!-- Card header -->
                                <div class="card-header border-bottom">
                                    <h4 class="card-header-title" style="color:gray;">전체 로그아웃</h4>
                                </div>

                                <!-- Card body START -->
                                <div class="card-body">

                                    <!-- 로그아웃 -->
                                    <div>
                                        <form>
                                            <h6>로그아웃 관리</h6>
                                            <p class="mb-2">밑의 로그아웃을 선택하면 이 장치를 제외한 모든 장치에서 로그아웃됩니다. 이 작업은 최대 10분이 소요될 수
                                                있습니다.</p>
                                            <div class="col-12 text-end">
                                                <button class="btn btn-sm btn-custom">로그아웃</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <!-- Security settings START -->
                            <div class="card border">
                                <!-- Card header -->
                                <div class="card-header border-bottom">
                                    <h4 class="card-header-title" style="color:gray;">회원탈퇴</h4>
                                </div>

                                <!-- Card body START -->
                                <div class="card-body">
                                    <!-- Two factor -->
                                    <form>
                                        <h6>현재 비밀번호를 입력해주세요</h6>
                                        <input type="text" class="form-control mb-2" placeholder="정말 탈퇴하시겠습니까?">

                                        <label for="cancelMembership">
                                            <input type="checkbox" id="cancelMembership" name="cancelMembership"> 회원탈퇴에
                                            동의합니다.
                                        </label>
                                        <br>
                                        <div class="col-12 text-end">
                                            <button class="btn btn-sm btn-custom3">탈퇴하기</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- Card body END -->
                        </div>
                        <!-- Update Password END -->
                    </div>
                </div>
                <!-- Main content END -->
            </div>
        </section>
    </main>
    <!-- **************** MAIN CONTENT END ****************  -->

    <jsp:include page="/WEB-INF/views/common/KSKFooter.jsp"></jsp:include>