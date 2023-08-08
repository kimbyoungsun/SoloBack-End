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
                <div class="text-center text-lg-start mt-7">
                    <h1 class="display-3 fw-bold text-shadow">커뮤니티 글쓰기</h1>
                </div>
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
          <form action="${path}/community/write" method="post" enctype="multipart/form-data">
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
              <input type="file" class="form-control" name="upfile" id="fileInput">
            </div>
            <div class="row">
              <div class="col-6">
                <button class="btn btn-cancel-custom" type="reset">취소</button>
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
  <!-- Pet Community (반려동물 임보위탁) section 끝 -->

<jsp:include page="/WEB-INF/views/common/KSKFooter.jsp"></jsp:include>