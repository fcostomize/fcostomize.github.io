<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>추천 결과</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            font-family: 'Arial', sans-serif;
        }

        .game-container {
            position: relative;
            width: 1500px;
            height: 690px;
            background-image: url('game-device.png'); /* 노란 게임기 이미지 경로 */
            background-size: cover;
            background-position: center;
            margin: 50px auto;
        }

        .screen {
            position: absolute;
            width: 35%;
            height: 46%;
            top: 25%;
            left: 30%;
            background-color: #e0e0e0;
            border: 5px solid #333;
            box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.5);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .screen h1 {
            font-size: 1.5em;
            color: #333;
            margin-bottom: 15px;
        }

        #result {
            font-size: 1.2em;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        .back-button {
            padding: 10px 20px;
            background-color: #ffd700;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.5em;
        }

        .back-button:hover {
            background-color: #ffcc00;
        }
    </style>
</head>
<body>
    <div class="game-container">
        <div class="screen">
            <h1>추천 결과</h1>
            <div id="result">
                <p><strong>추천 음료:</strong> <%= request.getAttribute("recommendation") != null ? request.getAttribute("recommendation") : "조건에 맞는 추천 음료가 없습니다." %></p>
            </div>
            <button class="back-button" onclick="window.location.href='index.jsp'">돌아가기</button>
        </div>
    </div>
</body>
</html>
