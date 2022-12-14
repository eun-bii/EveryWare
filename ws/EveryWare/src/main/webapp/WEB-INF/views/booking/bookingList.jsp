<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약</title>
<style>
.form-group{
    width: 150px;
    margin-left: 30px;
    margin-top: 18px;
  }
#booking-date{
	margin-top: 20px;
	margin-bottom: 20px;
}
.returnBtn{
	border: 0;
	outline: 0;
	background-color:transparent;
}
.booking-box{
	margin: 10px;
}
.booking-label{
	margin-top:20px;
}
.btn-secondary{
	margin: 5px;
}
</style>
</head>

<body class="vertical  light  ">

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/sidemenu-content.jsp" %>

<div class="wrapper">
      
      <main role="main" class="main-content">
      
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12">
              <div class="row align-items-center my-4">
              
                <div class="col">
                  <h2 class="h3 mb-0 page-title">예약 목록</h2>
                </div>
                
	           <!-- 카테고리 -->
			       <div class="form-group mb-3">
			         <select class="custom-select" id="custom-select">
			           <option selected>전체</option>
			           <option value="1">비품</option>
			           <option value="2">회의실</option>
			         </select>
			       </div>
	       
                <div class="col-auto">
                  
                  <!-- Button modal -->
                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#defaultModal"><span class="fe fe-filter fe-12 mr-2"></span> Create </button>
                  
                   
                  <!-- Modal boutton-->
                  <form action="${root}/booking/write" method="POST"> 
                  <div class="modal fade" id="defaultModal" tabindex="-1" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                           <h5 class="modal-title" id="defaultModalLabel">예약하기</h5>
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                           </button>
                        </div>
                      
                      <div class="modal-body">
                       
                        <label for="custom-select">종류</label>
                        <select class="custom-select" id="custom-select" name="bkType">
                          <option value="A">비품</option>
                          <option value="M">회의실</option>
                        </select>
                        
                        <label for="custom-select">비품명</label>
                        <select class="custom-select" id="custom-select" name="bkTargetNo">
                          <option value="1">빔프로젝트</option>
                          <option value="2">커피머신</option>
                          <option value="3">노트북</option>
                        </select>
                       
	                 	  <!-- 예약일자 -->       
	                      <div id="booking-date">
	                      <label for="example-date"><b>* 예약기간</b></label>
	                      
		                 	  <div class="input-group">
		                 	  	<label class="booking-label" >예약 시작</label>
		                        <input class="form-control booking-box" id="example-date" type="date" name="bkStart">
		                        <input class="form-control booking-box" id="example-time" type="time" name="startTime">
		                      </div>
		                      <div class="input-group">
		                      <label class="booking-label" >예약 종료</label>
		                      	<input class="form-control booking-box" id="example-date"  type="date" name="bkEnd">
		                        <input class="form-control booking-box" id="example-time" type="time" name="endTime">
		                       </div>
	                       </div>
                        </div>
                       
                         <div class="modal-footer">
                           <button type="button" class="btn mb-2 btn-secondary" data-dismiss="modal">닫기</button>
                           <button type="submit" class="btn mb-2 btn-primary">저장</button>
                         </div>
                       </form>
                         
                       </div>
                     </div>
                   </div>
                </div>
              </div>
              
              
              <!-- table -->
              <div class="card shadow">
                <div class="card-body tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                
                
                
                  <table class="table table-borderless table-hover">
                  
                    <thead>
                      	<tr>
	                        <th>이미지</th>
	                        <th>자원명</th>
	                        <th>예약 시간</th>
	                        <th>상태</th>
	                        <th>반납</th>
                      	</tr>
                    </thead>
                    
                    <tbody>
                    
                    <c:forEach items="${bList}" var="list">
                    <c:if test="${ list.bkWriter eq loginMember.empCode }">
                    
                      <tr>
                        
                        <td>
                          <div class="avatar avatar-sm">
                            <img src="${root}/resources/img/${list.targetImage}" alt="..." class="avatar-img rounded-circle">
                          </div>
                        </td>
                        <td>
                          <p class="mb-0 text-muted"><strong>${list.bkTargetNo}</strong></p>
                          <small class="mb-0 text-muted">${list.bkType}</small>
                        </td>
                        <td>
                          <p class="mb-0 text-muted"> ${list.bkStart} ${list.startTime} 부터 <br> ${list.bkEnd} ${list.endTime} 까지 </p>
                        </td>
                        <td>
                          <span class="badge badge-primary">예약중</span>
                        </td>
                        <td>
                          <button class="returnBtn" onclick="location.href='${root}/booking/delete/${list.bkNo}';"><span class="badge badge-primary">반납하기</span></button>
                        </td> 
                      </tr>
                    </c:if>
                    </c:forEach>
                      
                    </tbody>
                    
                  </table>
                </div>
              </div>
              
             <!-- 페이징 -->
             <nav aria-label="Table Paging" class="my-3">
              <ul class="pagination justify-content-center mb-0">
              	<c:if test="${pv.startPage ne 1}">
            	    <li class="page-item"><a class="page-link" href="/app00/booking/bookingList/${pv.startPage - 1}">Previous</a></li>
                </c:if>
                <c:forEach begin="${pv.startPage}" end="${pv.endPage}" var="i">
                	<li class="page-item"><a class="page-link" href="/app00/booking/bookingList/${i}">${i}</a></li>
                </c:forEach>
                <c:if test="${pv.endPage ne pv.maxPage}">
           	     <li class="page-item"><a class="page-link" href="/app00/booking/bookingList/${pv.endPage + 1}">Next</a></li>
                </c:if>
               </ul>
              </nav>
              
            </div> <!-- .col-12 -->
          </div> <!-- .row -->
        </div> <!-- .container-fluid -->
        
      </main> <!-- main -->
      
    </div> <!-- .wrapper -->
    
    

</body>
</html>