<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>AIR Q&A</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
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

$(function(){
	//alert("sfsdf");
	$("#form").validate({
		debug : false,
		
		rules:{
			content : "required"
		
			},
			
		messages:{
			content : "required"
					
		}	
	});
});



 $(function(){
	$("#modify").click(function(){
	var result = confirm("${q.no }�� �Խñ��� �����Ͻðڽ��ϱ�?");
	var con = document.form1.content;
	
	if(result){
		
	}else{
		return false;
	}/* ,
	
	if(con==null){
		alert("�Է� ��Ź");
		return false;
	} */
	
	});
}); 
	
 /* $(function(){
		$("#modify").click(function(){
		var con = document.modify;
		
		if(con == null){
			alert("�Է� ��Ź");
			return false;
		}
		});
	});  */
 
 $(function(){
		$("#write").click(function(){
			location.href = "q_form.jsp";
		});
	});
	
</script>


<style type="text/css">

h1,h2 {
	text-align: center;
}

#write {
  background-color: white;
  font-size: 24px;
  color: skyblue;
  display: inline-block;
  border: 1px solid skyblue;
  padding: 5px;
  cursor: pointer;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;

}
#write:hover{
	background-color: skyblue;
	color: white;
}

#delete {
  background-color: white;
  font-size: 24px;
  color: skyblue;
  display: inline-block;
  border: 1px solid skyblue;
  padding: 5px;
  cursor: pointer;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;

}
#delete:hover{
	background-color: skyblue;
	color: white;
}
#reply {
  background-color: white;
  font-size: 24px;
  color: skyblue;
  display: inline-block;
  border: 1px solid skyblue;
  padding: 5px;
  cursor: pointer;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;

}
#reply:hover{
	background-color: skyblue;
	color: white;
}

#modify {
  background-color: white;
  font-size: 24px;
  color: skyblue;
  display: inline-block;
  border: 1px solid skyblue;
  padding: 5px;
  cursor: pointer;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;

}
#modify:hover{
	background-color: skyblue;
	color: white;
}

#bl {
  background-color: white;
  font-size: 24px;
  color: skyblue;
  display: inline-block;
  border: 1px solid skyblue;
  padding: 5px;
  cursor: pointer;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;

}
#bl:hover{
	background-color: skyblue;
	color: white;
}

tr.sub{
	font-weight: bold;
	background-color: skyblue;
	
}

body {
	width: 800px;
	margin: 0 auto;
	border: 1px;
}

.tb{
 width: 500px;
  margin: auto;
}

td{
	 float: left;
}


</style>

</head>
<body>


	
	
	<h1>AIR Q&A</h1>
	<h2>DETAIL</h2>
	<div class="all">
	
	<form action="q_modify?no=${q.no}" method="post" id="form" name="form">
	<c:if test = "${account.id == q.writer }">
	<table class="tb">
	
	
	
					<tr>
					<th>NO</th>
					<td><input type="text" id="no" name="no" value="${q.no}" readonly></td>
						
				</tr>
				
				<tr>
					<th>WRITER</th>
					<td><input type="text" id="writer" name="writer" value="${q.writer}" maxlength="100" readonly></td>
				</tr>

				<tr>
					<th>SUBJECT</th>

					<td><input type="text" id="subject" name="subject" value="${q.subject}" style="width: 345px" 
						maxlength="40" readonly></td>
				</tr>
				
				<tr>
					<th>CONTENT</th>
					<td><textarea id="content" name="content" style="width: 345px; height: 300px" readonly>${q.content }</textarea>
							<input type="submit" value="MODIFY" id="modify" > <br /></td>
					</tr>
					
			</table>
			<input type="button" id="delete" value="DELETE">
					<input type="button" id="write" value="WRITE" onclick="location.href='q_form.jsp'">
			</c:if>
		</form>	
		
		<c:if test = "${account.id != q.writer }">
		<table class="tb">
			<tr>
					<th>NO</th>
					<td>${q.no}</td>
						
				</tr>
				
				<tr>
					<th>WRITER</th>
					<td>${q.writer}</td>
				</tr>

				<tr>
					<th>SUBJECT</th>

					<td>${q.subject}</td>
				</tr>
				
				<tr>
					<th>CONTENT</th>
					<td><textarea id="content" name="content" style="width: 640px; height: 300px" readonly>${q.content }</textarea>
							 </td>
					</tr>
					
			</table>
			<input type="submit" value="MODIFY" id="modify" >
			<input type="button" onclick="location.href='q_reply_page?grp=${q.grp }'" id="reply" value="REPLY">
			</c:if>
		
	<c:if test="${q.lvl == 0}">
	
	</c:if>
	<button type="button" onclick="history.back()" id="bl">BACK TO LIST</button>
	<fieldset>
  <legend>����ۼ�</legend>
	
	<form style="text-align:center" action = "reqna_input.do" method = "post">
	<br/>�����<input type = "text" id='reqnacon' name = 'reqnacon'><br/>
	�ۼ���<input type = "text" id = 'reqwriter' name = 'reqwriter' value='${account.id}' readonly/><br/>
	<input type = "submit" id="write" name="write" value = "submit"/>
	<input type="hidden" id="num" name="num" value="${q.no}" readonly></td>
	</form>
	</div>
	</fieldset>
	
	<fieldset>
  <legend>���</legend>
	<c:forEach var="qlist" items="${qa}">
	<form style="text-align:center" action = "reqna_update?num=${qlist.num}" method = "post">
	<td>${qlist.num}�� ��� �ۼ��� : ${qlist.writer} �ۼ���¥ : ${qlist.wdate} </td>
	<input type="hidden" id="num1" name="num1" value="${qlist.num}" readonly>
	<c:if test="${account.id == q.writer}">
	<input type="submit" id="update" value="������Ʈ" ><input type="button" onclick="location.href='reqna_delete?num=${qlist.num}'" value="��������" >
	<br/>
	<input type = "text" id = "contents" name = 'contents' value = "${qlist.contents}"/>
	<hr/>
	</c:if>
	
	<c:if test="${account.id != q.writer}">
	<br/>
	<input type = "text" value = "${qlist.contents}" readonly>
	<hr/>
	</c:if>
	
	<br/>
	</form>
	</c:forEach>
	</fieldset>
</body>
</html>