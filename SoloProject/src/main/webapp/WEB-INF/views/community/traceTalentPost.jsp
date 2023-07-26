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
        </div>
        <div class="col-xl-6" style="overflow:hidden;">
          <img style="width:100%; height: 100%;" src="${path}/resources/img/trace/trace02.png" alt="동네 재능 거래 일러스트" />
        </div>
      </div>
    </div>
  </section>

  <!-- trac02(재능거래) post section 시작 -->
  <div class="row" style="margin-top: 3rem">
    <section class="mb-5">
      <div class="container card bg-light">
        <div class="card-body">
          <div class="mb-4 h2">게시글 작성</div>
          <form>
            <div class="mb-3">
              <label for="postTitle" class="form-label">제목<span class="text-danger">*</span></label>
              <input type="text" class="form-control-custom" id="postTitle" placeholder="제목을 입력해주세요">
            </div>
            <div class="mb-3">
              <label for="postContent" class="form-label">내용<span class="text-danger">*</span></label>
              <textarea class="form-control-custom" id="postContent" rows="5" placeholder="내용을 입력해주세요"></textarea>
            </div>
            <div class="mb-3">
              <label for="fileInput" class="form-label">파일 선택</label>
              <input type="file" class="form-control-custom" id="fileInput">
            </div>
            <div class="row">
              <div class="col-6">
                <div class="btn btn-cancel-custom">취소</div>
              </div>
              <div class="col-6 text-end">
                <button type="submit" class="btn btn-success-custom">확인</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>
  </div>
  <!-- trac02(재능거래) post section 끝 -->

<jsp:include page="/WEB-INF/views/common/KSKFooter.jsp"></jsp:include>