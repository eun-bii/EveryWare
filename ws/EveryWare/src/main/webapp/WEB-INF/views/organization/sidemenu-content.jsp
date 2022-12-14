<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <style>
 	#logo {
 		width : 25px;
 		height : 25px;
 		margin-top : 10px;
 	}
 </style>
 
 <c:set var="errorMsg" value="${sessionScope.errorMsg}"/>
<c:remove var="errorMsg" scope="session" />
<c:if test="${not empty errorMsg }">
	<script>
		alert('${errorMsg}');
	</script>
</c:if>


    
<aside class="sidebar-left border-right bg-white shadow" id="leftSidebar" data-simplebar>
        <!-- <a href="#" class="btn collapseSidebar toggle-btn d-lg-none text-muted ml-2 mt-3" data-toggle="toggle">
          <i class="fe fe-x"><span class="sr-only"></span></i>
        </a> -->
        <nav class="vertnav navbar navbar-light">
          <!-- nav bar -->
          <div class="w-100 mb-4 d-flex">
            <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="${root}">
              <img id="logo" src="${root}/resources/img/EveryWareLogoSmall.png" alt="EVERYWARE 로고" class="logo">
            </a>
          </div>
          
          <div class="btn-box w-100 mt-4 mb-1">
            <button type="button" class="btn mb-2 btn-primary btn-lg btn-block" onclick="location.href='${root}/organization/info'">
              <i class="fe fe-user fe-12 mr-1"></i><span class="small">임직원 정보</span>
            </button>
          </div>
          
          <p class="text-muted nav-heading mt-4 mb-1">
            <span>조직도</span>
          </p>
          
          <ul class="navbar-nav flex-fill w-100 mb-2">
            <li class="nav-item ">
                <a href="${root}/organization/chart" aria-expanded="false" class="nav-link">
                  <i class="fe fe-users fe-16"></i>
                  <span class="ml-3 item-text ">조직도</span>
                </a>
            </li>

          <c:if test="${loginMember.rightCode eq '1' || loginMember.rightCode eq '2'}">

            <p class="text-muted nav-heading mt-4 mb-1">
              <span>인사관리</span>
            </p>

          
            <li class="nav-item dropdown">
              <a href="#ui-elements" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-user-plus fe-16"></i>
                <span class="ml-3 item-text">인사관리</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="ui-elements">
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${root}/organization/management/emp/1"><span class="ml-1 item-text">임직원관리</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${root}/organization/management/position"><span class="ml-1 item-text">직위/직무설정</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${root}/organization/management/right"><span class="ml-1 item-text">권한관리</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${root}/organization/management/dept"><span class="ml-1 item-text">부서관리</span></a>
                </li>
                
              </ul>
            </li>
            <br>
          </c:if>
          
          </ul>
        </nav>
      </aside>
      

      <c:if test="${not empty errorMsg}">
        <script>
          alert(${errorMsg});
        </script>
      </c:if>

      <c:if test="${not empty alertMsg}">
        <script>
          alert(${alertMsg});
        </script>
      </c:if>


      <c:remove var="errorMsg" scope="session"/>
      <c:remove var="errorMsg" scope="request"/>
      <c:remove var="alertMsg" scope="session"/>
      <c:remove var="alertMsg" scope="request"/>