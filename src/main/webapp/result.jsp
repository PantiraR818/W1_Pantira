<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=K2D:wght@200&family=Readex+Pro:wght@300&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="fontawesome/css/fontawesome-all.min.css" >
  
  <c:if test="${empty sessionScope.fname}">
    	<c:redirect url="index.jsp"></c:redirect>
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
.card-header{
	text-align: center;
	font-size: 20px;
	font-weight: bold;
}
.card-text{
	font-size: 18px;
	font-weight: bold;
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
  <div class="card-header">ข้อมูลผู้ลงทะเบียน</div>
  <div class="card-body">
    <p class="card-text">
    ชื่อ:  ${sessionScope.fname}   ${sessionScope.lname} <br>
    ที่อยู่:  ${sessionScope.address}<br>
    จังหวัด:  ${sessionScope.country} <br>   รหัสไปรษณีย์:  ${sessionScope.postcode}<br>
    เบอร์โทรศัพท์:  ${sessionScope.phone} <br>  อีเมล:  ${sessionScope.email}</p>
  </div>
</div>
 
    
 </div>
  <br><hr>
  <div class = "container"><b>คอร์สที่ลงทะเบียน</b></div>
  <br>
  <table class="table table-bordered container" style="width:100%" border="1">
			<thead style="font-weight: bold; text-align: center">
				<tr>
					<td>รหัสคอร์ส</td>
					<td>ชื่อคอร์ส</td>
					<td>ระยะเวลา(วัน)</td>
					<td>ราคา</td>
				</tr>
			</thead>
			
			<c:forEach items="${sessionScope.courses}"  var="p">
				<tr style="text-align: center;">
					<td>${p.code}</td>
					<td>${p.title}</td>
					<td>${p.duration}</td>
					<td style="text-align: right";><fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits = "3" value="${p.price}"/></td>
				</tr>	
			</c:forEach>
			
		
		
  		<tr>
			<td colspan="3" style="font-weight: bold; text-align: right;">รวมค่าธรรมเนียม</td>
			<td style="text-align: right;"><fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits = "3" value="${sessionScope.total}" /></td>
		</tr>
		<tr>
 			<td colspan="3" style="font-weight: bold; text-align: right;">ภาษีมูลค่าเพิ่ม(7%)</td>
 			<td style="text-align: right;"><fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits = "3" value="${sessionScope.vat}"/></td>
 		</tr>
 		<tr>
 			<td colspan="3" style=" font-weight: bold; text-align: right;">ราคาสุทธิ</td>
 			<td style="text-align: right;"><fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits = "3" value="${sessionScope.total + vat}"/></td>
 		</tr>
  
  </table>
  
  
  
 
  
  </form>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</html>