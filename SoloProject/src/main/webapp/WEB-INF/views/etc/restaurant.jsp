<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/YIGHeader.jsp"></jsp:include>
      

    <section class="hero-home" style="background-color: #50a78b">
      <div class="container text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-7">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">로컬 맛집</h1>
            </div>
            <div class="p-lg-1 ps-lg-4">
              <form id="searchForm" action="${path}/location/Restaurant" class="search-bar row">
                <div class="col d-flex align-items-center flex-grow-1">
                <input type="hidden"  name="page" value="1"/>
                  <input
                    class="form-control border-0 shadow-0"
                    type="text"
                    name="address"
                    placeholder="지역을 입력하세요."
                    value="${param.address}"
                  />
                </div>

                <div class="col-lg-4 px-0 d-grid flex-grow-0">
                  <button
                    class="btn btn-primary rounded-pill h-100"
                    type="submit"
                  >
                    검색
                  </button>
                </div>
              </form>
            </div>
          </div>
          <div class="col text-center">
            <img
              class="figure"
              src="${path}/resources/img/yg/맛집.png"
              style="width: 30rem; left: 100px"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container text-block mt-lg-5">
        <div class="row">
        <div class="col-1"></div>
          <div class="col ms-4">
          <c:forEach var="item" items="${list}">
                <div class="row review">
              <div class="col-3 text-md-center">
                <img
                  class="p-2 mb-2 rounded-5 text-start"
                  style="width: 100%; height:160px" 
                  src="${item.firstimage }"
                  alt="Padmé Amidala"
                />
              </div>
              
              <div class="col-6">
                <h6 class="mt-2 mb-1">${item.title}</h6>
                <div class="mb-2">
                  <i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i>
                </div>
                <p class="text-muted text-sm">
                ${item.addr1}
                <c:if test="${item.addr2 != '-' }">
                ${item.addr2 }
                </c:if>
                </p>
                <c:if test="${item.tel  !='-'}">
	                <p class="text-muted text-sm">전화 번호 : ${item.tel}</p>
                </c:if>
              </div>
              <div class="col-2 text-end">
                <button class="btn btn-primary">세부정보</button>
              </div>
            </div>
              </c:forEach>
          </div>
        </div>
      </div>
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
    
    <!-- 시간 슬라이더 -->
    <script>
  	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
    </script>
    
 <jsp:include page="/WEB-INF/views/common/YIGFooter.jsp"></jsp:include>
 