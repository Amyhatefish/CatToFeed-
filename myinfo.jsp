<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="../css/main.css" rel="stylesheet" type="text/css">
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="/resources/js/jquery-3.4.1.js"></script>
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery.min.js"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js">
	
</script>

<title>나의 정보 페이지입니다 아이디와 이름을 확인할 수 있고 비밀번호 변경 이름 변경 및 회원탈퇴가
	가능합니다</title>
</head>

<jsp:include page="../module/top.jsp" flush="false" />
</head>
<body>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
	<jsp:include page="../module/left.jsp" flush="false" />

	<div class="container-horizontal">

		<div class="form-group">
			<div class="col-sm-2"></div>
			<div class="col-sm-6">
				<h2 align="center">나의 정보</h2>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">ID</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="id" name="id"
					maxlength="16" placeholder="Enter ID">
			</div>

		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">비밀번호</label>
			<div class="col-sm-3">
				<input type="password" class="form-control" id="passwd"
					name="passwd" maxlength="16" placeholder="Enter Password">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">이 름</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="name" name="name"
					maxlength="16" placeholder="Enter Name">
			</div>
		</div>
	
		<div class="form-group">
			<label class="control-label col-sm-2">회원가입동의</label>
			<div class="col-sm-10">
				<label class="radio-inline"> <input type="radio"
					id="registerYn" name="registerYn" value="Y" checked>동의합니다.
				</label> <label class="radio-inline"> <input type="radio"
					id="registerYn" name="registerYn" value="N">동의하지 않습니다.
				</label>
			</div>
		</div>
		<div class="alert alert-info fade in col-sm-offset-2 col-sm-10">
			<strong>[ Checkmate 이용동의안내 ]</strong>
			<p>
			<h5>
				개인 정보 제3자 제공 동의 <br>
			</h5>
			</p>
			<div class="checkbox">
				<label> <input type="checkbox" id="is_subscribed"
					name="is_subscribed" value="o" />
				</label> Checkmate의 개인정보 수집 및 이용에 동의합니다.
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="button" class="btn btn-primary"
					onclick="addTel(this.form)">수정</button>
			</div>
		</div>

	</div>








</body>
</html>