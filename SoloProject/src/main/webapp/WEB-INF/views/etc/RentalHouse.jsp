<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>

    <section class="hero-home" style="background-color: #50a78b">
      <div class="container py-3 py-md-3 text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-4">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">공공 임대 주택</h1>
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
                    검색 </button>
                </div>
              </form>
            </div>
          </div>
          <div class="col text-center">
            <img
              class="figure position-relative"
              src="${path}/resources/img/kbs/petwalk_image.png"
              style="width: 30rem; left: 6.25rem"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row mt-5">
          <div class="col-sm-3">
            <div class="px-3 py-3 border border-1 rounded-3">
              <form class="border-1 rounded-3" action="">
                <label class="form-label">서비스</label>
                <ul class="list-unstyled mb-0">
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="sports"
                        id="soccer"
                      />
                      <label class="form-check-label" for="soccer">
                         서비스
                      </label>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="sports"
                        id="pingPong"
                      />
                      <label class="form-check-label" for="pingPong">
                        뭐가 좋을까?                      </label>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="sports"
                        id="footVolleyball"
                      />
                      <label class="form-check-label" for="footVolleyball">
                        이거는</label>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="sports"
                        id="tennis"
                      />
                      <label class="form-check-label" for="tennis">
                        고민을
                      </label>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="sports"
                        id="baseball"
                      />
                      <label class="form-check-label" for="baseball">
                        해봐야                      </label>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="sports"
                        id="badminton"
                      />
                      <label class="form-check-label" for="badminton">
                        할 것                     </label>
                    </div>
                  </li>
                </ul>
                <label class="form-label">서비스</label>
                <ul class="list-unstyled mb-0">
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="price"
                        id="notfree"
                      />
                      <label class="form-check-label" for="notfree">
                        같아요
                      </label>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="price"
                        id="free"
                      />
                      <label class="form-check-label" for="free">요금</label>
                    </div>
                  </li>
                </ul>
              </form>
            </div>
          </div>
          <div class="col">
            <div class="container">
              <div class="btn-group">
                <button
                  type="button"
                  class="btn btn-light dropdown-toggle border border-1 rounded-pill"
                  data-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  유료
                </button>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <a class="dropdown-item" href="#">Something else here</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">Separated link</a>
                </div>
              </div>
              <div class="btn-group">
                <button
                  type="button"
                  class="btn btn-light dropdown-toggle border border-1 rounded-pill"
                  data-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                   무료 
                </button>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <a class="dropdown-item" href="#">Something else here</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">Separated link</a>
                </div>
              </div>
            </div>

            <div>
              <a
                class="text-decoration-none text-dark"
                href="https://www.myhome.go.kr/hws/portal/sch/selectRsdtRcritNtcDetailView.do?pblancId=13681"
              >
                <h6 class="mt-2 mb-1">
                  2023년도 동해시 기존주택 등 매입임대주택 예비입주자 모집공고
                </h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  LH 콜센터 : 1600-1004 (평일 : 09:00 ~ 18:00)
                </p>
                <p class="text-muted text-sm">지역: 강원특별자치도</p>
              </a>
            </div>
             <div>
              <a
                class="text-decoration-none text-dark"
                href="https://www.myhome.go.kr/hws/portal/sch/selectRsdtRcritNtcDetailView.do?pblancId=13681"
              >
                <h6 class="mt-2 mb-1">
                  2023년도 동해시 기존주택 등 매입임대주택 예비입주자 모집공고
                </h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  LH 콜센터 : 1600-1004 (평일 : 09:00 ~ 18:00)
                </p>
                <p class="text-muted text-sm">지역: 강원특별자치도</p>
              </a>
            </div>
             <div>
              <a
                class="text-decoration-none text-dark"
                href="https://www.myhome.go.kr/hws/portal/sch/selectRsdtRcritNtcDetailView.do?pblancId=13681"
              >
                <h6 class="mt-2 mb-1">
                  2023년도 동해시 기존주택 등 매입임대주택 예비입주자 모집공고
                </h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  LH 콜센터 : 1600-1004 (평일 : 09:00 ~ 18:00)
                </p>
                <p class="text-muted text-sm">지역: 강원특별자치도</p>
              </a>
            </div>
             <div>
              <a
                class="text-decoration-none text-dark"
                href="https://www.myhome.go.kr/hws/portal/sch/selectRsdtRcritNtcDetailView.do?pblancId=13681"
              >
                <h6 class="mt-2 mb-1">
                  2023년도 동해시 기존주택 등 매입임대주택 예비입주자 모집공고
                </h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  LH 콜센터 : 1600-1004 (평일 : 09:00 ~ 18:00)
                </p>
                <p class="text-muted text-sm">지역: 강원특별자치도</p>
              </a>
            </div>
             <div>
              <a
                class="text-decoration-none text-dark"
                href="https://www.myhome.go.kr/hws/portal/sch/selectRsdtRcritNtcDetailView.do?pblancId=13681"
              >
                <h6 class="mt-2 mb-1">
                  2023년도 동해시 기존주택 등 매입임대주택 예비입주자 모집공고
                </h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  LH 콜센터 : 1600-1004 (평일 : 09:00 ~ 18:00)
                </p>
                <p class="text-muted text-sm">지역: 강원특별자치도</p>
              </a>
            </div>
             <div>
              <a
                class="text-decoration-none text-dark"
                href="https://www.myhome.go.kr/hws/portal/sch/selectRsdtRcritNtcDetailView.do?pblancId=13681"
              >
                <h6 class="mt-2 mb-1">
                  2023년도 동해시 기존주택 등 매입임대주택 예비입주자 모집공고
                </h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  LH 콜센터 : 1600-1004 (평일 : 09:00 ~ 18:00)
                </p>
                <p class="text-muted text-sm">지역: 강원특별자치도</p>
              </a>
            </div>
          </div>
        </div>
      </div>

      <!-- page button-->
      <nav aria-label="Page navigation example ">
        <ul
          class="pagination pagination-template d-flex justify-content-center my-5"
        >
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

<jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>