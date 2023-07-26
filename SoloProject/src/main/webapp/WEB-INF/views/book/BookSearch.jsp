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
                        <form action="#">
                          <div class="row">
                            <div class="col-lg-2 d-flex align-items-center form-group no-divider">
                              <select class="selectpicker" title="Categories" data-style="btn-form-control">
                                <option value="bookname" selected>도서명</option>
                                <option value="writer">저자</option>
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
                        </form>
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
                              <input name="sort" type="radio" id="type_0" class="form-check-input" checked>
                              <label title="" for="type_0" class="form-check-label">판매량</label>
                            </div>
                            <div class="form-check col">
                              <input name="sort" type="radio" id="type_1" class="form-check-input">
                                <label title="" for="type_1" class="form-check-label">북마크</label>
                            </div>
                            <div class="form-check col">
                              <input name="sort" type="radio" id="type_2" class="form-check-input">
                              <label title="" for="type_2" class="form-check-label">리뷰</label>
                            </div>
                            <div class="form-check col">
                              <input name="sort" type="radio" id="type_3" class="form-check-input">
                              <label title="" for="type_3" class="form-check-label">발행일</label>
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
                          <div class="row row-cols-4">
                            <div class="form-check col">
                              <input name="category" type="radio" id="type_0" class="form-check-input" checked>
                              <label title="" for="type_0" class="form-check-label">전체</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="radio" id="type_1" class="form-check-input">
                                <label title="" for="type_1" class="form-check-label">국내도서</label>
                              </div>
                            <div class="form-check col">
                              <input name="category" type="radio" id="type_2" class="form-check-input">
                              <label title="" for="type_2" class="form-check-label">외국도서</label>
                            </div>
                          </div>  
                          <div class = "row row-cols-4">
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_0" class="form-check-input">
                              <label title="" for="type_0" class="form-check-label">인문학</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_1" class="form-check-input">
                                <label title="" for="type_1" class="form-check-label">사회과학</label>
                              </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_2" class="form-check-input">
                              <label title="" for="type_2" class="form-check-label">경제경영</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_3" class="form-check-input">
                              <label title="" for="type_3" class="form-check-label">종교</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_5" class="form-check-input">
                              <label title="" for="type_0" class="form-check-label">역사</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_6" class="form-check-input">
                                <label title="" for="type_1" class="form-check-label">과학</label>
                              </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_7" class="form-check-input">
                              <label title="" for="type_2" class="form-check-label">전문서적</label>
                            </div>
                          </div>
                          <div class = "row row-cols-4">
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_8" class="form-check-input">
                              <label title="" for="type_0" class="form-check-label">소설</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_9" class="form-check-input">
                                <label title="" for="type_1" class="form-check-label">시/희곡</label>
                              </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_10" class="form-check-input">
                              <label title="" for="type_2" class="form-check-label">에세이</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_11" class="form-check-input">
                              <label title="" for="type_3" class="form-check-label">장르소설</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_12" class="form-check-input">
                              <label title="" for="type_0" class="form-check-label">학업 참고서</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_13" class="form-check-input">
                                <label title="" for="type_1" class="form-check-label">수험서</label>
                              </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_14" class="form-check-input">
                              <label title="" for="type_2" class="form-check-label">외국어</label>
                            </div>
                          </div>
                          <div class = "row row-cols-4">
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_15" class="form-check-input">
                              <label title="" for="type_0" class="form-check-label">여행</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_16" class="form-check-input">
                                <label title="" for="type_1" class="form-check-label">대중문예</label>
                              </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_17" class="form-check-input">
                              <label title="" for="type_2" class="form-check-label">만화</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_18" class="form-check-input">
                              <label title="" for="type_3" class="form-check-label">자기계발</label>
                            </div>
                          </div>
                          <div class = "row row-cols-3"> 
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_19" class="form-check-input">
                              <label title="" for="type_0" class="form-check-label">컴퓨터/모바일</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_20" class="form-check-input">
                                <label title="" for="type_1" class="form-check-label">가정/요리/뷰티</label>
                              </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_21" class="form-check-input">
                              <label title="" for="type_2" class="form-check-label">건강/취미/레저</label>
                            </div>
                          </div> 
                          <div class = "row row-cols-4">
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_22" class="form-check-input">
                              <label title="" for="type_0" class="form-check-label">부모</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_23" class="form-check-input">
                                <label title="" for="type_1" class="form-check-label">청소년</label>
                              </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_24" class="form-check-input">
                              <label title="" for="type_2" class="form-check-label">어린이</label>
                            </div>
                            <div class="form-check col">
                              <input name="category" type="checkbox" id="type_25" class="form-check-input">
                              <label title="" for="type_3" class="form-check-label">유아</label>
                            </div>
                          </div> 
                        </div>
                      </div>
                    </div>
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
      <div class="container text-block" style="margin-top:70px;" >
        <div class="d-flex d-block d-sm-flex review" style="margin-top: -170px; font-size:20px">
          <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
            <img
              class="d-block mb-2"
              style="width: 12.5rem; border:0.5px solid black;"
              src="${path}/resources/img\books\searchedbook1.png"
              alt="세이노의 가르침"
            />
          </div>
          <div>
            <div style="display:flex;">
              <button class="btn btn-green" style="margin-right:40px; margin-top:-10px;">BEST1</button>
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\bookmark-solid.svg" style="height:20px;"/>&nbsp;북마크&nbsp;42</a>
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\comment-regular.svg" style="height:20px;"/>&nbsp;리뷰&nbsp;36</a>
                <div class="star-rating"> <i class="fas fa-star"></i>&nbsp; <span style="color:black; margin-right:40px;">4.7<span></div>  
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\check-to-slot-solid.svg" style="height:20px;"/>&nbsp;내가 읽은 책</a>
            </div>
            <div>
              <h4 class="mt-3 mb-2">세이노의 가르침</h4>
            </div>
            <p class="text-lg mb-1">저자: 세이노(SayNo)</p>
            <p class="text-lg mb-1">출판사: 데이원</p>
            <p class="text-lg mb-1">발행일:  2023.03.02</p>
            <p class="text-lg mb-1">2000년부터 발표된 그의 주옥같은 글들. 독자들이 자발적으로 만든 제본서는 물론, 전자책과 앱까지 나왔던 《세이노의 가르침》이 드디어 전국 서점에서 독자들을 마주한다. 여러 판본을...</p>
          </div>
        </div>
      </div>
      <div class="container text-block" style="margin-top: 200px;">
        <div class="d-flex d-block d-sm-flex review" style="margin-top: -170px; font-size:20px">
          <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
            <img
              class="d-block mb-2"
              style="width: 12.5rem; border:0.5px solid black;"
              src="${path}/resources/img\books\searchedbook2.png"
              alt="세이노의 가르침"
            />
          </div>
          <div>
            <div style="display:flex;">
              <button class="btn btn-green" style="margin-right:40px; margin-top:-10px;">BEST2</button>
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\bookmark-solid.svg" style="height:20px;"/>&nbsp;북마크</a>
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\comment-regular.svg" style="height:20px;"/>&nbsp;리뷰</a>
                <div class="star-rating"> <i class="fas fa-star"></i>&nbsp; <span style="color:black; margin-right:40px;">4.7<span></div>  
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\check-to-slot-solid.svg" style="height:20px;"/>&nbsp;내가 읽은 책</a>
            </div>
            <div>
              <h4 class="mt-3 mb-2">세이노의 가르침</h4>
            </div>
            <p class="text-lg mb-1">저자: 세이노(SayNo)</p>
            <p class="text-lg mb-1">출판사: 데이원</p>
            <p class="text-lg mb-1">발행일:  2023.03.02</p>
            <p class="text-lg mb-1">2000년부터 발표된 그의 주옥같은 글들. 독자들이 자발적으로 만든 제본서는 물론, 전자책과 앱까지 나왔던 《세이노의 가르침》이 드디어 전국 서점에서 독자들을 마주한다. 여러 판본을...</p>
          </div>
        </div>
      </div>
      <div class="container text-block" style="margin-top: 200px;">
        <div class="d-flex d-block d-sm-flex review" style="margin-top: -170px; font-size:20px">
          <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
            <img
              class="d-block mb-2"
              style="width: 12.5rem; border:0.5px solid black;"
              src="${path}/resources/img\books\searchedbook3.png"
              alt="세이노의 가르침"
            />
          </div>
          <div>
            <div style="display:flex;">
              <button class="btn btn-green" style="margin-right:40px; margin-top:-10px;">BEST3</button>
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\bookmark-solid.svg" style="height:20px;"/>&nbsp;북마크</a>
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\comment-regular.svg" style="height:20px;"/>&nbsp;리뷰</a>
                <div class="star-rating"> <i class="fas fa-star"></i>&nbsp; <span style="color:black; margin-right:40px;">4.7<span></div>  
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\check-to-slot-solid.svg" style="height:20px;"/>&nbsp;내가 읽은 책</a>
            </div>
            <div>
              <h4 class="mt-3 mb-2">세이노의 가르침</h4>
            </div>
            <p class="text-lg mb-1">저자: 세이노(SayNo)</p>
            <p class="text-lg mb-1">출판사: 데이원</p>
            <p class="text-lg mb-1">발행일:  2023.03.02</p>
            <p class="text-lg mb-1">2000년부터 발표된 그의 주옥같은 글들. 독자들이 자발적으로 만든 제본서는 물론, 전자책과 앱까지 나왔던 《세이노의 가르침》이 드디어 전국 서점에서 독자들을 마주한다. 여러 판본을...</p>
          </div>
        </div>
      </div>
      <div class="container text-block" style="margin-top: 200px;">
        <div class="d-flex d-block d-sm-flex review" style="margin-top: -170px; font-size:20px">
          <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
            <img
              class="d-block mb-2"
              style="width: 12.5rem; border:0.5px solid black;"
              src="${path}/resources/img\books\searchedbook4.png"
              alt="세이노의 가르침"
            />
          </div>
          <div>
            <div style="display:flex;">
              <button class="btn btn-green" style="margin-right:40px; margin-top:-10px;">4</button>
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\bookmark-solid.svg" style="height:20px;"/>&nbsp;북마크</a>
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\comment-regular.svg" style="height:20px;"/>&nbsp;리뷰</a>
                <div class="star-rating"> <i class="fas fa-star"></i>&nbsp; <span style="color:black; margin-right:40px;">4.7<span></div>  
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\check-to-slot-solid.svg" style="height:20px;"/>&nbsp;내가 읽은 책</a>
            </div>
            <div>
              <h4 class="mt-3 mb-2">세이노의 가르침</h4>
            </div>
            <p class="text-lg mb-1">저자: 세이노(SayNo)</p>
            <p class="text-lg mb-1">출판사: 데이원</p>
            <p class="text-lg mb-1">발행일:  2023.03.02</p>
            <p class="text-lg mb-1">2000년부터 발표된 그의 주옥같은 글들. 독자들이 자발적으로 만든 제본서는 물론, 전자책과 앱까지 나왔던 《세이노의 가르침》이 드디어 전국 서점에서 독자들을 마주한다. 여러 판본을...</p>
          </div>
        </div>
      </div>
      <div class="container text-block" style="margin-top: 200px;">
        <div class="d-flex d-block d-sm-flex review" style="margin-top: -170px; font-size:20px">
          <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
            <img
              class="d-block mb-2"
              style="width: 12.5rem; border:0.5px solid black;"
              src="${path}/resources/img\books\searchedbook5.png"
              alt="세이노의 가르침"
            />
          </div>
          <div>
            <div style="display:flex;">
              <button class="btn btn-green" style="margin-right:40px; margin-top:-10px;">5</button>
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\bookmark-solid.svg" style="height:20px;"/>&nbsp;북마크</a>
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\comment-regular.svg" style="height:20px;"/>&nbsp;리뷰</a>
                <div class="star-rating"> <i class="fas fa-star"></i>&nbsp; <span style="color:black; margin-right:40px;">4.7<span></div>  
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\check-to-slot-solid.svg" style="height:20px;"/>&nbsp;내가 읽은 책</a>
            </div>
            <div>
              <h4 class="mt-3 mb-2">세이노의 가르침</h4>
            </div>
            <p class="text-lg mb-1">저자: 세이노(SayNo)</p>
            <p class="text-lg mb-1">출판사: 데이원</p>
            <p class="text-lg mb-1">발행일:  2023.03.02</p>
            <p class="text-lg mb-1">2000년부터 발표된 그의 주옥같은 글들. 독자들이 자발적으로 만든 제본서는 물론, 전자책과 앱까지 나왔던 《세이노의 가르침》이 드디어 전국 서점에서 독자들을 마주한다. 여러 판본을...</p>
          </div>
        </div>
      </div>
      <div class="container text-block" style="margin-top: 200px;">
        <div class="d-flex d-block d-sm-flex review" style="margin-top: -170px; font-size:20px">
          <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
            <img
              class="d-block mb-2"
              style="width: 12.5rem; border:0.5px solid black;"
              src="${path}/resources/img\books\searchedbook6.png"
              alt="세이노의 가르침"
            />
          </div>
          <div>
            <div style="display:flex;">
              <button class="btn btn-green" style="margin-right:40px; margin-top:-10px;">6</button>
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\bookmark-solid.svg" style="height:20px;"/>&nbsp;북마크</a>
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\comment-regular.svg" style="height:20px;"/>&nbsp;리뷰</a>
                <div class="star-rating"> <i class="fas fa-star"></i>&nbsp; <span style="color:black; margin-right:40px;">4.7<span></div>  
              <a class="nav-item nav-link active" style="margin-right:40px;" href="BookDetail.html">
                <img src="${path}/resources/img\check-to-slot-solid.svg" style="height:20px;"/>&nbsp;내가 읽은 책</a>
            </div>
            <div>
              <h4 class="mt-3 mb-2">세이노의 가르침</h4>
            </div>
            <p class="text-lg mb-1">저자: 세이노(SayNo)</p>
            <p class="text-lg mb-1">출판사: 데이원</p>
            <p class="text-lg mb-1">발행일:  2023.03.02</p>
            <p class="text-lg mb-1">2000년부터 발표된 그의 주옥같은 글들. 독자들이 자발적으로 만든 제본서는 물론, 전자책과 앱까지 나왔던 《세이노의 가르침》이 드디어 전국 서점에서 독자들을 마주한다. 여러 판본을...</p>
          </div>
        </div>
      </div>

      <nav aria-label="Page navigation example ">
        <ul
          class="pagination2 pagination-template d-flex justify-content-center my-5">
          <li class="page-item">
            <a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a>
          </li>
          <li class="page-item active"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a>
          </li>
        </ul>
      </nav>
    </section>
<jsp:include page="/WEB-INF/views/common/KDHFooter.jsp"></jsp:include>