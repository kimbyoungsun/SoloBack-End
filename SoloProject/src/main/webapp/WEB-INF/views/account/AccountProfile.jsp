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
													src="${path}/resources/upload/profile/${loginMember.reFileNm}" alt="">
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
							<!-- Personal info START -->
							<div class="card border">
								<!-- Card header -->
								<div class="card-header border-bottom">
									<h4 class="card-header-title">회원정보</h4>
								</div>

								<!-- Card body START -->
								<div class="card-body">
									<!-- Form START -->
									<form class="row g-3">
										<!-- Profile photo -->
										<div class="col-12">
											<label class="form-label">프로필 사진 업로드<span
													class="text-danger">*</span></label>
											<div class="d-flex align-items-center">
												<label class="position-relative me-4" for="uploadfile-1"
													title="Replace this pic">
													<!-- Avatar place holder -->
													<span class="avatar avatar-xl">
														<img id="uploadfile-1-preview"
															class="avatar-img rounded-circle border border-white border-3 shadow"
															src="${path}/resources/assets/images/avatar/01.jpg" alt="">
													</span>
												</label>
												<!-- Upload button -->
												<label class="btn btn-sm btn-custom2 mb-0" for="uploadfile-1">변경</label>
												<input id="uploadfile-1" class="form-control d-none" type="file">
											</div>
										</div>

										<!-- Name -->
										<div class="col-md-6">
											<label class="form-label">이름<span class="text-danger">*</span></label>
											<input type="text" class="form-control" value="테스트계정"
												placeholder="이름을 입력하세요.">
										</div>

										<!-- Email -->
										<div class="col-md-6">
											<label class="form-label">이메일<span class="text-danger">*</span></label>
											<input type="email" class="form-control" value="test@email.com"
												placeholder="이메일을 입력하세요.">
										</div>

										<!-- Mobile -->
										<div class="col-md-6">
											<label class="form-label">아이디<span class="text-danger">*</span></label>
											<input type="text" class="form-control" value="testID123"
												placeholder="아이디를 입력하세요.">
										</div>

										<!-- phone number -->
										<div class="col-md-6">
											<label class="form-label">휴대폰 번호<span class="text-danger">*</span></label>
											<input type="text" class="form-control" value="010-1234-5678"
												placeholder="휴대폰 번호를 입력하세요.">
										</div>


										<!-- Date of birth -->
										<div class="col-md-6">
											<label class="form-label">생년월일<span class="text-danger">*</span></label>
											<input type="text" class="form-control flatpickr" value="1999 Oct 19"
												placeholder="생년월일을 입력하세요." data-date-format="Y-m-d">
										</div>

										<!-- Gender -->
										<div class="col-md-6">
											<label class="form-label">성별<span class="text-danger">*</span></label>
											<div class="d-flex gap-4">
												<div class="form-check radio-bg-light">
													<input class="form-check-input" type="radio" name="flexRadioDefault"
														id="flexRadioDefault1" checked="">
													<label class="form-check-label" for="flexRadioDefault1">
														남자
													</label>
												</div>
												<div class="form-check radio-bg-light">
													<input class="form-check-input" type="radio" name="flexRadioDefault"
														id="flexRadioDefault2">
													<label class="form-check-label" for="flexRadioDefault2">
														여자
													</label>
												</div>
											</div>
										</div>

										<!-- Address -->
										<div class="col-12">
											<label class="form-label">주소</label>
											<textarea class="form-control" rows="3"
												spellcheck="false">서울특별시 강남구 언주로 508 14층(역삼동, 서울상록빌딩)</textarea>
										</div>

										<!-- Button -->
										<div class="col-12 text-end">
											<a href="#" class="btn btn-custom mb-0">저장</a>
										</div>
									</form>
									<!-- Form END -->
								</div>
								<!-- Card body END -->
							</div>
							<!-- Personal info END -->

							<!-- Update email START -->
							<div class="card border">
								<!-- Card header -->
								<div class="card-header border-bottom">
									<h4 class="card-header-title">이메일 변경</h4>
									<p class="mb-0">현재 이메일: <span class="text-primary">test@email.com</span></p>
								</div>

								<!-- Card body START -->
								<div class="card-body">
									<form>
										<!-- Email -->
										<label class="form-label">새 이메일을 입력하세요<span class="text-danger">*</span></label>
										<input type="email" class="form-control" placeholder="이메일 입력">

										<div class="text-end mt-3">
											<a href="#" class="btn btn-custom mb-0">변경</a>
										</div>
									</form>
								</div>
								<!-- Card body END -->
							</div>
							<!-- Update email END -->

							<!-- Update Password START -->
							<div class="card border">
								<!-- Card header -->
								<div class="card-header border-bottom">
									<h4 class="card-header-title">비밀번호 변경</h4>
									<p class="mb-0">현재 비밀번호: <span class="text-primary">123******</span></p>
								</div>

								<!-- Card body START -->
								<form class="card-body">
									<!-- Current password -->
									<div class="mb-3">
										<label class="form-label">현재 비밀번호</label>
										<input class="form-control" type="password" placeholder="현재 비밀번호">
									</div>
									<!-- New password -->
									<div class="mb-3">
										<label class="form-label"> 새 비밀번호를 입력하세요</label>
										<div class="input-group">
											<input class="form-control fakepassword" placeholder="새 비밀번호"
												type="password" id="psw-input">
											<span class="input-group-text p-0 bg-transparent">
												<i class="fakepasswordicon fas fa-eye-slash cursor-pointer p-2"></i>
											</span>
										</div>
									</div>
									<!-- Confirm -->
									<div class="mb-3">
										<label class="form-label">새 비밀번호 확인</label>
										<input class="form-control" type="password" placeholder="새 비밀번호 확인">
									</div>

									<div class="text-end">
										<a href="#" class="btn btn-custom mb-0">변경</a>
									</div>
								</form>
								<!-- Card body END -->
							</div>
							<!-- Update Password END -->
						</div>
					</div>
					<!-- Main content END -->

				</div>
			</div>
		</section>
	</main>	
 <jsp:include page="/WEB-INF/views/common/KSKFooter.jsp"></jsp:include>