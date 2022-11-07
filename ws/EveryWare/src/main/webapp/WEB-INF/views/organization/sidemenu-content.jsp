<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<aside class="sidebar-left border-right bg-white shadow" id="leftSidebar" data-simplebar>
        <!-- <a href="#" class="btn collapseSidebar toggle-btn d-lg-none text-muted ml-2 mt-3" data-toggle="toggle">
          <i class="fe fe-x"><span class="sr-only"></span></i>
        </a> -->
        <nav class="vertnav navbar navbar-light">
          <!-- nav bar -->
          <div class="w-100 mb-4 d-flex">
            <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="${root}">
              <img src="${root}/resources/img/EveryWareLogo.png" alt="" class="logo">
                <g>
                  <polygon class="st0" points="78,105 15,105 24,87 87,87 	" />
                  <polygon class="st0" points="96,69 33,69 42,51 105,51 	" />
                  <polygon class="st0" points="78,33 15,33 24,15 87,15 	" />
                </g>
              </svg>
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

          
          </ul>
        </nav>
      </aside>