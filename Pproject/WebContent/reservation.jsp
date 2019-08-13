<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("#book").click(function() {
			var chk_radio = document.getElementsByName('check1');
			var chk_radio2 = document.getElementsByName('check2');

			var sel_type = null;

			var sel_type2 = null;

			for (var i = 0; i < chk_radio.length; i++) {

				if (chk_radio[i].checked == true) {

					sel_type = chk_radio[i].value;

				}

			}

			if (!sel_type) {

				alert("please select a departure journey");

				return false;

			}
			for (var a = 0; a < chk_radio2.length; a++) {

				if (chk_radio2[a].checked == true) {

					sel_type2 = chk_radio2[a].value;

				}

			}

			if (!sel_type2 && sel_type != null) {

				alert("please select a return journey");

				return false;

			}

		});
	});
	$(function() {
		$("#book1").click(function() {
			var chk_radio3 = document.getElementsByName('check3');
			var sel_type3 = null;
			for (var o = 0; o < chk_radio3.length; o++) {

				if (chk_radio3[o].checked == true) {

					sel_type3 = chk_radio3[o].value;

				}

			}
			if (!sel_type3) {

				alert("please select a departure journey");

				return false;

			}
		});
	});
</script>
</head>
<body>
	Depart air ${fromdate}
	<hr />
	<form action='book.do' method='post'>
		<c:if test="${empty plans&&plan2 != null}">
	sorry, we found no resuslts on this date.<br />
	Plz select another date.<br />

		</c:if>

		<c:if test="${plans != null&&plan2 != null}">

			<c:forEach var="planlist" items="${plans}">

				<tr>
					<td>${planlist.depa}</td>
					<td>${planlist.dept}</td> &#61;&#61;&#62;
					<td>${planlist.arva}</td>
					<td>${planlist.arvt}</td>
					<td>${planlist.cost}</td>&#165;
					<input type="radio" id="check1" name="check1"
						value="${planlist.sno}">

					<hr />

				</tr>

			</c:forEach>
			<input type='hidden' id='fromdate' name='fromdate'
				value='${fromdate}'>
			<br>
			<br>
			<br>Return air ${todate}<hr />
			<c:if test="${empty plan2&&plans != null}">
			sorry, we found no resuslts on this date.<br />
			Plz select another date.<br />

			</c:if>

			<c:forEach var="planlists" items="${plan2}">
				<tr>
					<td>${planlists.depa}</td>
					<td>${planlists.dept}</td> &#61;&#61;&#62;
					<td>${planlists.arva}</td>
					<td>${planlists.arvt}</td>
					<td>${planlists.cost}</td>&#165;
					<input type="radio" id="check2" name="check2"
						value="${planlists.sno}">
					<hr />
				</tr>

			</c:forEach>
			<input type='hidden' id='todate' name='todate' value='${todate}'>
			<input type="submit" class="btn btn-primary" id="book" value="book" />
		</c:if>
	</form>


	<form action='book1.do' method='post'>
		<c:if test="${plan2 == null}">
			<c:forEach var="planlist" items="${plans}">

				<tr>
					<td>${planlist.depa}</td>
					<td>${planlist.dept}</td> &#61;&#61;&#62;
					<td>${planlist.arva}</td>
					<td>${planlist.arvt}</td>
					<td>${planlist.cost}</td>&#165;
					<input type="radio" id="check3" name="check3"
						value="${planlist.sno}">
					<hr />

				</tr>

			</c:forEach>
			<input type='hidden' id='fromdate' name='fromdate'
				value='${fromdate}'>
			<input type="submit" class="btn btn-primary" id="book1" value="book1" />
		</c:if>


	</form>
</body>
</html>