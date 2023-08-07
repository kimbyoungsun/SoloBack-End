<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>

    <section class="hero-home" style="background-color: #50a78b">
      <div class="container py-md-2 text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-5 pt-5">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">1인 가구 프로그램</h1>
            </div>
          </div>
          <div class="col text-center">
            <img
              class="figure"
              src="${path}/resources/img/kbs/image1.png"
              style="width: 30rem; left: 100px"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>


    <section>
      <div class="container">
        <div class="row my-3">
        <c:forEach var="item" items="${list}">
        <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
          <div class="card shadow border-0 h-100">
              <img
                src="https://1in.seoul.go.kr${item.src1}
                "
                alt=""
                style="width:100% ;height: 600px"
                 onclick="location.href='${path}/program/ProgramDetail?pNo=${item.pno}'"
              />
            </div>
          </div>
        </c:forEach>
        </div>
      </div>
      <div class="py-3">
      <form id="searchForm" action="${path}/program/ProgramMain">
     <input type="hidden" name="page" value="1"/> 
      </form>
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
      </div>
    </section>

<jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>

 <script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
	
</script>