<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/header_styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/galmuri/dist/galmuri.css">
    <title>Gamebit</title>
    <style>
        body {
            margin: 0;
            font-family: "GalmuriMono9", monospace;
            background-image: url('image/5033917.jpg');
            display: flex;
            flex-direction: column;
            min-height: 100vh;
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
            background-image: url('image/9.png');
        }

        .content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding-top: 60px; /* Adjusted for header height */
        }

        footer {
            background-color: black;
            color: white;
            text-align: center;
            padding: 1rem;
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

        .img-fluid {
            max-width: 100%;
            height: auto;
        }

        .centered-image-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .centered-image-container h1 {
            margin-top: 20px; /* Space between image and text */
            color: white; /* Ensure the text is visible */
        }
    </style>
</head>

<body>
    <header>
        <div class="header-container">
            <img src="image/kakao.png" class="logo">
            <nav>
                <ul>
                    <li>
                        <a href="index.html">홈</a>
                        <div class="dropdown"></div>
                    </li>
                    <li>
                        <a href="#">게임</a>
                        <div class="dropdown">
                            <a href="win.html">명예의 전당</a> <!-- 명예의 전당 페이지로 이동 -->
                            <a href="#">Subitem 2</a>
                            <a href="#">랭킹</a>
                        </div>
                    </li>
                    <li>
                        <a href="board.html">게시판</a> <!-- 게시판 페이지로 이동 -->
                        <div class="dropdown">
                            <a href="board.html">게시판</a> <!-- 게시판 페이지로 이동 -->
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
                <button class="login-button" onclick="location.href='join.html'">Login</button>
                <div class="hamburger-menu" onclick="toggleMenu()">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </div>
        </div>
    </header>

    <div class="content">
        <div class="centered-image-container">
            <img src="image/404.png" alt="페이지 오류" class="img-fluid">
            <h1>페이지가 존재하지 않습니다.</h1>
        </div>
    </div>

    <footer>
        <div class="footer-content">
            <div class="footer-icons">
                <a href="https://www.facebook.com"><img src="image/face.png" alt="Facebook"></a>
                <a href="https://www.instagram.com"><img src="image/insta.png" alt="Instagram"></a>
                <a href="https://www.youtube.com"><img src="image/youtube.png" alt="YouTube"></a>
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

    <script>
        function toggleMenu() {
            const nav = document.querySelector('nav ul');
            nav.classList.toggle('show');
        }
    </script>
</body>

</html>
