<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<% Date nowTime = new Date();
	SimpleDateFormat day = new SimpleDateFormat("YYYY년"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 성적 조회</title>
<style type="text/css">
h1 {
	font-weight: bold;
	margin-bottom: 10rem;
}

th {
	background: rgb(248, 249, 252);
}

span.btn {
	display: block;
}
</style>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>



	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2"></h1>

	<div class="container-fluid">







		<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2">학생 성적 조회</h1>


		<div class="dd">
			<!-- Page Heading -->
			<ul class="nav nav-tabs">

				<li class="nav-item"><a
					class="nav-link co1 ${select_grp eq 'all' ? 'active' : ''}"
					onclick="choice(c1)" aria-current="page"
					href="list.sc?select_grp=all">전체 조회</a></li>
			</ul>

			<!-- 필터 -->

			<form action="list.sc" method="post" name="search_f">
				<input type="hidden" name="select_grp" value="${select_grp}">
				<div class="row mt">
					<div class="col-xl-4 col-md-6" style="background: #f8f9fc">
						<div class="card bg-pattern">
							<div class="card-body">
								<div class="float-right">
									<i class="fa fa-archive text-primary h4 ml-3"></i>
								</div>
								<div class='dataTables_filter search-box'>
									<h5 class="font-size-20 mt-0 pt-1">과목구분</h5>
									<select name="lecture_num" onchange='$("[name=search_f]").submit()'
										class='custom-select custom-select-sm form-control form-control-sm'>
										<option value='-1'>전체보기</option>
										<c:forEach items="${lectures}" var="vo">
											<option ${lecture_num eq vo.lecture_num ? 'selected' : '' }
												value="${vo.lecture_num}">${vo.lecture_title}</option>
										</c:forEach>

									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-md-6" style="background: #f8f9fc">
						<div class="card bg-pattern">
							<div class="card-body">
								<div class="float-right">
									<i class="fa fa-archive text-primary h4 ml-3"></i>
								</div>
								<div class='dataTables_filter search-box'>
									<h5 class="font-size-20 mt-0 pt-1">년도구분</h5>
									<select name="year" onchange='$("[name=search_f]").submit()'
										class='custom-select custom-select-sm form-control form-control-sm'>

										<option value="-1">전체 년도</option>
										<c:forEach items="${years}" var="y">
											<option ${year eq y.lecture_year ? 'selected' : '' }
												value="${y.lecture_year}">${y.lecture_year}년</option>
										</c:forEach>

									</select>
								</div>
							</div>
						</div>
					</div>

					<div class="col-xl-4 col-md-6" style="background: #f8f9fc">
						<div class="card bg-pattern">
							<div class="card-body">
								<div class="float-right">
									<i class="fa fa-archive text-primary h4 ml-3"></i>
								</div>
								<div class='dataTables_filter search-box'>
									<h5 class="font-size-20 mt-0 pt-1">학기구분</h5>
									<select name="semester" onchange='$("[name=search_f]").submit()'
										class='custom-select custom-select-sm form-control form-control-sm'>
										<option value="-1">전체 학기</option>
										<option ${semester eq 1 ? 'selected' : '' } value="1">1학기</option>
										<option ${semester eq 2 ? 'selected' : '' } value="2">2학기</option>

									</select>
								</div>
							</div>
						</div>
					</div>


				</div>
			</form>


			<!-- 데이터 테이블 -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">성적 조회</h6>
				</div>

				<div class="card-body">
					<p class="ml-2 font-weight-bold text-dark" id="tot_list">총
						(${fn:length(list) }) 명</p>
					<div class="table-responsive">
						<div id='dataTable_wrapper'
							class='dataTables_wrapper dt-bootstrap4'>
							<!-- 테이블 자리 -->

							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>

										<th class="">강의번호</th>
										<th class="">강의명</th>
										<th>학생명</th>
										<th class="">년도</th>
										<th>학기</th>
										<th>과목평균</th>
										<!--        <th>내학점</th> -->
										<th>학점</th>
										<th>등급</th>
										<th>석차</th>
										<th>성적</th>

									</tr>
								</thead>
								<tbody>

									<c:forEach items='${list}' var='vo'>
									<c:choose>
												<c:when test="${vo.semesterpoint gt 0 }">
										<tr class='average'>
										
								</c:when>
								<c:otherwise>
										<tr class='average' style="background: #f9f9f9; color: #000;">
								</c:otherwise>
								</c:choose>
											<td class="js-sort-none">${vo.lecture_num }</td>
											<td class="js-sort-none">${vo.lecture_title }</td>
											<td>${vo.name }</td>
											<td>${vo.lecture_year }</td>
											<td>${vo.semester }</td>
											<td class="">${vo.tot_avg }</td>

											<%--     <td>${vo.subjectcredit }</td>  --%>
											<c:choose>
												<c:when test="${vo.semesterpoint gt 0 }">
													<td class='point'>${vo.semesterpoint }</td>
													<td>${vo.score_name }</td>
													<td>${vo.rank}</td>
													<td><span class="badge bg-primary p-2"> <a
															class="text-white" style="cursor: pointer;"
															onclick="showModal('${vo.lecture_num }' ,'${vo.lecture_title }' ,'${vo.id }' ,'${vo.name }','${vo.semesterpoint }')"
															data-toggle="modal"> <i
																class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
																성적 수정
														</a>
													</span></td>

												</c:when>
												<c:otherwise>
													<td colspan="3" style="text-align: center; color: #000;">성적입력가능</td>
													<td><span class="badge bg-dark p-2"> <a
															class="text-white" style="cursor: pointer;"
															onclick="showModal('${vo.lecture_num }' ,'${vo.lecture_title }' ,'${vo.id }' ,'${vo.name }','${vo.semesterpoint }')"
															data-toggle="modal"> <i
																class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
																성적 입력
														</a>
													</span></td>
												</c:otherwise>
											</c:choose>


										</tr>
									</c:forEach>

								</tbody>
							</table>



						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- container-fluid -->

		<div class="modal fade" id="examModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">성적 수정</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close" onclick="portHide()">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="update.sc" method="post">
							<input type="hidden" name="id" id="id" value="" /> <input
								type="hidden" name="lecture_num" id="lecture_num" value="" />
							<div class="insert_form" style="">
								<table class="textform">
									<tr>
										<th>강의번호</th>
										<td><a id="modal_lecture_num">dd</a> <a
											id="modal_lecture_title">dd</a></td>
									</tr>
									<tr>
										<th>아이디</th>
										<td><a id="modal_student_id">dd</a> <a
											id="modal_student_name">dd</a></td>

									</tr>

									<tr>
										<th>점수</th>
										<td><input type="text" id="semesterpoint"
											name="semesterpoint" autocomplete="off"
											value="${vo.semesterpoint}" /></td>
									</tr>
								</table>
							</div>
							<div class='btnSet'></div>

							<div class="modal-footer">
								<input class="btn btn-primary" type="submit"
									data-dismiss="modal" value="저장"> <a
									class="btn btn-secondary" onclick="portHide()">취소</a>

							</div>
						</form>


					</div>



				</div>
			</div>
		</div>



	</div>






	<script>
	function portHide(){
		
		$('#examModal').modal('hide');
	}
/* 	function portShow(id){
		$('.modal-body').empty();
		rtnSubDiv($(id).attr('id'));
		$('#examModal').modal('show');

	} */
	  /*  <a onclick="showModal(${vo.lecture_num } ,${vo.lecture_title } ,${vo.id } ,${vo.name },${vo.semesterpoint })"  data-toggle="modal" >
     */
     function showModal(lec_num , title , id , name , point) {
   
    	 $('#modal_lecture_num').text(lec_num);
    	 $('#modal_lecture_title').text(title);
    	 $('#modal_student_id').text(id);
    	 $('#modal_student_name').text(name);
    	 $('#semesterpoint').val(point);
    	 $('#id').val(id);
    	 $('#lecture_num').val(lec_num);
    	 
    	 
	     $('#examModal').modal('show');
	}
	  
	    	
	    	
	    	
	        
	   
function choice(e){
	if(e == 'c1'){
		$('.co1').classList.add('active');
		$('.co2').classList.remove('active');
		$('.co3').classList.remove('active');
		$('.co4').classList.remove('active');
	}else if (e == 'c2'){
		$('.co1').classList.remove('active');
		$('.co2').classList.add('active');
		$('.co3').classList.remove('active');
		$('.co4').classList.remove('active');
	}else if (e == 'c3'){
		$('.co1').classList.remove('active');
		$('.co2').classList.remove('active');
		$('.co3').classList.add('active');
		$('.co4').classList.remove('active');
	}else if (e == 'c4'){
		$('.co1').classList.remove('active');
		$('.co2').classList.remove('active');
		$('.co3').classList.remove('active');
		$('.co4').classList.add('active');
	}
}

$('.average').click(function(){
	if($(this).find("[type=checkbox]").is(':checked')){
		$(this).find("[type=checkbox]").prop('checked',false);
		$(this).removeClass("checked")
	}else	{
		$(this).find("[type=checkbox]").prop('checked',true);
			$(this).addClass("checked");
		}
	calc_avg(0);
});

function calc_avg(check_count){
	var  sum_point=0;
	$('.table tr').each(function(){
		
		if($(this).find("[type=checkbox]").is(':checked')){
			if(check_count == -1){
				check_count++;
			}else{
				
    			sum_point +=  Number($(this).children('.point').text());
    			check_count++;
    		var average = sum_point==0 ? '0' : (sum_point / check_count).toFixed(2);
    		
    		$('#total').text( sum_point );
    		$('#avg').text( average );
    		$('#count').text( check_count + '개 선택' );
			}
		}
		if (sum_point==0){
    		$('.avg').text( '0' );
		$('#count').text( '' );
		}
	});
}




	$('#allCk').click(function(){
		if($('#allCk').is(':checked')==true){
			
			$('input:checkbox').prop('checked',true);
			$(".average").addClass("checked");
			
		}else{
			$('input:checkbox').prop('checked',false);
			$(".average").removeClass("checked");
			$('#total').text(''  );
    		$('#avg').text( '' );
		}
		calc_avg(-1);
	});
	
	
	
	



</script>
</body>
</html>