<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/YIGHeader.jsp"></jsp:include>

 <body>
    <section>
        <div class="container">
            <div style="display: flex; text-align: center; margin-top: 2rem; margin-bottom: 1rem;">
              <h1 style="flex: 1;"><a href="" style="color: inherit; text-decoration: none;">콘서트</a></h1>
              <h1 style="flex: 1;"><a href="" style="color: inherit; text-decoration: none;">뮤지컬</a></h1>
              <h1 style="flex: 1;"><a href="" style="color: inherit; text-decoration: none;">연극</a></h1>
              <h1 style="flex: 1;"><a href="" style="color: inherit; text-decoration: none;">클래식</a></h1>
              <h1 style="flex: 1;"><a href="" style="color: inherit; text-decoration: none;">전시</a></h1>
              <h1 style="flex: 1;"><a href="" style="color: inherit; text-decoration: none;">아동</a></h1>
            </div>
            <hr>
            <div>
                <span>${info.genrenm}</span>
            </div>
            <div class="rn-02" style="margin-top: 2rem; margin-bottom: 2rem;">
                <p class="rn-big-title">${info.prfnm}</p>
                <div class="rn-product-short-data">
                  <p>
                    <span class="ps-date">${info.prfpdfrom } ~ ${info.prfpdto }</span>
                  </p>
                </div>
                <hr class="hr-bk">
            </div>
        </div>
    </section>
    <section>
      <div class="container">
        <div class="rn-03">
          <div class="rn-03-left">
            <div class="rn-product-imgbox" >
              <img src="${info.poster}" alt="공연이미지3" width="420">
            </div>
          </div>
          <div class="rn-03-right">
            <div class="rn-product-area1">
              <dl>
                <dt>등급</dt>
                <dd>&nbsp;${info.prfage }</dd>
                <dt>관람시간</dt>
                <dd>&nbsp;${info.prfruntime } (인터미션 15분 포함)  </dd>
                <dt>출연</dt>
                <dd>&nbsp ${info.prfcast }</dd>
                <dt>위치</dt>
                <dd>&nbsp ${info.adres }</dd>
                <dt id="">가격</dt>
                <dd id="" class="rn-product-price">
                  <ul class="rn-product-price1">${info.pcseguidance }</ul>
                </dd>
              </dl>
            </div>
            <div class="rn-product-area3">
              <dl>
                <dt>공연시간 안내</dt>
                <dd>
                  "※ ${info.dtguidance }"
                  <br>
                </dd>
                <dt>배송정보</dt>
                <dd>현장 수령만 가능</dd>
              </dl>
            </div>
          </div>
        </div>
<!--         <div class="rn-04"> -->
<!--           <div class="rn-04-left off"> -->
<!--             <div class="CalendarBody"> -->
<!--               <h4>관람일</h4> -->
<!--               <table class="Calendar"> -->
<!--                   <thead> -->
<!--                       <tr> -->
<!--                           <td onClick="prevCalendar();" style="cursor:pointer;">&#60;</td> -->
<!--                           <td colspan="5"> -->
<!--                               <span id="calYear"></span>년 -->
<!--                               <span id="calMonth"></span>월 -->
<!--                           </td> -->
<!--                           <td onClick="nextCalendar();" style="cursor:pointer;">&#62;</td> -->
<!--                       </tr> -->
<!--                       <tr> -->
<!--                           <td>일</td> -->
<!--                           <td>월</td> -->
<!--                           <td>화</td> -->
<!--                           <td>수</td> -->
<!--                           <td>목</td> -->
<!--                           <td>금</td> -->
<!--                           <td>토</td> -->
<!--                       </tr> -->
<!--                   </thead> -->
      
<!--                   <tbody> -->
<!--                   </tbody> -->
<!--               </table> -->
<!--               <hr> -->
<!--               <div> -->
<!--                 <h4>회차</h4> -->
<!--                 <div> -->
<!--                   <h4>10:00</h4> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="rn-04-right" style="height: 600px;"> -->
<!--               <p class="rn-04-right-tit">극장 목록</p> -->
<!--           </div> -->
<!--         </div> -->
        
        <div style="background-color: rgba(216, 234, 97, 0.6); width: 100%; height: 100px;"></div>
      </div>
    </section>
    <section>
      <div class="container" style="border-bottom: 2px solid #333; padding-bottom: 70px;">
        <div class="rn-07">
          <a href="" class="on">
            <span>상세정보</span>
          </a>
        </div>
        <div style="text-align: center;">
		   <p style="padding-top: 50px; padding-bottom: 30px;" class="rn-tit">공연 정보</p>
		    <c:if test="${'-' != info.styurl1}">
		        <div>
		            <img src="${info.styurl1}" alt="공연상세1" width = "750px">
		        </div>
		    </c:if>
		    <c:if test="${'-' != info.styurl2}">
		        <div>
		            <img src="${info.styurl2}" alt="공연상세2" width = "750px">
		        </div>
		    </c:if>
		    <c:if test="${'-' != info.styurl3}">
		        <div>
		            <img src="${info.styurl3}" alt="공연상세3" width = "750px">
		        </div>
		    </c:if>
		    <c:if test="${'-' != info.styurl4}">
		        <div>
		            <img src="${info.styurl4}" alt="공연상세4" width = "750px">
		        </div>
		    </c:if>
		</div>
      </div>
    </section>
    <section>
      
    </section>


    <script>
      window.onload = function () { buildCalendar(); }    // 웹 페이지가 로드되면 buildCalendar 실행

      let nowMonth = new Date();  // 현재 달을 페이지를 로드한 날의 달로 초기화
      let today = new Date();     // 페이지를 로드한 날짜를 저장
      today.setHours(0, 0, 0, 0);    // 비교 편의를 위해 today의 시간을 초기화

      // 달력 생성 : 해당 달에 맞춰 테이블을 만들고, 날짜를 채워 넣는다.
      function buildCalendar() {

          let firstDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), 1);     // 이번달 1일
          let lastDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, 0);  // 이번달 마지막날

          let tbody_Calendar = document.querySelector(".Calendar > tbody");
          document.getElementById("calYear").innerText = nowMonth.getFullYear();             // 연도 숫자 갱신
          document.getElementById("calMonth").innerText = leftPad(nowMonth.getMonth() + 1);  // 월 숫자 갱신

          while (tbody_Calendar.rows.length > 0) {                        // 이전 출력결과가 남아있는 경우 초기화
              tbody_Calendar.deleteRow(tbody_Calendar.rows.length - 1);
          }

          let nowRow = tbody_Calendar.insertRow();        // 첫번째 행 추가           

          for (let j = 0; j < firstDate.getDay(); j++) {  // 이번달 1일의 요일만큼
              let nowColumn = nowRow.insertCell();        // 열 추가
          }

          for (let nowDay = firstDate; nowDay <= lastDate; nowDay.setDate(nowDay.getDate() + 1)) {   // day는 날짜를 저장하는 변수, 이번달 마지막날까지 증가시키며 반복  

              let nowColumn = nowRow.insertCell();        // 새 열을 추가하고


              let newDIV = document.createElement("p");
              newDIV.innerHTML = leftPad(nowDay.getDate());        // 추가한 열에 날짜 입력
              nowColumn.appendChild(newDIV);

              if (nowDay.getDay() == 6) {                 // 토요일인 경우
                  nowRow = tbody_Calendar.insertRow();    // 새로운 행 추가
              }

              if (nowDay < today) {                       // 지난날인 경우
                  newDIV.className = "pastDay";
              }
              else if (nowDay.getFullYear() == today.getFullYear() && nowDay.getMonth() == today.getMonth() && nowDay.getDate() == today.getDate()) { // 오늘인 경우           
                  newDIV.className = "today";
                  newDIV.onclick = function () { choiceDate(this); }
              }
              else {                                      // 미래인 경우
                  newDIV.className = "futureDay";
                  newDIV.onclick = function () { choiceDate(this); }
              }
          }
      }

      // 날짜 선택
      function choiceDate(newDIV) {
          if (document.getElementsByClassName("choiceDay")[0]) {                              // 기존에 선택한 날짜가 있으면
              document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay");  // 해당 날짜의 "choiceDay" class 제거
          }
          newDIV.classList.add("choiceDay");           // 선택된 날짜에 "choiceDay" class 추가
      }

      // 이전달 버튼 클릭
      function prevCalendar() {
          nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() - 1, nowMonth.getDate());   // 현재 달을 1 감소
          buildCalendar();    // 달력 다시 생성
      }
      // 다음달 버튼 클릭
      function nextCalendar() {
          nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, nowMonth.getDate());   // 현재 달을 1 증가
          buildCalendar();    // 달력 다시 생성
      }

      // input값이 한자리 숫자인 경우 앞에 '0' 붙혀주는 함수
      function leftPad(value) {
          if (value < 10) {
              value = "0" + value;
              return value;
          }
          return value;
      }
  </script>
    </body>
<jsp:include page="/WEB-INF/views/common/YIGFooter.jsp"></jsp:include>