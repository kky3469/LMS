<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<style>
span.btn{
	display:block;
}
.search-box{
	margin:0 1rem 0 0;
}
.table-responsive{
	overflow:hidden;
}
.count-box{
	padding: 0;
    margin-bottom: 1rem;
    max-width: 10%;
}
</style>

<body>


<div class="container-fluid">
<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2">전체 인원 관리</h1>
<a href="member" class="btn btn-primary btn-icon-split mb-2">
   <span class="icon text-gray-600">
   <i class="fas fa-arrow-right"></i>
   </span>
   
   <span class="text">인원 등록</span>
 </a>
					<form action="member.list" method="post">
				<input type="hidden" name="select_grp" value="${select_grp}">
			
					<div class="row mt">
						<div class="col-xl-3 col-md-6" style="background: #f8f9fc">
							<div class="card bg-pattern">
								<div class="card-body">
									<div class="float-right">
										<i class="fa fa-archive text-primary h4 ml-3"></i>
									</div>
									<div class='dataTables_filter search-box'>
										<h5 class="font-size-20 mt-0 pt-1">직책 구분</h5>
										
										<select name="info_cd" onchange='$("form").submit()'
											class='custom-select custom-select-sm form-control form-control-sm'>
												<option  value='-1'>전체 보기</option>
								
									<c:forEach items="${info_list }" var="info">
									
									<option ${info.info_cd eq temp_map.info_cd ? 'selected' : ''} 
									value='${info.info_cd }'> ${info.info_name }</option>
									</c:forEach>

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
										<h5 class="font-size-20 mt-0 pt-1">학과 구분</h5>
										<select name="department" onchange='$("form").submit()'
											class='custom-select custom-select-sm form-control form-control-sm'>

										<option  value=''> 전체 보기</option>
									<c:forEach items="${department_list }" var="vo">
									<option  ${vo.department_name eq temp_map.department ? 'selected' : ''} 
									value='${vo.department_name}'
									
					
									> ${ vo.department_name}</option>
									</c:forEach>

										</select>
									</div>
								</div>
							</div>
						</div>

						<div class="col-xl-3 col-md-6" style="background: #f8f9fc">
							<div class="card bg-pattern">
								<div class="card-body">
									        <label>이름 검색</label>
                            <div class="input-group mb-0">
                                <input type="text" class="form-control" name="student_name" value="${temp_map.student_name }"
                                 placeholder="이름을 검색하세요" aria-describedby="project-search-addon" onkeyup="if(window.event.keyCode==13){$('form').submit()}"/>
                                <div class="input-group-append" >
                                    <button class="btn btn-primary"  id="project-search-addon"><i class="fa fa-search search-icon font-12"></i></button>
                                </div>
                            </div>
                        </div>
								</div>
							</div>
				<div class="col-xl-3 col-md-6" style="background: #f8f9fc">
							<div class="card bg-pattern">
								<div class="card-body">
									        <label>학번 검색</label>
                            <div class="input-group mb-0">
                                <input type="text" class="form-control" name="id" value="${temp_map.id }"
                                 placeholder="학번 검색하세요" aria-describedby="project-search-addon" onkeyup="if(window.event.keyCode==13){$('form').submit()}"/>
                                <div class="input-group-append" >
                                    <button class="btn btn-primary"  id="project-search-addon"><i class="fa fa-search search-icon font-12"></i></button>
                                </div>
                            </div>
                        </div>
								</div>
							</div>
						

					</div>
			</form>
				
					
					
									
					<div class="dd">
					<!-- Page Heading -->
                    
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">전체 인원 현황</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <div id='dataTable_wrapper' class='dataTables_wrapper dt-bootstrap4'>
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>전화번호</th>
                                            <th>입학일/입사일</th>
                                            <th>학과 코드</th>
                                            <th>학과 명</th>
                                            <th>구분</th>
                                        </tr>
                                    </thead>                                   
                                    <tbody>
                                     
                                    <c:forEach items="${list }" var="vo" >
                                        <tr>
                                      		<td>${vo.id }</td>
                                            <td>${vo.name }</td>
                                            <td>${vo.phone }</td>
                                            
                                 <td>       
                                 <fmt:parseDate var='dateFmt' pattern="yyyy-MM-dd HH:mm:ss" value="${vo.start_date }"/>
                                     <fmt:formatDate var="dateTempParse" value="${dateFmt}" pattern="yyyy년 MM월 dd일"/> 
                                     ${dateTempParse}
                                     </td>
                                            <td>${vo.department_id }</td> 
                                            <td>${vo.department_name }</td> 
                                            <td>${vo.info_name }</td> 
                                        </tr>
                                     </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            </div>
                        </div>
                    </div>
                </div><!-- container-fluid -->
					
					
					
					</div>



<script>



</script>
</body>
</html>