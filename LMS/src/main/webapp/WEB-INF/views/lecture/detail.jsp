<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<style>
body {
	margin-bottom:10px;
    background: rgb(99, 39, 120)
}

.container-fluid{
margin-bottom:10px;

}

.form-control:focus {
    box-shadow: none;
    border-color: #BA68C8
}

.profile-button {
    background: rgb(99, 39, 120);
    box-shadow: none;
    border: none
}

.profile-button:hover {
    background: #682773
}

.profile-button:focus {
    background: #682773;
    box-shadow: none
}

.profile-button:active {
    background: #682773;
    box-shadow: none
}

.back:hover {
    color: #682773;
    cursor: pointer
}

.labels {
    font-size: 11px
}

.add-experience:hover {
    background: #BA68C8;
    color: #fff;
    cursor: pointer;
    border: solid 1px #BA68C8
}
</style>

<body>

<div class="card shadow mb-4 ">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">강의 상세 정보</h6>
			</div>
			
			</div>
<div class="container-fluid bg-white">

    <div class="row">
    	
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">${vo.teacher_name}</span><span class="text-black-50">[${vo.lecture_title}]</span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">강의 기본 정보</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">강의번호</label><p style="color: #000">${vo.lecture_num} </p></div>
                    <div class="col-md-6"><label class="labels">강의실</label><p style="color: #000">${vo.lecture_room} </p></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">년도</label><p style="color: #000">${vo.lecture_year} </p></div>
                    <div class="col-md-6"><label class="labels">학기</label><p style="color: #000">${vo.semester} </p></div>
                    <div class="col-md-12"><label class="labels">과목학점</label><p style="color: #000">${vo.subjectcredit}학점 </p></div>
                    <div class="col-md-12"><label class="labels">교재명</label><p style="color: #000">${vo.book} </p></div>
                    <div class="col-md-6"><label class="labels">요일</label><p style="color: #000">${vo.lecture_day} </p></div>
                    <div class="col-md-6"><label class="labels">교시</label><p style="color: #000">${vo.lecture_time} </p></div>
                    <div class="col-md-6"><label class="labels">수강신청</label><p style="color: #000">${vo.enrolment} </p></div>
                    <div class="col-md-6"><label class="labels">수강인원</label><p style="color: #000">${vo.capacity} </p></div>
                </div>
              
                <div style='display:flex; justify-content: center;'>
                	<div class="mt-5 text-center" style='margin-right:1rem;'><a href="list.lec" class="btn btn-primary">강의 목록</a> </div>
                	<c:if test="${loginInfo.info_cd eq 3 || loginInfo.info_cd eq 4 }">
                	<div class="mt-5 text-center"style='margin-right:1rem;'><a href="modify.lec?lecture_num=${vo.lecture_num}" class="btn btn-primary">정보 수정</a> </div>
                	<div class="mt-5 text-center"><a href="delete.lec?lecture_num=${vo.lecture_num}" class="btn btn-primary">삭제</a> </div>
                	</c:if>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center experience"><span>기타 정보</span></div><br>
                <div class="col-md-12"><label class="labels">중간고사 </label><p> ${vo.midex}</p></div> <br>
                <div class="col-md-12"><label class="labels">기말고사 </label><p> ${vo.finalex }</p></div> <br>
                <div class="col-md-12"><label class="labels">온/오프라인 </label><p> ${vo.state}</p></div> <br>
                <div class="col-md-12"><label class="labels">이수구분 </label><p> ${vo.sortation}</p></div> <br>
                <div class="col-md-12"><label class="labels">접수상태 </label><p> ${vo.enrolment} </p></div> <br>
                <div class="col-md-12"><label class="labels">비고</label><p> - </p></div> <br>
            </div>
        </div>
    </div>
</div>
</div>
</div>
				
</body>
</html>