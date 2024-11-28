<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커피 추천 사이트</title>
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
            width: 37%;
            height: 48%;
            top: 25%;
            left: 30%;
            background-color: #e0e0e0;
            border: 5px solid #333;
            box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.5);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 10px;
        }

        .screen h1 {
            font-size: 1.5em;
            color: #333;
        }

        .buttons {
            margin-top: 10px;
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 10px;
            font-size: 18.2px;
        }

        .button {
            padding: 10px;
            background-color: #ffd700;
            border: 2px solid #333;
            border-radius: 5px;
            text-align: center;
            cursor: pointer;
            font-size: 1.5em;
        }

        .button:hover {
            background-color: #ffcc00;
        }

        #result {
            margin-top: 20px;
            font-size: 1.2em;
            color: #333;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="game-container">
        <div class="screen">
            <form method="POST" action="recommend.jsp"> <!-- 수정된 부분: 폼을 통해 데이터 전송 -->
                <div class="buttons">
                    <label><input type="radio" name="brand" value="스타벅스"> 스타벅스</label>
                    <label><input type="radio" name="brand" value="컴포즈"> 컴포즈</label>
                    <label><input type="radio" name="brand" value="메가커피"> 메가커피</label>
                    <label><input type="radio" name="brand" value="이디야"> 이디야</label>
                    <label><input type="radio" name="brand" value="더리터"> 더리터</label>
                    <label><input type="radio" name="brand" value="기타"> 기타</label>
                </div>
                <div class="buttons" style="margin-top: 25px; display: flex; justify-content: center;">
    			<label><input type="radio" name="temperature" value="ICE"> ICE</label>
    			<label><input type="radio" name="temperature" value="HOT"> HOT</label>
				</div>
                <div class="buttons" style="margin-top: 25px;">
                    <label><input type="radio" name="caffeine" value="카페인"> 카페인</label>
                    <label><input type="radio" name="caffeine" value="디카페인"> 디카페인</label>
                    <label><input type="radio" name="caffeine" value="생과일"> 생과일</label>
                    <label><input type="radio" name="caffeine" value="TEA">TEA</label>
                    <label><input type="radio" name="caffeine" value="스무디"> 스무디</label>
                    <label><input type="radio" name="caffeine" value="제로슈가"> 제로</label>
                </div>
                <div style="margin-top: 25px; display: flex; justify-content: center;">
                    <button type="submit" class="button">추천 보기</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>