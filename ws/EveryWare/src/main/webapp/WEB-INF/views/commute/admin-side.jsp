<%@ page language="java" contentType="text/html; charset=UTF-8"%>
    pageEncoding="UTF-8"%>
    
<style>
     .logo {
         width : 25px;
         height : 25px;
         margin-top : 10px;
     }
</style>

<aside class="sidebar-left border-right bg-white shadow" id="leftSidebar">
        <a href="#" class="btn collapseSidebar toggle-btn d-lg-none text-muted ml-2 mt-3" data-toggle="toggle">
          <i class="fe fe-x"><span class="sr-only"></span></i>
        </a>
        <nav class="vertnav navbar navbar-light">
          <!-- nav bar -->
          <div class="w-100 mb-4 d-flex">
            <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="${root}">
              <img src="${root}/resources/img/EveryWareLogoSmall.png" alt="" class="logo" href="${root}">
                <g>
                  <polygon class="st0" points="78,105 15,105 24,87 87,87 	" />
                  <polygon class="st0" points="96,69 33,69 42,51 105,51 	" />
                  <polygon class="st0" points="78,33 15,33 24,15 87,15 	" />
                </g>
              </svg>
            </a>
          </div>
          <div class="btn-box w-100 mt-4 mb-1"></div> 
         
          <ul class="navbar-nav flex-fill w-100 mb-2">
            <li class="nav-item dropdown">
              <a href="#ui-elements" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-user fe-16"></i>
                <span class="ml-3 item-text">근태 관리</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="ui-elements">
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${root}/commute/main/admin/1"><span class="ml-1 item-text">출퇴근 기록 조회</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${root}/commute/admin/1"><span class="ml-1 item-text">시간 외 근무 결재</span></a>
                </li>
              </ul>
            </li>
          
            <li class="nav-item dropdown">
              <a href="#forms" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-pie-chart fe-16"></i>
                <span class="ml-3 item-text">휴가 관리</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="forms">
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${root}/dayoff/admin/1"><span class="ml-1 item-text">휴가 결재</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${root}/dayoff/calendar/admin"><span class="ml-1 item-text">휴가 현황 조회</span></a>
                </li>
              </ul>
            </li>
        </nav>
      </aside>