<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/YIGHeader.jsp"></jsp:include>
<body>
	<section>
		<div class="srch-top">
			<p>
				<span>${paramMap['search']}</span>에 대한 검색 결과 입니다.
			</p>
			<div class="srch-top-box"
				style="padding-left: 12rem; padding-right: 12rem">
				<div class="search-bar-y mt-5 p-3 p-lg-1 pl-lg-4">
					<form name="searchForm"  action="${path}/perform/Perform_search" method="get">
						<input type="hidden" name="page" value="1"> 
		                <div class="row">
						<div class="col-lg-2 d-flex align-items-center form-group no-divider">
		                       <select class="selectpicker" name="genrenm" title="Categories" data-style="btn-form-control">
		                         <option value="" ${paramMap.genrenm == null ? 'selected' : ''}> 전체 </option>
		                         <option value="뮤지컬"  ${paramMap.genrenm == '뮤지컬' ? 'selected' : ''}> 뮤지컬 </option>
		                         <option value="연극"  ${paramMap.genrenm == '연극' ? 'selected' : ''}> 연극 </option>
		                         <option value="대중음악"  ${paramMap.genrenm == '대중음악' ? 'selected' : ''} > 대중음악 </option>
		                         <option value="클래식"  ${paramMap.genrenm == '클래식' ? 'selected' : ''} > 클래식 </option>
		                         <option value="무용"  ${paramMap.genrenm == '무용' ? 'selected' : ''}> 무용 </option>
		                         <option value="복합"  ${paramMap.genrenm == '복합' ? 'selected' : ''}> 복합 </option>
		                         <option value="마술"  ${paramMap.genrenm == '마술' ? 'selected' : ''}> 서커스/마술 </option>
		                         <option value="국악"  ${paramMap.genrenm == '국악' ? 'selected' : ''}> 국악 </option>
		                       </select>
		                    </div>
		                  <div class="col-lg-8 d-flex align-items-center form-group">
		                    <input class="form-control border-0 shadow-0" type="text" name="search" placeholder="What are you searching for?"
		                    	value="${paramMap.search}">
		                  </div>
		                  <div class="col-lg-2">
		                    <button class="btn btn-primary btn-block rounded-xl h-100" type="submit">Search </button>
		                  </div>
		                </div>
		            </form>
				</div>
			</div>
		</div>
		<div class="container">
		
<!-- 			<div style="display: flex; text-align: center; margin-top: 2rem; margin-bottom: 1rem;"> -->
<!-- 				<h1 style="flex: 1;"> -->
<!-- 					<a href="" style="color: inherit; text-decoration: none;">콘서트</a> -->
<!-- 				</h1> -->
<!-- 				<h1 style="flex: 1;"> -->
<!-- 					<a href="" style="color: inherit; text-decoration: none;">뮤지컬</a> -->
<!-- 				</h1> -->
<!-- 				<h1 style="flex: 1;"> -->
<!-- 					<a href="" style="color: inherit; text-decoration: none;">연극</a> -->
<!-- 				</h1> -->
<!-- 				<h1 style="flex: 1;"> -->
<!-- 					<a href="" style="color: inherit; text-decoration: none;">클래식</a> -->
<!-- 				</h1> -->
<!-- 				<h1 style="flex: 1;"> -->
<!-- 					<a href="" style="color: inherit; text-decoration: none;">전시</a> -->
<!-- 				</h1> -->
<!-- 				<h1 style="flex: 1;"> -->
<!-- 					<a href="" style="color: inherit; text-decoration: none;">아동</a> -->
<!-- 				</h1> -->
<!-- 			</div> -->
			<hr>
		</div>
	</section>
	<section>
		<div class="srch-sec01">
			<div class="srch-list">
					<c:if test="${empty list}">
						조회된 게시글이 없습니다
					</c:if>
					
					<c:if test="${not empty list}">
						<c:forEach var="item" items="${list}">
							<div class="srch-list-item">
							<div>
								<a href="${path }Perform_detail?no=${item.mt20id}"> <img src="${item.poster}"
									alt="공연이미지3">
								</a>
							</div>
							<div style="display: flex;">
							    <!-- 첫 번째 영역 (크기 비율 3:7) -->
							    <div style="flex: 3;">
							        <p class="item-state">
							            <span class="item-state02">${item.prfstate}</span>
							        </p>
							        <p class="item-tit">
							            <a href="${path }Perform_detail?no=${item.mt20id}">${item.prfnm}</a>
							        </p>
							    </div>
							    
							    <!-- 두 번째 영역 (크기 비율 3:7) -->
							    <div style="flex: 7;">
							    	<p class="item-state">
							            <span>출연 : ${item.prfcast }</span>
							        </p>
							        <p class="item-state">
							            <span> ${item.prfruntime } | ${item.prfage }</span>
							        </p>
							    </div>
							</div>
							<div>'${item.prfpdfrom }' ~ '${item.prfpdto }'</div>
							<div>'${item.fcltynm }'</div>
							</div>
						</c:forEach>
					</c:if>
			</div>
				<div class="py-3">
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
	</section>
	<script type="text/javascript">
		function movePage(page){
			searchForm.page.value = page;
			searchForm.submit();
		}
	</script>
		
	<jsp:include page="/WEB-INF/views/common/YIGFooter.jsp"></jsp:include>