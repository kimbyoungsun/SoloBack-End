<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KDHHeader.jsp"></jsp:include>

    <section class="hero-home">
      <div class="swiper-container hero-slider"style="height: 450px;">
        <div class="swiper-slide" style="background-color: #94CF4C; width:100%;"></div>
      </div>
      <div class="container py-6 py-md-7 text-white z-index-20">
        <div class="row">
          <div class="text-center">
            <h1 class="display-3 fw-bold text-shadow" style="color: #0B3D2D">도서 상세검색</h1>
          </div>
          <!--검색용 카드-->
          <section>
            <div class="container" style="display:flex; justify-content:center; align-items:center;">
              <div class="mb-3 mb-lg-3 text-center col-lg-10" style="color:black">
                <div class="card" style="border-color: #0B3D2D; border-width: 3px; border-radius: 20px;" >
                  <div class="p-4 card-body">
                    <div class="row">
                      <div class="col-lg-3 mt-4">
                        <h2>검 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 색</h2>
                      </div>
                      <div class="search-bar2 p-3 p-lg-1 ps-lg-4 col-lg-8 mt-3 mb-4 mr-5">
                        <form id="searchForm" action="${path}/book/BookSearch" >
                        <input type="hidden"name="page" value="1"/>
                          <div class="row">
                            <div class="col-lg-2 d-flex align-items-center form-group no-divider">
                              <select class="selectpicker" title="Categories" data-style="btn-form-control">
                                <option value="title" selected>도서명</option>
                                <option value="author">저자</option>
                                <option value="publisher">출판사</option>
                              </select>
                            </div>
                            <div class="col-lg-8 d-flex align-items-center form-group">
                              <input class="form-control border-0 shadow-0" type="text" name="search" placeholder="검색어를 입력하세요">
                            </div>
                            <div class="col-lg-2 d-grid">
                              <button class="btn btn-green" style="width:80px" type="submit">검색</button>
                            </div>
                          </div>
                      </div>
                    </div> 
                    <div class="row">
                      <div class="col-lg-3">
                        <h2>정렬기준</h2>
                      </div>
                      <div class="row col-lg-9" style="text-align:start">
                        <div class="container" style="margin-left: 10px">
                          <div class="row row-cols-4">
                            <div class="form-check col">
                              <input name="sort" type="radio" id="SalesPoint" class="form-check-input" value="salesPoint" ${fn:contains(param.sort,'salesPoint')? 'checked': '' }>
                              <label title="" for="SalesPoint" class="form-check-label">판매량</label>
                            </div>
                            <div class="form-check col">
                              <input name="sort" type="radio" id="Title" class="form-check-input" value="title" ${fn:contains(param.sort,'title')? 'checked': '' }>
                                <label title="" for="Title" class="form-check-label">제목</label>
                            </div>
                            <div class="form-check col">
                              <input name="sort" type="radio" id="PublishTime" class="form-check-input" value="author" ${fn:contains(param.sort,'author')? 'checked': '' }>
                              <label title="" for="PublishTime" class="form-check-label">글쓴이</label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div> 
                    <div class="row mb-2">
                      <div class="col-lg-3">
                        <h2 style="margin-top:40%">카테고리</h2>
                      </div>
                      <div class="row col-lg-9" style="text-align:start">
                        <div class="container" style="margin-left: 10px">
                          <div class = "row row-cols-4">
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_0" class="form-check-input" value="요리" ${fn:contains(category,'요리')? 'checked': '' }>
                              <label title="" for="type_0" class="form-check-label">가정/요리/뷰티</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_1" class="form-check-input" value="건강/취미" ${fn:contains(category,'건강/취미')? 'checked': '' }>
                                <label title="" for="type_1" class="form-check-label">건강/취미/레저</label>
                              </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_2" class="form-check-input" value="고등학교참고서" ${fn:contains(category,'고등학교참고서')? 'checked': '' }>
                              <label title="" for="type_2" class="form-check-label">고등학교참고서</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_3" class="form-check-input" value="고전" ${fn:contains(category,'고전')? 'checked': '' }>
                              <label title="" for="type_3" class="form-check-label">고전</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_5" class="form-check-input" value="과학" ${fn:contains(category,'과학')? 'checked': '' }>
                              <label title="" for="type_5" class="form-check-label">과학</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_6" class="form-check-input" value="경제경영" ${fn:contains(category,'경제경영')? 'checked': '' }>
                                <label title="" for="type_6" class="form-check-label">경제경영</label>
                              </div>
                          </div>
                          <div class = "row row-cols-4">
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_8" class="form-check-input" value="만화" ${fn:contains(category,'만화')? 'checked': '' }>
                              <label title="" for="type_8" class="form-check-label">만화</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_10" class="form-check-input" value="사회과학" ${fn:contains(category,'사회과학')? 'checked': '' }>
                              <label title="" for="type_10" class="form-check-label">사회과학</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_11" class="form-check-input" value="소설" ${fn:contains(category,'소설')? 'checked': '' }>
                              <label title="" for="type_11" class="form-check-label">소설/시/희곡</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_12" class="form-check-input" value="수험서" ${fn:contains(category,'수험서')? 'checked': '' }>
                              <label title="" for="type_12" class="form-check-label">수험서/자격증</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_13" class="form-check-input" value="에세이" ${fn:contains(category,'에세이')? 'checked': '' }>
                                <label title="" for="type_13" class="form-check-label">에세이</label>
                              </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_14" class="form-check-input" value="여행" ${fn:contains(category,'여행')? 'checked': '' }>
                              <label title="" for="type_14" class="form-check-label">여행</label>
                            </div>
                          </div>
                          <div class = "row row-cols-4">
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_15" class="form-check-input" value="역사" ${fn:contains(category,'역사')? 'checked': '' }>
                              <label title="" for="type_15" class="form-check-label">역사</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_16" class="form-check-input" value="예술" ${fn:contains(category,'예술')? 'checked': '' }>
                                <label title="" for="type_16" class="form-check-label">예술/대중문화</label>
                              </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_17" class="form-check-input" value="외국어" ${fn:contains(category,'외국어')? 'checked': '' }>
                              <label title="" for="type_17" class="form-check-label">외국어</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_18" class="form-check-input" value="유아" ${fn:contains(category,'유아')? 'checked': '' }>
                              <label title="" for="type_18" class="form-check-label">유아</label>
                            </div>
                          </div>
                          <div class = "row row-cols-3"> 
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_19" class="form-check-input" value="인문학" ${fn:contains(category,'인문학')? 'checked': '' }>
                              <label title="" for="type_19" class="form-check-label">인문학</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_20" class="form-check-input" value="종교" ${fn:contains(category,'종교')? 'checked': '' }>
                                <label title="" for="type_20" class="form-check-label">종교/역학</label>
                              </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_21" class="form-check-input" value="좋은부모" ${fn:contains(category,'좋은부모')? 'checked': '' }>
                              <label title="" for="type_21" class="form-check-label">좋은부모</label>
                            </div>
                          </div> 
                          <div class = "row row-cols-4">
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_22" class="form-check-input" value="청소년" ${fn:contains(category,'청소년')? 'checked': '' }>
                              <label title="" for="type_22" class="form-check-label">청소년</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_23" class="form-check-input" value="초등학교참고서" ${fn:contains(category,'초등학교참고서')? 'checked': '' }>
                                <label title="" for="type_23" class="form-check-label">초등학교참고서</label>
                              </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_24" class="form-check-input" value="컴퓨터" ${fn:contains(category,'컴퓨터')? 'checked': '' }>
                              <label title="" for="type_24" class="form-check-label">컴퓨터/모바일</label>
                            </div>
                          </div> 
                        </div>
                      </div>
                    </div>
                    </form>
                  </div> 
                </div>
              </div>
            </div>
          </section>
        </div>
      </div>
    </section>
    <!--책 나열-->
    <section class="mt-lg-5">
    <c:forEach var="item" items="${book}">
    <div class="container text-block mt-5" >
        <div class="row  hover-animate" font-size:20px">
          <div class=" col-2 text-md-center flex-shrink-0 me-4 me-xl-5">
          <a class="nav-link"href="${path}/book/BookDetail?bId=${item.bid}">
            <img
              class="img-fluid"
              style="width: 200px; border:0.5px solid black;"
              src="${item.cover}"
              alt="세이노의 가르침"
              onclick="location.href='${path}/book/BookDetail?bId=${item.bid}'"
            />
            </a>
          </div>
          <div class=" col">
          
            <div class="row">
              <button class="col-2 btn btn-green" style="margin-right:40px; margin-top:-10px;">BEST1</button>
              <a class=" col-2 nav-item nav-link active" style="margin-right:40px;" href="${path}/book/BookDetail">
                <img src="${path}/resources/img\bookmark-solid.svg" style="height:20px;"/>&nbsp;북마크&nbsp;42</a>
              <a class="col-2 nav-item nav-link active" style="margin-right:40px;" href="${path}/book/BookDetail">
                <img src="${path}/resources/img\comment-regular.svg" style="height:20px;"/>&nbsp;리뷰&nbsp;36</a>
                <div class="col-2 star-rating"> <i class="fas fa-star"></i>&nbsp; <span  style="color:black; margin-right:40px;">4.7<span></div>  
              <a class="col-2 nav-item nav-link active" style="margin-right:40px;" href="${path}/book/BookDetail">
                <img src="${path}/resources/img\check-to-slot-solid.svg" style="height:20px;"/>&nbsp;내가 읽은 책</a>
            </div>
            <div>
            <a class="nav-link" href="${path}/book/BookDetail?bId=${item.bid}">
              <h4 class="mt-3 mb-2">${item.title}</h4>
              </a>
            </div>
            <p class="text-lg mb-1">저자: ${item.author}</p>
            <p class="text-lg mb-1">출판사: ${item.publisher}</p>
            <p class="text-lg mb-1">발행일: ${item.pubDate}</p>
            <p class="text-lg mb-1">${item.description}</p>
          </div>
        </div>
      </div>
    
    </c:forEach>

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
<jsp:include page="/WEB-INF/views/common/KDHFooter.jsp"></jsp:include>
<!-- 시간 슬라이더 -->
<script>
 	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
</script>