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
<title>EveryWare - 시간 외 근무</title>
<style>
.mb-0{
    margin-top: 20px;
}
#submit-btn{
    float: right;
}
#search-btn{
    float: right;
    margin-bottom: 80px;
    margin-top: -70px;
    margin-right: 30px;
}
.mb-5{
    float: right;
    margin: 30px;
    width: 80%;
}
#search-btn{
    float: right;
    margin-bottom: 80px;
    margin-top: -70px;
    margin-right: 20px;
}
#page-area{
  margin-left: 35%;
  margin-top: 5%;
}
#page-area>a{
  margin: 5px;
}
#no{
  border: none;
  border-right: 0px;
  border-top: 0px;
  border-left: 0px;
  border-bottom: 0px;
  width: 40px;
  height: 30px;
}
   
</style>
</head>

    <div class="wrapper">
        
        <%@ include file="/WEB-INF/views/common/header.jsp" %>
        <%@ include file="/WEB-INF/views/commute/admin-side.jsp" %>
     
    <!-- 출퇴근 기록 조회 -->

    <div class="card shadow mb-5" style="margin-top: 25px;">

      <div style="margin-left: 20px; margin-top: 20px;">
        <h4 class="card-title">출퇴근 기록 조회</h4><br><br>

        <form action="" method="get">
            <h6 class="card-title">기간 선택</h6>
            <div class="form-row mb-3">
                <div class="col-md-4 mb-3">
                <div class="input-group">
                    <input class="form-control" id="example-date" type="date" name="offStartDate" required>
                </div>
                </div>
                ~ 
                <div class="col-md-4 mb-3">
                <div class="input-group">
                    <input class="form-control" id="example-date" type="date" name="offEndDate" required>
                </div>
                </div>
            </div>
            <button class="btn btn-outline-primary" type="submit" id="search-btn">search</button>
        </form>
    
        <%-- <c:if test="${empty adDateCount}">
	        <h6 class="card-title">조회 결과 ${adListCount} 건</h6>
        </c:if>  
        <c:if test="${empty adListCount}">
	        <h6 class="card-title">조회 결과  ${adDateCount} 건</h6>
        </c:if> --%>

      <%-- <form action="${root}/dayoff/sendApproval" method="post">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>신청번호</th>
              <th>부서명</th>
              <th>이름</th>
              <th>시작일자</th>
              <th>종료일자</th>
              <th>일수</th>
              <th>사유</th>
              <th>상태</th>
              <th>등록일자</th>
            </tr>
          </thead>
          <tbody>
            <c:if test="${empty AdDateList}">
              <input type="hidden" id="no" value=""  name="num">
                <c:forEach items="${voList}" var="x">
                    <tr>
                      <td class="list">${x.offCode}</td>
                      <td class="list">${x.deptCode}</td>
                      <td class="list">${x.ECode}</td>
                      <td class="list">${x.offStartDate}</td>
                      <td class="list">${x.offEndDate}</td>
                      <td class="list">${x.offDays}</td>
                      <td class="list">${x.offReason}</td>
                        <c:if test="${x.offApproval == 'W'}">
                          <td class="list">
                            <select onchange="this.form.submit();"  name="approval" id="approval">
                                <option value="W" name="W">결재대기중</option>
                                <option value="A" name="A">승인완료</option>
                                <option value="C" name="C">반려</option>
                            </select>
                          </td>
                        </c:if>
                        <c:if test="${x.offApproval == 'A'}">
                        <td><span class="badge badge-pill badge-success">승인완료</span></td>
                        </c:if>
                        <c:if test="${x.offApproval == 'C'}">
                        <td><span class="badge badge-pill badge-danger">반려</span></td>
                        </c:if>
                      <td>${x.offEnrolldate}</td>
                    </tr>
                </c:forEach>
            </c:if>
            <c:if test="${empty voList}">
              <input type="hidden" id="no" value="${voList[0].offCode}" name="no">
                <c:forEach items="${AdDateList}" var="y">
                    <tr>
                        <td>${y.offCode}</td>
                        <td>${y.ECode}</td>
                        <td>${y.deptCode}</td>
                        <td>${y.offStartDate}</td>
                        <td>${y.offEndDate}</td>
                        <td>${y.offDays}</td>
                        <td>${y.offReason}</td>
                        <c:if test="${y.offApproval == 'W'}">
                            <td><span class="badge badge-pill badge-warning">결재대기중</span></td>
                        </c:if>
                        <c:if test="${y.offApproval == 'A'}">
                            <td><span class="badge badge-pill badge-success">승인완료</span></td>
                        </c:if>
                        <c:if test="${y.offApproval == 'C'}">
                            <td><span class="badge badge-pill badge-danger">반려</span></td>
                        </c:if>
                        <td>${y.offEnrolldate}</td>
                    </tr>
                </c:forEach>
            </c:if>
          </tbody>
        </table>
      </form>
      
        <c:if test="${y.offApproval == 'W'}">
            <td><span class="badge badge-pill badge-warning">결재대기중</span></td>
        </c:if>
        <c:if test="${y.offApproval == 'A'}">
            <td><span class="badge badge-pill badge-success">승인완료</span></td>
        </c:if>
        <c:if test="${y.offApproval == 'C'}">
            <td><span class="badge badge-pill badge-danger">반려</span></td>
        </c:if>

       
        <c:if test="${empty AdDateList && empty vo}">
          <div id="page-area">
            <c:if test="${pv.startPage ne 1}">
              <a href="${root}/dayoff/admin/${pv.startPage - 1}" class="btn mb-2 btn-primary"><</a>
            </c:if>
            <c:forEach begin="${ pv.startPage }" end="${ pv.endPage }" var="i">
                <a href="${root}/dayoff/admin/${i}" class="btn mb-2 btn-primary">${i}</a>
            </c:forEach>
            <c:if test="${pv.endPage ne pv.maxPage }">
              <a href="${root}/dayoff/admin/${pv.endPage + 1}" class="btn mb-2 btn-primary">></a>
            </c:if>	
          </div>
        </c:if>
        <c:if test="${empty voList && not empty vo}">
        	<div id="page-area">
	          <c:if test="${pv.startPage ne 1}">
	            <a href="${root}/dayoff/admin/${pv.startPage - 1}?offStartDate=${vo.offStartDate}&offEndDate=${vo.offEndDate}" class="btn mb-2 btn-primary"><</a>
	          </c:if>
	          <c:forEach begin="${ pv.startPage }" end="${ pv.endPage }" var="i">
	              <a href="${root}/dayoff/admin/${i}?offStartDate=${vo.offStartDate}&offEndDate=${vo.offEndDate}" class="btn mb-2 btn-primary">${i}</a>
	          </c:forEach>
	          <c:if test="${pv.endPage ne pv.maxPage }">
	            <a href="${root}/dayoff/admin/${pv.endPage + 1}?offStartDate=${vo.offStartDate}&offEndDate=${vo.offEndDate}" class="btn mb-2 btn-primary">></a>
	          </c:if>	
	        </div>
        </c:if>
      </div>
    </div> --%>


<script>

/* window.onload = function hi(){
  $(function(){
    $('tbody tr').children('.list').click(function(){
        //글 번호 가져오기 (this -> tr태그)
        let num = $(this).parent().children().eq(0).text();
        
        console.log(num);
        $('input[name=num]').attr('value', num);
    })
  });
} */
</script>
</body>
</html>

