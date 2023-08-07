<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>

    <section class="hero-home" style="background-color: #50a78b">
      <div class="container py-6 py-md-7 text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-3">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">모아봐요</h1>
              <h1 class="display-3 fw-bold text-shadow">자취월장 커뮤니티</h1>
            </div>
            <div class="p-lg-1 ps-lg-4">
              <form name="searchForm" action="${path}/community" method="get" class="search-bar row">
                <input type="hidden" name="page" value="1"> <input
							type="hidden" name="searchType" value="title">

						<div class="col d-flex align-items-center flex-grow-1">
							<input class="form-control border-0 shadow-0" type="text"
								id="searchValue" name="searchValue" value="${param.searchValue}"
								placeholder="키워드를 입력해 보세요." />
						</div>

						<div class="col-lg-3 px-0 d-grid flex-grow-0">
							<button class="btn btn-primary rounded-pill h-100" type="submit">
								검색</button>
						</div>
              </form>
            </div>
          </div>
          <div class="col text-center">
            <img
              class="figure position-relative"
              src="${path}/resources/img/kbs/petwalk_image.png"
              style="width: 30rem; left: 6.25rem"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row mt-5">
          <div class="col">
            <div class="container py-3  border-bottom">
            <div class="row">
            <div class="col-6"><div class="h4"> 총 게시글 수 : ${boardCount}</div></div>
            <div class="col-5 text-end"><div class="btn btn-primary" onclick="location.href='${path}/community/write'">글쓰기</div></div>
            <div class="dropdown text-end col-1">
				<form action="${path}/community" method="get">
				<input type="hidden" name="page" value="1">
					<a id="sortDrop" class="btn btn-primary dropdown-toggle"
						id="homeDropdownMenuLink" href="index.html"
						data-bs-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 
							${typeName }	
						</a>
					<div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
					<button type=submit class="dropdown-item" name="type" value="">전체 보기</button>
						<button type=submit class="dropdown-item" name="type" value="pet">반려 동물</button> <button
							type=submit id="popularity" class="dropdown-item" name="type"  value="talent" >재능 기부</button> <button
							type=submit  id="release_date" class="dropdown-item" name="type"  value="product" >중고 거래
						</button>
					</div>
				</form>
				</div>
            </div>
            
            </div>

            <c:forEach var="item" items="${list}">
            <div class="my-3">
             <a class="text-decoration-none text-dark " href="${path}/community/view?no=${item.bno}">
                <h6 class="mt-4">${item.title}</h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  ${item.content}                  
                </p>
                <c:if test="${item.type == 'pet' }">
                <p class="text-muted text-sm">분류 : 반려 동물</p>
                </c:if>
                <c:if test="${item.type == 'talent' }">
                <p class="text-muted text-sm">분류 : 재능 기부</p>
                </c:if>
                <c:if test="${item.type == 'product' }">
                <p class="text-muted text-sm">분류 : 중고 거래</p>
                </c:if>
              </a>
              <div class="row my-3">
                <a class="col" href="thumbsUpCount++">
                  <i class="fa fa-thumbs-up text-muted">
                    좋아요 4</i
                  >
                </a>
                <a class="col" href="replyCount++">
                  <i class="fa fa-comment-dots text-muted"> 댓글 6</i>
                </a>
                <div class="text-muted text-sm text-end col">
                  작성시간 : ${item.createDate }
                </div>
              </div>
              </div>
            </c:forEach>
         
          </div>
        </div>
      </div>

      <!-- page button-->
     <nav aria-label="Page navigation example ">
			<ul
				class="pagination pagination-template d-flex justify-content-center">
				<li class="page-item"><button class="page-link" href="#" onclick="movePage(${pageInfo.nextPage})"> <i
						class="fa fa-angle-left"></i></button></li>
				<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}"
					varStatus="status" step="1">

					<c:if test="${status.current == pageInfo.currentPage}">
						<li class="page-item active"><a class="page-link" href="#">${status.current}</a>
						</li>
					</c:if>

					<c:if test="${status.current != pageInfo.currentPage}">
						<li class="page-item"><a class="page-link" href="#"
							onclick="movePage(${status.current})">${status.current}</a></li>
					</c:if>

				</c:forEach>
				<li class="page-item"><button class="page-link" href="#"onclick="movePage(${pageInfo.nextPage})"> <i
						class="fa fa-angle-right" ></i></button></li>
			</ul>
		</nav>
    </section>
<jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>
<script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
</script>
