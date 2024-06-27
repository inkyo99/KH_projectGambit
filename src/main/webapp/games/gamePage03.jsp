<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.js" ></script> 
<link href="${pageContext.request.contextPath}/css/header_styles.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/galmuri/dist/galmuri.css">
    <title>Gamebit</title>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/phaser/3.80.1/phaser.min.js"></script>

    
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/header_styles.css">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-pen.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/galmuri/dist/galmuri.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <script src="/js/gameStart03.js"></script>
    <script src="/js/game03.js"></script>
    <script src="/js/gameOver03.js"></script>
   
</head>
<style>
    body {
        margin: 0;
        font-family: 'Roboto', sans-serif;
        background-image: url('../image/5033917.jpg');
        display: flex;
        flex-direction: column;
        min-height: 100vh;
        font-family: "GalmuriMono9", monospace;
    }

    header {
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000;
            background-color: black;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            height: 60px;
            background-image: url('../image/9.png');
        }

   

    .content {
        flex: 1;
        display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 60px; /* 헤더 높이만큼 추가 */
    }

    footer {
        background-color: black;
        color: white;
        text-align: center;
        padding: 1rem;
        margin-top: 2rem;
    }
    
    .footer-content {
        margin: 0 auto;
        max-width: 1200px;
    }
    
    .footer-icons {
        display: flex;
        justify-content: center;
        margin-bottom: 1rem;
    }
    
    .footer-icons a {
        color: white;
        text-decoration: none;
        font-size: 24px;
        margin: 0 15px;
    }
    
    .footer-icons a img {
        width: 32px;
        height: 32px;
    }
    
    .footer-icons a:hover {
        color: #f1f1f1;
    }
    
    .footer-links {
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        margin-bottom: 1rem;
    }
    
    .footer-links a {
        color: white;
        text-decoration: none;
        margin: 0 10px;
    }
    
    .footer-links a:hover {
        text-decoration: underline;
    }

    .socials a {
        color: #FF4081;
        text-decoration: none;
        margin: 0 10px;
    }
    .welcome-text-button {
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            margin-right: 10px;
            padding: 5px 10px 5px 30px; /* 왼쪽 패딩 추가 */
            background: rgba(0, 0, 0, 0.5);
            border-radius: 5px;
            transition: background 0.3s;
            position: relative; /* position 속성 추가 */
        }
        
        .welcome-text-button i {
            position: absolute;
            left: 10px; /* 아이콘 위치 조정 */
            top: 50%;
            transform: translateY(-50%);
        }
        
        .welcome-text-button:hover {
            background: rgba(0, 0, 0, 0.7);
        }
	
	  #gamebox{
           
            width: 600px; /* 원래 크기로 */
            height: 600px; /* 원래 크기로 */
            border-radius: 50%; /* 원형 */
            overflow: hidden;
            border: 10px solid #FFD700; /* 좁은 원형 테두리 */
            box-shadow: 0 0 20px 5px rgba(255, 223, 0, 0.5); /* 빛나는 효과 추가 */
            text-align:center;
        }
</style>
<script>
        // JSP에서 사용자 정보를 자바스크립트로 전달
        const userId = '${sessionScope.userId}';
        const userSeq = '${sessionScope.userSeq}';
    </script>
<body>
    <header>
        <div class="header-container">
            <img src="/image/kakao.png" class="logo">
            <nav>
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/index.jsp">홈</a>
                        <div class="dropdown"></div>
                    </li>
                    <li>
                        <a href="#">게임</a>
                        <div class="dropdown">
                            <a href="${pageContext.request.contextPath}/games/win.jsp">명예의 전당</a>
                            <a href="#">게임 플레이 순위</a>
                            <a href="#">즐겨찾기</a>
                        </div>
                    </li>
                    <li>
                        <a href="/board.html">게시판</a>
                        <div class="dropdown">
                            <a href="../board.html">게시판</a>
                            <a href="#">Q&A</a>
                            <a href="#">공지사항</a>
                        </div>
                    </li>
                    <li>
                        <a href="#">마이페이지</a>
                        <div class="dropdown">
                            <a href="#">내 정보 수정</a>
                        </div>
                    </li>
                    <li>
                        <a href="#">관리자 페이지</a>
                        <div class="dropdown">
                            <a href="#">대시보드</a>
                            <a href="#">통계</a>
                        </div>
                    </li>
                </ul>
            </nav>
            <div class="header-buttons">
                 <c:choose>
                    <c:when test="${not empty sessionScope.loginID}">
                        <span class="welcome-text-button" onclick="location.href='mypage.members'">
                            <i class="fa-solid fa-user"></i>${sessionScope.userName}님 환영합니다
                        </span>
                        <div class="btn-container">
                            <button class="logout-button" onclick="location.href='/logout.members'">Logout</button>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <button class="login-button" onclick="location.href='members/login.jsp'">Login</button>
                    </c:otherwise>
                </c:choose>
                <div class="hamburger-menu" onclick="toggleMenu()">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </div>
        </div>
    </header>

    <div class="content">
        <!-- 이쪽에 게임 작성 코드 올리면 될것-->
		<div id="gamebox"></div>
    	<div id="timer"></div>
        
    </div>

    <footer>
        <div class="footer-content">
            <div class="footer-icons">
                <a href="https://www.facebook.com"><img src="../image/face.png" alt="Facebook"></a>
                <a href="https://www.instagram.com"><img src="../image/insta.png" alt="Instagram"></a>
                <a href="https://www.youtube.com"><img src="../image/youtube.png" alt="YouTube"></a>
            </div>
            <div class="footer-links">
                <a href="#">Info</a>
                <a href="#">Support</a>
                <a href="#">Marketing</a>
                <a href="#">Terms of Use</a>
                <a href="#">Privacy Policy</a>
            </div>
            <p>&copy; 2024 Team Project</p>
        </div>
    </footer>
</body>

<script>
    function toggleMenu() {
        const nav = document.querySelector('nav ul');
        nav.classList.toggle('show');
    }
    let config = {
            type:Phaser.AUTO,
            parent: "gamebox",
            width:600,
            height:600,
            physics:{
                default: "arcade",
                arcade:{
                    debug:false
                }
            },
            scene: [gameStart03,game03,gameOver03]
            
        };
    let game = new Phaser.Game(config);

</script>
</html>