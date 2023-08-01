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
          <div class="col-xl-6 mt-4">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">공공 임대 주택</h1>
            </div>
            <div class="p-lg-1 ps-lg-4">
              <form id="searchForm" action="${path}/location/RentalHouse" class="search-bar row">
                <div class="col d-flex align-items-center flex-grow-1">
                <input type="hidden" name="page" value="1"/> 
                  <input
                    class="form-control border-0 shadow-0"
                    type="text"
                    name="title"
                    value="${param.title}"
                    placeholder="키워드를 입력해 보세요."
                  />
                </div>

                <div class="col-lg-4 px-0 d-grid flex-grow-0">
                  <button
                    class="btn btn-primary rounded-pill h-100"
                    type="submit"
                  >
                    검색 </button>
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
          <div class="col-sm-3 ">
            <div class="px-1 py-3 mx-3 border border-1 rounded-3">
             <form  class="border-1 rounded-3" action="${path}/location/RentalHouse">
                <label class="form-label">종류</label>
                <ul class="list-unstyled mb-0">
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input mx-1"
                        type="checkbox"
                        name="address"
                        value="강원특별자치도"
                        id="soccer"                        
                        ${fn:contains(address, '강원특별자치도') ? 'checked':'' }
                      />
                      <label class="form-check-label" for="soccer">
                        강원
                      </label>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input mx-1"
                        type="checkbox"
                        name="address"
                         value="경기도"
                        id="pingPong"                      
                        ${fn:contains(address, '경기도') ? 'checked':'' }
                      />
                      <label class="form-check-label" for="pingPong">
                        경기도
                      </label>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input mx-1"
                        type="checkbox"
                        name="address"
                         value="광주광역시"
                        id="footVolleyball"
                        ${fn:contains(address, '광주광역시') ? 'checked' : ''}
                      />
                      <label class="form-check-label" for="footVolleyball">
                        광주광역시
                      </label>
                    </div>
                  </li>
                </ul>
                <button class="btn btn-primary mt-3 mx-2" type="submit">검색</button>
              </form>
            </div>
          </div>
          <div class="col">
            <c:forEach var="item" items="${list}">
              <a
                class="text-decoration-none text-dark"
                href="${item.url}"
              >
                <h6 class="mt-2 mb-1">
                 [${item.sttusNm}]${item.pblancNm}
                </h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  ${item.refrnc}
                </p>
                <p class="text-muted text-sm">지역: ${item.brtcNm}</p>
              </a>
            </c:forEach>
          </div>
        </div>
      </div>

      <nav aria-label="Page navigation example ">
			<ul
				class="pagination pagination-template d-flex justify-content-center">
				<li class="page-item"><button class="page-link"  onclick="movePage(${pageInfo.nextPage})"> <i
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
				<li class="page-item"><button class="page-link" onclick="movePage(${pageInfo.nextPage})"> <i
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