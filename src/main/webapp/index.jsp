<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=K2D:wght@200&family=Readex+Pro:wght@300&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="fontawesome/css/fontawesome-all.min.css" >
  
  <c:if test="${empty courses}">
 	<c:redirect url="saveC"></c:redirect>
 </c:if>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NVC Training</title>
<style type="text/css">
body{
	font-family: 'K2D', sans-serif;
	
}
.head{
	text-align: center;
	background-color: #CD5C5C;
	color: white;
}
b{
 text-align: center;
 font-size: 20px;
}

img{
    width: 10%;
    height: auto;
    margin: auto auto;
  	display: block;
}
p{
	align-items: center;
	text-align: center;
}

</style>
</head>
<body>
 <div class="head">
 	<img alt="" src="http://www.nc.ac.th/img/logo.png">
	<h1>NVC Training</h1>
	<h3>ระบบลงทะเบียนเข้าอบรมหลักสูตรผ่านเว็บไซต์</h3>
	<hr>
 </div>
  <form action="CourseServlet1" method="post">
 <div class = "container"><b>ข้อมูลผู้ลงทะเบียน</b></div>
 
 <div class="row g-2 container">
  <div class="col-sm-6">
    ชื่อ:<input type="text" class="form-control" name="fname" >
  </div>
  <div class="col-sm center">
    นามสกุล:<input type="text" class="form-control" name="lname" >
  </div>
 </div>
 
 <div class="row g container">
  <div class="col-sm">
    ที่อยู่:<input type="text" class="form-control" name="address" >
  </div>
 </div>
 
 <div class="row g-2 container">
  <div class="col-sm-6">
    จังหวัด:<input type="text" class="form-control" name="country" >
  </div>
  <div class="col-sm center">
    รหัสไปรษณีย์:<input type="text" class="form-control" name="postcode" >
  </div>
 </div>
 
 <div class="row g-2 container">
  <div class="col-sm-6">
    เบอร์โทรศัพท์:<input type="text" class="form-control" name="phone" >
  </div>
  <div class="col-sm center">
    อีเมล:<input type="text" class="form-control" name="email" >
  </div>
 </div>
  <br><hr>
  <div class = "container"><b>เลือกคอร์สอบรม</b></div>
  <br>
  <table class="table table-bordered container" style="width:100%" border="1">
			<thead style="font-weight: bold; text-align: center">
				<tr>
					<td>เลือก</td>
					<td>รหัสคอร์ส</td>
					<td>ชื่อคอร์ส</td>
					<td>ระยะเวลา(วัน)</td>
					<td>ราคา</td>
				</tr>
			</thead>
			<c:set var="i" value="${0}" />
			
			<c:forEach items="${courses}"  var="p">
				<tr style="text-align: center;">
					<td>
					<input type="checkbox" name="pNo" value="${i}">
					</td>
					<td>${p.code}</td>
					<td>${p.title}</td>
					<td>${p.duration}</td>
					<td>${p.price}</td>
				</tr>	
				<c:set var="i" value="${i+1}" />
			</c:forEach>
			
		</table>
		
		<p>
			<button type="submit" class="btn btn-primary">ลงทะเบียน</button>
			<button type="reset" class="btn btn-danger">ยกเลิก</button>
		</p>
  
  
  
  </form>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</html>