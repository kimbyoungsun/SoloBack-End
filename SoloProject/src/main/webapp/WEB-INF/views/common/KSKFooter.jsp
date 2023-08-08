 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
  <footer class="position-relative z-index-10 d-print-none">
      <!-- Main block - menus, subscribe form-->
      <div class="py-6 text-muted" style="background: #94cf4c">
        <div class="container">
          <div class="row">
            <div class="col-lg-4 mb-5 mb-lg-0">
              <div class="fw-bold text-uppercase text-dark mb-3 h3">
               <a class="navbar-brand py-1 fw-bold diplay-1" href="${path}/"
              ><img src="${path}/resources/img/logo_white.png" style=" height:45px"alt=""
            /></a>
              </div>
              <p class="text-black">
                자취월장은 1인가구를 위한 유용한 정보와 커뮤니티를 제공하는
                서비스 플렛폼입니다. 1인가구가 더 행복하고 편하게 사는 세상을
                만들어 가고자 합니다.
              </p>
              <p class="text-sm mb-md-0 text-black">
                &copy; 2023, Your company. All rights reserved.
              </p>
              <ul class="list-inline">
                <li class="list-inline-item">
                  <a
                    class="text-black text-primary-hover"
                    href="#"
                    target="_blank"
                    title="twitter"
                    ><i class="fab fa-twitter"></i
                  ></a>
                </li>
                <li class="list-inline-item">
                  <a
                    class="text-black text-primary-hover"
                    href="#"
                    target="_blank"
                    title="facebook"
                    ><i class="fab fa-facebook"></i
                  ></a>
                </li>
                <li class="list-inline-item">
                  <a
                    class="text-black text-primary-hover"
                    href="#"
                    target="_blank"
                    title="instagram"
                    ><i class="fab fa-instagram"></i
                  ></a>
                </li>
                <li class="list-inline-item">
                  <a
                    class="text-black text-primary-hover"
                    href="#"
                    target="_blank"
                    title="pinterest"
                    ><i class="fab fa-pinterest"></i
                  ></a>
                </li>
                <li class="list-inline-item">
                  <a
                    class="text-black text-primary-hover"
                    href="#"
                    target="_blank"
                    title="vimeo"
                    ><i class="fab fa-vimeo"></i
                  ></a>
                </li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-light mb-3 h4">정보</h6>
              <ul class="list-unstyled">
                <li>
                  <a class="text-black" href="${path}/location/RentalHouse?category=서울특별시">공공임대주택</a>
                </li>
                <li>
                  <a class="text-black" href="${path}/program/ProgramMain"
                    >정부지원사업</a
                  >
                </li>
                <li>
                  <a class="text-black" href="${path}/News"
                    >1인가구 뉴스</a
                  >
                </li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-light mb-3 h4">라이프</h6>
              <ul class="list-unstyled">
                <li>
                  <a class="text-black" href="${path}/perform/Perform_remake">공연 라이프</a>
                </li>
                <li><a class="text-black" href="${path}/ott/OTTMain">OTT 라이프</a></li>
                <li>
                  <a class="text-black" href="${path}/location/Restaurant">식당 라이프 </a>
                </li>
                <li>
                  <a class="text-black" href="${path}/sports/SportMain"> 체육 라이프</a>
                </li>
                <li>
                  <a class="text-black" href="${path}/book/BookSearch">도서 라이프</a>
                </li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-light mb-3 h4">커뮤니티</h6>
              <ul class="list-unstyled">
                <li>
                  <a class="text-black" href="${path}/community?page=1&type=product">중고거래</a>
                </li>
                <li><a class="text-black" href="${path}/community?page=1&type=talent">재능거래</a></li>
                <li>
                  <a class="text-black" href="${path}/community?page=1&type=pet"
                    >반려동물 임보.위탁
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- JavaScript files-->
    <script>
      // ------------------------------------------------------- //
      //   Inject SVG Sprite -
      //   see more here
      //   https://css-tricks.com/ajaxing-svg-sprite/
      // ------------------------------------------------------ //
      function injectSvgSprite(path) {
        var ajax = new XMLHttpRequest();
        ajax.open("GET", path, true);
        ajax.send();
        ajax.onload = function (e) {
          var div = document.createElement("div");
          div.className = "d-none";
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
        };
      }
      // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
      // use your own URL in production, please :)
      // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
      //- injectSvgSprite('${path}icons/orion-svg-sprite.svg');
      injectSvgSprite(
        "https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg"
      );
    </script>


    <!-- jQuery-->
    <script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="${path}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="${path}/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="${path}/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="${path}/resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>
      var basePath = "";
    </script>
    <!-- Main Theme JS file    -->
    <script src="${path}/resources/js/theme.js"></script>
    <script src="${path}/resources/js/kbs.js"></script>      
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>  
  </body>
</html>