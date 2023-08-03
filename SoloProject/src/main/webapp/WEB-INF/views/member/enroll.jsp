<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />


<jsp:include page="/WEB-INF/views/common/KSKHeader.jsp"></jsp:include>

<section id="content">
	<div class="container">
		<div class="row py-5 mb-9">

			<!-- Main content START -->
			<div>

				<div class="vstack gap-4">
					<!-- Personal info START -->
					<div class="card border">
						<!-- Card body START -->
						<div class="card-body">
							<!-- Form START -->
							<form id="enroll-container" name="memberEnrollFrm" enctype="multipart/form-data" action="${path}/enroll" method="post" class="row g-3">
								<!-- Profile photo -->
								<div class="col-12">
									<label class="form-label">프로필 사진 업로드<span
										class="text-danger">*</span></label>
									<div class="d-flex align-items-center">
										<label class="position-relative me-4" for="upfile"
											title="Replace this pic"> <!-- Avatar place holder -->
											<div class="avatar avatar-xl mb-2">
												<img style="width: 7rem; height: 7rem;"
													class="rounded-circle border border-2 border-white"
													src="${path}/resources/img/avatar/default-avatar.png" alt="" />
											</div>
										</label>
										<!-- Upload button -->
										<label class="btn btn-return-custom btn-info-soft mb-0"
											for="upfile">변경</label> <input name="upfile" id="upfile"
											class="form-control d-none" type="file">
									</div>
								</div>

								<!-- 이메일 -->
								<div class="col-md-6">
									<label class="form-label">이메일<span class="text-danger">*</span></label>
									<input type="text" class="form-control" name="email" id="email" value=""
										placeholder="example@gmail.com" required>
								</div>

								<!-- 아이디 -->
								<div class="col-md-6">
									<label class="form-label">아이디<span class="text-danger">*</span></label>
									<input type="text" class="form-control" name="id" id="id" value=""
										placeholder="아이디를 입력해주세요" required>
								</div>

								<!-- 비밀번호 -->
								<div class="col-md-6">
									<label class="form-label">비밀번호<span class="text-danger">*</span></label>
									<input type="password" class="form-control" name="password" id="password" value=""
										placeholder="" required>
								</div>

								<!-- 비밀번호 확인 -->
								<div class="col-md-6">
									<label class="form-label">비밀번호 확인<span
										class="text-danger">*</span></label> <input type="password"
										class="form-control" value="" placeholder="" required>
								</div>
								
								<!-- 이름 -->
								<div class="col-md-6">
									<label class="form-label">이름<span class="text-danger">*</span></label>
									<input type="text" class="form-control" name="name" id="name" value=""
										placeholder="이름을 입력해주세요" required>
								</div>

								<!-- 전화번호 -->
								<div class="col-md-6">
									<label class="form-label">휴대폰 번호<span
										class="text-danger">*</span></label> <input type="text"
										class="form-control" name="phone" id="phone" value=""
										placeholder="- 없이 숫자만 입력해주세요 ex. 01012345678" required>
								</div>

								<!-- 생년월일 -->
								<div class="col-md-6">
									<label class="form-label">생년월일<span class="text-danger">*</span></label>
									<input type="text" class="form-control" name="birth" id="birth" value=""
										placeholder="yyyy-mm-dd 형식으로 입력해주세요." required>
								</div>

								<!-- 성별 -->
								<div class="col-md-6">
									<label class="form-label">성별<span class="text-danger">*</span></label>
									<div class="d-flex gap-4 mt-3">
										<div class="form-check radio-bg-light">
											<input class="form-check-input" type="radio"
												name="gender" id="gender1" value="M" checked="">
											<label class="form-check-label" for="gender1">
												남 </label>
										</div>
										<div class="form-check radio-bg-light">
											<input class="form-check-input" type="radio"
												name="gender" id="gender2" value="F"> <label
												class="form-check-label" for="gender2"> 여
											</label>
										</div>
									</div>
								</div>
								
								<!-- Address -->
								<div class="col-md-6">
									<label class="form-label">주소</label><span
										class="text-danger">*</span>
									<textarea class="form-control" rows="2" spellcheck="false" name="address" id="address"></textarea>
								</div>
								

					<!-- Button -->
					<div class="row">
						<div class="col-4">
							<input type="reset" value="취소" class="btn btn-cancel-custom mb-0"/>
						</div>
						<div class="col-4 text-center mt-2">© 2023. 자취월장. All rights
							reserved.</div>
						<div class="col-4 text-end">
							<input type="submit" id="enrollSubmit" value="회원가입" class="btn btn-success-custom mb-0"/>
						</div>
					</div>
							</form>
							<!-- Form END -->
						</div>
						<!-- Card body END -->
					</div>
					<!-- Personal info END -->


				</div>
			</div>
			<!-- Main content END -->

		</div>
	</div>
</section>


<script type="text/javascript">
	$(()=>{
		$('#password2').blur((event)=>{
			let password1 = $('#password1').val();
			let password2 = $(event.target).val();
			
			if(password1.trim() != password2.trim()){
				alert('패스워드가 일치하지 않습니다.')
				$('#password1').val("");
				$('#password2').val("");
				$('#password1').focus();
			}
		});
		
		$('#enrollSubmit').click(()=>{
			let id = $('#id').val();
			if(id.length < 4){
				alert('아이디가 4글자보다 작습니다.');
				return false; // submit 안가는 방법
			}
			
			// 유효성 로직 추가하는 곳
			
			return true; // submit 보내짐
		});
		
		$('#checkDuplicate').click(()=>{
			let id = $('#id').val().trim();

			if(id.length < 4){
				alert('아이디가 4글자보다 작습니다.');
				return;
			}

			$.ajax({
				type:'get',
				url:'${path}/member/idCheck',
				data:{id}, // 속성값이 키값과 같을때 값을 생략해서 보낼수 있다. 보통은 key-value로 채운다.
				success:
					(data)=>{ // data : 서버에서 보내준 결과 값, json으로 응답될수 있다.
						console.log(data);
						if(data.validate === true){
							alert('이미 사용중인 아이디 입니다.');
						} else{
							alert('사용 가능합니다.');
						}
					},
				error:
					(e)=>{
						alert('중복을 확인할수 없습니다.');
						console.log(e)
					}
			});
		});
		
	});
</script>


<jsp:include page="/WEB-INF/views/common/KSKFooter.jsp" />





















