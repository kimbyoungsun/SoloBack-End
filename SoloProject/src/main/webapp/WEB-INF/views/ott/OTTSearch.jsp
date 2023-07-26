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
    <section
      class="hero-home"
      style="
        background-image: url('https://image.tmdb.org/t/p/original/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg');
        background-size: cover;
      "
    >
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
              <form action="#" class="search-bar row">
                <div class="col d-flex align-items-center flex-grow-1">
                  <input
                    class="form-control border-0 shadow-0"
                    type="text"
                    name="search"
                    placeholder="키워드를 입력해 보세요."
                  />
                </div>

                <div class="col-lg-3 px-0 d-grid flex-grow-0">
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
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row text-center h3 text-solo-6 my-3">
          <div class="col-5" onclick=""></div>
          <div class="col-5" onclick=""></div>
          <div class="col-1 text-end">
            <div class="dropdown">
              <a
                class="btn btn-primary dropdown-toggle"
                id="homeDropdownMenuLink"
                href="index.html"
                data-bs-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                조회수
              </a>

              <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
                <a class="dropdown-item" href="index.html">Action</a>
                <a class="dropdown-item" href="index.html">Another action</a>
                <a class="dropdown-item" href="index.html"
                  >Something else here</a
                >
              </div>
            </div>
          </div>
          <div class="col-1 text-end">
            <div class="dropdown">
              <a
                class="btn btn-primary dropdown-toggle"
                id="homeDropdownMenuLink"
                href="index.html"
                data-bs-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                영화
              </a>

              <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
                <a class="dropdown-item" href="index.html">Action</a>
                <a class="dropdown-item" href="index.html">Another action</a>
                <a class="dropdown-item" href="index.html"
                  >Something else here</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row my-3">
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://image.tmdb.org/t/p/original/b7epV2cQZVIR4u5VZraDwD0AgiE.jpg"
                alt=""
                style="height: 100%"
                onclick="openInfoModal('26dQpNBPC1U')"
              />
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://image.tmdb.org/t/p/original/wXNihLltMCGR7XepN39syIlCt5X.jpg"
                alt=""
                onclick="openInfoModal('26dQpNBPC1U')"
              />
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://image.tmdb.org/t/p/original/fBNl8kpFMz5ugi3RGYfenKctzjq.jpg"
                alt=""
                onclick="openInfoModal('26dQpNBPC1U')"
              />
            </div>
          </div>
        </div>
        <div class="row my-3">
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://image.tmdb.org/t/p/original/muD7qu9UagO08dZBout1YXwdE6a.jpg"
                alt=""
                onclick="openInfoModal('26dQpNBPC1U')"
              />
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://image.tmdb.org/t/p/original/2BwerQH4tZvHU6zUlC77aDw7pLt.jpg"
                alt=""
                onclick="openInfoModal('26dQpNBPC1U')"
              />
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://image.tmdb.org/t/p/original/q2P63PsXosAg1s58Kkn5desmSyA.jpg"
                alt=""
                onclick="openInfoModal('26dQpNBPC1U')"
              />
            </div>
          </div>
        </div>
        <div class="row my-3">
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://image.tmdb.org/t/p/original/cOkDlqNaJYa8zp4eAwcnCY7l1LR.jpg"
                alt=""
                onclick="openInfoModal('26dQpNBPC1U')"
              />
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://image.tmdb.org/t/p/original/8qOTi8VXvnuLH0jijMBCyygtV9d.jpg"
                alt=""
                onclick="openInfoModal('26dQpNBPC1U')"
              />
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://image.tmdb.org/t/p/original/uCAaaAQEDrTllYR4dtsEsfQa8We.jpg"
                alt=""
                onclick="openInfoModal('26dQpNBPC1U')"
              />
            </div>
          </div>
        </div>
      </div>
      <div class="py-3">
        <nav aria-label="Page navigation example ">
          <ul
            class="pagination pagination-template d-flex justify-content-center"
          >
            <li class="page-item">
              <a class="page-link" href="#">
                <i class="fa fa-angle-left"></i
              ></a>
            </li>
            <li class="page-item active">
              <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
              <a class="page-link" href="#">
                <i class="fa fa-angle-right"></i
              ></a>
            </li>
          </ul>
        </nav>
      </div>
    </section>

    <jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>