<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		$("#d1").click(function(){
			$.ajax({
				url: "data.jsp",
				type: "GET",
				data: {
					count: $("#c").val() //넘겨야 하는 값이 두 개 이상이면 ,로 연결한다.
				},
				success: function(result){ //내가 요청한 페이지(data.jsp)의 결과물이  result에 저장된다.
					alert(result);
				$("#r1").html(result);
				}
			});
		});
	});
</script>
</head>
<body>

	<!-- <form action="test2.jsp" method="post">
		<input type="text" name="name">
	</form> -->
	
	<input type="text" name="count" id="c">
	
	<input type="button" id="d1">
	<div id="r1"></div>

</body>
</html>