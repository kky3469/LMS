<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>영문대학교 설립자들</title>
    <link rel="stylesheet" type="text/css" href="resources/css/reset.css">
    <style>

         /* webfont */
    /* 강원교육 튼튼체 */
    @font-face {
    font-family: 'GangwonEduPowerExtraBoldA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduPowerExtraBoldA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
    }

    /* 반짝반짝 폰트 */
    @font-face {
        font-family: 'PyeongChangPeace-Bold';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-02@1.0/PyeongChangPeace-Bold.woff2') format('woff2');
        font-weight: 700;
        font-style: normal;
    }  
        html,
body {
    background-color: #000;
    width: 100%;
    font-family: "Pacifico", cursive;
    overflow-x: hidden;
}

.cover {
    width: 100vw;
    margin-bottom: 10rem;
    display: flex;
}

.cover1 {
    padding-top: 1rem;
    margin-top: 5vh;
    transform: rotate(-2deg);
    background-color: #09880f;
}

.cover2 {
    padding-top: 1rem;
    transform: rotate(2deg);
    background-color: #cc1616;
    justify-content: flex-end;
}


.p {
    font-family: 'GangwonEduPowerExtraBoldA';
    color: white;
    display: flex;
    padding: 1rem 0;
    font-size: 2rem;
}


    
    
        body {
	margin: 0;
	padding: 0;
	font-size: 75%;
	line-height: 1.5em;
	font-family: "Malgun Gothic", "Lucida Grande", Tahoma, Verdana, AppleGothic, UnDotum, sans-serif;
    }
    form {
        margin: 0;
        padding: 0;
    }
    hr {
        display: none;
    }
    p, div, th, td, select, input {
        color: #333;
    }
    a:link, a:visited {
        color: #666;
        text-decoration: none;
    }
    a:active, a:hover {
        color: #000;
        text-decoration: none;
    }
    a img, 
    input.type-image {
        border: 0 none;
    }
    input.type-text, 
    textarea {
        border: 1px solid #ddd;
        background: #fff;
        padding: 1px;
    }
    input.type-text:hover, 
    input.type-text:focus, 
    textarea:hover, 
    textarea:focus, 
    select:hover, 
    select:active {
        background-color: #ffd;
    }
    input, select, textarea {
        vertical-align: middle;
        font-size: 1em;
        color: #333;
    }
    select {
        font-size: 11px;
        font-family: Dotum, "돋움", sans-serif;
    }
    span.button, 
    img.button, 
    a.button {
        cursor: pointer;
        vertical-align: middle;
    }
            
        .container{ 
            padding-top: 12rem;
            height: 4000px;
            background-color: rgb(194, 38, 26);
        }
    
    .img_size{
        width: 400px;
        height: 400px;
    }

    .img_container{
        padding-top: 12rem;
        margin: 0 auto;
        background-color: white;
        width: 90%;
        height: 210rem;
        border-radius: 15rem;
    }
    .footer{
        margin-top: 2rem;
        right: 20rem;
        position: absolute;
        padding-top: 2rem;
        font-size: 3rem;
        font-family: 'PyeongChangPeace-Bold';
    }
    .footer p{
        color: rgb(250, 255, 228);
    }

    /* main font */
    .main_font{
        z-index: 99;
        width: 60rem;
        position: absolute;
        font-family: 'PyeongChangPeace-Bold';
        font-size: 8rem;
        top: 17%;
        left: 50%;
        transform: translate(-50%, -50%);
    }
    .main_font p{
        color: rgb(255, 255, 255);
        text-shadow: 2px 2px 6px rgb(0, 81, 255);
    }
    
    .name_font{
        font-size: 3rem;
        font-family: 'GangwonEduPowerExtraBoldA';
    }
    .position{
        position: absolute;
    }

    .move{
        transform: translateX(-50%);
        opacity: 0;
        transition: .8s;
    }

    .move.active{
        transform: translateX(0);
        opacity: 1;
    }


    .anjin{
        top: 70%;
        left: 10%;
    }
    .en{
        top: 120%;
        right: 10%;
    }
    .gang{
        top: 170%;
        left: 10%;
    }
    .back{
        top: 220%;
        right: 10%;
    }
    .si{
        top: 270%;
        left: 10%;
    }
    .sujin{
        top: 320%;
        right: 10%;
    }
    /*-----*/
    
    .background_left{
        width: 80rem;
        height: 25rem;
        border-radius: 10rem;
        background: rgb(237, 237, 240);
    }
    .background_right{
        background: rgb(193, 188, 204);
        height: 25rem;
        border-radius: 10rem;
        padding-left: 60rem
    }

    img{
        animation: motion 1s linear 0s infinite alternate; margin-top: 0;
    }
    @keyframes motion{
        0%{margin-top: 0px;}
        100%{margin-top: 10px;}
    }
    .pp{
        position: absolute;
        z-index: 22;
        top: 35%;
        left: -6rem;
    }
    .pp img{
        width: 300px;
    }
    .pp2{
        position: absolute;
        z-index: 22;
        top: 50%;
        left: 6rem;
    }
    .pp2 img{
        width: 100px;
    }
    .pp3{
        position: absolute;
        z-index: 22;
        top: 37%;
        right: -9rem;
    }
    .pp3 img{
        width: 400px;
    }
    .p1{
        top: -2rem;
        position: absolute;
        z-index: 21;
    }
    .p2{
        top: -4rem;
        position: absolute;
        right: 0;
        z-index: 21;
    }
    .p_position{
        font-family: 'GangwonEduPowerExtraBoldA';
        font-size: 3rem;
        position: absolute;
        top: 12rem;
        left: 30rem;
        line-height: 4rem;
        text-shadow: 2px 2px 6px rgb(120, 139, 179);
    }
    .p_position1{
        font-family: 'GangwonEduPowerExtraBoldA';
        font-size: 3rem;
        position: absolute;
        top: 3rem;
        left: 30rem;
        line-height: 4rem;
        text-shadow: 2px 2px 6px rgb(165, 138, 170);
    }
    /* 인애씨꺼 */
    .p_position2{
        font-family: 'GangwonEduPowerExtraBoldA';
        font-size: 3rem;
        position: absolute;
        top: 10rem;
        left: 11rem;
        line-height: 4rem;
        text-shadow: 2px 2px 6px rgb(251, 228, 255);
    }
    .p_position3{
        font-family: 'GangwonEduPowerExtraBoldA';
        font-size: 3rem;
        position: absolute;
        top: 9rem;
        left: 30rem;
        line-height: 4rem;
        text-shadow: 2px 2px 6px rgb(170, 145, 138);
        
    }
    .p_position4{
        font-family: 'GangwonEduPowerExtraBoldA';
        font-size: 3rem;
        position: absolute;
        top: 10rem;
        left: 11rem;
        line-height: 4rem;
        text-shadow: 2px 2px 6px rgb(150, 102, 126);
    }
    
    
    </style>
    
</head>
<body>

    <span class="pp"><img src="resources/imges/pp.png" alt=""></span>
    <span class="pp2"><img src="resources/imges/pp.png" alt=""></span>
    <span class="pp3"><img src="resources/imges/pp.png" alt=""></span>
    <span class="p1"><img src="resources/imges/p1.png"/></span>
    <span class="p2"><img src="resources/imges/p2.png"/></span>
    <div class="container">
        <div class="main_font"><p> 영문대 설립자들 </p></div>
        
        <div class="img_container">

            <div class="position anjin move">
                <div class="background_left">
                    <span class="p_position"><p>"요정도 ㅋ?"</p></span>
                    <img class="move img_size" src="resources/imges/an.png"/>
                    <span class="name_font"><p>안진혁</p></span>
                    
                </div>
            </div>


            <div class="position en move">
                <div class="background_right">
                    <span class="p_position2"><p>"한울직업전문학교의 마지막 프로젝트를 <br> 우리조와 함께하게 되어 영광이었습니다."</p></span>
                <img class="move img_size" src="resources/imges/ene.png"/>
                <span class="name_font"><p>정은진</p></span>
                </div>
            </div>
            <div class="position gang move">
                <div class="background_left">
                    <span class="p_position1"><p>"★★★★★<br>★★★★<br>★★★<br>★★<br>★"</p></span>
                    <img class="move img_size" src="resources/imges/gang.png"/>
                    <span class="name_font"><p>김강윤</p></span>
                </div>
            </div>

            <div class="position back move">
                <div class="background_right">
                    <span class="p_position2"><p>"인성! 능력! 다 갖춘 우리조 ♥ <br>앞으로도 승승장구하자 알럽"</p></span>
                    <img class="move img_size" src="resources/imges/inaee.png"/>
                    <span class="name_font"><p>백인애</p></span>
                </div>
            </div>

            <div class="position si move">
                <div class="background_left">
                    <span class="p_position3"><p>"좋은 사람들과 함께 할 수 있는 <br>기회를 얻어서 행복합니다."</p></span>
                    <img class="move img_size" src="resources/imges/si.png"/>
                    <span class="name_font"><p>김서인</p></span>
                </div>
            </div>
            <div class="position sujin move">
                <div class="background_right">
                    <span class="p_position4"><p>"요정도 ㅋ?"</p></span>
                    <img class="move img_size" src="resources/imges/su.png"/>
                    <span class="name_font"><p>박수진</p></span>    
                </div>
            </div>
            
            
            
            <div class="cover1">
                <p class="first-parallel p"></p>
            </div>
            <div class="cover2">
                <p class="second-parallel p"></p>
            </div>
            
            
            
            
            

        </div>

        <div class="footer">
            <p>Made in By .영문대학교 코딩동아리</p>

        </div>
    </div>


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





        //테이핑 애니메이션 스크립트
        const pTag1 = document.querySelector('.first-parallel')
        const pTag2 = document.querySelector('.second-parallel')

        
        const textArr1 = '영문대학교 코딩동아리 LMS 영문대학교 코딩동아리 LMS'.split(' ')
        const textArr2 = '김강윤, 백인애, 김서인, 박수진, 안진혁, 정은진'.split(' ')

        let count1 = 0
        let count2 = 0

        initTexts(pTag1, textArr1)
        initTexts(pTag2, textArr2)

        function initTexts(element, textArray) {
            textArray.push(...textArray)
            for (let i = 0; i < textArray.length; i++) {
            element.innerText += `${textArray[i]}\u00A0\u00A0\u00A0\u00A0`
        }
        }
    
        function marqueeText(count, element, direction) {
            if (count > element.scrollWidth / 2) {
            element.style.transform = `translate3d(0, 0, 0)`
            count = 0
        }
          element.style.transform = `translate3d(${direction * count}px, 0, 0)`

            return count
        }

        function animate() {
            count1++
            count2++

            count1 = marqueeText(count1, pTag1, -1)
            count2 = marqueeText(count2, pTag2, 1)

            window.requestAnimationFrame(animate)
        }

        function scrollHandler() {
            count1 += 15
            count2 += 15
        }

        window.addEventListener('scroll', scrollHandler)
        animate()
        </script>
</body>
</html>