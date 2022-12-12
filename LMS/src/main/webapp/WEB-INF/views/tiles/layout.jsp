<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>
<style type="text/css">
@font-face {
    font-family: 'SEBANG_Gothic_Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2104@1.0/SEBANG_Gothic_Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

@keyframes blink-effect {
  80% {
    opacity: 0;
  }
}
.blink_top{
	width: 100%;
	position: relative;
}
.blink {
	width:50px;
  	animation: blink-effect 1s step-end infinite;
	background: red;
	color: white;
	border-radius: 30px;
	padding:5px;
	font-size: 5px;
	position: absolute;
	left: 60%;
	top: -30%;
	
}



.blink_top{
	width: 100%;
	position: relative;
}
.blink_cl {
  	animation: blink-effect 1s step-end infinite;
}
#page-top{
margin-top:0px;
}
</style>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <title>영문대학교</title>


    <!-- Custom fonts for this template-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet" type="text/css"/>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

 	<!-- Bootstrap core JavaScript-->
    <script src="resources/vendor/jquery/jquery.min.js"></script>
    <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    

    <!-- Page level plugins -->
<!--     <script src="resources/vendor/chart.js/Chart.min.js"></script> -->

    <!-- Page level custom scripts -->
     <script src="resources/js/demo/chart-area-demo.js"></script>
     <script src="resources/js/demo/chart-pie-demo.js"></script>

    
 	
 	
 	
 	
</head>

    


<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <tiles:insertAttribute name="aside"/>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
				
                <!-- Topbar -->
                <tiles:insertAttribute name="header"/>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
				<tiles:insertAttribute name="container"/>

                    <!-- Content Row -->
                    

                    <!-- Content Row -->

                    

                    <!-- Content Row -->
                    

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->


<!-- Footer -->
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->
 <footer
          class="text-center text-lg-start text-white"
          style="background-color: #1c2331"
          >
    <!-- Section: Social media -->
    <section 
             class="d-flex justify-content-between p-4"
             style="background-color: #1c2331"
             >
      <!-- Left -->
      <div class="me-5">
        <span> </span>
      </div>
      <!-- Left -->

      <!-- Right -->
      <div>
        <a href="" class="text-white me-4">
          <i class="fab fa-facebook-f"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-twitter"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-google"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-instagram"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-linkedin"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-github"></i>
        </a>
      </div>
      <!-- Right -->
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section class="">
      <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            <!-- Content -->
            <h6 class="text-uppercase fw-bold">영문 대학교</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #183691; height: 2px"
                />
            <p>
              미래를 만드는 대학교
            </p>
         
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold">Team</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #183691; height: 2px"
                />
            <p>
              <a href="#!" class="text-white">Kim Gang Yun</a>
            </p>
            <p>
              <a href="#!" class="text-white">Kim Seo In</a>
            </p>
            <p>
              <a href="#!" class="text-white">An Jin Heok</a>
            </p>
            <p>
              <a href="#!" class="text-white">Jung Un Jin</a>
            </p>
            <p>
              <a href="#!" class="text-white">Back In Aae</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold">관련 사이트</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #183691; height: 2px"
                />
            <p>
              <a href="#!" class="text-white">한울 직업 전문학교</a>
            </p>
            <p>
              <a href="#!" class="text-white">영문 네트워크</a>
            </p>
            <p>
              <a href="#!" class="text-white">Oracle </a>
            </p>
            <p>
              <a href="#!" class="text-white">Spring</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold">Contact</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p><i class="fas fa-home mr-3"></i>  광주 광역시 농성동 경열로 3</p>
            <p><i class="fas fa-envelope mr-3"></i> test@uni.com</p>
            <p><i class="fas fa-phone mr-3"></i> 062 362 7797</p>
            <p><i class="fas fa-print mr-3"></i> 010 1234 5678</p>
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div
         class="text-center p-3"
         style="background-color: rgba(0, 0, 0, 0.2)"
         >
      © 2022 Copyright: test.com
    </div>
    <!-- Copyright -->
  </footer>
 
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">정말 로그아웃 하시겠습니까?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">현재 세션을 종료할 준비가 되면 아래에서 "로그아웃"을 선택하십시오.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                    <a class="btn btn-primary" href="logout">로그아웃</a>
                </div>
            </div>
        </div>
    </div>

<!-- Custom scripts for all pages-->
    <script src="resources/js/sb-admin-2.min.js"></script>
	

</body>

</html>