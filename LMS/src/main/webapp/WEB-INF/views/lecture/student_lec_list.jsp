<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>Insert title here</title>
</head>
<style>
body{margin-top:20px;
background-color:#eee;
}
.project-list-table {
    border-collapse: separate;
    border-spacing: 0 12px
}

.project-list-table tr {
    background-color: #fff
}

.table-nowrap td, .table-nowrap th {
    white-space: nowrap;
}
.table-borderless>:not(caption)>*>* {
    border-bottom-width: 0;
}
.table>:not(caption)>*>* {
    padding: 0.75rem 0.75rem;
    background-color: var(--bs-table-bg);
    border-bottom-width: 1px;
    box-shadow: inset 0 0 0 9999px var(--bs-table-accent-bg);
}

.avatar-sm {
    height: 2rem;
    width: 2rem;
}
.rounded-circle {
    border-radius: 50%!important;
}
.me-2 {
    margin-right: 0.5rem!important;
}
img, svg {
    vertical-align: middle;
}

a {
    color: #3b76e1;
    text-decoration: none;
}

.badge-soft-danger {
    color: #f56e6e !important;
    background-color: rgba(245,110,110,.1);
}
.badge-soft-success {
    color: #63ad6f !important;
    background-color: rgba(99,173,111,.1);
}

.badge-soft-primary {
    color: #3b76e1 !important;
    background-color: rgba(59,118,225,.1);
}

.badge-soft-info {
    color: #57c9eb !important;
    background-color: rgba(87,201,235,.1);
}

.avatar-title {
    align-items: center;
    background-color: #3b76e1;
    color: #fff;
    display: flex;
    font-weight: 500;
    height: 100%;
    justify-content: center;
    width: 100%;
}
.bg-soft-primary {
    background-color: rgba(59,118,225,.25)!important;
}
</style>
<body>
<h3 style="text-align: initial; color: #6a6a6a" class="m-2 mb-3">수강 신청</h3>
<div class="container-fluid">
  
    <div class="row">
    	  <div class="col-lg-12">

          	  <div class="card">
                    <div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">강의 목록</h6>
				</div>
				</div>
<form action="student_lec_list.lec" method="post">

    <div class="row mt-1">
        <div class="col-xl-3 col-md-6" style="background: #f8f9fc">
            <div class="card bg-pattern">
                <div class="card-body">
                    <div class="float-right">
                        <i class="fa fa-archive text-primary h4 ml-3"></i>
                    </div>
                 <div class='dataTables_filter search-box'>
                  <h5 class="font-size-20 mt-0 pt-1"> 이수구분 </h5>
					<select name="sortation" onchange='$("form").submit()'
						class='custom-select custom-select-sm form-control form-control-sm'>
						<option value=''${search.sortation eq '' ? 'selected' : '' }>전체보기</option>
						<option value='전공필수'${search.sortation eq '전공필수' ? 'selected' : '' }>전공필수</option>
						<option value='전공선택'${search.sortation eq '전공선택' ? 'selected' : '' }>전공선택</option>
						<option value='교양'${search.sortation eq '교양' ? 'selected' : '' }>교양</option>
					
					</select>
				</div>
                </div>
            </div>
        </div>
       <div class="col-xl-3 col-md-6" style="background: #f8f9fc">
            <div class="card bg-pattern">
                <div class="card-body">
                    <div class="float-right">
                        <i class="fa fa-archive text-primary h4 ml-3"></i>
                    </div>
                 <div class='dataTables_filter search-box'>
                 <h5 class="font-size-20 mt-0 pt-1"> 요일구분 </h5>
					<select name='lecture_day' onchange='$("form").submit()'
						class='custom-select custom-select-sm form-control form-control-sm'>
						<option value=''> 전체보기</option>
						<option value='월'${search.lecture_day eq '월' ? 'selected' : '' }>월</option>
						<option value='화'${search.lecture_day eq '화' ? 'selected' : '' }>화</option>
						<option value='수'${search.lecture_day eq '수' ? 'selected' : '' }>수</option>
						<option value='목'${search.lecture_day eq '목' ? 'selected' : '' }>목</option>
						<option value='금'${search.lecture_day eq '금' ? 'selected' : '' }>금</option>
					</select>
				</div>
                </div>
            </div>
        </div>
      
       <div class="col-xl-3 col-md-6 mt-1" style="background: #f8f9fc">
            <div class="card bg-pattern">
                <div class="card-body">
                    <div class="float-right">
                        <i class="fa fa-archive text-primary h4 ml-3"></i>
                    </div>
                 <div class='dataTables_filter search-box'>
                  <h5 class="font-size-20 mt-0 pt-1"> 강의시간구분 </h5>
					<select name="lecture_time" onchange='$("form").submit()'
						class='custom-select custom-select-sm form-control form-control-sm'>
						<option value=''>시간 전체보기</option>
						<option value='1'${search.lecture_time eq '1' ? 'selected' : '' }>1교시 (09:00~09:50)</option>
						<option value='2'${search.lecture_time eq '2' ? 'selected' : '' }>2교시 (10:00~10:50)</option>
						<option value='3'${search.lecture_time eq '3' ? 'selected' : '' }>3교시 (11:00~11:50)</option>
						<option value='4'${search.lecture_time eq '4' ? 'selected' : '' }>4교시 (12:00~12:50)</option>
						<option value='5'${search.lecture_time eq '5' ? 'selected' : '' }>5교시 (14:00~14:50)</option>
						<option value='6'${search.lecture_time eq '6' ? 'selected' : '' }>6교시 (15:00~15:50)</option>
						<option value='7'${search.lecture_time eq '7' ? 'selected' : '' }>7교시 (16:00~16:50)</option>
						<option value='8'${search.lecture_time eq '8' ? 'selected' : '' }>8교시 (17:00~17:50)</option>
					</select>
				</div>
                </div>
            </div>
        </div>
      
        
       <div class="col-xl-3 col-md-6" style="background: #f8f9fc">
            <div class="card">
                <div class="card-body">
                        <div class="form-group mb-0">
                            <label>강의 검색</label>
                            <div class="input-group mb-0">
                                <input type="text" class="form-control" name="lecture_title" value="${search.lecture_title }"
                                 placeholder="강의명을 검색하세요" aria-describedby="project-search-addon" onkeyup="if(window.event.keyCode==13){$('form').submit()}"/>
                                <div class="input-group-append" >
                                    <button class="btn btn-primary"  id="project-search-addon"><i class="fa fa-search search-icon font-12"></i></button>
                                </div>
                            </div>
                        </div>
                  
                </div>
            </div>
        </div>
    </div>
 </form>
    
    </div>
        <div class="col-lg-12">
            <div class="">
                <div class="table-responsive">
                    <table class="table project-list-table table-nowrap align-middle table-borderless">
                        <thead>
                            <tr>
                               
         	    					<th style="text-align: center;">수강</th>
                                	<th>담당교수</th>
         	    					<th>과목명</th>
         	    					<th>강의명</th>
         	    					<th>장소/시간</th>
         	    					<th>신청인원</th>
         	    					<th>과목학점</th>
         	    					
                        	    </tr>
                        </thead>
                        <tbody>
                          <c:forEach items="${list}" var="vo">
                          <c:if test="${vo.lecture_year eq '2022' and vo.semester eq '2'}">
                            <tr>
                                
                                  <td>
                                    <ul class="list-inline mb-0" style="text-align: center;">
                                 
                                 
                                     <c:choose>
									<c:when test="${vo.check_flag eq '0' }">
                              			 
                                         <li class="list-inline-item">
                                           <span class="badge bg-danger p-2">
                                            <a style="cursor: pointer;"  class="text-white" href="delete.lect?lecture_num=${vo.lecture_num}">
                                         수강 철회
                                         <i class="fa-solid fa-xmark"></i></a>
                                            </span>
                                        
                                        
                                        </li>
                                     </c:when>
                                      <c:when test="${vo.check_flag eq '1' }">
                                        <li class="list-inline-item" >
                                           <span class="badge bg-success p-2">
                                            <a style="text-decoration: none;" class="text-white" >
                                          수강 완료
                                         <i class="fa-sharp fa-solid fa-check"></i></a>
                                            </span>
                                        
                                        </li>
                                      </c:when>
                                     
                                     <c:when test="${vo.check_flag eq '2' }">
                                        <li class="list-inline-item">
                                           <span class="badge bg-danger p-2">
                                            <a style="cursor: pointer;"  class="text-white" href="delete.tt?lecture_num=${vo.lecture_num}">
                                         수강 철회
                                         <i class="fa-solid fa-xmark"></i></a>
                                            </span>
                                        
                                        
                                        </li>
                                      </c:when>
                                     </c:choose>
                                        
                                       
                                    </ul>
                                </td>
                                
                                <td><img src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg" alt="" class="avatar-sm rounded-circle me-2" /><a href="#" class="text-body">${vo.teacher_name}</a></td>
                                <td>
									<a class="position-relative" href="detail.lec?lecture_num=${vo.lecture_num}"> ${vo.lecture_title }
									<c:choose>
									<c:when test="${vo.sortation eq '전공선택' }">
                              			    <span class="position-absolute top-0 start-100 translate-middle badge badge-soft-success mb-0">
    										<span class="visually-hidden">전공선택</span>
 											 </span>
                                	</c:when>
                                	<c:when test="${vo.sortation eq '전공필수' }">
                              			 
                                			 <span class="position-absolute top-0 start-100 translate-middle badge badge-soft-info mb-0">
    										<span class="visually-hidden">전공필수</span>
 											 </span>
                                	
                                	</c:when>
                                	<c:when test="${vo.sortation eq '교양' }">
                         
                                				 <span class="position-absolute top-0 start-100 translate-middle badge badge-soft-dark mb-0">
    										<span class="visually-hidden">교양</span>
 											 </span>
                                	</c:when>
                                	</c:choose>
                              </a>
                                </td>
                                
                                
                              	<td>${vo.lecture_title}      			 
                              	 <span class="badge badge-soft-dark mb-0">
                              		<a href="detail.lec?lecture_num=${vo.lecture_num}">
                             			상세보기<i style="margin-left: 5px;" class="fa-solid fa-circle-info"></i></a></span>
                                        </td>
                              	
                             
                              	
                             	<td>${vo.lecture_room} [${vo.lecture_time}교시]</td>
                             	
                             	<td>${vo.check_cnt } /${vo.capacity}</td>
                             		<td>${vo.subjectcredit}</td>
                              
                            </tr>
                            </c:if>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
   
   
</div>
</body>
</html>