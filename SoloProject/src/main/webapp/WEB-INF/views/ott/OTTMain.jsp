<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>
 <section>
      <!-- Modal -->
      <div
        id="modal"
        class="modal fade"
        tabindex="-1"
        role="dialog"
        aria-hidden="true"
      >
        <div id="modal-dialog" class="modal-dialog modal-xl" role="document">
          <div class="modal-content">
            <div class="modal-body">
              <iframe
                id="iframe"
                src=""
                frameborder="3"
                width="100%"
                height="700px"
              ></iframe>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <!-- ModalInfo -->
      <div
        class="modal fade"
        id="modalInfo"
        tabindex="-1"
        role="dialog"
        aria-labelledby="exampleModalLongTitle"
        aria-hidden="true"
      >
        <div class="modal-dialog modal-xl" role="document">
          <div class="modal-content">
            <div
              class="modal-header rounded-3"
              style="height: 600px; background: black"
            >
              <img
                class="bg-image opacity-4"
                src="https://image.tmdb.org/t/p/original/27u4kBGGOQLqizEudJAOWMkvhip.jpg"
                alt=""
              />

              <div class="row opacity-100 z-index-50">
                <div class="col-8">
                  <span
                    class="position-relative text-black rounded-3 h4"
                    style="top: 40%; left: 5%; background-color: gainsboro"
                  >
                    7.3
                  </span>
                  <div
                    class="position-relative display-2 text-light"
                    style="top: 40%"
                  >
                    Fast X
                  </div>
                  <div class="position-relative text-light" style="top: 40%">
                    돔과 그의 패밀리 앞에 나타난 운명의 적 단테. 과거의 그림자는
                    돔의 모든 것을 파괴하기 위해 달려온다. 단테에 의해 산산히
                    흩어진 패밀리들은 모두 목숨을 걸고 맞서야 하는 함정에 빠지고
                    마는데...
                  </div>
                </div>
                <div class="col">
                  <img
                    class=""
                    src="https://image.tmdb.org/t/p/original/wXNihLltMCGR7XepN39syIlCt5X.jpg"
                    alt=""
                    style="width: 100%"
                  />
                </div>
              </div>
            </div>
          </div>
          <div class="modal-content">
            <div class="modal-body text-center">
              <iframe
                id="iframe1"
                class="rounded-3"
                width="100%"
                height="600"
                src=""
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                allowfullscreen
              ></iframe>
              <iframe
                id="iframe2"
                class="rounded-3"
                width="100%"
                height="600"
                src=""
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                allowfullscreen
              ></iframe>
              <iframe
                id="iframe3"
                class="rounded-3"
                width="100%"
                height="600"
                src=""
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                allowfullscreen
              ></iframe>

              <div class="h3 text-solo-6 mx-4 pt-3">출연진들</div>
              <div class="row text-center mb-3">
                <div class="col">
                  <img
                    class="rounded-3"
                    src="https://image.tmdb.org/t/p/original/nZdVry7lnUkE24PnXakok9okvL4.jpg"
                    alt=""
                    width="70%"
                  />
                </div>
                <div class="col">
                  <img
                    class="rounded-3"
                    src="https://image.tmdb.org/t/p/original/76sSLbMKLH80jlmMeqsHIIvlQgG.jpg"
                    alt=""
                    width="70%"
                  />
                </div>
                <div class="col">
                  <img
                    class="rounded-3"
                    src="https://image.tmdb.org/t/p/original/1K315wBQBvDBuZMlzoozuGsqFXZ.jpg"
                    alt=""
                    width="70%"
                  />
                </div>
                <div class="col">
                  <img
                    class="rounded-3"
                    src="https://image.tmdb.org/t/p/original/erkJijujhe48vhJ8iCEtVpNEeVn.jpg"
                    alt=""
                    width="70%"
                  />
                </div>
                <div class="col">
                  <img
                    class="rounded-3"
                    src="https://image.tmdb.org/t/p/original/koSwmmonFJiZDfwmZgdVA7I1aR.jpg"
                    alt=""
                    width="70%"
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <section>
      <div class="container">
        <div class="row text-center h3 text-solo-6 my-3">
          <div class="col border border-2" onclick="">영화</div>
          <div class="col border border-2" onclick="">드라마</div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="h3 text-solo6 text-center my-3">최신 영화</div>
        <div class="swiper-container swiper-main">
          <div class="swiper-wrapper">
            <div class="swiper-slide swiper-slide-main">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/wXNihLltMCGR7XepN39syIlCt5X.jpg"
                alt=""
                onclick="openInfoModal('26dQpNBPC1U')"
              />
            </div>
            <div class="swiper-slide swiper-slide-main">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/1YYL1OcgjPLjAGi6n0iZe1gdl9i.jpg"
                alt=""
              />
            </div>
            <div class="swiper-slide swiper-slide-main">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/uJGYC2l97RWz8zJ9WFjLiUOqUva.jpg"
                alt=""
              />
            </div>
            <div class="swiper-slide swiper-slide-main">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/9WF6TxCYwdiZw51NM92ConaQz1w.jpg"
                alt=""
              />
            </div>

            <div class="swiper-slide swiper-slide-main">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/zG9TYiHt0fdaJiWuNEhFrfKzwoi.jpg"
                alt=""
              />
            </div>

            <div class="swiper-slide swiper-slide-main">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/fBNl8kpFMz5ugi3RGYfenKctzjq.jpg"
                alt=""
              />
            </div>

            <div class="swiper-slide swiper-slide-main">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/2ApoIxn6Bmtcj7BSXd8Cuyvd1QY.jpg"
                alt=""
              />
            </div>

            <div class="swiper-slide swiper-slide-main">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/chUZNPNd7EiETSB4xBGykXhuXRr.jpg"
                alt=""
              />
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container py-5">
        <div class="p-lg-1 ps-lg-4">
          <form action="#" class="search-bar row">
            <div class="col d-flex align-items-center flex-grow-1">
              <input
                class="form-control border-0 shadow-0"
                type="text"
                name="search"
                placeholder="영화 검색해보세요."
              />
            </div>

            <div class="col-lg-4 px-0 d-grid flex-grow-0">
              <button class="btn btn-primary rounded-pill h-100" type="submit">
                검색
              </button>
            </div>
          </form>
        </div>
      </div>
    </section>
    <section>
      <div class="container">
        <div class="row">
          <div class="col text-solo-6 h3 my-3">인기가 많은 영화</div>
          <div class="col text-end my-3">더보기</div>
        </div>
        <div class="swiper-container swiper-list">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/wXNihLltMCGR7XepN39syIlCt5X.jpg"
                alt=""
              />
            </div>
            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/1YYL1OcgjPLjAGi6n0iZe1gdl9i.jpg"
                alt=""
              />
            </div>
            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/uJGYC2l97RWz8zJ9WFjLiUOqUva.jpg"
                alt=""
              />
            </div>
            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/9WF6TxCYwdiZw51NM92ConaQz1w.jpg"
                alt=""
              />
            </div>

            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/zG9TYiHt0fdaJiWuNEhFrfKzwoi.jpg"
                alt=""
              />
            </div>

            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/fBNl8kpFMz5ugi3RGYfenKctzjq.jpg"
                alt=""
              />
            </div>

            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/2ApoIxn6Bmtcj7BSXd8Cuyvd1QY.jpg"
                alt=""
              />
            </div>

            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/chUZNPNd7EiETSB4xBGykXhuXRr.jpg"
                alt=""
              />
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row py-3">
          <div class="col text-solo-6 h3 my-3">평점이 높은 영화</div>
          <div class="col text-end my-3">더보기</div>
        </div>
        <div class="swiper-container swiper-list">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/wXNihLltMCGR7XepN39syIlCt5X.jpg"
                alt=""
              />
            </div>
            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/1YYL1OcgjPLjAGi6n0iZe1gdl9i.jpg"
                alt=""
              />
            </div>
            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/uJGYC2l97RWz8zJ9WFjLiUOqUva.jpg"
                alt=""
              />
            </div>
            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/9WF6TxCYwdiZw51NM92ConaQz1w.jpg"
                alt=""
              />
            </div>

            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/zG9TYiHt0fdaJiWuNEhFrfKzwoi.jpg"
                alt=""
              />
            </div>

            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/fBNl8kpFMz5ugi3RGYfenKctzjq.jpg"
                alt=""
              />
            </div>

            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/2ApoIxn6Bmtcj7BSXd8Cuyvd1QY.jpg"
                alt=""
              />
            </div>

            <div class="swiper-slide">
              <img
                style="height: 100%"
                src="https://image.tmdb.org/t/p/original/chUZNPNd7EiETSB4xBGykXhuXRr.jpg"
                alt=""
              />
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row py-3">
          <div class="col">
            <div class="h3 text-solo-6 pb-3">핫 클립</div>
            <div>
              <iframe
                class="rounded-3"
                width="560"
                height="315"
                src="https://www.youtube.com/embed/hAO9a1xSo3M"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                allowfullscreen
              ></iframe>
            </div>
          </div>
          <div class="col">
            <div class="h3 text-solo-6 pb-3">영화 뉴스</div>
            <div>
              <a class="text-decoration-none text-dark row my-3" href="#">
                <div class="col-9">
                  <h6 class="mt-2 mb-1">
                    콘크리트 유토피아 보조 출연자 까지 150명 재난 분...
                  </h6>
                  <p class="text-muted text-sm">뉴스 엔</p>
                </div>
                <div class="col text-end">
                  <img
                    class="rounded-3"
                    style="width: 100%"
                    src="https://img1.daumcdn.net/thumb/S384x240/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fnews%2F202307%2F19%2Fnewsen%2F20230719160823164yiyn.jpg"
                    alt=""
                  />
                </div>
              </a>
            </div>
            <div>
              <a class="text-decoration-none text-dark row my-3" href="#">
                <div class="col-9">
                  <h6 class="mt-2 mb-1">
                    콘크리트 유토피아 보조 출연자 까지 150명 재난 분...
                  </h6>
                  <p class="text-muted text-sm">뉴스 엔</p>
                </div>
                <div class="col text-end">
                  <img
                    class="rounded-3"
                    style="width: 100%"
                    src="https://img1.daumcdn.net/thumb/S384x240/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fnews%2F202307%2F19%2Fnewsen%2F20230719160823164yiyn.jpg"
                    alt=""
                  />
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
            <div class="swiper-slide swiper-slide-trailer">
              <img
                style="width: 100%"
                src="https://img.youtube.com/vi/26dQpNBPC1U/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/sVcBSEZHdr8?autoplay=1&mute=0')"
              />
            </div>
            <div class="swiper-slide swiper-slide-trailer">
              <img
                style="width: 100%"
                src="https://img.youtube.com/vi/sVcBSEZHdr8/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/sVcBSEZHdr8?autoplay=1&mute=0')"
              />
            </div>
            <div class="swiper-slide swiper-slide-trailer">
              <img
                style="width: 100%"
                src="https://img.youtube.com/vi/bkK6bA1wnQ0/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/bkK6bA1wnQ0?autoplay=1&mute=0')"
              />
            </div>
            <div class="swiper-slide swiper-slide-trailer">
              <img
                style="width: 100%"
                src="https://img.youtube.com/vi/AKzXf4RaSe4/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/AKzXf4RaSe4?autoplay=1&mute=0')"
              />
            </div>
            <div class="swiper-slide swiper-slide-trailer">
              <img
                style="width: 100%"
                src="https://img.youtube.com/vi/Pr420YaEOVA/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/Pr420YaEOVA?autoplay=1&mute=1')"
              />
            </div>
            <div class="swiper-slide swiper-slide-trailer">
              <img
                style="width: 100%"
                src="https://img.youtube.com/vi/VrayLI3kJNQ/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/VrayLI3kJNQ?autoplay=1&mute=1')"
              />
            </div>
            <div class="swiper-slide swiper-slide-trailer">
              <img
                style="width: 100%"
                src="https://img.youtube.com/vi/bE2bzNMJ1zI/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/bE2bzNMJ1zI?autoplay=1&mute=1')"
              />
            </div>
            <div class="swiper-slide swiper-slide-trailer">
              <img
                style="width: 100%"
                src="https://img.youtube.com/vi/zmNRHgRG3lo/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/zmNRHgRG3lo?autoplay=1&mute=1')"
              />
            </div>
            <div class="swiper-slide swiper-slide-trailer">
              <img
                style="width: 100%"
                src="https://img.youtube.com/vi/ilcym5yPUjI/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/ilcym5yPUjI?autoplay=1&mute=1')"
              />
            </div>
            <div class="swiper-slide swiper-slide-trailer">
              <img
                style="width: 100%"
                src="https://img.youtube.com/vi/cYlVa0jSXQo/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/cYlVa0jSXQo?autoplay=1&mute=1')"
              />
            </div>
            <div class="swiper-slide swiper-slide-trailer">
              <img
                style="width: 100%"
                src="https://img.youtube.com/vi/2x0rbY1_XkY/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/2x0rbY1_XkY?autoplay=1&mute=1')"
              />
            </div>
            <div class="swiper-slide swiper-slide-trailer">
              <img
                style="width: 100%"
                src="https://img.youtube.com/vi/UXLRcFOWvqA/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/UXLRcFOWvqA?autoplay=1&mute=1')"
              />
            </div>
          </div>
        </div>
      </div>
    </section>
<jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>