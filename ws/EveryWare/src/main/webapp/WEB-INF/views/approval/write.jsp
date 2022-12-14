<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EveryWare - 전자결재</title>
<style>
	.card{
		margin: auto;
		width: 70%;
		padding: 10px
	}
	#approval-table{
		text-align: center;
	}
  #approval-ref-table{
    text-align: center;
  }
	#approval-table td{
		width: 100px;
	}
  #approval-ref-table td{
		width: 100px;
	}
	#approval-setting-table tr{
		height: 10px;
	}
  #appr-line-setting{
  	margin-top: 40px;
  	margin-bottom: 20px;
  }
  #appr-line-setting:hover, #appr-ref-setting:hover{
    cursor: pointer;
  }
  .modal-dialog-centered{
    width: 100px;
  }
  .h-150{
    height: 150px;
  }
  .fe-24{
    border-radius: 100%;
  }
  .fe-24:hover{
    background-color: rgb(202, 222, 247);
  }
  #approver-select, #ref-select, #selected-ref{
    height: 600px;
  }
  table td{
    width: 10px;
  }
  .del-file:hover{
    background-color: rgb(177, 226, 249);
  }
  
</style>
</head>
<body>

  <%@ include file="/WEB-INF/views/common/header.jsp" %>
  <%@ include file="/WEB-INF/views/approval/sidemenu-content.jsp" %>

 	<main role="main" class="main-content">
    
    <div class="card shadow mb-4">
      <div class="card-body">
        <table class="table table-bordered mb-0 shadow" id="approval-setting-table">
          <tr>
            <td class="appr-table-color">문서 종류</td>
            <td>
              <div class="form-group mb-3 w-100">
              <select class="custom-select form-control align-items-center justify-content-center" id="formSelect" name="docFormCode">
                <option value="0">선택</option>
                <c:forEach items="${formList}" var="f">
                  <option value="${f.formCode}" <c:if test="${selectedFormCode == f.formCode}">selected="selected"</c:if>>${f.formName}</option>
                </c:forEach>
              </select>
              </div>
            </td>
            <td class="appr-table-color">보존연한</td>
            <td>
              <div class="form-group mb-3">
                <select class="custom-select form-control align-items-center justify-content-center" id="custom-select" name="periodCode">
                  <c:forEach items="${periodList}" var="p">
                    <option value="${p.periodCode}">${p.period}</option>
                  </c:forEach>
                </select>
              </div>
            </td>
          </tr>
          <tr>
            <td class="appr-table-color">작성자</td>
            <td class="writer-name" id="${loginMember.empCode}">${loginMember.empName}</td>
            <td class="appr-table-color">작성일자</td>
            <td id="current-date">
              
            </td>
          </tr>
        </table>
                 
                 
        <!-- 결재라인 -->
        <div class="fe fe-settings fe-16 text-info" id="appr-line-setting" data-toggle="modal" data-target="#verticalModal"> 결재라인 설정</div>
        <table id="approval-table" class="table table-bordered mb-0 shadow">
        </table>
        <table id="approval-ref-table" class="table table-bordered mb-0 shadow">
          <tr>
            <td class="appr-table-color">참조인</td>
            <td colspan="9" class="text-left" id="ref-selected">
              <span id="appr-ref-setting" class="fe fe-plus fe-16 w-25 text-info" data-toggle="modal" data-target="#refModal">
                편집하기
              </span>
            </td>
          </tr>
        </table>
      </div>
    </div>
    

    <c:if test="${not empty formMappingList}">
      <div class="card shadow mb-4">
        <div class="card-body" id="form-content">
          <div class="form-group mb-3">
            <label>제목</label>
            <input type="text" class="form-control" name="docTitle">
          </div>	
          <c:forEach items="${formMappingList}" var="f">
            <div class="form-group mb-3">
              <label>${f.formDetailName}</label>
              <c:choose>
                <c:when test="${f.formDetailType eq 'textarea'}">
                  <textarea class="form-control" detailCode="${f.formDetailCode}" name="docContent"></textarea>
                </c:when>
                <c:otherwise>
                  <input type="${f.formDetailType}" detailCode="${f.formDetailCode}" class="form-control" name="docContent">
                </c:otherwise>
              </c:choose>	            
            </div>
          </c:forEach>	
        </div>
      </div>
    </c:if>     
          
          
      
    <!-- 첨부파일 -->
    <c:if test="${not empty formMappingList}">
        <div class="card shadow mb-4">
          <div class="card-header">
            <strong>첨부파일</strong>
          </div>
          <div class="card-body">
            <div class="form-group mb-3">
              <div class="custom-file">
                <input type="file" class="custom-file-input" multiple id="customFile" name="file">
                <label class="custom-file-label" for="customFile">Choose file</label>
                <div id="file-name" class="m-1"></div>
              </div>
            </div>
          </div> <!-- .card-body -->
        </div> <!-- .card -->

      <div class="text-center">
        <input type="submit" class="btn mb-2 btn-secondary" value="임시저장" id="storage" onclick="insert();">
        <input type="submit" class="btn mb-2 btn-secondary" value="작성하기" id="write" onclick="insert();">
      </div>
    </c:if>


   
    <!-- 결재라인 설정 모달창 -->
    <div class="modal" id="verticalModal" tabindex="-1" role="dialog" aria-labelledby="verticalModalTitle" aria-hidden="true" data-backdrop="static">
      <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="verticalModalTitle">결재라인 설정</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

          <div class="modal-body">

            <div id="modal-appr-type" class="d-flex m-2">
              <c:forEach items="${approvalTypeList}" var="a">
                <div class="custom-control custom-checkbox">
                  <input type="checkbox" class="custom-control-input mb-1" id="customCheck${a.apprTypeCode}" value="${a.apprTypeCode}" name="typeCheck[]">
                  <label class="custom-control-label p-1 mr-2" for="customCheck${a.apprTypeCode}">${a.apprTypeName}</label>
                </div>
              </c:forEach>
            </div>
            <div class="form-group mb-3 w-25">
              <select class="custom-select form-control" id="appr-dept-selectbox">
                <option value="0">전체</option>
                <c:forEach items="${deptList}" var="d" >
	                <option value="${d.deptCode}">${d.deptName}</option>
                </c:forEach>
              </select>
            </div>

            <div id="approver-select" class="d-flex">

              <div id="name-list" class="w-50">
                <select id="emp-name" multiple="multiple" class="custom-select form-control w-100 h-100 non-scroll">
                  <c:forEach items="${empList}" var="e">
	                  <option value="${e.empCode}">${e.empName} (${e.deptName} - ${e.rankName})</option>
                  </c:forEach>
                </select>
              </div>
              <div class="w-75 d-flex flex-column">
                <c:forEach items="${approvalTypeList}" var="a">
                  <div class="d-none appr-custom-box" apprTypeCode="${a.apprTypeCode}">
                    <div class="d-flex">
                      <div class="h-150 w-25 mx-4 d-flex flex-column justify-content-center align-items-center">
                        <a id="${a.apprTypeCode}" class="fe fe-24 fe-arrow-right-circle mb-1 add-user"></a>
                        <a id="${a.apprTypeCode}" class="fe fe-24 fe-arrow-left-circle delete-user"></a>
                      </div>
                      <div class="w-75 h-150" id="type-content" apprTypeCode="${a.apprTypeCode}">
                        <span class="">${a.apprTypeName}</span>
                        <select id="${a.apprTypeCode}" multiple="multiple" class="custom-select form-control w-100 non-scroll mb-3 approver-select-box">
                        </select>
                      </div>
                    </div>
                  </div>
                </c:forEach>
              </div>

            </div>

          </div>

          <div class="modal-footer">
            <button type="button" class="btn mb-2 btn-secondary" data-dismiss="modal">닫기</button>
            <button type="button" class="btn mb-2 btn-primary" data-dismiss="modal" id="approver-submit">완료</button>
          </div>
        </div>
      </div>
    </div> 





    <!-- 참조인 설정 모달창 -->
    <div class="modal" id="refModal" tabindex="-1" role="dialog" aria-labelledby="refModalTitle" aria-hidden="true" data-backdrop="static">
      <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="refModalTitle">참조인 설정</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

          <div class="modal-body">

            <div class="form-group mb-3 w-25">
              <select class="custom-select form-control" id="ref-dept-selectbox">
                <option value="0">전체</option>
                <c:forEach items="${deptList}" var="d" >
	                <option value="${d.deptCode}">${d.deptName}</option>
                </c:forEach>
              </select>
            </div>

            <div id="ref-select" class="d-flex">
              <div id="ref-name-list" class="w-50">
                <select id="ref-emp-name" multiple="multiple" class="custom-select form-control w-100 h-100 non-scroll">
                  <c:forEach items="${empList}" var="e">
	                  <option value="${e.empCode}">${e.empName} (${e.deptName} - ${e.rankName})</option>
                  </c:forEach>
                </select>
              </div>
              <div class="w-75 d-flex flex-column">
                <div class="ref-custom-box">
                  <div class="d-flex">
                    <div class="h-150 w-25 mx-4 d-flex flex-column justify-content-center align-items-center">
                      <a id="ref-add-user" class="fe fe-24 fe-arrow-right-circle mb-1"></a>
                      <a id="ref-delete-user" class="fe fe-24 fe-arrow-left-circle"></a>
                    </div>
                    <div class="w-75 h-150" id="ref-content">
                      <select id="selected-ref" multiple="multiple" class="custom-select form-control w-100 non-scroll mb-3 ref-select-box">
                      </select>
                    </div>
                  </div>
                </div>
              </div>

            </div>

          </div>

          <div class="modal-footer">
            <button type="button" class="btn mb-2 btn-secondary" data-dismiss="modal">닫기</button>
            <button type="button" class="btn mb-2 btn-primary" data-dismiss="modal" id="ref-submit">완료</button>
          </div>
        </div>
      </div>
    </div>


	</main>
	
	<script>
		$('document').ready(function () {
      //작성일자 삽입
      const date = new Date();
      let year = date.getFullYear();
      let month = date.getMonth() + 1;
      let day = date.getDate();

      $('#current-date').append(year + '.' + month + '.' + day);
			
			//문서종류 불러오기, 선택 유지
      $('#formSelect').on('focus', function(){
        previous = this.value;
      }).change(function(){
          const formCode = $('#formSelect option:selected').val();
          
          if(previous != 0){
            if(confirm('문서 종류를 바꾸시겠습니까? 작성한 내용은 저장되지 않습니다.')) {
              location.href = '${root}/approval/write/' + formCode;
            }
          } else {
            location.href = '${root}/approval/write/' + formCode;
          }
          
        });
			
      $('textarea[detailCode=1]').css("height", '400px');
    

		});

    //부서별 임직원 불러오기 - 결재라인
    $('#ref-dept-selectbox').on('change', function () {
      let deptCode = $('#ref-dept-selectbox option:selected').val();
      let paramData = JSON.stringify({"deptCode" : $('#ref-dept-selectbox option:selected').val()});

      $.ajax({
        url : "${root}/approval/selectDept" ,
        method : "POST" ,
        data : {deptCode : deptCode} ,
        dataType : 'json' ,
        success : function(deptEmpList){

          $('#ref-emp-name option').remove();
          let str;
          $.each(deptEmpList, function (i) {
            str += '<option value="'  + deptEmpList[i].empCode + '">' + deptEmpList[i].empName + ' (' + deptEmpList[i].deptName + ' - ' +
                    deptEmpList[i].rankName + ')</option>'
          })
          $('#ref-emp-name').append(str);
          
        } , 
        error : (error) => {
          console.log(JSON.stringify(error));
        }
      })
    })

    
    


    //체크박스 체크 시 해당 결재타입 보이기
    $('#modal-appr-type input[type=checkbox]').on('click', function(){
      let clickedBox = $('.appr-custom-box[apprTypeCode = '+ this.value + ']');
      
      if($(this).prop('checked')){
        clickedBox.removeClass('d-none');
      } else {
        clickedBox.addClass('d-none');
      }
      
      

    });

    //결재자 추가하기
    $('.add-user').on('click', function () {
      let userCode = $('#emp-name option:selected').val();
      let userOption = $('#emp-name option[value=' + userCode + ']')[0].outerHTML;
      let addTypeCode = $(this).attr('id');
      let apprSelectBox = $('.approver-select-box[id=' + addTypeCode + ']');
      let selectedOption = apprSelectBox.find('option').val();
      
      //중복체크
      let selectedOptionVal = [];
      $($('.approver-select-box[id=' + addTypeCode + '] option')).each(function () {
        var selected = $(this).val();
        selectedOptionVal.push(selected);
      })
      
      if($.inArray(userCode, selectedOptionVal) != -1){
        alert('해당 결재타입에 추가한 결재자는 중복추가 할 수 없습니다.');
      } else {
        apprSelectBox.append(userOption);
      }
    })
    
    //결재자 삭제하기
    $('.delete-user').on('click', function () {
      let userCode = $('.approver-select-box option:selected').val();
      let userOption = $('.approver-select-box option[value=' + userCode +']');
      
      let addTypeCode = $(this).attr('id');
      
      $('.approver-select-box[id='+ addTypeCode +'] option[value=' + userCode +']').remove();
    })
    

    

    //결재라인 설정 완료하기
    $('#approver-submit').on('click', function () {
      
      let userCode = $('.approver-select-box option').val();
      
      $('#approval-table *').remove();
      
      let checkedVal = [];
      $('#modal-appr-type input[type=checkbox]:checked').each(function () {
        var checked = $(this).val();
        checkedVal.push(checked); 
      })
      
      let apprTableHtml;

      let seq = 1;
      $.each(checkedVal, function(i){
        
        let typeName = $('#type-content[apprTypeCode='+ checkedVal[i] +']>span')[0].outerText;
        let approverVal = [];
        $('.approver-select-box[id='+ checkedVal[i] +'] option').each(function () {
          var selected = $(this).val();
          approverVal.push(selected);
        })
        
        let rankHtml;
        let nameHtml;
        let markHtml;
        $.each(approverVal, function (j) {
          let approverEmp = $('.approver-select-box[id='+ checkedVal[i] +'] option[value=' + approverVal[j] + ']').attr('approverSeq', seq += 1)[0].innerHTML;
          let empInfo = approverEmp.split(' ');
          let empName = empInfo[0];
          let empRankName = empInfo[3].replace(')', '');
          let writer = $('.writer-name')[0].innerHTML;
          let writerCode = $('.writer-name').attr('id');
          if(i == 0 && j == 0){
           
            rankHtml += '<td></td>';
            markHtml += '<td></td>';
            nameHtml += '<td>' + writer + '</td>';
          }

          rankHtml += '<td>' + empRankName + '</td>';
          markHtml += '<td></td>';
          nameHtml += '<td>' + empName + '</td>';

        })
        let blankTd;
        if(approverVal.length < 9 && i == 0) {
          let blankCount = (7-approverVal.length);
          for(let i=0; i<blankCount; i++){
            blankTd += '<td></td>';
          }
        } else {
          let blankCount = (8-approverVal.length);
          for(let i=0; i<blankCount; i++){
            blankTd += '<td></td>';
          }
        }
        if(approverVal.length != 0){
          apprTableHtml += '<tr class="appr-table-color"> <td rowspan="3" style="width: 100px;">' + typeName + 
            '</td>' + rankHtml + blankTd + '</tr> <tr style="height: 100px;">' + markHtml + blankTd + '</tr> <tr class="approver-emp">' + nameHtml + blankTd + '</tr>';
        }
        
        
      })
        $('#approval-table').append(apprTableHtml);
    });
    
    //부서별 임직원 불러오기 - 참조인
    $('#appr-dept-selectbox').on('change', function () {
      let deptCode = $('#appr-dept-selectbox option:selected').val();
      let paramData = JSON.stringify({"deptCode" : $('#appr-dept-selectbox option:selected').val()});

      $.ajax({
        url : "${root}/approval/selectDept" ,
        method : "POST" ,
        data : {deptCode : deptCode } ,
        dataType : 'json' ,
        success : function(deptEmpList){

          $('#emp-name option').remove();
          let str;
          $.each(deptEmpList, function (i) {
            str += '<option value="'  + deptEmpList[i].empCode + '">' + deptEmpList[i].empName + ' (' + deptEmpList[i].deptName + ' - ' +
                    deptEmpList[i].rankName + ')</option>'
          })
          $('#emp-name').append(str);
          
        } , 
        error : (error) => {
          console.log(JSON.stringify(error));
        }
      })
    })

    //참조인 추가하기
    $('#ref-add-user').on('click', function () {
      let userCode = $('#ref-emp-name option:selected').val();
      let userOption = $('#ref-emp-name option[value=' + userCode + ']')[0].outerHTML;

      //중복체크
      let selectedOptionVal = [];
      $($('.ref-select-box option')).each(function () {
        var selected = $(this).val();
        selectedOptionVal.push(selected);
      })

      if($.inArray(userCode, selectedOptionVal) != -1){
        alert('이미 추가한 참조인 입니다.');
      } else {
        $('.ref-select-box').append(userOption);
      }
    })

    //참조인 삭제하기
    $('#ref-delete-user').on('click', function () {
      let userCode = $('.ref-select-box option:selected').val();
      let userOption = $('.ref-select-box option[value=' + userCode +']');

      $('.ref-select-box option[value=' + userCode +']').remove();
    })
    
    //참조인 설정 완료
    $('#ref-submit').on('click', function () {
      let userCode = $('.ref-select-box option').val();
      $('#ref-selected .ref-name').remove();

      let refVal = [];
      $('.ref-select-box option').each(function (i) {
        let selected = $(this).val();
        refVal.push(selected);
      })
      console.log(refVal);


      let refHtml = '';
      $.each(refVal, function (i) {
        let refEmp = $('.ref-select-box option[value=' + refVal[i] + ']')[0].innerHTML;
        let empInfo = refEmp.split(' ');
        empName = empInfo[0];
        
        refHtml += '<span id="'+ refVal[i] + '" class="ref-name"> ' + empName + '</span>';
      })

      $('#ref-selected').prepend(refHtml);


    })
    
      
    
    function fileInit() {
      var fileList = "";
      $('#file-name div').remove();
      
      for(var i=0; i<$('#customFile')[0].files.length; i++){  
        fileList += '<div class="file-name-div" id="' + i + '">' + $('#customFile')[0].files[i].name + '&nbsp;&nbsp;<i class="fe fe-x-square del-file" id="'+ i +'"></i></div>';
      } 
      
      $('#file-name').append(fileList);
    }

    $("input[type='file']").on('change',fileInit);
    
    $($('#file-name')).on('click', $('.del-file') ,function (e) {
      let id = e.target.id;

      $('.file-name-div[id='+ id +']').remove();
      const dataTransfer = new DataTransfer();

      let files = $('#customFile')[0].files;
      let fileArray = Array.from(files);
      fileArray.splice(id, 1);

      fileArray.forEach(file => {
        dataTransfer.items.add(file);
      });

      $('#customFile')[0].files = dataTransfer.files;
      fileInit();
    });

    $('input[type=submit]').on('click', function () {
      let writer = $('.writer-name')[0].innerHTML;
      let writerCode = $('.writer-name').attr('id');
      
      let docDataList = [];
      $('[name=docContent]').each(function() {
        let object = {
          formDetailCode : $(this).attr('detailCode'),
          docContent : $(this).val()  
        }
        docDataList.push(object);
      })

      let checkedVal = [];
      $('#modal-appr-type input[type=checkbox]:checked').each(function (i) {
        var checked = $(this).val();
        checkedVal.push(checked); 
      })

      let approverList = [];
      $.each(checkedVal, function(i){
      
        $('.approver-select-box[id='+ checkedVal[i] +'] option').each(function (j) {
          let approverObject = {
            apprTypeCode : checkedVal[i], 
            apprEmpCode : $(this).val(),
            apprSeq : $(this).attr('approverSeq'),
            apprStatus : "W"
          }
          approverList.push(approverObject);

          if(i==0 && j==0 ){
            approverObject = {
            apprTypeCode : checkedVal[0], 
            apprEmpCode : writerCode,
            apprSeq : "1",
            apprStatus : "A"
          }
          approverList.push(approverObject);
          }
        })
      })
      
      let approvalRefList = [];
      $('.ref-select-box option').each(function (i) {
        let object = {
          refEmpCode : $(this).val()
        }
        approvalRefList.push(object);
      })
      console.log(approvalRefList);
      
      let docStatus = "";
      if($(this).attr('id') == 'write'){
        docStatus = "N";
      } else {
        docStatus = "T";
      }
      
      if(approverList.length < 1){
        alert('결재자를 추가해주세요');
      } else if($('[name=docTitle]').val() == ""){  
        alert('제목을 입력해주세요')
      } else {

        let param = {
          periodCode : $('#custom-select').val(),
          docFormCode : $('#formSelect').val(),
          docTitle : $('[name=docTitle]').val(),
          docDataList : docDataList,
          approverList : approverList,
          approvalRefList : approvalRefList,
          docStatus : docStatus
        }
        var formData = new FormData();
        for(var i=0; i<$('#customFile')[0].files.length; i++){  
          formData.append("file", $('#customFile')[0].files[i]);
          console.log($('#customFile')[0].files[i]);
        } 
        formData.append('appr', new Blob([JSON.stringify(param)], {type : "application/json"}));
        
        $.ajax({
          url : "${root}/approval/write" ,
          method : "POST" ,
          data : formData,
          enctype: 'multipart/form-data',
          contentType : false,
          processData : false,
          cache : false,
          success : function(data){
            if(docStatus == "N"){
              alert('작성 완료');
            } else {
              alert('임시저장 완료');
            }
            location.href='${root}/approval/progressAllList/1/0';
          } , 
          error : (error) => {
            console.log(JSON.stringify(error));
          }
        })
      }
    })

	</script>

</body>
</html>