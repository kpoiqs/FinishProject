<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home</title>
  <style>
ul.a{
	list-style-type : none;
}
li{
	list-style-type : none;
}
#a{
  font-size: 150%;
}
</style>
  <meta charset="utf-8">
  
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"

	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<script

	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script

	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<script

	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

	<script type="text/javascript">
	$(function(){
		$("#datepicker1, #datepicker2").datepicker({

            dateFormat: 'yy.mm.dd'

        });
		$("#check1").click(function(){
			$("ul").empty();
				var li = $("<li>").css("color" , "black").html("<select name = 'from' id = 'from'> <option value='icn' selected = 'selected'>ICN</option><option value='nrt'>NRT</option><option value='kix'>KIX</option></select>&nbsp;<select name = 'to' id = 'to'><option value='icn' selected = 'selected'>ICN</option><option value='nrt'>NRT</option><option value='kix'>KIX</option></select>&nbsp;<label for='fromDate'>시작일</label><input type='text' name='fromDate' id='fromDate'> ~ <label for='toDate'>종료일</label><input type='text' name='toDate' id='toDate'>");
			
				$("ul").append(li);
				$("#datepicker1, #datepicker2").datepicker({

		            dateFormat: 'yy.mm.dd'

		        });
				$(function() {
	                
		            

	                
	                // 시작일(fromDate)은 종료일(toDate) 이후 날짜 선택 불가
	                // 종료일(toDate)은 시작일(fromDate) 이전 날짜 선택 불가

	                //시작일.
	                $('#fromDate').datepicker({
	                    showOn: "both",          // 버튼 이미지만 표시할지 여부
	   
	                    dateFormat: "yy-mm-dd",             // 날짜의 형식
	                    changeMonth: true,                  // 월을 이동하기 위한 선택상자 표시여부
	                    minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
	                    onClose: function( selectedDate ) {    
	                        // 시작일(fromDate) datepicker가 닫힐때
	                        // 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
	                        $("#toDate").datepicker( "option", "minDate", selectedDate );
	                    }                
	                });

	                //종료일
	                $('#toDate').datepicker({
	                    showOn: "both", 
	                    dateFormat: "yy-mm-dd",
	                    changeMonth: true,
	                    minDate: 0, // 오늘 이전 날짜 선택 불가
	                    onClose: function( selectedDate ) {
	                        // 종료일(toDate) datepicker가 닫힐때
	                        // 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
	                        $("#fromDate").datepicker( "option", "maxDate", selectedDate );
	                    }                
	                });
	            });
		});
		$("#check2").click(function(){
			$("ul").empty();
			var li = $("<li>").css("color" , "black").html("<select name = 'from' id = 'from'> <option value='icn' selected = 'selected'>ICN</option><option value='nrt'>NRT</option><option value='kix'>KIX</option></select>&nbsp;<select name = 'to' id = 'to'><option value='icn' selected = 'selected'>ICN</option><option value='nrt'>NRT</option><option value='kix'>KIX</option></select>&nbsp; <label for='fromDate'>시작일</label><input type='text' name='fromDate' id='fromDate'>");
			
			$("ul").append(li);
			$("#datepicker1, #datepicker2").datepicker({

	            dateFormat: 'yy.mm.dd'

	        });
$(function() {
                
            

                
                // 시작일(fromDate)은 종료일(toDate) 이후 날짜 선택 불가
                // 종료일(toDate)은 시작일(fromDate) 이전 날짜 선택 불가

                //시작일.
                $('#fromDate').datepicker({
                    showOn: "both",          // 버튼 이미지만 표시할지 여부
   
                    dateFormat: "yy-mm-dd",             // 날짜의 형식
                    changeMonth: true,                  // 월을 이동하기 위한 선택상자 표시여부
                    minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
                    onClose: function( selectedDate ) {    
                        // 시작일(fromDate) datepicker가 닫힐때
                        // 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                        $("#toDate").datepicker( "option", "minDate", selectedDate );
                    }                
                });

                //종료일
                $('#toDate').datepicker({
                    showOn: "both", 
                    dateFormat: "yy-mm-dd",
                    changeMonth: true,
                    minDate: 0, // 오늘 이전 날짜 선택 불가
                    onClose: function( selectedDate ) {
                        // 종료일(toDate) datepicker가 닫힐때
                        // 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
                        $("#fromDate").datepicker( "option", "maxDate", selectedDate );
                    }                
                });
            });
	});
		$(function(){                
            $("#reservation").click(function(){              
             var input_val = $("#fromDate").val();
             var input_val2 = $("#toDate").val();
             var from = $("#from").val();
             var to = $("#to").val();
             //alert(input_val);
              if(!input_val){
              alert("Plz insert the Date of Departure");
              return false;
             } 
              if(!input_val2&&input_val2!=null){
              alert("Plz insert the Date of Return");
              return false;
             }    
              if(from==to){
                  alert("Searching from and to the same city is not possible");
                  return false;
                 }    
  			
            });                
           });
	});
	</script>
	  <script>
            $(function() {
                
            

                
                // 시작일(fromDate)은 종료일(toDate) 이후 날짜 선택 불가
                // 종료일(toDate)은 시작일(fromDate) 이전 날짜 선택 불가

                //시작일.
                $('#fromDate').datepicker({
                    showOn: "both",          // 버튼 이미지만 표시할지 여부
   
                    dateFormat: "yy-mm-dd",             // 날짜의 형식
                    changeMonth: true,                  // 월을 이동하기 위한 선택상자 표시여부
                    minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
                    onClose: function( selectedDate ) {    
                        // 시작일(fromDate) datepicker가 닫힐때
                        // 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                        $("#toDate").datepicker( "option", "minDate", selectedDate );
                    }                
                });

                //종료일
                $('#toDate').datepicker({
                    showOn: "both", 
                    dateFormat: "yy-mm-dd",
                    changeMonth: true,
                    minDate: 0, // 오늘 이전 날짜 선택 불가
                    onClose: function( selectedDate ) {
                        // 종료일(toDate) datepicker가 닫힐때
                        // 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
                        $("#fromDate").datepicker( "option", "maxDate", selectedDate );
                    }                
                });

                
            });
        </script>
</head>
<body>

<div id = "a" >
  <h2>&nbsp;&nbsp;&nbsp;Board</h2>
  	<c:choose>
  		<c:when test="${account !=null}">
			<form action="logout" style="text-align:right">
			<input type = "submit" class="btn btn-primary" value = "logout"/>&nbsp;&nbsp;&nbsp;
			</form>
			<div style="text-align:right">
			<input type = "button" onclick="location.href='iddetail.jsp'" class="btn btn-primary" value = "detail"/>&nbsp;&nbsp;&nbsp;
			</div>
			<div style="text-align:right">
			<input type = "button" onclick="location.href='Withdrawalcheck.jsp'" class="btn btn-primary" value = "Withdrawal"/>&nbsp;&nbsp;&nbsp;
			</div> 	
  		</c:when>
  		<c:otherwise>
  			<form action = 'login_input' style="text-align:right">
 			<input type = "submit" class="btn btn-primary" value = "login"/>&nbsp;&nbsp;&nbsp;
 			</form>
  		</c:otherwise>
  	</c:choose>
  </div>
   
    
    <form style="text-align: center" action = 'reservation' method = "post" >
			<input type = "radio" id = "check1" name = "check1" value = "c1" checked = "checked">return
			<input type = "radio" id = "check2" name = "check1" value = "c2">one way
		<br/>
		
		<ul class = "a"><li>
		<select name = 'from' id = 'from' >
			<option value='icn' selected = 'selected'>ICN</option>
			<option value='nrt'>NRT</option>
			<option value='kix'>KIX</option>
		</select>
		<select name = 'to' id = 'to'>
			<option value='icn' selected = 'selected'>ICN</option>
			<option value='nrt'>NRT</option>
			<option value='kix'>KIX</option>
		</select>
          <label for="fromDate">시작일</label><input type="text" name="fromDate" id="fromDate"> ~ <label for="toDate">종료일</label><input type="text" name="toDate" id="toDate">
		</li></ul>
		<input type = "submit" class="btn btn-primary" id="reservation" value = "reservation"/>
		</form>
		<button type="button" onclick="location.href='q_req_list?reqPage=1'">QnA</button>
	
		
</body>
</html>