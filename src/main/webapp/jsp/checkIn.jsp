<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
		<link rel="stylesheet" href="bootstrap/css/bootstrap.css.map">
			<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
				<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css.map">
					<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
						<script src="bootstrap/js/bootstrap.js"></script>
						<script src="bootstrap/js/bootstrap.min.js"></script>
						<script src="bootstrap/js/npm.js"></script>
						<script src="jquery/jquery-2.1.3.js"></script>
						<script src="jquery/jquery-2.1.3.min.js"></script>
						<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
						<script src="jquery/jquery.autocomplete.js"></script>
						<script type="text/javascript">
							$(document).ready(function() {
								$('ul.nav > li ').click(function(e) {
									// 			alert('clicked');
									//e.preventDefault();
									$('ul.nav > li ').removeClass('active');
									$(this).addClass('active');
								});
							});
						</script>
						

						<script>
							jQuery(function() {
								$(".inputtext").autocomplete("listbook.jsp");
							});
						</script>
						<script>
							jQuery(function() {
								$(".userid").autocomplete("listpatron.jsp");
							});
						</script>
						<title>check in - lib manager sys</title> <!--Đoạn mã đọc session để kiểm tra xem đã đăng nhập chưa,
	Nếu rồi thì đó là sinh viên, giảng viên hay nhân viên thư viện -->
						<%
							String logedIn = (String) session.getAttribute("login.done");
							String roles = (String) session.getAttribute("patron.roles");

							//roles = "PATRON_LIB_MANAGER";
							//Nếu chưa đăng nhập hoặc không fải là nhân viên thư viện thì không được truy cập trang này

							if (logedIn == null || !"PATRON_LIB_MANAGER".equals(roles)) {
								response.sendRedirect("login.jsp");
							}

							String messageErr = (String) request.getAttribute("messageErr");
							if (messageErr == null) {
								messageErr = "";
							}
						%>



						<link rel="stylesheet" type="text/css" href="css/style.css">
							<style type="text/css">
<!--
.style1 {
	font-size: 14px;
	font-weight: bold;
	color: #999999;
}

.style2 {
	color: #FF0000
}
-->
</style>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<link rel="stylesheet" type="text/css" href="css/stylesugess.css" />
</head>

<body>
	<table>
		<tr valign="top">
			<td>
				<div>
					<!-- 					Header -->
					<jsp:include page="header.jsp" />
					<!-- 					 End Header -->
				</div>
				<div>
					<jsp:include page="carousel.jsp" flush="true" />
				</div>
				<div class="wrapmiddel">

					<div class="sidebar">
						<jsp:include page="sidebar.jsp" flush="true" />
					</div>


					<div align="center">
						<p align="center">..:: Home &gt; Đặt sách::..</p>
					</div>


					<table width="710px">
						<tr valign="top">
							<td>
								<div>
									<p class="style1">Thông tin Trả tài nguyên:</p>
								</div> <!---Form nhập thông tin để trả sách-->

								<form name="formCheckIn" method="get" action="controler">
									<table width="95%" border="0" align="center">
										<tr>
											<td width="45%">&nbsp;</td>
											<td width="55%"><p class="style2"><%=messageErr%></p></td>
										</tr>
										<tr>
											<td><p>
													<strong>Mã đăng nhập của người mượn : </strong>
												</p></td>
											<td><input name="checkIn.userID" type="text"
												id="checkIn.userName" size="35" class="userid"></td>
										</tr>
										<tr>
											<td><p>
													<strong>Mã tài nguyên mượn : </strong>
												</p></td>
											<td><input name="checkIn.Isbn" type="text"
												id="checkIn.Isbn" size="35" class="inputtext"></td>
										</tr>
<!-- 										<tr> -->
<!-- 											<td><p> -->
<!-- 													<strong>Mã tài nguyên mượn : </strong> -->
<!-- 												</p></td> -->
<!-- 											<td><select name="selectbook"> -->
<!-- 													<option value="1">a</option> -->
<!-- 													<option value="1">s</option> -->
<!-- 													<option value="1">d</option> -->
<!-- 													<option value="1">f</option> -->
<!-- 													<option value="1">g</option> -->

<!-- 											</select></td> -->
<!-- 										</tr> -->
										<tr>
											<td>&nbsp;</td>
											<td><div align="center">

													<input name="action" type="hidden" value="CHECK_IN" /> <input
														name="checkIn_type" type="hidden" value="LOAD" /> <input
														name="checkIn.submit" type="submit" id="checkIn.date">
														<input name="checkIn.reset" type="reset"
														id="checkIn.reset">
												</div></td>
										</tr>
									</table>
								</form>


								<p>&nbsp;</p>
								<p>&nbsp;</p>
								<p class="right">&nbsp;</p>
							</td>
						</tr>
					</table>
				</div>
				<div>
					<jsp:include page="footer.jsp" flush="true" />
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
