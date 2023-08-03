<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <title>Directory Theme by Bootstrapious</title>
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="robots" content="all,follow" />
  <!-- Price Slider Stylesheets -->
  <link rel="stylesheet" href="${path}/resources/vendor/nouislider/nouislider.css" />
        
  <!-- 노토 산스-->
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
      rel="stylesheet"
    />
    <!-- 나눔스퀘어 -->
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@2.0/nanumsquare.css"
    />

  <!-- swiper-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css" />
  <!-- Magnigic Popup-->
  <link rel="stylesheet" href="${path}/resources/vendor/magnific-popup/magnific-popup.css" />
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet" />
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="${path}/resources/css/ksk.css" />
  <!-- Favicon-->
  <link rel="shortcut icon" href="${path}/resources/img/favicon.png" />
  <!-- BootStrap Icons -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

  <!-- Flatpickr -->
  <link rel="stylesheet" type="text/css" href="${path}/resources/vendor/flatpickr/css/flatpickr.min.css"/>

  <!-- Tweaks for older IEs-->
  <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script
        ><![endif]-->
  <!-- Font Awesome CSS-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous" />
</head>

<body style="padding-top: 72px">
  <header class="header">
    <!-- Navbar-->
    <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
      <div class="container">
        <div class="d-flex align-items-center">
          <a class="navbar-brand py-1" href="/"><img src="${path}/resources/img/logo.svg" alt="Directory logo" /></a>
        </div>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
          data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
          aria-label="Toggle navigation">
          <i class="fa fa-bars"></i>
        </button>
        <!-- Navbar Collapse -->
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle active" id="homeDropdownMenuLink" href="index.html"
                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">정보</a>
              <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
                <a class="dropdown-item" href="index.html">공공임대주택</a>
                <a class="dropdown-item" href="index-2.html">정부지원사업</a>
                <a class="dropdown-item" href="index-3.html">1인가구뉴스</a>
              </div>
            </li>

            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle active" id="homeDropdownMenuLink" href="index.html"
                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                라이프</a>
              <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
                <a class="dropdown-item" href="index.html">공연</a>
                <a class="dropdown-item" href="index-2.html">OTT</a>
                <a class="dropdown-item" href="index-3.html">식당</a>
                <a class="dropdown-item" href="index-4.html">체육</a>
                <a class="dropdown-item" href="index-4.html">도서</a>
              </div>
            </li>
            <!-- Megamenu-->
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle active" id="homeDropdownMenuLink" href="index.html"
                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">동네거래</a>
              <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
                <a class="dropdown-item" href="${path}/community/product">중고거래</a>
                <a class="dropdown-item" href="${path}/community/talent">재능거래</a>
                <a class="dropdown-item" href="${path}/community/pet">반려동물 임보·위탁</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle active" id="homeDropdownMenuLink" href="index.html"
                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">커뮤니티</a>
              <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
                <a class="dropdown-item" href="index.html">공지사항</a>
                <a class="dropdown-item" href="index-2.html">자유게시판</a>
                <a class="dropdown-item" href="index-3.html">건의게시판</a>
              </div>
            </li>
          </ul>
          <div class="ms-auto">
            <li class="nav-item mt-3 mt-lg-0 ms-lg-3 d-lg-none d-xl-inline-block">
            <c:if test="${loginMember == null}">
              <a class="btn btn-primary" href="${path}/login">로그인/회원가입</a>
            </c:if>
            <c:if test="${loginMember != null}">
              <a class="btn btn-custom" href="${path}/logout"
                  >로그아웃</a
                >
                <div class="avatar avatar-sm mb-2 ms-2">
                    <a href="${path}/account">
                        <img style="width:2.5rem; height:2.5rem;" class="rounded-circle border border-1 border-white"
                        src="${path}/resources/upload/profile/${loginMember.reFileNm}" alt="프로필 사진"/>
                    </a>
                </div>
             </c:if>
            </li>
          </div>
        </div>
      </div>
    </nav>
    <!-- /Navbar -->
  </header>