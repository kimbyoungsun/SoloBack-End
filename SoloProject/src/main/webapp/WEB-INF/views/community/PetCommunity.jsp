<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>

    <section class="hero-home" style="background-color: #50a78b">
      <div class="container py-6 py-md-7 text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-3">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">도와줘요!</h1>
              <h1 class="display-3 fw-bold text-shadow">반려동물 임보 위탁</h1>
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
                <label class="form-label">뭐가 좋을까?</label>
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
                        이거는
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
                        id="footVolleyball"
                      />
                      <label class="form-check-label" for="footVolleyball">
                        해봐야
                      </label>
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
                        할 것
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
                        같아요
                      </label>
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
                        그죠?
                      </label>
                    </div>
                  </li>
                </ul>
                <label class="form-label">요금</label>
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
                        유료
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
                      <label class="form-check-label" for="free"> 무료 </label>
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
                  서비스
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
                  지역
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
              <a class="text-decoration-none text-dark" href="#">
                <h6 class="mt-2 mb-1">[공지사항] 커뮤니티 제목입니다.</h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  내용은 다음과 같습니다. 어쩌구 저쩌구 내용을 채우기 위해
                  열심히 쓰는중입니다. 다들 화이팅!
                </p>
                <p class="text-muted text-sm">지역: 서울/마포구</p>
              </a>
              <div class="row">
                <a class="col" href="thumbsUpCount++">
                  <i class="fa fa-thumbs-up text-muted">
                    좋아요 thumbsUpCount</i
                  >
                </a>
                <a class="col" href="replyCount++">
                  <i class="fa fa-comment-dots text-muted"> 댓글 replyCount</i>
                </a>
                <div class="text-muted text-sm text-end col">
                  currentTime - createTime
                </div>
              </div>
            </div>
            <div>
              <a class="text-decoration-none text-dark" href="#">
                <h6 class="mt-2 mb-1">[공지사항] 커뮤니티 제목입니다.</h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  내용은 다음과 같습니다. 어쩌구 저쩌구 내용을 채우기 위해
                  열심히 쓰는중입니다. 다들 화이팅!
                </p>
                <p class="text-muted text-sm">지역: 서울/마포구</p>
              </a>
              <div class="row">
                <a class="col" href="thumbsUpCount++">
                  <i class="fa fa-thumbs-up text-muted">
                    좋아요 thumbsUpCount</i
                  >
                </a>
                <a class="col" href="replyCount++">
                  <i class="fa fa-comment-dots text-muted"> 댓글 replyCount</i>
                </a>
                <div class="text-muted text-sm text-end col">
                  currentTime - createTime
                </div>
              </div>
            </div>
            <div>
              <a class="text-decoration-none text-dark" href="#">
                <h6 class="mt-2 mb-1">[공지사항] 커뮤니티 제목입니다.</h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  내용은 다음과 같습니다. 어쩌구 저쩌구 내용을 채우기 위해
                  열심히 쓰는중입니다. 다들 화이팅!
                </p>
                <p class="text-muted text-sm">지역: 서울/마포구</p>
              </a>
              <div class="row">
                <a class="col" href="thumbsUpCount++">
                  <i class="fa fa-thumbs-up text-muted">
                    좋아요 thumbsUpCount</i
                  >
                </a>
                <a class="col" href="replyCount++">
                  <i class="fa fa-comment-dots text-muted"> 댓글 replyCount</i>
                </a>
                <div class="text-muted text-sm text-end col">
                  currentTime - createTime
                </div>
              </div>
            </div>
            <div>
              <a class="text-decoration-none text-dark" href="#">
                <h6 class="mt-2 mb-1">[공지사항] 커뮤니티 제목입니다.</h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  내용은 다음과 같습니다. 어쩌구 저쩌구 내용을 채우기 위해
                  열심히 쓰는중입니다. 다들 화이팅!
                </p>
                <p class="text-muted text-sm">지역: 서울/마포구</p>
              </a>
              <div class="row">
                <a class="col" href="thumbsUpCount++">
                  <i class="fa fa-thumbs-up text-muted">
                    좋아요 thumbsUpCount</i
                  >
                </a>
                <a class="col" href="replyCount++">
                  <i class="fa fa-comment-dots text-muted"> 댓글 replyCount</i>
                </a>
                <div class="text-muted text-sm text-end col">
                  currentTime - createTime
                </div>
              </div>
            </div>
            <div>
              <a class="text-decoration-none text-dark" href="#">
                <h6 class="mt-2 mb-1">[공지사항] 커뮤니티 제목입니다.</h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  내용은 다음과 같습니다. 어쩌구 저쩌구 내용을 채우기 위해
                  열심히 쓰는중입니다. 다들 화이팅!
                </p>
                <p class="text-muted text-sm">지역: 서울/마포구</p>
              </a>
              <div class="row">
                <a class="col" href="thumbsUpCount++">
                  <i class="fa fa-thumbs-up text-muted">
                    좋아요 thumbsUpCount</i
                  >
                </a>
                <a class="col" href="replyCount++">
                  <i class="fa fa-comment-dots text-muted"> 댓글 replyCount</i>
                </a>
                <div class="text-muted text-sm text-end col">
                  currentTime - createTime
                </div>
              </div>
            </div>
            <div>
              <a class="text-decoration-none text-dark" href="#">
                <h6 class="mt-2 mb-1">[공지사항] 커뮤니티 제목입니다.</h6>
                <div class="mb-2"></div>
                <p class="text-muted text-sm">
                  내용은 다음과 같습니다. 어쩌구 저쩌구 내용을 채우기 위해
                  열심히 쓰는중입니다. 다들 화이팅!
                </p>
                <p class="text-muted text-sm">지역: 서울/마포구</p>
              </a>
              <div class="row">
                <a class="col" href="thumbsUpCount++">
                  <i class="fa fa-thumbs-up text-muted">
                    좋아요 thumbsUpCount</i
                  >
                </a>
                <a class="col" href="replyCount++">
                  <i class="fa fa-comment-dots text-muted"> 댓글 replyCount</i>
                </a>
                <div class="text-muted text-sm text-end col">
                  currentTime - createTime
                </div>
              </div>
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