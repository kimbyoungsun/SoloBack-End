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
          <div class="row mb-5">
            <div class="col-lg-3">
              <button class="btn btn-turquoise" style="width:210px; height:60px" type="submit" onclick="location.href='${path}/book/BookSearch'">◀ 도서 메인으로</button>
            </div>
          <div class="col" style="text-align: center;">
            <span class="align-middle" style="font-weight:bold; margin:auto">카테고리 </span> <span class="align-middle" style="font-weight:none; margin:auto">${book.categoryName} </span>
          </div>   
          </div> 
          <div class="row mt-1">
            <div class="col-lg-6">
              <img
                class="overlay-image hover-animate"
                src="${image}"
                alt="꿀벌의 예언1"
                style="width:90% ; box-shadow: 5px 5px 5px 0.5rem rgba(0, 0, 0, 0.3);"
              />
            </div>
            <div class="col-lg-6" > 
              <div class="fw-bold display-2" style="font-size: 60px;">
                ${book.title}
              <div>
              <div class= "mt-4" style="font-size:20px">  
                <div class="row mb-3">
                  <div class="col-lg-3">저자/옮긴이</div>
                  <div class="col-lg-5">${book.author}</div>
                </div>  
                <div class="row mb-3">
                  <div class="col-lg-3">출판사</div>
                  <div class="col-lg-5">${book.publisher}</div>
                </div> 
                <div class="row mb-3">
                  <div class="col-lg-3">발매일</div>
                  <div class="col-lg-5">${book.pubDate}</div>
                </div>
                <div class="row mb-3">
                  <div class="col-lg-3">정가</div>
                  <div class="col-lg-5">${book.priceStandard} 원</div>
                </div>  
                <div class="mt-5 mr-5" style="font-size:20px;">
                  <h3>책소개</h3>
                  <div class="mt-5">
                  ${book.description } 
                </div>
                </div> 
                <div class="row mb-3 mt-5">
                  <div class="col-lg-3"><img src="${path}/resources/img/book/bookmark-solid.svg" style="height:20px;"/>&nbsp;북마크</div>
                </div> 
                <div class="my-3 py-3">
                <button class="btn btn-green hover-animate" style="margin-right:40px; margin-top:-10px;" onclick="location.href='${book.link}'">
                 사러가기</button>
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
        <img src="${path}/resources/img/book/comment-regular.svg" style="height:40px;"/>&nbsp; 리뷰
      </div>
      
        <div class="container" style="border:2px solid #50A78B; border-radius:20px; overflow:hidden;">
          <table class="text-gray-700 table table-striped table-hover" style="border-spacing:0; border-collapse:collapse;">
            <tbody>
            <tr class="text-end">
             <td class="p-3 text-end align-middle;">
             <c:if test="${!empty loginMember }">
            	<button class=" btn btn-primary"> 리뷰쓰기</button>
             </c:if>
             </td>
            </tr>
            
            <c:if test="${empty reply}">
               	 <tr>
            	<td class="p-3 text-center align-middle;">
            	<img alt="" src="${path}/resources/img/icon/browser-20_icon-icons.com_62178.png">
					<div class="display-5"> 리뷰가 없습니다.</div>            	
            	</td>
            </tr>
            </c:if>
           <c:if test="${!empty reply}">
            <c:forEach var="item" items="${reply}">
            	<tr>
                <td class="p-3 text-center align-middle;">
                  <div class="row mt-3 mb-3">
                    <div class="col-lg-2">
                    <span style="color:#000000; font-weight:bold;"> ${item.id}<span>
                    </div>
                    <div class="col-lg-2">
                      ${item.createdate}
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
                      <img src="${path}/resources/img/book/face-smile-wink-regular.svg" style="height:20px;"/>&nbsp; 공감 <span style="color:#50A78B">2<span></a>
                    </div>
                  <div>
                  <div class="mt-3 px-5" style="text-align:justify">
                  	${item.content}  
                  </div>  
                </td>
              </tr>
            </c:forEach>
            </c:if>
            </tbody>
          </table>
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
        </div>  
      </div>
    
    <!--작가의 다른 도서-->
    <div class="container">
      <div class="text-solo-6 h3 mt-5 my-3" style="display:flex;">
        <img src="${path}/resources/img/book/books.png" style="height:40px; margin-top:-5px;"/>&nbsp; 이 책과 비슷한 책</a>
      </div>
    </div>  
    <section class="bg-melon py-4">
      <div class="container ">
        <div class="swiper-container swiper-book">
          <div class="swiper-wrapper">
          <c:forEach var="item" items="${list}">
            <div class="swiper-slide hover-animate">
              <a href="${path}/book/BookDetail?bId=${item.bid}">
              <img
                style=" height: 100%;width:100%"
                src="${item.cover}"
                alt=""
              />
              </a>
            </div>
          </c:forEach>
          </div>
        </div>
      </div>
    </section>
<jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>
    