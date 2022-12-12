<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='https://code.jquery.com/jquery-3.6.1.min.js'></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js'></script>

</head>
<style>

@font-face {
    font-family: 'SEBANG_Gothic_Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2104@1.0/SEBANG_Gothic_Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
h3{
	font-family: 'SEBANG_Gothic_Bold';
}
</style>
<body>


    <h3 style="text-align: initial; color: #6a6a6a" class="m-2 mb-3">내 정보</h3>
<div class="card shadow mb-6" style="width:100%;">

		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">My info</h6>
		</div>
		<div class="card-body">
          <div class="row gutters-sm">
            <div class="col-md-4 mb-4">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                  
				<c:choose>
					<c:when test="${empty vo.profile and vo.gender eq '남'}">
					 <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
				</c:when>
				<c:when test="${empty vo.profile and vo.gender eq '여'}">
					 <img src="https://bootdey.com/img/Content/avatar/avatar8.png" alt="Admin" class="rounded-circle" width="150">
				</c:when>
				<c:otherwise>
					 <img src="${vo.profile }" alt="Admin" class="rounded-circle" width="150">
				</c:otherwise>
				</c:choose>
                  
                  
                   
                    <div class="mt-3">
                      <h4>${vo.name}</h4>
                      <p class="text-secondary mb-1">${vo.department_name }</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card mt-3">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><i class="fa-solid fa-venus-mars"></i>성별</h6>
                    <span class="text-secondary">
                    ${vo.gender}
                    
                    </span>
                  </li>
                  <c:choose>
             
                  <c:when test="${vo.info_cd eq 3 }">
                 	   <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                  	 	 <h6 class="mb-0"><i class="fa-solid fa-graduation-cap"></i>직책</h6>
                   		 <span class="text-secondary">
                   		 교수
                    
                    		</span>
                    		  </li>
                    </c:when>
                     <c:when test="${vo.info_cd eq 1 }">
                 	   <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                  	 	 <h6 class="mb-0"><i class="fa-solid fa-graduation-cap"></i>학년</h6>
                   		 <span class="text-secondary">
                   		 ${vo.grade}
                    
                    		</span>
                    		  </li>
                    </c:when>
                     </c:choose>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><i class="fa-solid fa-graduation-cap"></i>입학 상태</h6>
                    <span class="text-secondary">
                    ${vo.state}
                    
                    </span>
                  </li>
                 
                </ul>
               </div>
              
            </div>
            
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
               
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${vo.email }
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Phone</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     ${vo.phone }
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Mobile</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      (062) 362-7797
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Address</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${vo.addr } (${vo.post })
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-12">
                      <a class="btn btn-info "  href="chainfo">정보 수정</a>
                    </div>
                  </div>
                </div>
              </div>
				<c:if test="${vo.info_cd eq 1}">
              <div class="row gutters-sm">
                <div class="col-md-12">
                  <div class="card mb-3">
                    <div class="card-body">
                      <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">입학일</i>${vo.start_date }</h6>
                      <small>졸업까지 ${vo.end_date }</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                     
                    </div>
                  </div>
                </div>
             
              </div>
</c:if>


            </div>
          </div>

        </div>
    </div>


	




</body>
</html>