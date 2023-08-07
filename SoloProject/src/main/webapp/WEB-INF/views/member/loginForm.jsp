<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/KSKHeader.jsp"></jsp:include>

<section class="py-5">
        <div class="container h-100 d-flex px-0 px-sm-4">
            <div class="row justify-content-center align-items-center m-auto">
                <div class="col-12">
                    <div class="bg-mode shadow rounded-3 overflow-hidden">
                        <div class="row g-0">
                            <!-- Vector Image -->
                            <div class="col-lg-6 d-flex align-items-center order-2 order-lg-1">
                                <div class="p-2 p-lg-5">
                                    <img src="${path}/resources/img/account/signin.png" alt="로그인 회원가입 이미지" style="width: 420px;"/>
                                </div>
                                <!-- Divider -->
                                <div class="vr opacity-1 d-none d-lg-block"></div>
                            </div>
            
                            <!-- Information -->
                            <div class="col-lg-6 order-1">
                                <div class="p-4" style="padding: 4rem !important;">
                                    <!-- Logo -->
                                    <div class="text-center" >
                                        <div class="display-4">
                                        	자취 월장
                                        </div>
                                    </div>
            
                                    <!-- Form START -->
                                    <form class="mt-4 text-start" action="login" method="post">
                                        <!-- Email -->
                                        <div class="mb-3">
                                            <input type="text" class="form-control" name="userId" placeholder="아이디를 입력해주세요">
                                        </div>
                                        <!-- Password -->
                                        <div class="mb-3 position-relative">
                                            <input class="form-control fakepassword" type="password" name="userPwd" id="psw-input" placeholder="비밀번호를 입력해주세요">
                                            <span class="position-absolute top-50 end-0 translate-middle-y p-0">
                                                <i class="fakepasswordicon fas fa-eye-slash cursor-pointer p-2"></i>
                                            </span>
                                        </div>
                                        <!-- Remember me -->
                                        <div class="mb-3 d-sm-flex justify-content-between">
                                            <div>
                                                <input type="checkbox" class="form-check-input" id="rememberCheck">
                                                <label class="form-check-label" for="rememberCheck">아이디 기억하기</label>
                                            </div>
                                        </div>
                                        <!-- Button -->
                                        <div><button type="submit" class="btn btn-success-custom w-100 mb-0 fs-5">로그인</button></div>
            
                                        <!-- Divider -->
                                        <div class="position-relative my-4">
                                            <hr>
                                        </div>
            
                                        <!-- Google and facebook button -->
                                        <div class="vstack gap-3 text-center">
                                            <a href="#"><img src="${path}/resources/img/account/kakao_login_medium_wide.png"></a>
                                        </div>
    
                                        <p class="mb-0 mt-3 text-center">
                                            <a href="${path}/enroll" class="px-3 text-black-50">회원가입</a>|<a href="#" class="px-3 text-black-50">비밀번호 찾기</a>
                                        </p>
            
                                        <!-- Copyright -->
                                        <p class="mb-0 mt-3 text-center">© 2023. 자취월장. All rights reserved.</p>
                                    </form>
                                    <!-- Form END -->
                                </div>		
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<jsp:include page="/WEB-INF/views/common/KSKFooter.jsp"></jsp:include>