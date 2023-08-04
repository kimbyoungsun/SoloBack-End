<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KBSHeader.jsp"></jsp:include>
    
<style>
        .img-size{
            width: 12%;
            height: 170px;
            margin-right: 5px;
            border-radius:5%;
        }
        
        .list-all{
            display: inline-block; width:70%;
            margin-top: 15px;
        }
        
        .news-img-size{
            width: 20px;
            height: 20px;
            border-radius:100%;
            margin-right: 5px;
            margin-left: 30%;
        }

        .news-company{
            color:gray;
            margin-right: 5px;
            font-size:15px
        }

        .news-title{
            margin-left: 30%;
            color: #081066;
            font-weight: 600;
            font-size:20px
        }

        .news-content{
            margin-left: 30%;
            font-size:15px
        }

        .all-area{
        }

        .main-background{
            height:250px;
            background: #94CF4C;
        }
        
        .main-img_ott{
          margin-left: 35%;
          margin-top: 1%;
          height:90%;
        }
    </style>
    <div class="all-area">
        <div class="main-background">
          <img class="main-img_ott" src="${path}/resources/img/people.png";/>
        </div>
        <div class="my-4">
        <c:forEach var="item" items="${news}">
            <div>
                <span class="list-all">
                    <div>
                    <a class="nav-link" href="${item.url}">
                        <img class="news-img-size" src="${item.img}"/><span class="news-company">${item.compony}</span><span class="news-company"></span>
                     </a>
                    </div>
                    <a class="nav-link" href="${item.url}">
                    <div class="news-title">
                       	${item.title}
                    </div>
                     </a>
                    <div class="news-content">
                       ${item.text}
                    </div>
                </span>
                <a class="" href="${item.url}">
                	<img class="img-size my-3" src="${item.img}"/>
                  </a>
            </div>
        
        </c:forEach>
        </div>
    </div>    
</body>
<jsp:include page="/WEB-INF/views/common/KBSFooter.jsp"></jsp:include>