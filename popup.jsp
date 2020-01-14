<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- 멀티모달  -->

<div class="contain_box">
	<div class="container">
		<div class="row">
			<div class="page-header">
				<h2>랜딩페이지</h2>
			</div>
		</div>
		<a data-toggle="modal" href="#myModal" class="btn btn-primary"> <img
			alt="ERROR" align="middle" src="${path}/media/checkmate.gif"
			id="imgon" />
		</a>
		<div class="row 2nd"></div>
	</div>
</div>
<!-- 로그인창 -->
<div class="modal" id="myModal" aria-hidden="true"
	style="display: none; z-index: 1050;">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header" style="padding: 20px 50px;">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title">Login</h4>
			</div>
			<div class="container"></div>
			<form class="form-horizontal" role="form" method="post" action="home">
				<div class="modal-body" style="padding: 40px 50px;">


					<div class="form-group">
						<label for="userid"> <span
							class="glyphicon glyphicon-user"></span>User ID
						</label> <input type="text" class="form-control" id="userid"
							name="member_id" maxlength="20" placeholder="type User ID">


					</div>

					<div class="form-group">
						<label for="userpw"><span
							class="glyphicon glyphicon-eye-open">User Password</span></label> <input
							type="password" class="form-control" id="userpw" name="member_pw"
							maxlength="20" placeholder="type Password">
					</div>




				</div>
				<div class="modal-footer" style="padding: 20px 50px;">
					<button type="submit" class="btn btn-success" id="btnLogin">
						<span class="glyphicon glyphicon-off"></span>Login
					</button>

					<a data-toggle="modal" href="#myModal2" class="btn btn-primary">Join</a>
					Forget <a data-toggle="modal" href="#myModal3"
						class="btn btn-primary">ID</a> <a data-toggle="modal"
						href="#myModal4" class="btn btn-primary"> / Password</a>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- 회원가입창 -->
<div class="modal" id="myModal2" aria-hidden="true"
	style="display: none; z-index: 1060;">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title">Join</h4>
			</div>
			<div class="container"></div>
			<form class="form-horizontal" role="form" method="post"
				action="joinMember">
				<div class="modal-body" style="padding: 20px 50px;">

					<div class="form-group" id="notjoin">

						<div class="form-group">
							<label for="joinid"> <span
								class="glyphicon glyphicon-user"></span>User Email
							</label> <input type="text" class="form-control" id="joinid"
								name="member_id" maxlength="20"
								placeholder="type User Email. This will be your ID">
							<button type="button" class="btn btn-success" name="confirm_id"
								OnClick="confirmId(document.memInsForm.id.value)">ID
								check</button>

						</div>

						<div class="form-group">
							<label for="joinpw"><span
								class="glyphicon glyphicon-eye-open">User Password</span></label> <input
								type="password" class="form-control" id="joinpw"
								name="member_pw" maxlength="20" placeholder="type Password">
						</div>

						<div class="form-group">
							<label for="joinpwre"><span
								class="glyphicon glyphicon-eye-open">Password Double
									Check</span></label> <input type="password" class="form-control" id="joinpwre"
								name="member_pw" maxlength="20" placeholder="type Password">
						</div>

						<div class="form-group">
							<label for="joinname"><span
								class="glyphicon glyphicon-eye-open">User Name</span></label> <input
								type="text" class="form-control" id="joinname"
								name="member_name" maxlength="20" placeholder="type Name">
						</div>



					</div>

				</div>
				<div class="modal-footer">
					<div>
						<button type="submit"
							class="btn btn-success btn-default pull-right">
							<span class="glyphicon glyphicon-off"></span>Join!
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- ID 확인 -->
<div class="modal" id="myModal3" aria-hidden="true"
	style="display: none; z-index: 1070;">
	<div class="modal-dialog modal-sm" >
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title">Forget your ID?</h4>
			</div>
			<div class="container"></div>
			<div class="modal-body" style="padding: 20px 50px;">
				<div class="form-group" id="findid">

					<div class="form-group">
						<label for="joinidck"> <span
							class="glyphicon glyphicon-user"></span>User Email
						</label> <input type="text" class="form-control" id="joinidck"
							name="member_id" maxlength="20" placeholder="Type User Email.">
					</div>
					<!--Check버튼 클릭하면 db체크 후 있으면 초록색 없으면 빨강색으로-->


				</div>
			</div>
			<div class="modal-footer">
				<div>
					<button type="submit"
						class="btn btn-success btn-default pull-right">
						<span class="glyphicon glyphicon-off"></span>Check
					</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- PW 확인 -->
<div class="modal" id="myModal4" data-backdrop="static"
	aria-hidden="true" style="display: none; z-index: 1080;">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title">Forget your Password?</h4>
			</div>
			<div class="container"></div>
			<div class="modal-body" style="padding: 20px 50px;">

				<div class="form-group" id="findid">

					<div class="form-group">
						<label for="joinidck"> <span
							class="glyphicon glyphicon-user"></span>User Email
						</label> <input type="text" class="form-control" id="joinidckforpw"
							name="member_id" maxlength="20"
							placeholder="Type User Email.">
					</div>

					<!--Check버튼 클릭하면 db체크 후 있으면 초록색 없으면 빨강색으로-->

				</div>

			</div>
			<div class="modal-footer">
				<div>
					<button type="submit"
						class="btn btn-success btn-default pull-right">
						<span class="glyphicon glyphicon-off"></span>Send new Password
					</button>
				</div>
			</div>
		</div>
	</div>
</div>





<script>

$(document).ready(function(){
	#("#imgon").click(function(){
		
		$("#myModal").modal();
	})
	
});

$(function() {
	$("#btnLogin").click(function() {
		
		alert("아이디를 입력하십시오.");
		//폼 데이터를 서버로 제출
		if($(sessionScope.userid == null)) { 
			var id 		= $("#userid").val();	//태그의 value 속성값. 즉, 태그에 입력한 값
			var passwd 	= $("#userpw").val();
	
			if(id == "") {
				alert("아이디를 입력하십시오.");
				$("#userid").focus();	//입력 포커스 이동
				return; //함수 종료
			}
			if(passwd == "") {
				alert("비밀번호를 입력하십시오.");
				$("#userpw").focus();
				return;
			}
			//폼 데이터를 서버로 제출
			document.form1.action = "${path}/member/checkMember.do";
		} else {
			document.form1.action = "${path}/member/logout.do";
		}
		document.form1.submit();
	});
});
</script>
