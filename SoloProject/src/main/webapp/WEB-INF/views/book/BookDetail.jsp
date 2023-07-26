<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KDHHeader.jsp"></jsp:include>
    <!--책 상세-->
    <section>
      <div class="container-fluid mt-5 pb-5" 
        style="background-image: url('${path}/resources/img/Image20230720104434.png'); background-repeat: no-repeat; display: block; background-size:1910px 1150px; margin-left:0px;">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 d-grid">
              <button class="btn btn-turquoise" style="width:210px; height:60px" type="submit">◀ 도서 메인으로</button>
            </div>
            <div class="col-lg-7 mb-4">
              <div class="search-bar2 p-3 p-lg-1 ps-lg-4">
                <form action="#">
                  <div class="row">
                    <div class="col-lg-2 d-flex align-items-center form-group no-divider">
                      <select class="selectpicker" title="Categories" data-style="btn-form-control">
                        <option value="bookname" selected>도서명</option>
                        <option value="writer">저자</option>
                        <option value="publisher">출판사</option>
                      </select>
                    </div>
                    <div class="col-lg-6 d-flex align-items-center form-group" style="margin-left:-30px;">
                      <input class="form-control border-0 shadow-0" type="text" name="search" placeholder="검색어를 입력하세요">
                    </div>
                    <div class="col-lg-2 d-grid ms-5">
                      <button class="btn btn-green" style="width:75px;" type="submit">검색</button>
                    </div>
                    <div class="col-lg-2 d-grid" style="margin-left:-40px">
                      <button class="btn btn-green" style="width:120px;" type="submit">상세검색</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div> 
          <div class="mb-4" style="text-align: center;">
            <p><span style="font-weight:bold;">카테고리</span>/ 국내도서 > 소설 > 과학소설(SF) > 외국 과학소설</p>
          </div>   
          <div class="row mt-1">
            <div class="col-lg-6">
              <img
                class="overlay-image"
                src="${path}/resources/img\books\searchedbook5.jpg"
                alt="꿀벌의 예언1"
                style="height: 1000px; box-shadow: 5px 5px 5px 0.5rem rgba(0, 0, 0, 0.3);"
              />
            </div>
            <div class="col-lg-6" > 
              <div class="fw-bold" style="font-size: 60px;">
                꿀벌의 예언 1
              <div>
              <div class= "mt-4" style="font-size:20px">  
                <div class="row mb-3">
                  <div class="col-lg-3">저자</div>
                  <div class="col-lg-5">베르나르 베르베르</div>
                </div>  
                <div class="row mb-3">
                  <div class="col-lg-3">옮긴이</div>
                  <div class="col-lg-5">전미연</div>
                </div>      
                <div class="row mb-3">
                  <div class="col-lg-3">출판사</div>
                  <div class="col-lg-5">열린책들</div>
                </div> 
                <div class="row mb-3">
                  <div class="col-lg-3">발매일</div>
                  <div class="col-lg-5">2023-06-20</div>
                </div>
                <div class="row mb-3">
                  <div class="col-lg-3">페이지</div>
                  <div class="col-lg-5">368쪽</div>
                </div> 
                <div class="row mb-3">
                  <div class="col-lg-3">정가</div>
                  <div class="col-lg-5">16,800원</div>
                </div>  
                <div class="mt-5 mr-5" style="font-size:20px;">
                  <h3>책소개</h3>
                  <div class="mt-5">
                  전 세계 3천만 부, 한국어판 누계 3천 쇄를 돌파한 신화적 베스트셀러 작가 베르나르 베르베르의 신작 소설. 꿀벌이 사라지고 인류 멸종의 위기가 닥친 30년 뒤의 지구를 목격한 르네는 미래를 바꾸기 위해 시공간을 넘나드는 모험을 떠난다. 인류를 구할 방법이 적힌 고대의 예언서 <꿀벌의 예언>을 찾아 과거와 미래를 오가는 르네와 그 일행은 과연 예언서를 찾아 지구를 구할 수 있을까? 
                </div>
                </div> 
                <div class="row mb-3 mt-5">
                  <div class="col-lg-3"><img src="${path}/resources/img\bookmark-solid.svg" style="height:20px;"/>&nbsp;북마크</div>
                  <div class="col-lg-5" style="color:#50A78B">43</div>
                </div> 
                <div class="mt-3">
                <button class="btn btn-green " style="margin-right:40px; margin-top:-10px;">
                 ★ 내가 읽은 책</button>
                </div>
              </div>   
            </div>
          </div>
        </div>  
      </div>
    </section>
    <!--리뷰-->
    <div class="container">
      <div class="text-solo-6 h3 my-3 mt-5" style="display:flex;">
        <img src="${path}/resources/img\comment-regular.svg" style="height:40px; margin-top:-5px;"/>&nbsp; 리뷰
      </div>
        <div class="container" style="border:2px solid #50A78B; border-radius:20px; overflow:hidden;">
          <table class="text-gray-700 table table-striped table-hover" style="border-spacing:0; border-collapse:collapse;">
            <tbody>
              <tr>
                <td class="p-3 text-center align-middle;" style="border-radius: 20px 20px 0 0; padding:0">
                  <div class="row mt-3 mb-3">
                    <div class="col-lg-2">
                    <span style="color:#000000; font-weight:bold;">dkanro<span>
                    </div>
                    <div class="col-lg-2">
                      2023.4.16  
                    </div>
                    <div class="col-lg-2" style="margin-top:-5px;">
                      <div class="star-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                        <i class="far fa-star"></i>
                      </div>
                    </div>
                    <div class="col-lg-6 pe-5"style="text-align:right;">
                      <img src="${path}/resources/img\face-smile-wink-regular.svg" style="height:20px;"/>&nbsp; 공감 <span style="color:#50A78B">2<span></a>
                    </div>
                  <div>
                  <div class="mt-3 px-5" style="text-align:justify">  
                    매년 30%의 꿀벌이 사라지고 있다는데 그 원인이 정확히 밝혀지고 있지 않다고 합니다. 베르나르 베르베르는 이 상황을 어떻게 상상력을 발휘해 그려냈을지 무척 궁금하고 기대가 되는작품입니다.  
                  </div>  
                </td>
              </tr>
              <tr>
                <td class="p-3 text-center align-middle;" style="background-color: #e2f2ce;">
                  <div class="row mt-3 mb-3">
                    <div class="col-lg-2">
                    <span style="color:#000000; font-weight:bold;">dkanro<span>
                    </div>
                    <div class="col-lg-2">
                      2023.4.16  
                    </div>
                    <div class="col-lg-2" style="margin-top:-5px;">
                      <div class="star-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                        <i class="far fa-star"></i>
                      </div>
                    </div>
                    <div class="col-lg-6 pe-5"style="display:flex; justify-content: flex-end;">
                      <img src="${path}/resources/img\face-smile-wink-regular.svg" style="height:20px;"/>&nbsp; 공감 <span style="color:#50A78B">2<span></a>
                    </div>
                  <div>
                  <div class="mt-3 px-5" style="text-align:justify">  
                    매년 30%의 꿀벌이 사라지고 있다는데 그 원인이 정확히 밝혀지고 있지 않다고 합니다. 베르나르 베르베르는 이 상황을 어떻게 상상력을 발휘해 그려냈을지 무척 궁금하고 기대가 되는작품입니다.  
                  </div>  
                </td>
              </tr>
              <tr>
                <td class="p-3 text-center align-middle;">
                  <div class="row mt-3 mb-3">
                    <div class="col-lg-2">
                    <span style="color:#000000; font-weight:bold;">이름없는 사람<span>
                    </div>
                    <div class="col-lg-2">
                      2023.4.16  
                    </div>
                    <div class="col-lg-2" style="margin-top:-5px;">
                      <div class="star-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                        <i class="far fa-star"></i>
                      </div>
                    </div>
                    <div class="col-lg-6 pe-5"style="display:flex; justify-content: flex-end;">
                      <img src="${path}/resources/img\face-smile-wink-regular.svg" style="height:20px;"/>&nbsp; 공감 <span style="color:#50A78B">2<span></a>
                    </div>
                  <div>
                  <div class="mt-3 px-5" style="text-align:justify">  
                    매년 30%의 꿀벌이 사라지고 있다는데 그 원인이 정확히 밝혀지고 있지 않다고 합니다. 베르나르 베르베르는 이 상황을 어떻게 상상력을 발휘해 그려냈을지 무척 궁금하고 기대가 되는작품입니다.  
                  </div>  
                </td>
              </tr>
              <tr>
                <td class="p-3 text-center align-middle;" style="background-color: #dce9cb;">
                  <div class="row mt-3 mb-3">
                    <div class="col-lg-2">
                    <span style="color:#000000; font-weight:bold;">dkanro<span>
                    </div>
                    <div class="col-lg-2">
                      2023.4.16  
                    </div>
                    <div class="col-lg-2" style="margin-top:-5px;">
                      <div class="star-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                        <i class="far fa-star"></i>
                      </div>
                    </div>
                    <div class="col-lg-6 pe-5"style="display:flex; justify-content: flex-end;">
                      <img src="${path}/resources/img\face-smile-wink-regular.svg" style="height:20px;"/>&nbsp; 공감 <span style="color:#50A78B">2<span></a>
                    </div>
                  <div>
                  <div class="mt-3 px-5" style="text-align:justify">  
                    매년 30%의 꿀벌이 사라지고 있다는데 그 원인이 정확히 밝혀지고 있지 않다고 합니다. 베르나르 베르베르는 이 상황을 어떻게 상상력을 발휘해 그려냈을지 무척 궁금하고 기대가 되는작품입니다.  
                  </div>  
                </td>
              </tr>
              <tr>
                <td class="p-3 text-center align-middle;">
                  <div class="row mt-3 mb-3">
                    <div class="col-lg-2">
                    <span style="color:#000000; font-weight:bold;">amazarashi<span>
                    </div>
                    <div class="col-lg-2">
                      2023.4.16  
                    </div>
                    <div class="col-lg-2" style="margin-top:-5px;">
                      <div class="star-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                        <i class="far fa-star"></i>
                      </div>
                    </div>
                    <div class="col-lg-6 pe-5"style="display:flex; justify-content: flex-end;">
                      <img src="${path}/resources/img\face-smile-wink-regular.svg" style="height:20px;"/>&nbsp; 공감 <span style="color:#50A78B">2<span></a>
                    </div>
                  <div>
                  <div class="mt-3 px-5" style="text-align:justify">  
                    매년 30%의 꿀벌이 사라지고 있다는데 그 원인이 정확히 밝혀지고 있지 않다고 합니다. 베르나르 베르베르는 이 상황을 어떻게 상상력을 발휘해 그려냈을지 무척 궁금하고 기대가 되는작품입니다.  
                  </div>  
                </td>
              </tr>
            </tbody>
          </table>
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
        </div>  
      </div>
    
    <!--작가의 다른 도서-->
    <div class="container">
      <div class="text-solo-6 h3 mt-5 my-3" style="display:flex;">
        <img src="${path}/resources/img\작가의 다른 도서.png" style="height:40px; margin-top:-5px;"/>&nbsp; 작가의 다른 도서</a>
      </div>
    </div>  
    <section class="bg-melon py-4">
      <div class="container ">
        <div class="swiper-container swiper-list">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <a href=""><img
                style="height: 100%"
                src="${path}/resources/img\books\bernarbook0.png"
                alt=""
              /></a>
            </div>
            <div class="swiper-slide">
              <a href=""><img
                style="height: 100%"
                src="${path}/resources/img\books\bernarbook1.png"
                alt=""
              /></a>
            </div>
            <div class="swiper-slide">
              <a href=""><img
                style="height: 100%"
                src="${path}/resources/img\books\bernarbook2.jpg"
                alt=""
              /></a>
            </div>
            <div class="swiper-slide">
              <a href=""><img
                style="height: 100%"
                src="${path}/resources/img\books\bernarbook3.png"
                alt=""
              /></a>
            </div>

            <div class="swiper-slide">
              <a href=""><img
                style="height: 100%"
                src="${path}/resources/img\books\bernarbook4.jpg"
                alt=""
              /></a>
            </div>


          </div>
        </div>
      </div>
    </section>
<jsp:include page="/WEB-INF/views/common/KDHFooter.jsp"></jsp:include>
    