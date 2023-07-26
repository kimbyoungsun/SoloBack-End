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
    <section class="hero-home" style="background-color: #50a78b">
      <div class="container  py-md-3 text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-7">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">홈 트레이닝</h1>
            </div>
            <div class="p-lg-1 ps-lg-4">
              <form action="#" class="search-bar row">
                <div class="col d-flex align-items-center flex-grow-1">
                  <input
                    class="form-control border-0 shadow-0"
                    type="text"
                    name="search"
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
              src="${path}/resources/img/kbs/Online_Personal_Trainer-amico.png"
              style="width: 30rem; left: 100px"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container pt-3">
        <div class="row my-3">
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://img.youtube.com/vi/2gHcoelhHw0/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/2gHcoelhHw0?autoplay=1&mute=1')"
              />

              <div class="card-body">
                <h5 class="my-2">
                  <a
                    class="text-dark"
                    href="https://www.youtube.com/watch?v=2gHcoelhHw0"
                  >
                    !!!!집중력 버프가 필요할 때? (ep1. 뇌를 자극시키는 집중력
                    향상 운동) 집콕운동</a
                  >
                </h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://img.youtube.com/vi/2gHcoelhHw0/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/2gHcoelhHw0?autoplay=1&mute=1')"
              />

              <div class="card-body">
                <h5 class="my-2">
                  <a
                    class="text-dark"
                    href="https://www.youtube.com/watch?v=2gHcoelhHw0"
                  >
                    !!!!집중력 버프가 필요할 때? (ep1. 뇌를 자극시키는 집중력
                    향상 운동) 집콕운동</a
                  >
                </h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://img.youtube.com/vi/2gHcoelhHw0/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/2gHcoelhHw0?autoplay=1&mute=1')"
              />

              <div class="card-body">
                <h5 class="my-2">
                  <a
                    class="text-dark"
                    href="https://www.youtube.com/watch?v=2gHcoelhHw0"
                  >
                    !!!!집중력 버프가 필요할 때? (ep1. 뇌를 자극시키는 집중력
                    향상 운동) 집콕운동</a
                  >
                </h5>
              </div>
            </div>
          </div>
        </div>
        <div class="row my-3">
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://img.youtube.com/vi/2gHcoelhHw0/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/2gHcoelhHw0?autoplay=1&mute=1')"
              />

              <div class="card-body">
                <h5 class="my-2">
                  <a
                    class="text-dark"
                    href="https://www.youtube.com/watch?v=2gHcoelhHw0"
                  >
                    !!!!집중력 버프가 필요할 때? (ep1. 뇌를 자극시키는 집중력
                    향상 운동) 집콕운동</a
                  >
                </h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://img.youtube.com/vi/2gHcoelhHw0/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/2gHcoelhHw0?autoplay=1&mute=1')"
              />

              <div class="card-body">
                <h5 class="my-2">
                  <a
                    class="text-dark"
                    href="https://www.youtube.com/watch?v=2gHcoelhHw0"
                  >
                    !!!!집중력 버프가 필요할 때? (ep1. 뇌를 자극시키는 집중력
                    향상 운동) 집콕운동</a
                  >
                </h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://img.youtube.com/vi/2gHcoelhHw0/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/2gHcoelhHw0?autoplay=1&mute=1')"
              />

              <div class="card-body">
                <h5 class="my-2">
                  <a
                    class="text-dark"
                    href="https://www.youtube.com/watch?v=2gHcoelhHw0"
                  >
                    !!!!집중력 버프가 필요할 때? (ep1. 뇌를 자극시키는 집중력
                    향상 운동) 집콕운동</a
                  >
                </h5>
              </div>
            </div>
          </div>
        </div>
        <div class="row my-3">
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://img.youtube.com/vi/2gHcoelhHw0/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/2gHcoelhHw0?autoplay=1&mute=1')"
              />

              <div class="card-body">
                <h5 class="my-2">
                  <a
                    class="text-dark"
                    href="https://www.youtube.com/watch?v=2gHcoelhHw0"
                  >
                    !!!!집중력 버프가 필요할 때? (ep1. 뇌를 자극시키는 집중력
                    향상 운동) 집콕운동</a
                  >
                </h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://img.youtube.com/vi/2gHcoelhHw0/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/2gHcoelhHw0?autoplay=1&mute=1')"
              />

              <div class="card-body">
                <h5 class="my-2">
                  <a
                    class="text-dark"
                    href="https://www.youtube.com/watch?v=2gHcoelhHw0"
                  >
                    !!!!집중력 버프가 필요할 때? (ep1. 뇌를 자극시키는 집중력
                    향상 운동) 집콕운동</a
                  >
                </h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://img.youtube.com/vi/2gHcoelhHw0/0.jpg"
                alt=""
                onclick="openModal('https://www.youtube.com/embed/2gHcoelhHw0?autoplay=1&mute=1')"
              />

              <div class="card-body">
                <h5 class="my-2">
                  <a
                    class="text-dark"
                    href="https://www.youtube.com/watch?v=2gHcoelhHw0"
                  >
                    !!!!집중력 버프가 필요할 때? (ep1. 뇌를 자극시키는 집중력
                    향상 운동) 집콕운동</a
                  >
                </h5>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="pt-5">
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
      <div class="text-center">
        <img
          src="${path}/resources/img/kbs/Online_Personal_Trainer-pana.png"
          style="height: 25rem"
          alt=""
        />
      </div>
    </section>

<jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>