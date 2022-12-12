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
</head>
<body>



	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2"></h1>

	<div class="container-fluid">






	
		<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2">성적 조회</h1>

		
		<div class="dd">
			<!-- Page Heading -->
			<ul class="nav nav-tabs">

				<li class="nav-item"><a
					class="nav-link co1 ${select_grp eq 'all' ? 'active' : ''}"
					onclick="choice(c1)" aria-current="page"
					href="list.sc?select_grp=all">전체 조회</a></li>
				<li class="nav-item"><a
					class="nav-link co2 ${select_grp eq 'choice' ? 'active' : ''}"
					onclick="choice(c2)" href="list.sc?select_grp=choice">선택 조회</a></li>
			</ul>

			<!-- 필터 -->
			
			<form action="list.sc" method="post">
				<input type="hidden" name="select_grp" value="${select_grp}">
				<c:if test="${select_grp eq 'choice' }">
					<div class="row mt">
						<div class="col-xl-4 col-md-6" style="background: #f8f9fc">
							<div class="card bg-pattern">
								<div class="card-body">
									<div class="float-right">
										<i class="fa fa-archive text-primary h4 ml-3"></i>
									</div>
									<div class='dataTables_filter search-box'>
										<h5 class="font-size-20 mt-0 pt-1">과목구분</h5>
										<select name="lecture_num" onchange='$("form").submit()'
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
										<select name="year" onchange='$("form").submit()'
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
										<select name="semester" onchange='$("form").submit()'
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
				</c:if>
			</form>


			<!-- 데이터 테이블 -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">성적 조회</h6>
				</div>
				
				<div class="card-body">
				<p class="ml-2 font-weight-bold text-dark" id="tot_list">총 (${fn:length(list) }) 과목</p>
					<div class="table-responsive">
						<div id='dataTable_wrapper'
							class='dataTables_wrapper dt-bootstrap4'>
							<!-- 테이블 자리 -->

							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>강의번호</th>
										<th>강의명</th>
										<th>교수명</th>
										<th>년도</th>
										<th>학기</th>
										<th>과목평균</th>
										<!--        <th>내학점</th> -->
										<th>내 학점(점수)</th>
										<th>내 성적(등급)</th>
										<c:if test="${select_grp eq 'choice' }">
											<th>전체<input id="allCk" type="checkbox" /></th>

										</c:if>
									</tr>
								</thead>
								<tbody>

									<c:forEach items='${list}' var='vo'>

										<tr class='average'>
											<td>${vo.lecture_num }</td>
											<td>${vo.lecture_title }</td>
											<td>${vo.teacher_name }</td>
											<td>${vo.lecture_year }</td>
											<td>${vo.semester }</td>
											<td>${vo.tot_avg }</td>
											<%--     <td>${vo.subjectcredit }</td>  --%>
											<c:choose>
												<c:when test="${vo.semesterpoint gt 0 }">
												<td class='point'>${vo.semesterpoint }</td>
												<td>${vo.score_name }</td>
												<c:if test="${select_grp eq 'choice' }">
												<td><input type="checkbox" /></td>
											</c:if>
												</c:when>
												<c:otherwise>
													<td colspan="3"  style="text-align: center;">수강중(평가전)</td>
												</c:otherwise>
											</c:choose>
										
											
											
										</tr>
									</c:forEach>

									<c:if test="${select_grp ne 'choice' }">

										<c:choose>
											<c:when test="${fn:length(list) > 1 }">

												<tr>
													<td colspan="6"
														style="text-align: right; background: #f6fbff">총 학점</td>
													<td colspan="2">${list[0].my_total }</td>

												</tr>
												<tr>
													<td colspan="6"
														style="text-align: right; background: #f6fbff">평균 학점</td>
													<td colspan="2">${list[0].my_avg }</td>

												</tr>
											</c:when>

										</c:choose>

									</c:if>
									<c:if test="${select_grp eq 'choice' }">
										<tr>
											<td colspan="6"
												style="text-align: right; background: #f6fbff">총 학점</td>
											<td colspan="2"><a id="total"></a></td>
											<td colspan="1"><a id="count"></a></td>

										</tr>
										<tr>
											<td colspan="6"
												style="text-align: right; background: #f6fbff">평균 학점</td>
											<td colspan="2"><a id="avg"></a></td>


										</tr>
									</c:if>
								</tbody>
							</table>




						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- container-fluid -->



	</div>






	<script>


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