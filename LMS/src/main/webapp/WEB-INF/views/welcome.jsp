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
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/school.css">
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

<body class="page-about">

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
          <li><a href="index" >홈</a></li>
          <li><a href="welcome" class="active">학교소개</a></li>
          <li><a href="about" >찾아오시는길</a></li>
        </ul>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url('assets/img/blog-header.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center">

        <h2>학교소개</h2>
        <ol>
          <li><a href="index">홈</a></li>
          <li>학교소개</li>
        </ol>

      </div>
    </div><!-- End Breadcrumbs -->

 <div class="mainbox">
        <!--학교 소개페이지-->
        <div class="school">
            <span class="comment"><p>세상을 바꾸는 It교육의 중심</p></span>
            <span class="comment"><p>영문대학교</p></span>


        </div>
        <div class="mainimg">
            <img src="resources/images/ymu.png" alt="">
        </div>

        <p class="center sd">영문대학교 주요 학과소개</p>

        
        <!--학과소개 :
        게임개발학과, 인공지능학과, 웹디자인, 앱개발, 정보보안, 빅데이터,, 소프트웨어, Iot반도체
        전자과,-->
        <div class="department">
            <div class="game">
                <div><img class="sizing black" src="resources/images/game.jpg" alt="">
                    <span class="imgname"><p class="white">게임개발학과</p></span>
                </div>
                <div class="move font_center boxback" >
                    <p>Unity, UNREAL ENGINE, C#, C++</p>
                </div>
                
            </div>

            <div class="ingnore">
                <div ><img class="sizing" src="resources/images/ig.png" alt="">
                    <span class="imgname"><p class="white">인공지능학과</p></span>
                </div>
                <div class="move font_center boxback">
                    <p>python, R, TensorFlow, MATLAB</p>
                </div>
            </div>
            <div class="web">
                <div><img class="sizing" src="resources/images/web.png" alt="">
                    <span class="imgname"><p class="white">웹 개발학과</p></span>
                </div>
                <div class="move font_center boxback">
                    <p>Java, Python, Database, Js, Jsp </p>
                </div>
            </div>
            <div class="app">
                <div><img class="sizing" src="resources/images/app.jpg" alt="">
                    <span class="imgname"><p class="white">앱 개발학과</p></span>
                </div>
                <div class="move font_center boxback">
                    <p>Android Studio, JAVA, Kotlin</p>
                </div>
            </div>
            <div class="boan">
                <div><img class="sizing" src="resources/images/boan.jfif" alt="">
                    <span class="imgname"><p class="white">정보보안학과</p></span>
                </div>
                <div class="move font_center boxback">
                    <p>Linux, Python, Ruby, C, </p>
                </div>
            </div>
            <div class="big">
                <div><img class="sizing" src="resources/images/big.jpg" alt="">
                    <span class="imgname"><p class="white">빅데이터 학과</p></span>
                </div>
                <div class="move font_center boxback">
                    <p>R, Python</p>
                </div>
            </div>
            <div class="soft">
                <div><img class="sizing" src="resources/images/soft.jpg" alt="">
                    <span class="imgname"><p class="white">소프트웨어학과</p></span>
                </div>
                <div class="move font_center boxback">
                    <p>Java, C, Python, Linux , ...</p>
                </div>
            </div>
            <div class="bando">
                <div><img class="sizing" src="resources/images/ban.png" alt="">
                    <span class="imgname"><p class="white">Iot반도체전자과</p></span>
                </div>
                    <div class="move font_center boxback">
                        <p>C, Raspberry Pi, Arduino, Linux, MATLAB</p>
                    </div>
            </div>
            
        </div>
        <div class="line"></div>
        <div class="teacher">
            
            <div class="chong"><p>총장님 한 말씀</p></div>
            <div class="ll">
                <div class="ymimg"><img class="dsize" src="resources/images/ym.png" alt=""></div>
            </div>
            <div class="ll2"><p>" 밝은 미래를 만들어 갈 인재를 양성하겠습니다. "</p></div>
        </div>
    </div>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  </main><!-- End #main -->

 
  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>
 <script>

const options = {
    root: null, // viewport
    rootMargin: "0px",
    threshold: .5,  // 50%가 viewport에 들어와 있어야 callback 실행
    }

    const observer = new IntersectionObserver(entries => {
    entries.forEach(entry => {
    console.log(entry.isIntersecting);
    if (entry.isIntersecting) {
        entry.target.classList.add("active");
    } else {
        entry.target.classList.remove("active");
        }
    });
}, options);

const titleList = document.querySelectorAll('.move');

// 반복문을 돌려 모든 DOM에 적용
titleList.forEach(el => observer.observe(el));

    </script>
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