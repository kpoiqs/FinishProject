<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Detail QnA</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">


$(function(){
	$("#delete").click(function(){
	var result = confirm("${q.no }�� �Խñ��� �����Ͻðڽ��ϱ�?");
	if(result){
		location.href = "q_delete?no=${q.no }";
	}else{
		return;
	}
	
	
	});
});

/*  $(function(){
	$("#modify").click(function(){
	var result = confirm("${q.no }�� �Խñ��� �����Ͻðڽ��ϱ�?");
	
	if(result){
		
	}else{
		return false;
	}
	});
}); */

 $(function checkSubmit() {
	 $("#modify").click(function(){
	// ���� �Է�Ȯ��
	var txt_cont = document.form1.modify.value;
	if(txt_cont == null || txt_cont == "") {
		alert('������ �Է��ϼ���.');
		return false;
	} else {
		return confirm("��Ȯ�ϰ� �Է��ϼ̽��ϱ�?");
	}

	// ���������� ó�������������� submit �̺�Ʈ�� ����Ѵ�.
	return false;
	});
	});
 $(function(){
		$("#write").click(function(){
			location.href = "q_form.jsp";
		});
	});

</script>




</head>
<body>
	<h3>Detail QnA</h3>
	<form action="q_update?no=${q.no }" method="post" name="form1">
	
	No : ${q.no}<br/>
	Writer : ${q.writer }<br/>
	Subject : ${q.subject }<br/>
	Content : <input type="text" name="content" value="${q.content }">
	<!-- <button type="button" id="modify">modify</button> -->
	<input type="submit" value="modify" id="modify">
	</form>
	
	<button type="button" id="delete">delete</button>
	<button type="button" id="write">write</button>
	<button type="button" onclick="history.back()">back to list</button>

</body>
</html>