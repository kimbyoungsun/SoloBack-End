<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>

    <section class="hero-home" style="background-color: #50a78b">
      <div class="container pt-md-3 text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-xl-7">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">서울시 핫 플레이스</h1>
            </div>
          </div>
          <div class="col text-center">
            <img
              class="position-relative"
              src="${path}/resources/img/kbs/city.png"
              style="width: 30rem; left: 80px"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row pt-6">
          <div class="col">총 113곳</div>
          <div class="col text-end ">
           <div class="dropdown">
				<form id="searchForm" action="${path}/location/HotPlace" method="get">
				<input type="hidden" name="page" value="1"/>
					<a id="sortDrop" class="btn btn-primary dropdown-toggle"
						id="homeDropdownMenuLink" href="index.html"
						data-bs-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 
							${category}	
						</a>

					<div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
						<button type=submit class="dropdown-item" name="category" value="">전체보기</button> 
						<button type=submit class="dropdown-item" name="category" value="관광특구">관광특구</button> 
						<button type=submit class="dropdown-item" name="category" value="고궁·문화유산">고궁 문화 유산</button> 
						<button
							id="popularity" class="dropdown-item" name="category"  value="공원" >공원</button> 
							<button
							 id="release_date" class="dropdown-item" name="category"  value="발달상권" >발달상권 
						</button>
							<button
							 id="release_date" class="dropdown-item" name="category"  value="인구밀집지역" >인구밀집지역 
						</button>
					</div>
				</form>
				</div>
          </div>
        </div>

        <div class="row">
		     <c:forEach var="item" items="${list}">
		     <div class="col-4 py-3">
		            <div class="card card-poster gradient-overlay hover-animate">
		              <a href="https://data.seoul.go.kr/SeoulRtd/?hotspotNm=${item.area_nm}" class="tile-link"></a>
		              <img
		                class="bg-image"
		                src="https://data.seoul.go.kr/resources/img/guide/hotspot/${item.area_nm}.jpg"
		                alt=""
		              />
		              <div class="card-body overlay-content">
		                <div class="row">
		                  <div class="col h6">${item.area_nm}</div>
		                </div>
		              </div>
		            </div>
		          </div>
		     </c:forEach>
          
        <!-- page button-->
       <nav class="py-4" aria-label="Page navigation example ">
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
      </div>
    </section>
   <jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>
   
   <script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
	
</script>