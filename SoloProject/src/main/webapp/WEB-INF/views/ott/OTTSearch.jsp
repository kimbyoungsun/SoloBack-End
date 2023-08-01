<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>
<section>
	<!-- Modal -->
	<div id="modal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div id="modal-dialog" class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<iframe id="iframe" src="" frameborder="3" width="100%"
						height="700px"></iframe>
				</div>
			</div>
		</div>
	</div>
</section>

<section>
	<!-- ModalInfo -->
	<div class="modal fade" id="modalInfo" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<div class="modal-header rounded-3"
					style="height: 600px; background: black">
					<img id="background_img" class="bg-image opacity-4"
						src="https://image.tmdb.org/t/p/original/27u4kBGGOQLqizEudJAOWMkvhip.jpg"
						alt="" />

					<div class="row opacity-100 z-index-50">
						<div class="col-8">
							<div id="vote"
								class=" text-black rounded-3 h4 my-3 col-1 text-center ms-4"
								style="left: 5%; background-color: gainsboro">7.3</div>
							<div id="title"
								class="position-relative display-3 text-light my-3" style="">
								Fast X</div>
							<div id="overview" class="position-relative text-light my-3"
								style="">돔과 그의 패밀리 앞에 나타난 운명의 적 단테. 과거의 그림자는 돔의 모든 것을 파괴하기
								위해 달려온다. 단테에 의해 산산히 흩어진 패밀리들은 모두 목숨을 걸고 맞서야 하는 함정에 빠지고 마는데...</div>
						</div>
						<div class="col">
							<img id="poster_img" class=""
								src="https://image.tmdb.org/t/p/original/wXNihLltMCGR7XepN39syIlCt5X.jpg"
								alt="" style="width: 100%" />
						</div>
					</div>
				</div>
			</div>
			<div class="modal-content">
				<div class="modal-body text-center">
					<div id="iframes-container"></div>

					<div class="h3 text-solo-6 mx-4 pt-3">출연진들</div>
					<div class="swiper-container swiper-list">
						<div id="actors" class="swiper-wrapper text-center mb-3"></div>
					</div>
				</div>
			</div>
		</div>
</section>

<section>
<c:if test="${list[0].backdrop_path == null }">
<div class="hero-home" id="home"
	style="background-image: url('https://image.tmdb.org/t/p/original/2iNUodSKykQ4VtvtG280ntNy7hB.jpg'); background-size: cover;">
</c:if>
<c:if test="${list[0].backdrop_path != null }">
<div class="hero-home" id="home"
	style="background-image: url('https://image.tmdb.org/t/p/original/${list[0].backdrop_path}'); background-size: cover;">
</c:if>
	<div class="container py-6 py-md-7 text-white z-index-20">
		<div class="row">
			<div class="col-xl-4 mt-5">
				<div class="text-center text-lg-start">
					<h1 class="display-4 fw-bold text-shadow">
						<div>영화 검색은?</div>
						<div>즐겨보는 영화</div>
					</h1>
				</div>
				<div class="p-lg-1 ps-lg-">
					<form name="searchForm" action="${path}/ott/OTTSearch" method="get"
						class="search-bar row" >
						<input type="hidden" name="page" value="1"> <input
							type="hidden" name="searchType" value="title">

						<div class="col d-flex align-items-center flex-grow-1">
							<input class="form-control border-0 shadow-0" type="text"
								id="searchValue" name="searchValue" value="${param.searchValue}"
								placeholder="키워드를 입력해 보세요." />
						</div>

						<div class="col-lg-3 px-0 d-grid flex-grow-0">
							<button class="btn btn-primary rounded-pill h-100" type="submit">
								검색</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</section>
<section>
	<div class="container">
		<div class="row text-center h3 text-solo-6 my-3">
			<div class="col-5" ></div>
			<div class="col-5" ></div>
			<div class="col-2 text-end">
				<div class="dropdown">
				<form action="${path}/ott/OTTSearch" method="get">
					<a id="sortDrop" class="btn btn-primary dropdown-toggle"
						id="homeDropdownMenuLink" href="index.html"
						data-bs-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 
							${sortText}		
						</a>

					<div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
						<button type=submit class="dropdown-item" name="sort" value="vote_average">추천순</button> <button
							id="popularity" class="dropdown-item" name="sort"  value="popularity" >인기순</button> <button
							 id="release_date" class="dropdown-item" name="sort"  value="release_date" >최신순 
						</button>
					</div>
				</form>
				</div>
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
					<img src="https://image.tmdb.org/t/p/original/${item.poster_path}"
						alt="" style="height: 100%" onclick="openInfoModal('${item.id}')" />
				</div>
			</div>
		</c:forEach>

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
</section>

<jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>

<script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
</script>
