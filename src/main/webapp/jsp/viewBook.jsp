<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="manager.resource.Resource"%>
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
						<!--  <script>
	$('.nav li a').click(function(e) {
		alert('clicked');
		var $this = $(this);
		if (!$this.hasClass('active')) {
			$this.addClass('active');
		}
		//e.preventDefault();
	});
</script>-->
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
						<title>Book info - Lib Manager Sys</title> <%
 	String logedIn = (String) session.getAttribute("login.done");
 	String roles = (String) session.getAttribute("patron.roles");
 	//logedIn = "nttuyen";
 	Resource book = (Resource) request.getAttribute("book_edit");
 	if (book == null) {
 		book = new Resource();
 	}
 %>



						<link rel="stylesheet" type="text/css" href="style.css">
							<style type="text/css">
<!--
.style1 {
	color: #999999;
	font-size: 14px;
	font-weight: bold;
}
-->
</style>
</head>

<body leftmargin=0 topmargin=0 marginheight="0" marginwidth="0"
	bgcolor="#ffffff">

	<table border="0" cellspacing="0" cellpadding="0" width="100%"
		height="100%">
		<tr valign="top">
			<td width="50%" background="images/bg.gif"><img
				src="images/px1.gif" width="1" height="1" alt="" border="0"></td>
			<td valign="bottom" background="images/bg_left.gif"><img
				src="images/bg_left.gif" alt="" width="17" height="16" border="0"></td>
			<td>
				<table border="0" cellpadding="0" cellspacing="0" width="780"
					height="107">
					<tr valign="bottom">
						<td><img src="images/logo.gif" width="183" height="107"
							alt="" border="0"></td>
						<td width="673" background="images/fon_top.gif">
							<table border="0" cellpadding="0" cellspacing="0" background="">
								<ul class="nav nav-pills">

									<li class="active"><a href="#"><span
											class="glyphicon glyphicon-home"></span> HOME</a></li>
									<li><a href="Book.jsp"><span class="glyphicon glyphicon-book"></span>
											BOOK</a></li>
									<li><a href="#"><span class="glyphicon glyphicon-cd"></span>
											CD</a></li>
									<li><a href="#"><span><img width="10px"
												height="20px" src="images/requesticon.jpg"></span> REQUEST</a></li>
									<li><a href="#"><span><img width="10px"
												height="20px" src="images/contact_us_icon.png"></span>
											CONTACT</a></li>
									<li><a href="#"><span><img width="10px"
												height="20px" src="images/support.png"></span> SUPPORT</a></li>
								</ul>
							</table>
						</td>
					</tr>
				</table>
				<table border="0" cellpadding="0" cellspacing="0" width="780"
					height="107">
					<tr valign="top">
						<td bgcolor="#D0E0ED">
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td bgcolor="#076BA7">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td><img src="images/text_1.gif" width="183"
													height="67"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<div align="center"></div>
							<div align="center"></div>

							<div align="left">
								<p></p>
								<p class="left">
									<img src="images/e01.gif" width="14" height="16" alt=""
										border="0" align="absmiddle">&nbsp;&nbsp;BẠN ĐỌC 
								</p>
								<p class="left">
									<img src="images/dot_o.gif" width="5" height="5" alt=""
										border="0">&nbsp;&nbsp;<a href="index.jsp">Tìm kiếm
									</a>
								</p>
								<%
									if (logedIn != null) {
								%>
								<p class="left">
									<img src="images/dot_o.gif" width="5" height="5" alt=""
										border="0">&nbsp;&nbsp;<a href="request.jsp">Đặt
											sách </a>
								</p>
								<%
									}
								%>
								<p class="left">&nbsp;</p>
							</div>

							<hr>

								<%
									if ("PATRON_LIB_MANAGER".equals(roles)) {
								%>


								<div align="left">
									<p class="left">
										<img src="images/e01.gif" width="14" height="16" alt=""
											border="0" align="absmiddle">&nbsp;ACTION 
									</p>
									<p class="left">
										<img src="images/dot_o.gif" width="5" height="5" alt=""
											border="0">&nbsp;&nbsp;<a href="checkOut.jsp">Cho
												mượn tài nguyên </a>
									</p>
									<p class="left">
										<img src="images/dot_o.gif" width="5" height="5" alt=""
											border="0">&nbsp;&nbsp;<a href="checkIn.jsp">Trả
												tài nguyên </a>
									</p>
								</div>

								<hr />


								<div align="left">
									<p class="left">
										<img src="images/e01.gif" width="14" height="16" alt=""
											border="0" align="absmiddle">&nbsp;MANAGER 
									</p>
									<p class="left">
										<img src="images/dot_o.gif" width="5" height="5" alt=""
											border="0">&nbsp;&nbsp;<a href="">Thêm sách </a>
									</p>
									<p class="left">
										<img src="images/dot_o.gif" width="5" height="5" alt=""
											border="0">&nbsp;&nbsp;<a href="editCD.jsp">Thêm CD
										</a>
									</p>

									<p class="left">
										<img src="images/dot_o.gif" width="5" height="5" alt=""
											border="0">&nbsp;&nbsp;<a href="deleteResource.jsp">Xoá
												tài liệu </a>
									</p>
									<p></p>
									<p class="left">
										<img src="images/dot_o.gif" width="5" height="5" alt=""
											border="0">&nbsp;&nbsp;<a href="editPatron.jsp">Thêm
												bạn đọc </a>
									</p>
									<p class="left">
										<img src="images/dot_o.gif" width="5" height="5" alt=""
											border="0">&nbsp;&nbsp;<a href="updatePatron.jsp">Cập
												nhật bạn đọc </a>
									</p>
									<p class="left">
										<img src="images/dot_o.gif" width="5" height="5" alt=""
											border="0">&nbsp;&nbsp;<a href="deletePatron.jsp">Xoá
												bạn đọc </a>
									</p>
								</div>
								<%
									}
								%>

								<br><br>
						</td>

						<td rowspan="2">
							<div align="center">
								<img src="images/top01.gif" width="597" height="24" alt=""
									border="0">
							</div>

							<div align="center">
								<table width="100%" border="0">
									<tr>
										<td width="6%" height="43">&nbsp;</td>
										<td width="66%">
											<p align="center">..:: Home &gt; Xem thông tin sách::..</p>
										</td>
										<td width="28%">
											<%
												if (logedIn == null) {
											%>
											<p align="right">
												Guest |<a href="login.jsp"> Login </a>
											</p> <%
 	} else {
 %>
											<p align="right">
												<a href="login.jsp"> <%=logedIn%>
												</a> |<a href="login.jsp"> Logout </a>
											</p> <%
 	}
 %>
										</td>
									</tr>
								</table>
							</div>

							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr valign="top">
									<td width="45%">
										<div>
											<p class="style1">Thông tin cuốn sách</p>
										</div>

										<table width="95%" border="0" align="center">
											<tr>
												<td rowspan="8"><img src="<%=book.getImages()%>"
													width="200" height="270" alt="" /></td>
												<td width="39%"><p>
														<strong>Mã sách : </strong>
													</p></td>
												<td width="59%"><p><%=book.getIsbn()%></p></td>
												<td width="2%">&nbsp;</td>
											</tr>
											<tr>
												<td><p>
														<strong>Tên sách : </strong>
													</p></td>
												<td><p><%=book.getName()%></p></td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td><p>
														<strong>Thuộc lĩnh vực : </strong>
													</p></td>
												<td><p><%=book.getCategories()%></p></td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td><p>
														<strong>Tác giả : </strong>
													</p></td>
												<td><p><%=book.getAuthors()%></p></td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td><p>
														<strong>Nhà xuất bản : </strong>
													</p></td>
												<td><p><%=book.getPublisher()%></p></td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td><p>
														<strong>Năm xuất bản : </strong>
													</p></td>
												<td><p><%=book.getPublished()%></p></td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td><p>
														<strong>Số lượng trong thư viện : </strong>
													</p></td>
												<td><p><%=book.getAmount()%></p></td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td valign="top"><p>
														<strong>Miêu tả về cuốn sách : </strong>
													</p></td>

												<td><textarea name="book.description"
														id="book.description" cols="35" rows="5"><%=book.getDescription()%></textarea></td>
												<td>&nbsp;</td>

												<td>&nbsp;</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td><div align="center"></div></td>
												<td>&nbsp;</td>
											</tr>
										</table>

									</td>
								</tr>
							</table>

							<div align="center">
								<img src="images/hr01.gif" width="556" height="11" alt=""
									border="0">
							</div>
						</td>
						<td rowspan="2">&nbsp;</td>
					</tr>
					<tr valign="bottom" bgcolor="#D0E0ED">
						<td><img src="images/bot_left.gif" width="183" height="21"
							alt="" border="0"></td>
					</tr>
				</table>
				<table border="0" cellpadding="0" cellspacing="0" width="780"
					height="64" background="images/fon_bot.gif">
					<tr valign="top">
						<td>
							<table border="0" cellpadding="0" cellspacing="0" width="780"
								background="">
								<tr>
									<td width="300"><p class="menu02">Copyright &copy;2015
											truonglee</p></td>
									<td>
										<p class="menu02">
											<a href="">Home</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">About Us</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">Support</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">Services</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">Contacts</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">Help</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">FAQ</a>
										</p>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
			<td valign="bottom" background="images/bg_right.gif"><img
				src="images/bg_right.gif" alt="" width="17" height="16" border="0"></td>
			<td width="50%" background="images/bg.gif"><img
				src="images/px1.gif" width="1" height="1" alt="" border="0"></td>
		</tr>
	</table>

</body>
</html>
