<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>영문대학교 LMS</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <!-- Favicons -->
  <link href="resources/images/mainlogin/lmslogo.png" rel="icon">
  <link href="resources/images/mainlogin/lmslogo.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>

<body class="page-index">

  <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
		
      <a href="index" class="logo d-flex align-items-center">

        <img src="resources/images/mainlogin/logo_white.png" style="width: 200px; height: 70px;">
      </a>

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="index" class="active">홈</a></li>
          <li><a href="welcome">학교소개</a></li>
          <li><a href="about">찾아오시는길</a></li>
        </ul>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex align-items-center">
    <div class="container">
      <div class="row">
        <div class="col-xl-3">
          <blockquote data-aos="fade-up" data-aos-delay="100">
			<h2 class='login-title'>LOGIN</h2>
			<form class='mform' method='post' action='login'>
			 <div class="form-group  mt-3-mx-sm-3 mb-2">
   				 <label for='id'>아이디</label>
   				 <input type="text" id='id' name='id' class="form-control"  placeholder="사용자 아이디">
  			</div>
			 <div class="form-group mt-3-mx-sm-3 mb-2" >
   				 <label for="pw">패스워드</label>
   				 <input type="password" id='pw' name='pw' class="form-control"  placeholder="사용자 아이디">
  			</div>
				 <div class="form-group mt-3">	
				    <div class="d-flex" data-aos="fade-up" data-aos-delay="200">
					<input type='submit' id='login' name='btn_login'  class="btn-get-started" value='로그인' onclick="location='/login'">
					
					<div class='checkbox m-3'>
					<label><input type="checkbox" id='remember' name='remember_user'>사용자이름 기억</label>
				</div>
				
					</div>
				</div>
				 <div class="form-group mt-2">
				<div class='find'>
					<a href='' target='_blank'>아이디 / 비밀번호 찾기</a>
				</div>
				</div>
			</form>
         
         
          </blockquote>
          <div class="d-flex mt-5" data-aos="fade-up" data-aos-delay="200">
            <a href="https://youtu.be/mlxmKRVUjUM" class="glightbox btn-watch-video d-flex align-items-center"><i class="bi bi-play-circle"></i><span>대학교 홍보 영상</span></a>
          </div>
			<div class="d-flex mt-5" data-aos="fade-up" data-aos-delay="200">
            <a href="team" target="_blank" class=" btn-watch-video d-flex align-items-center">
            <i class="bi bi-play-circle"></i>
            <span>대학 설립자 소개</span></a>
          </div>
        </div>
      </div>
    </div>
  </section><!-- End Hero Section -->

  <main id="main">

    <section id="why-us" class="why-us">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>주요 소식</h2>

        </div>

        <div class="row g-0" data-aos="fade-up" data-aos-delay="200">

          <div class="col-xl-5 img-bg" style="background-image: url('assets/img/why-us-bg.jpg')"></div>
          <div class="col-xl-7 slides  position-relative">

            <div class="slides-1 swiper">
              <div class="swiper-wrapper">

                <div class="swiper-slide">
                  <div class="item">
                    <h3 class="mb-3">2022 산학연계 현장실습 교육과정 영상콘텐츠 공모전 대상(교육부 장관상) 수상</h3>
                    <h4 class="mb-3">2022 산학연계 현장실습 교육과정 영상콘텐츠 공모전 대상(교육부 장관상) 수상
백인애 학생, 광고홍보 현장실습 경험 담은 영상 콘텐츠로 대상 수상
영문대 현장실습지원센터, 학생들에게 최고의 산학협력 현장실습 교육과정 등 제공</h4>
                    <p>지난 11월 2일~4일 경기도 수원컨벤션센터에서 열린 ‘2022 산학협력 EXPO’에서 영문대 개발학과 백인애 학생은 ‘나의 첫 광고회사, 첫 현장실습, 첫 업무다이어리’라는 제목으로 광고홍보 관련 기업에서 현장실습을 수행한 경험담을 영상으로 소개하여 대상을 수상했다.</p>
                  </div>
                </div><!-- End slide item -->

                <div class="swiper-slide">
                  <div class="item">
                    <h3 class="mb-3">2022년 행정고시 최종합격자 52명, 사립대 1위</h3>
                    <h4 class="mb-3">2022 행정고시 최종합격자 52명, 사립대 1위

외교관후보자 시험과 5급공채 기술직에서도 각각 6명과 12명씩 최종합격</h4>
                  </div>
                </div><!-- End slide item -->

              </div>
              <div class="swiper-pagination"></div>
            </div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
          </div>

        </div>

      </div>
    </section><!-- End Why Choose Us Section -->

    <!-- ======= Our Services Section ======= -->
    <section id="services-list" class="services-list">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>주요 학과</h2>

        </div>

        <div class="row gy-5">

          <div class="col-lg-4 col-md-6 service-item d-flex" data-aos="fade-up" data-aos-delay="100">
            <div class="icon flex-shrink-0"><i class="bi bi-briefcase" style="color: #f57813;"></i></div>
            <div>

              <h4 class="title"><a href="#" class="stretched-link">게임개발학과</a></h4>
              <p class="description">코딩을 이용해서 게임을 개발합니다.</p>
            </div>
          </div>
          <!-- End Service Item -->

          <div class="col-lg-4 col-md-6 service-item d-flex" data-aos="fade-up" data-aos-delay="200">
            <div class="icon flex-shrink-0"><i class="bi bi-card-checklist" style="color: #15a04a;"></i></div>
            <div>
              <h4 class="title"><a href="#" class="stretched-link">웹디자인학과</a></h4>
              <p class="description">웹을 디자인 해버립니다</p>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6 service-item d-flex" data-aos="fade-up" data-aos-delay="300">
            <div class="icon flex-shrink-0"><i class="bi bi-bar-chart" style="color: #d90769;"></i></div>
            <div>
              <h4 class="title"><a href="#" class="stretched-link">앱개발학과</a></h4>
              <p class="description">안드로이드 , IOS 앱을 제작합니다.</p>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6 service-item d-flex" data-aos="fade-up" data-aos-delay="400">
            <div class="icon flex-shrink-0"><i class="bi bi-binoculars" style="color: #15bfbc;"></i></div>
            <div>
              <h4 class="title"><a href="#" class="stretched-link">빅데이터학과</a></h4>
              <p class="description">많은 데이터를 분석하여 ..</p>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6 service-item d-flex" data-aos="fade-up" data-aos-delay="500">
            <div class="icon flex-shrink-0"><i class="bi bi-brightness-high" style="color: #f5cf13;"></i></div>
            <div>
              <h4 class="title"><a href="#" class="stretched-link">소프트웨어학과</a></h4>
              <p class="description">소프트웨어를 분석하여 </p>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6 service-item d-flex" data-aos="fade-up" data-aos-delay="600">
            <div class="icon flex-shrink-0"><i class="bi bi-calendar4-week" style="color: #1335f5;"></i></div>
            <div>
              <h4 class="title"><a href="#" class="stretched-link">정보보안학과</a></h4>
              <p class="description">정보 보안을</p>
            </div>
          </div><!-- End Service Item -->

        </div>

      </div>
    </section><!-- End Our Services Section -->

    <!-- ======= Call To Action Section ======= -->
    <section id="call-to-action" class="call-to-action">
      <div class="container" data-aos="fade-up">
        <div class="row justify-content-center">
          <div class="col-lg-6 text-center">
            <h3>입학 지원하기</h3>
            <p>영문 대학교에서는 미래의 인재들을 모집중 입니다. </p>
          </div>
        </div>

      </div>
    </section><!-- End Call To Action Section -->

    <!-- ======= Features Section ======= -->
    <section id="features" class="features">

      <div class="container" data-aos="fade-up">
        <div class="row">
          <div class="col-lg-7" data-aos="fade-up" data-aos-delay="100">
            <h3>학교 생활을 위한 <br>  App 출시</h3>

            <div class="row gy-4">

              <div class="col-md-6">
                <div class="icon-list d-flex">
                  <i class="ri-store-line" style="color: #ffbb2c;"></i>
                  <span>강의 관리</span>
                </div>
              </div><!-- End Icon List Item-->

              <div class="col-md-6">
                <div class="icon-list d-flex">
                  <i class="ri-bar-chart-box-line" style="color: #5578ff;"></i>
                  <span>성적 조회</span>
                </div>
              </div><!-- End Icon List Item-->

              <div class="col-md-6">
                <div class="icon-list d-flex">
                  <i class="ri-calendar-todo-line" style="color: #e80368;"></i>
                  <span>수강 신청</span>
                </div>
              </div><!-- End Icon List Item-->

              <div class="col-md-6">
                <div class="icon-list d-flex">
                  <i class="ri-paint-brush-line" style="color: #e361ff;"></i>
                  <span>관리자용 비품 관리</span>
                </div>
              </div><!-- End Icon List Item-->

              <div class="col-md-6">
                <div class="icon-list d-flex">
                  <i class="ri-database-2-line" style="color: #47aeff;"></i>
                  <span>급여 관리</span>
                </div>
              </div><!-- End Icon List Item-->

              <div class="col-md-6">
                <div class="icon-list d-flex">
                  <i class="ri-gradienter-line" style="color: #ffa76e;"></i>
                  <span>시간표 보기</span>
                </div>
              </div><!-- End Icon List Item-->

              <div class="col-md-6">
                <div class="icon-list d-flex">
                  <i class="ri-file-list-3-line" style="color: #11dbcf;"></i>
                  <span>공지사항</span>
                </div>
              </div><!-- End Icon List Item-->

              <div class="col-md-6">
                <div class="icon-list d-flex">
                  <i class="ri-base-station-line" style="color: #ff5828;"></i>
                  <span>자유 게시판</span>
                </div>
              </div><!-- End Icon List Item-->
            </div>
          </div>
          <div class="col-lg-5 position-relative" data-aos="fade-up" data-aos-delay="200">
            <div class="phone-wrap">
              <img src="assets/img/iphone.png" alt="Image" class="img-fluid">
            </div>
          </div>
        </div>

      </div>

      <div class="details">
        <div class="container" data-aos="fade-up" data-aos-delay="300">
          <div class="row">
            <div class="col-md-6">
              <h4>영문 대학교 LMS<br> App</h4>
              <p>앱이 대충 좋다 다운받아라 여기 위에 iphone이미지 앱 메인 캡쳐해서 넣으면 됩니당ㅇ</p>
              <a href="#" class="btn-get-started">Download</a>
            </div>
          </div>

        </div>
      </div>

    </section><!-- End Features Section -->

  
  </main><!-- End #main -->


  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>