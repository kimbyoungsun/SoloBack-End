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
          <div class="container py-6 py-md-7 text-white z-index-20">
            <div class="row">
              <div class="col-xl-6">
              <c:if test="${board.type == 'pet' }">
                <div class="text-center text-lg-start">
                    <h1 class="display-3 fw-bold text-shadow">도와줘요!</h1>
                    <h1 class="display-3 fw-bold text-shadow">반려동물 임보 위탁</h1>
                </div>
              </c:if>
              <c:if test="${board.type == 'talent'}">
                    <div class="text-center text-lg-start" style="padding-top: 4.5rem">
                    <h1 class="display-3 fw-bold text-shadow">동네 재능 거래</h1>
                  </div>
                  <div class="text-center text-lg-start">
                    <h2 class="display-8-custom fw-normal">도움이 필요한가요?<br>당신의 가장 가까운 이웃에게 부탁해요!</h2>
                  </div>
              </c:if>
              <c:if test="${board.type == 'product'}">
               <div class="text-center text-lg-start">
                  <h1 class="display-3 fw-bold text-shadow">동네 중고 거래</h1>
                </div>
                <div class="text-center text-lg-start">
                  <h2 class="display-8-custom fw-normal">돈도 벌고 지구도 살리는 가장 현명한 방법</h2>
                </div>
              </c:if>
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
              
              <c:if test="${board.type == 'pet' }">
             	<div class="col text-center">
            <img
              class="figure position-relative"
              src="${path}/resources/img/kbs/petwalk_image.png"
              style="width: 30rem; left: 6.25rem"
              alt=""
            />
          </div>
              </c:if>
              
               <c:if test="${board.type == 'product' }">
             <div class="col">
                <img src="${path}/resources/img/trace/trace01.png" alt="동네 중고 거래 일러스트" />
              </div>
              </c:if>
               <c:if test="${board.type == 'talent' }">
              <div class="col-xl-6" style="overflow:hidden;">
                <img style="width:100%; height: 100%;" src="${path}/resources/img/trace/trace02.png" alt="동네 재능 거래 일러스트" />
              </div>
              </c:if>
              
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

            <!-- 찜하기 button -->
            <div class="position-absolute border border-1 rounded-3 bg-light"
              style="top:10px; right:10px; border-color: #50a78b !important;">
              <div class="d-flex align-items-center justify-content-center" style="width: 40px; height: 40px;">
                <a href="#" style="color:#50a78b;">
                  <i class="fa-regular fa-heart"></i>
                </a>
              </div>
            </div>
        
                  <!-- Indicators/dots -->
                  <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active"></button>
                    <button type="button" data-bs-target="#carousel" data-bs-slide-to="1"></button>
                  </div>
        
                  <!-- carousel images -->
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                       <c:if test="${not empty board.originalFileName 
								and (fn:contains(board.originalFileName,'.jpg')
									 or fn:contains(board.originalFileName,'.png')
									  or fn:contains(board.originalFileName,'.jpeg'))}">
							<div class="p-4 p-sm-5"
                       style="background-image: url(${path}/community/file/${board.renamedFileName}); 
                                    background-position: center center; background-repeat: no-repeat; background-size: contain; height: 600px;">
                      </div>
					</c:if>
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
                    <div class="col-8 px-3"><h5>${board.title}</h5></div>
                    <div class="col-lg-4 px-3 text-end"><h5>협의 후 결정</h5></div>
                  </div>
                  <hr>
                  <div>
                    <p>${board.content}
                    </p>
                  </div>
                </div>
                <!-- 상품 설명 끝-->

                <!-- 댓글, 찜, 조회수 시작 -->
                <div>
                  <p>댓글 2 · 찜 2 · 조회 20</p>
                </div>
                <!-- 댓글, 찜, 조회수 끝 -->
              </div>
              <!-- ****상품 소개글 끝**** -->

              <!-- ****상품 소개글 수정/삭제 버튼 시작**** -->
              <c:if test="${not empty loginMember && (loginMember.id == board.id 
									|| loginMember.role == 'ROLE_ADMIN')}">
				<div class="text-end">
					<button class="btn btn-success-custom" type="button" id="btnUpdate">수정</button>
					<button class="btn btn-cancel-custom" type="button" id="btnDelete">삭제</button>
				</div>
				</c:if>
				
              <!-- ****상품 소개글 수정/삭제 버튼 끝**** -->

              <!-- ****댓글 card 시작**** -->
              <div class="card border mb-4 mt-3">
                <!-- 댓글 card header -->
                <div class="card-header" style="background-color: #50a78b; color:#fff;">
                    댓글
                </div>
                <!-- 댓글 card body -->
                <div class="card-body container">
                <c:if test="${!empty replyList}">
                <c:forEach var="item" items="${replyList}">
                <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0">
                    <img src="${path}/resources/static/img/avatar/avatar-4.jpg" alt="유저 프로필 이미지" style="height: 40px; border-radius: 50%;" />
                    </div>
                    <div class="row ms-2 container">
                      <div class="col-10">
                        <h6 class="mb-0">${item.id}</h6>
                        <span class="small">${item.content}</span>
                      </div>
                      <div class="col-2">
                      </div>
                    </div>
                  </div>
                  <hr>
                  <button class="btn-delete" onclick="deleteReply('${item.rno}','${board.bno}');" >삭제</button>
                </c:forEach>
                </c:if>
                </div>
              </div>
              <!-- ****댓글 card 끝**** -->

              <!-- ****댓글 작성란 시작**** -->
              <form class="mb-4" action="${path}/board/reply" method="post">
              <input type="hidden" name="bno" value="${board.bno}" />
    			<input type="hidden" name="id" value="${loginMember.id}" />
                <div class="d-flext align-items-start">
                  <textarea class="form-control" name="content" id="replyContent" rows="3" placeholder="댓글을 남겨보세요!"></textarea>
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
                <div class="container ps-0">
                  <!-- 작성자 정보 -->
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 2px solid #50a78b;">
                      <div class="d-flex align-items-center justify-content-center"
                        style="width: 40px; height: 40px; color:#50a78b;">
                        <i class="fa-solid fa-user"></i>
                      </div>
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">작성자</h6>
                      <span class="small">김병선</span>
                    </div>
                  </div>
                  <!-- 작성시간 정보 -->
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 2px solid #50a78b;">
                      <div class="d-flex align-items-center justify-content-center"
                        style="width: 40px; height: 40px; color:#50a78b;">
                        <i class="fa-solid fa-calendar-days"></i>
                      </div>
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">작성시간</h6>
                      <span class="small">2023/07/06</span>
                    </div>
                  </div>
                  <!-- 카테고리 정보 -->
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 2px solid #50a78b;">
                      <div class="d-flex align-items-center justify-content-center"
                        style="width: 40px; height: 40px; color:#50a78b;">
                        <i class="fa-solid fa-folder-open"></i>
                      </div>
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">카테고리</h6>
                      <span class="small">강아지</span>
                    </div>
                  </div>
                  <!-- 서비스 구분 정보 -->
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 2px solid #50a78b;">
                      <div class="d-flex align-items-center justify-content-center"
                        style="width: 40px; height: 40px; color:#50a78b;">
                        <i class="fa-solid fa-cart-shopping"></i>
                      </div>
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">서비스 구분</h6>
                      <span class="small">돌봄, 산책</span>
                    </div>
                  </div>
                  <!-- 위치 정보 -->
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 2px solid #50a78b;">
                      <div class="d-flex align-items-center justify-content-center"
                        style="width: 40px; height: 40px; color:#50a78b;">
                        <i class="fa-solid fa-location-dot"></i>
                      </div>
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">위치</h6>
                      <span class="small">서울특별시 마포구</span>
                    </div>
                  </div>
                  <!-- 가격 정보 -->
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 2px solid #50a78b;">
                      <div class="d-flex align-items-center justify-content-center"
                        style="width: 40px; height: 40px; color:#50a78b;">
                        <i class="fa-solid fa-credit-card"></i>
                      </div>
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">가격</h6>
                      <span class="small">협의 후 결정</span>
                    </div>
                  </div>
                  <!-- 신분증 정보 -->
                  <div class="d-flex align-items-center mb-2">
                    <div class="border-1 bg-light rounded-circle flex-shrink-0" style="border: 2px solid #50a78b;">
                      <div class="d-flex align-items-center justify-content-center"
                        style="width: 40px; height: 40px; color:#50a78b;">
                        <i class="fa-solid fa-id-card"></i>
                      </div>
                    </div>
                    <div class="ms-2">
                      <h6 class="mb-0">신분증</h6>
                      <span class="small">필요</span>
                    </div>
                  </div>
                </div>
                <!-- icon and info END -->
        
                <!-- 찜 추가하기 버튼 START -->
                <div class="d-grid gap-2 mb-2">
                  <a href="#" class="btn btn-custom">
                    <i class="fa-regular fa-heart"></i>찜 추가하기
                  </a>
                </div>
                <!-- 찜 추가하기 버튼 END -->
        
                <!-- 목록으로 버튼 START -->
                <div class="d-grid gap-2 mb-2">
                  <a href="#" class="btn btn-return-custom">
                    <i class="fa-solid fa-bars"></i>목록으로
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
<script type="text/javascript">
	$(document).ready(() => {
		$("#btnUpdate").click((e) => {
			location.href = "${path}/community/update?no=${board.bno}";
		});
		
		$("#btnDelete").click((e) => {
			if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
				location.replace("${path}/community/delete?no=${board.bno}");
			}
		});
	});
	
	function deleteReply(replyNo, boardNo){
		var url = "${path}/community/replyDel?replyNo=";
		var requestURL = url + replyNo +"&boardNo=" + boardNo;
		location.replace(requestURL);
	}
	
	function fileDownload(oriname, rename) {
		const url = "/community/fileDown";
		let oName = encodeURIComponent(oriname);
		let rName = encodeURIComponent(rename);
		location.assign(url + "?oriname=" + oName + "&rename=" + rName);
	}
</script>
