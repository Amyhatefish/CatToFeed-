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
<title>QnA 페이지입니다 글쓰기 없이 글목록만</title>
<jsp:include page="../module/top.jsp" flush="false" />
</head>
<body>
	<jsp:include page="../module/left.jsp" flush="false" />


	<div class="container" id="qna">

		<table class="table table-striped text-right">
			<thead>
				<tr>
					<th>No.</th>
					<th>Question</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>1</th>
					<th>회원가입은 어떻게 하나요?</th>
				</tr>
				<tr class="hide">
					<th>ㄴ</th>
					<th>이렇게1</th>
				</tr>
				<tr>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th>2</th>
					<th>회원탈퇴는 어떻게 하나요?</th>
				</tr>
				<tr class="hide">
					<th>ㄴ</th>
					<th>이렇게2</th>
				</tr>
				<tr>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th>3</th>
					<th>프로젝트 생성은 어떻게 하나요</th>
				</tr>
				<tr class="hide">
					<th>ㄴ</th>
					<th>이렇게3</th>
				</tr>
			</tbody>



		</table>

	</div>
</body>

<script type="text/javascript">
	var Display = true;
	function doDisplay() {
		var con = document.getElementByClassName("hide");
		if (con.style.display == 'none') {
			con.style.display = 'block';
		} else {
			con.style.display = 'none';
		}
	}
</script>
</html>