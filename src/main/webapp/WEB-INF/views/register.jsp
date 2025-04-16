<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Реєстрація</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .container {
            width: 400px;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        .button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            width: 100%;
            border-radius: 6px;
            cursor: pointer;
        }
        .button:hover {
            background-color: #1f7a32;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Реєстрація користувача</h2>
    <form method="post" action="/register">
        <input type="text" name="username" placeholder="Ім’я користувача" required/>
        <input type="password" name="password" placeholder="Пароль" required/>
        <select name="role">
            <option value="VOLUNTEER">Волонтер</option>
            <option value="ORGANIZER">Організатор</option>
        </select>
        <button class="button" type="submit">Зареєструватися</button>
    </form>
    <a href="/">На головну</a>
</div>
</body>
</html>
