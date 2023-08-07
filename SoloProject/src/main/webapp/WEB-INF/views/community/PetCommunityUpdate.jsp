<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KSKHeader.jsp"></jsp:include>

  <section class="hero-home" style="background-color: #50a78b">
    <div class="container py-6 text-white z-index-20">
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
        </div>
        <div class="col-4">
          <img style="height: 90%;" src="${path}/resources/img/kbs/petwalk_image.png" alt="반려동물 임보위탁 일러스트" />
        </div>
      </div>
    </div>
  </section>

  <!-- Pet Community (반려동물 임보위탁) post section 시작 -->
  <div class="row" style="margin-top: 3rem">
    <section class="mb-5">
      <div class="container card bg-light">
        <div class="card-body">
          <div class="mb-4 h2">게시글 작성</div>
          <form 	action="${path}/community/update" method="post" enctype="multipart/form-data">
          <input type="hidden" name="bno" value="${board.bno}">
		<input type="hidden" name="originalFileName" value="${board.originalFileName}" />
		<input type="hidden" name="reloadFile" value="${board.renamedFileName}" />
            <div class="mb-3">
              <label for="postTitle" class="form-label">제목<span class="text-danger">*</span></label>
              <input type="text" class="form-control" name="title" id="postTitle" placeholder="제목을 입력해주세요">
            </div>
            <div class="mb-3">
              <select class="selectpicker" name="type" title="Categories" data-style="btn-form-control">
                <option value="pet" selected> 반려 동물 </option>
                <option value="talent"> 재능 기부 </option>
                <option value="product"> 중고 거래 </option>
              </select>
            </div>
            <div class="mb-3">
              <label for="postContent" class="form-label">내용<span class="text-danger">*</span></label>
              <textarea class="form-control" name="content" id="postContent" rows="5" placeholder="내용을 입력해주세요"></textarea>
            </div>
            <input type="hidden" name="id" value="${loginMember.id}" readonly class="input-text">
            <div class="mb-3">
              <label for="fileInput" class="form-label">파일 선택</label>
              <input  type="file" class="form-control" name="reloadFile" id="fileInput">
					<c:if test="${!empty board.originalFileName}"><br>
						현재 업로드 파일 :
						<a>
							${board.originalFileName}
						</a>
					</c:if>
            </div>
            <div class="row">
              <div class="col-6">
                <button class="btn btn-cancel-custom" type="reset">취소</button>
              </div>
              <div class="col-6 text-end">
                <button type="submit" class="btn btn-success-custom">수정</button>
                <input type="button" onclick="location.replace('${path}/community')" value="목록으로">
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>
  </div>
  <!-- Pet Community (반려동물 임보위탁) section 끝 -->

<jsp:include page="/WEB-INF/views/common/KSKFooter.jsp"></jsp:include>