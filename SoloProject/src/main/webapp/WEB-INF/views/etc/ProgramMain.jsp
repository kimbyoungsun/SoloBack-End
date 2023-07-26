<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>

    <section class="hero-home" style="background-color: #50a78b">
      <div class="container py-md-2 text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-7 pt-5">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">1인 가구 프로그램</h1>
            </div>
          </div>
          <div class="col text-center">
            <img
              class="figure"
              src="${path}/resources/img/kbs/basketball_court-pana.png"
              style="width: 30rem; left: 100px"
              alt=""
            />
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
                src="https://1in.seoul.go.kr/contents/commoneditor/20210813131227db9f32ea-cebf-463f-a49e-21690b81b8e4.jpg
                "
                alt=""
                style="height: 100%"
              />
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://1in.seoul.go.kr/contents/commoneditor/202202251049007d91b0a6-01c7-4fac-8228-6ed7e1715bd3.jpg
                "
                alt=""
                style="height: 100%"
              />
            </div>
          </div>
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://1in.seoul.go.kr/contents/commoneditor/202110211118062cd13f0f-fd25-4fb6-b418-4b3adecd0b6c.jpg
                "
                alt=""
                style="height: 100%"
              />
            </div>
          </div>
        </div>
        <div class="row my-3">
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100">
              <img
                src="https://1in.seoul.go.kr/contents/commoneditor/202110211118062cd13f0f-fd25-4fb6-b418-4b3adecd0b6c.jpg"
                alt=""
                style="height: 100%"
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