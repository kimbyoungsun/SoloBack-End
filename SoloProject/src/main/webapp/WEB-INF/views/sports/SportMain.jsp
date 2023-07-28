<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>

    <section class="hero-home"style="background-color: #50a78b" >
      <div class="container text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-7">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">생활체육시설</h1>
            </div>
            <div class="p-lg-1 ps-lg-4">
              <form id="searchForm" action="${path}/sports/SportMain" class="search-bar row">
                <div class="col d-flex align-items-center flex-grow-1">
                <input type="hidden" name="page" value="1"/> 
                  <input
                    class="form-control border-0 shadow-0"
                    type="text"
                    name="svcnm"
                    placeholder="키워드를 입력해 보세요."
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
              src="${path}/resources/img/kbs/basketball_court-pana.png"
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
          <div class="col-sm-2">
            <div class="px-3 py-3 border border-1 rounded-3">
              <form  class="border-1 rounded-3" action="${path}/sports/SportMain">
                <label class="form-label">종류</label>
                <ul class="list-unstyled mb-0">
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="minclassnm"
                        value="축구장"
                        id="soccer"                        
                        ${fn:contains(minclassnm, '축구장') ? 'checked':'' }
                      />
                      <label class="form-check-label" for="soccer">
                        축구장
                      </label>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="minclassnm"
                         value="배구장"
                        id="pingPong"                      
                        ${fn:contains(minclassnm, '배구장') ? 'checked':'' }
                      />
                      <label class="form-check-label" for="pingPong">
                        배구장
                      </label>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="minclassnm"
                         value="족구장"
                        id="footVolleyball"
                        ${fn:contains(minclassnm, '족구장') ? 'checked' : ''}
                      />
                      <label class="form-check-label" for="footVolleyball">
                        족구장
                      </label>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="minclassnm"
                        value="테니스장"
                        id="tennis"
                           ${fn:contains(minclassnm, '테니스장') ? 'checked' : ''}
                      />
                      <label class="form-check-label" for="tennis">
                        테니스장
                      </label>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                         name="minclassnm"
                        value="야구장"
                        id="baseball"
                       ${fn:contains(minclassnm, '야구장') ? 'checked' : ''}
                      />
                      <label class="form-check-label" for="baseball">
                        야구장
                      </label>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="minclassnm"
                        value="배드민턴장"
                        id="badminton"                        
                         ${fn:contains(minclassnm, '배드민턴장') ? 'checked':'' }
                      />
                      <label class="form-check-label" for="badminton">
                        배드민턴장
                      </label>
                    </div>
                  </li>
                </ul>
                <button class="btn btn-primary mt-3" type="submit">검색</button>
              </form>
            </div>
            <div class="align-text-bottom">
              <img
                class="position-relative"
                src="${path}/resources/img/kbs/Badminton-amico.png"
                style="width: 25rem; top: 40rem; left: -12.5rem"
                alt=""
              />
            </div>
          </div>
          <div class="col">
          <c:forEach var="item" items="${list}">
            <div class="d-flex d-block d-sm-flex review">
              <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
                <img
                  class="d-block p-2 mb-2 rounded-5"
                  style="width: 12.5rem"
                  style="height: 12.5rem"
                  src="${item.imgurl}"
                  alt=""
                />
              </div>
              <div>
                <h6 class="mt-2 mb-1">${item.svcnm }</h6>
                <div class="mb-2">
                  <i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i>
                </div>
                <p class="text-muted text-sm">
                  	${item.areanm}
                </p>
                <p class="text-muted text-sm">개방 시간 : ${item.v_min} ~ ${item.v_min}</p>
                <p class="text-muted text-sm">전화 번호 : ${item.telno}</p>
              </div>
              <div class="flex-lg-grow-1 text-end">
                <button class="btn btn-primary" onclick="location.href='${item.svcurl}'" >세부정보</button>
              </div>
            </div>
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