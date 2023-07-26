<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/YIGHeader.jsp"></jsp:include>
      

    <section class="hero-home" style="background-color: #50a78b">
      <div class="container py-6 py-md-7 text-white z-index-20">
        <div class="row">
          <div class="col-xl-6 mt-7">
            <div class="text-center text-lg-start">
              <h1 class="display-3 fw-bold text-shadow">로컬 맛집</h1>
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
              src="img/yg/맛집.png"
              style="width: 30rem; left: 100px"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container text-block mt-lg-5">
        <div class="row">
          <div class="col-sm-2">
            <div class="px-3 py-3 border border-1 rounded-3">
              <label style="margin-bottom: 1rem;">구 검색</label>
              <form action="" class="search-bar row">
                <div class="col d-flex align-items-center flex-grow-1; ">
                  <input type="text" style="flex: 1; width: 100%; border: none;">
                  <button type="submit" class="btn btn-primary rounded-pill">검색</button>
                </div>
              </form>
              <div class="middle border rounded-3 padding-all" style="margin-top: 2rem; ">
                <label style="margin-bottom: 1rem;">영업 시간</label>
                <form id="time-form">
                  <div class="multi-range-slider">
                    <input type="range" id="input-left" name="start-time" min="0" max="2400" value="600" />
                    <input type="range" id="input-right" name="end-time" min="0" max="2400" value="1800" />
                  
                    <div class="slider">
                      <div class="track"></div>
                      <div class="range"></div>
                      <div class="thumb left"></div>
                      <div class="thumb right"></div>
                    </div>
                  </div>
                  <p style="font-size: 80%;">오픈 시간: <span id="start-time">06시 00분</span></p>
                  <p style="font-size: 80%;">종료 시간: <span id="end-time">18시 00분</span></p>
                  <button type="submit"id="search-button">검색</button>
                </form>
              </div>
              
              


            </div>
            <div class="align-text-bottom">
              <img
                class="position-relative"
                src="img/kbs/Badminton-amico.png"
                style="width: 25rem; top: 40rem; left: -12.5rem"
                alt=""
              />
            </div>
          </div>
          <div class="col">
            <div class="d-flex d-block d-sm-flex review">
              <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
                <img
                  class="d-block p-2 mb-2 rounded-5"
                  style="width: 12.5rem"
                  src="img/yg/쌈밥집.jpg"
                  alt="Padmé Amidala"
                />
              </div>
              <div>
                <h6 class="mt-2 mb-1">다채 개봉점</h6>
                <div class="mb-2">
                  <i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i>
                </div>
                <p class="text-muted text-sm">
                  서울특별시 성동구 금호로 172 - 1(금호동1가)
                </p>
                <p class="text-muted text-sm">개방 시간 : 07:00 ~ 19:00</p>
                <p class="text-muted text-sm">전화 번호 : 02-2293-7646</p>
              </div>
              <div class="flex-lg-grow-1 text-end">
                <button class="btn btn-primary">세부정보</button>
              </div>
            </div>
            <div class="d-flex d-block d-sm-flex review">
              <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
                <img
                  class="d-block p-2 mb-2 rounded-5"
                  style="width: 12.5rem "
                  src="img/yg/신생루.jpg"
                  alt="Padmé Amidala"
                />
              </div>
              <div>
                <h6 class="mt-2 mb-1">신생루</h6>
                <div class="mb-2">
                  <i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i
                  ><i class="fa fa-xs fa-star text-primary"></i>
                </div>
                <p class="text-muted text-sm">
                  서울특별시 성동구 금호로 172 - 1(금호동1가)
                </p>
                <p class="text-muted text-sm">개방 시간 : 07:00 ~ 19:00</p>
                <p class="text-muted text-sm">전화 번호 : 02-2293-7646</p>
              </div>
              <div class="flex-lg-grow-1 text-end">
                <button class="btn btn-primary">세부정보</button>
              </div>
            </div>
            <div class="d-flex d-block d-sm-flex review">
                <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
                  <img
                    class="d-block p-2 mb-2 rounded-5"
                    style="width: 12.5rem"
                    src="img/yg/쌈밥집.jpg"
                    alt="Padmé Amidala"
                  />
                </div>
                <div>
                  <h6 class="mt-2 mb-1">다채 개봉점</h6>
                  <div class="mb-2">
                    <i class="fa fa-xs fa-star text-primary"></i
                    ><i class="fa fa-xs fa-star text-primary"></i
                    ><i class="fa fa-xs fa-star text-primary"></i
                    ><i class="fa fa-xs fa-star text-primary"></i
                    ><i class="fa fa-xs fa-star text-primary"></i>
                  </div>
                  <p class="text-muted text-sm">
                    서울특별시 성동구 금호로 172 - 1(금호동1가)
                  </p>
                  <p class="text-muted text-sm">개방 시간 : 07:00 ~ 19:00</p>
                  <p class="text-muted text-sm">전화 번호 : 02-2293-7646</p>
                </div>
                <div class="flex-lg-grow-1 text-end">
                  <button class="btn btn-primary">세부정보</button>
                </div>
              </div>
              <div class="d-flex d-block d-sm-flex review">
                <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
                  <img
                    class="d-block p-2 mb-2 rounded-5"
                    style="width: 12.5rem "
                    src="img/yg/신생루.jpg"
                    alt="Padmé Amidala"
                  />
                </div>
                <div>
                  <h6 class="mt-2 mb-1">신생루</h6>
                  <div class="mb-2">
                    <i class="fa fa-xs fa-star text-primary"></i
                    ><i class="fa fa-xs fa-star text-primary"></i
                    ><i class="fa fa-xs fa-star text-primary"></i
                    ><i class="fa fa-xs fa-star text-primary"></i
                    ><i class="fa fa-xs fa-star text-primary"></i>
                  </div>
                  <p class="text-muted text-sm">
                    서울특별시 성동구 금호로 172 - 1(금호동1가)
                  </p>
                  <p class="text-muted text-sm">개방 시간 : 07:00 ~ 19:00</p>
                  <p class="text-muted text-sm">전화 번호 : 02-2293-7646</p>
                </div>
                <div class="flex-lg-grow-1 text-end">
                  <button class="btn btn-primary">세부정보</button>
                </div>
              </div>
              <div class="d-flex d-block d-sm-flex review">
                <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
                  <img
                    class="d-block p-2 mb-2 rounded-5"
                    style="width: 12.5rem "
                    src="img/yg/신생루.jpg"
                    alt="Padmé Amidala"
                  />
                </div>
                <div>
                  <h6 class="mt-2 mb-1">신생루</h6>
                  <div class="mb-2">
                    <i class="fa fa-xs fa-star text-primary"></i
                    ><i class="fa fa-xs fa-star text-primary"></i
                    ><i class="fa fa-xs fa-star text-primary"></i
                    ><i class="fa fa-xs fa-star text-primary"></i
                    ><i class="fa fa-xs fa-star text-primary"></i>
                  </div>
                  <p class="text-muted text-sm">
                    서울특별시 성동구 금호로 172 - 1(금호동1가)
                  </p>
                  <p class="text-muted text-sm">개방 시간 : 07:00 ~ 19:00</p>
                  <p class="text-muted text-sm">전화 번호 : 02-2293-7646</p>
                </div>
                <div class="flex-lg-grow-1 text-end">
                  <button class="btn btn-primary">세부정보</button>
                </div>
              </div>
          </div>
        </div>
      </div>
      <nav aria-label="Page navigation example">
        <ul
          class="pagination pagination-template d-flex justify-content-center"
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
    
    <!-- 시간 슬라이더 -->
    <script>
      const form = document.getElementById("time-form");
      const inputLeft = document.getElementById("input-left");
      const inputRight = document.getElementById("input-right");
    
      function convertToTime(value) {
        const hours = Math.floor(value / 100);
        const minutes = value % 100;
        return `${String(hours).padStart(2, '0')}시 ${String(minutes).padStart(2, '0')}분`;
      }
    
      function updateSliderValues() {
        const startTime = convertToTime(parseInt(inputLeft.value));
        const endTime = convertToTime(parseInt(inputRight.value));
        document.getElementById("start-time").innerText = startTime;
        document.getElementById("end-time").innerText = endTime;
      }
    
      form.addEventListener("submit", (event) => {
        event.preventDefault();
        const formData = new FormData(form);
        const startTimeValue = parseInt(formData.get("start-time"));
        const endTimeValue = parseInt(formData.get("end-time"));
    
        // 여기서 서버로 startTimeValue와 endTimeValue를 전송하면 됩니다.
        // 예를 들면, fetch API를 사용하여 서버로 데이터를 전송할 수 있습니다.
        // 아래는 예시 코드입니다 (실제 서버와의 통신을 위해서는 적절히 수정이 필요합니다).
        fetch("/api/search", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            startTime: startTimeValue,
            endTime: endTimeValue,
          }),
        })
          .then((response) => response.json())
          .then((data) => {
            // 서버로부터 받은 데이터를 처리하는 로직을 추가하세요.
            console.log("검색 결과: ", data);
          })
          .catch((error) => {
            console.error("데이터 전송 오류:", error);
          });
      });
    
      inputLeft.addEventListener("input", updateSliderValues);
      inputRight.addEventListener("input", updateSliderValues);
    
      // 초기 값 설정
      updateSliderValues();
    </script>
    
 <jsp:include page="/WEB-INF/views/common/YIGFooter.jsp"></jsp:include>
 