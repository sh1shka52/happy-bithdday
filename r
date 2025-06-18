<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>С Днем Рождения!</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #ff9a9e, #fad0c4, #fbc2eb);
            margin: 0;
            overflow: hidden;
            font-family: 'Arial', sans-serif;
        }
        
        .message {
            text-align: center;
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            max-width: 600px;
            position: relative;
            overflow: hidden;
            z-index: 1;
        }
        
        h1 {
            color: #ff6b6b;
            font-size: 2.5em;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }
        
        .heart {
            color: #ff6b6b;
            font-size: 1.5em;
            display: inline-block;
            animation: pulse 1.5s infinite;
        }
        
        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.3); }
            100% { transform: scale(1); }
        }
        
        .hearts-container {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: -1;
        }
        
        .heart-fall {
            position: absolute;
            color: #ff6b6b;
            font-size: 24px;
            top: -50px;
            animation: fall linear forwards;
        }
        
        @keyframes fall {
            to { transform: translateY(100vh) rotate(360deg); }
        }
    </style>
</head>
<body>
    <div class="hearts-container" id="hearts"></div>
    
    <div class="message">
        <h1>Я тебя люблю,</h1>
        <h1>ты самый умный</h1>
        <h1>и красивый мужчина,</h1>
        <h1>с днем рождения <span class="heart">❤️</span></h1>
    </div>

    <script>
        // Создаем падающие сердечки
        function createHearts() {
            const container = document.getElementById('hearts');
            const heartCount = 50;
            
            for (let i = 0; i < heartCount; i++) {
                const heart = document.createElement('div');
                heart.innerHTML = '❤';
                heart.classList.add('heart-fall');
                
                // Случайные параметры
                const left = Math.random() * 100;
                const duration = 3 + Math.random() * 5;
                const delay = Math.random() * 5;
                const size = 12 + Math.random() * 20;
                
                heart.style.left = left + 'vw';
                heart.style.animationDuration = duration + 's';
                heart.style.animationDelay = delay + 's';
                heart.style.fontSize = size + 'px';
                
                container.appendChild(heart);
            }
        }

        // Запускаем при загрузке страницы
        window.onload = createHearts;
    </script>
</body>
</html>
