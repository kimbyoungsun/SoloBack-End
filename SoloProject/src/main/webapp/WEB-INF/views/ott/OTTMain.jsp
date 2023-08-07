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
	<div class="container">
		<div class="h3 text-solo6 text-center my-3 pt-4">최신 영화</div>
		<div class="swiper-container swiper-main">
			<div class="swiper-wrapper">
				<c:forEach var="item" items="${list}">
					<div class="swiper-slide swiper-slide-main">
						<img style="height: 100%"
							src="https://image.tmdb.org/t/p/original${item.poster_path}"
							alt="" onclick="openInfoModal('${item.id}')" />
					</div>
				</c:forEach>

			</div>
		</div>
	</div>
</section>

<section>
	<div class="container py-5">
		<div class="p-lg-1 ps-lg-4">
			<form action="${path}/ott/OTTSearch" class="search-bar row">
				<div class="col d-flex align-items-center flex-grow-1">
					<input class="form-control border-0 shadow-0" type="text"
						name="searchValue" placeholder="영화 검색해보세요."value="${param.searchValue}" />
				</div>
 <input type="hidden" name="searchType" value="title">
				<div class="col-lg-4 px-0 d-grid flex-grow-0">
					<button class="btn btn-primary rounded-pill h-100" type="submit">
						검색</button>
				</div>
			</form>
		</div>
	</div>
</section>
<section>
	<div class="container">
		<div class="row">
			<div class="col text-solo-6 h3 my-3">인기가 많은 영화</div>
			<div class="col text-end my-3"><a class="nav-link" href="OTTSearch?sort=popularity">더보기</a></div>
		</div>
		<div class="swiper-container swiper-list">
			<div class="swiper-wrapper">
				<c:forEach var="item" items="${list2}">
					<div class="swiper-slide">
						<img style="height: 100%"
							src="https://image.tmdb.org/t/p/original${item.poster_path}"
							alt="" onClick="openInfoModal('${item.id}')" />
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</section>

<section>
	<div class="container">
		<div class="row py-3">
			<div class="col text-solo-6 h3 my-3">평점이 높은 영화</div>
			<div class="col text-end my-3"><a class="nav-link" href="OTTSearch?sort=vote_average">더보기</a></div>
		</div>
		<div class="swiper-container swiper-list">
			<div class="swiper-wrapper">
				<c:forEach var="item" items="${list3}">
					<div class="swiper-slide">
						<img style="height: 100%"
							src="https://image.tmdb.org/t/p/original${item.poster_path }"
							alt="" onClick="openInfoModal('${item.id}')" />
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</section>

<section>
	<div class="container">
		<div class="row py-5">
			<div class="col">
				<div class="h3 text-solo-6 pb-3">핫 클립</div>
				<div>
					<iframe class="rounded-3" width="560" height="315"
						src="https://www.youtube.com/embed/hAO9a1xSo3M"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						allowfullscreen></iframe>
				</div>
			</div>
			<div class="col">
				<div class="h3 text-solo-6 pb-3">영화 뉴스</div>
				<div>
					<a class="text-decoration-none text-dark row my-3" href="https://v.daum.net/v/20230727104130479">
						<div class="col-9">
							<h6 class="mt-2 mb-1">'국민 섭섭남' 강태오, 생애 첫 형사된다(타겟)</h6>
							<p class="text-muted text-sm">뉴스 엔</p>
						</div>
						<div class="col text-end">
							<img class="rounded-3" style="width: 100%"
								src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202307/27/poctan/20230727104130555bfcb.jpg"
								alt="" />
						</div>
					</a>
				</div>
				<div>
					<a class="text-decoration-none text-dark row my-3"
						href="https://v.daum.net/v/20230727122600385">
						<div class="col-9">
							<h6 class="mt-2 mb-1">'더 문' 감독 "VFX 61억 원, 적은 예산으로 극강의 완성도</h6>
							<p class="text-muted text-sm">스타뉴스</p>
						</div>
						<div class="col text-end">
							<img class="rounded-3" style="width: 100%"
								src="https://img1.daumcdn.net/thumb/S384x240/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fnews%2F202307%2F27%2Fstarnews%2F20230727122602680oqnw.jpg"
								alt="" />
						</div>
					</a>
				</div>
				<div>
					<a class="text-decoration-none text-dark row my-3"
						href="https://v.daum.net/v/20230727112515939">
						<div class="col-9">
							<h6 class="mt-2 mb-1">아낌없이 자신을 구겨 넣은 김혜수, 참으로 압권이다('밀수')</h6>
							<p class="text-muted text-sm">엔터미디어</p>
						</div>
						<div class="col text-end">
							<img class="rounded-3" style="width: 100%"
								src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202307/27/entermedia/20230727112519354vxyx.jpg"
								alt="" />
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>
<section>
	<div class="container my-3 pb-5">
		<div class="text-solo-6 h3 my-3">트레일러</div>
		<div class="swiper-container swiper-trailer">
			<div class="swiper-wrapper">
				<c:forEach var="item" items="${list4}">
					<div class="swiper-slide swiper-slide-trailer">
						<img style="width: 100%"
							src="https://img.youtube.com/vi/${item.param}/0.jpg" alt=""
							onclick="openModal('https://www.youtube.com/embed/${item.param}?autoplay=1&mute=0')" />
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</section>
<jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>