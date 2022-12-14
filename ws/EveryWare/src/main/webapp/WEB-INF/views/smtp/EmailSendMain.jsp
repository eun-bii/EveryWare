<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="root" value="${pageContext.request.contextPath}"></c:set>
<c:set var="alertMsg" value="${sessionScope.alertMsg}"/>
<c:if test="${not empty alertMsg}">
		<script>
			alert('${alertMsg}');
		</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EveryWare</title>
<style>
	#searchId-logo{
    width: 500px;
    height: 70px;
    margin-left: -80px;
    margin-top: 175px;
    margin-bottom: 30px;
	}
  .swal-wide{
    width: 800px !important;
  } 
	
</style>
</head>
<script src="https://cdn.staticfile.org/jquery/3.1.1/jquery.min.js"></script>
<!-- sweet alert -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<!-- Simple bar CSS -->
<link rel="stylesheet" href="${root}/resources/css/simplebar.css">
<!-- Fonts CSS -->
<link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<!-- Icons CSS -->
<link rel="stylesheet" href="${root}/resources/css/feather.css">
<link rel="stylesheet" href="${root}/resources/css/select2.css">
<link rel="stylesheet" href="${root}/resources/css/dropzone.css">
<link rel="stylesheet" href="${root}/resources/css/uppy.min.css">
<link rel="stylesheet" href="${root}/resources/css/jquery.steps.css">
<link rel="stylesheet" href="${root}/resources/css/jquery.timepicker.css">
<link rel="stylesheet" href="${root}/resources/css/quill.snow.css">
<!-- Date Range Picker CSS -->
<link rel="stylesheet" href="${root}/resources/css/daterangepicker.css">
<!-- App CSS -->
<link rel="stylesheet" href="${root}/resources/css/app-light.css" id="lightTheme">
<!-- <link rel="stylesheet" href="css/app-dark.css" id="darkTheme" disabled> -->
<body style="width: 100%; overflow-x: hidden;">





<form method="post" action="${root}/emp/mailSend">

   <!-- controller에서 이름과 이메일이 일치할 때 해당 이메일로 메일 발송하기 -->
            <!-- 받는 사람 : <input type="email" name="empEMail" value="" />
  
            <input type="hidden" name="format" value="text" />
    
            <input type="hidden" name="content" value="EveryWare 임시 비밀번호는 [] 입니다."> -->
   
            

            <div class="wrapper vh-100">
                <div class="row align-items-center h-100">
                  <div class="col-lg-3 col-md-4 col-10 mx-auto text-center">
                    <input type="hidden" name="format" value="text" />
                    <!-- <input type="hidden" name="content" value="EveryWare 임시 비밀번호는 [] 입니다."> -->
                  <div class="wrapper vh-100">
                  <a href="${root}/emp/login">
                    <img alt="searchId-logo" id="searchId-logo" src="${root}/resources/img/EveryWareLogo.png"><br><br>
                  </a>
                    <h1 class="h6 mb-3">Find PWD</h1>
                    <div class="form-group">
                      <label for="inputName" class="sr-only">Name</label>
                      <input type="text" id="empName" name="empName" class="form-control form-control-lg" placeholder="Name" required="" autofocus="">
                    </div>
                    <div class="form-group email">
                      <label for="inputEmail" class="sr-only">Email address</label>
                      <input type="email" id="empEMail" name="empEMail" class="form-control form-control-lg" placeholder="Email address" required="">
                    </div>
                    <button class="btn btn-lg btn-outline-primary btn-block" id="resetBtn" type="submit">Send Temp Password</button><br><br><br><br><br><br>
                    <div>Don't you remember your ID? 
                    <a href="${root}/emp/searchId"> Find ID</a>
                    </div>
                    <p class="mt-5 mb-3 text-muted">© 2022</p>
                  </div>
                </div>
              </div>

<script>

</script>

</form>
</body>
</html>