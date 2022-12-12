<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="dd">
					<!-- Page Heading -->
                    
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 style="padding-top: 10px;"  class="m-0 font-weight-bold text-primary">장학금 등록
						  <button href="category=scholarship#" onclick="closesch()" id="delete close"
						   style="margin-left: 1rem; height: 25px;
						    padding-bottom: 30px; " 
						     class="btn btn-danger" type="button"  onclick="closesch()">닫기</button>
						   	</h6>
                        </div>
                        <div class="card-body">
                        <form id="scinsert" action="/sc.add" method="post">
                            <div class="table-responsive">
                            <div id='dataTable_wrapper' class='dataTables_wrapper dt-bootstrap4'>
                             <div class='card-body d-flex'>
							
							
							<!-- 학과입력 -->
							<div class='dataTables_filter search-box'>
								<select name='department_name' class='custom-select custom-select-sm form-control form-control-sm'>
									<option value=''>학과</option>
									<c:forEach items="${department_list }" var="department_list">
									<option 
									value="${department_list.department_name }">${department_list.department_name}</option>
									</c:forEach>
									
								</select>
							</div>
							
							
							<!-- 이름 입력 -->
							<div class='dataTables_filter search-box'>
								<input type="search" name="name" class='names form-control form-control-sm' placeholder='이름 입력'>
							</div>
							
							<!-- 장학 정보 (cash name) -->
							<div class='dataTables_filter search-box'>
								<select name='cash_name' class='custom-select custom-select-sm form-control form-control-sm'>
									<option value=''>장학 정보</option>
									<c:forEach items="${sc_list }" var="sc_list">
									<option 
									value="${sc_list.cash_name }">${sc_list.cash_name}</option>
									</c:forEach>
									
								</select>
							</div>
							
							<!-- 장학 유형(description)-->
							<div class='dataTables_filter search-box'>
								<select name='description' class='custom-select custom-select-sm form-control form-control-sm'>
									<option value=''> 장학 유형</option>
									<c:forEach items="${sc_list2 }" var="sc_list2">
									<option 
									value="${sc_list2.description }">${sc_list2.description}</option>
									</c:forEach>
								</select>
							</div>
                            </div>
                            </div>
                        </div>
                        </form>
                        <button id="scsubmit" style="margin-left: 3rem "  class="btn btn-primary" type="button">
   								<i class="fas fa-check-square"></i>
   						</button>
                        
                    </div>
                </div><!-- container-fluid -->
				
			</div>	

	<script>
	
	$('#scsubmit').click(function(){
		console.log("서브밋버튼");
		if( $('[name=department_name] option:selected').val()==''){
			alert('학과를 입력하세요!');
			return;
			
		}else if( $('[name=name]').val()==''){
			alert('이름을 입력하세요!');
			return;
			
		}else if($('[name=cash_name] option:selected').val()==''){
			alert('장학 정보를 선택하세요!');
			return;
			
		}else if ( $('[name=description] option:selected').val()==''){
			alert('장학 유형을 선택하세요!');
			
		}else{
			alert('등록되었습니다.');
			$("#scinsert").attr("action","sc.add");
			$('#scinsert').submit();
			
		}
	});
	
	
	const sidePane = document.querySelector("#menub");

	function openadd(){
		console.log("열기");
		sidePane.classList.remove("d-none");
		sidePane.classList.add("show");
		// sidePane.classList.toggle("d-none"); 토글기능
	}

	function closesch(){
		console.log("닫음");
		sidePane.classList.remove("show");
		sidePane.classList.add("d-none");
	}
	
	
	</script>
</body>
</html>